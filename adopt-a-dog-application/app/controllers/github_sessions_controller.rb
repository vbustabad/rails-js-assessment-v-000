class GithubSessionsController < ApplicationController

  def new
    session_code = request.env['rack.request.query_hash']['code']

    result = RestClient.post('https://github.com/login/oauth/access_token',
                            {:client_id => ENV['GH_BASIC_CLIENT_ID'],
                             :client_secret => ENV['GH_BASIC_SECRET_ID'],
                             :code => session_code},
                             :accept => :json)

    access_token = JSON.parse(result)['access_token']

    auth_result = JSON.parse(RestClient.get('https://api.github.com/user',
                                        {:params => {:access_token => access_token}}))

    name = auth_result['name']
    email = auth_result['email']

    @user = User.find_by(email: email)

    if @user
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @user = User.new(name: name, email: email)
      render 'users/new'
    end
  end
end
