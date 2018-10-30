# Build a Rails App with a JavaScript Front End

## Overview

- [What to Expect from the Project Review](#expectations)
- [Project Requirements](#requirements)
- [Instructions](#instructions)
- [Support](#support)
- [Practicing for Success on Learn](#success)
- [Resources](#resources)

In this assessment you are going to expand upon your previous Rails project assessment. The goal is to add dynamic features to your previous Rails application that are possible only through JavaScript and a JSON API.

**Do not use `remote: true` in this application.**

## <a id="expectations">What to expect from the Project Review</a>

Project reviews are focused on preparing you for [technical interviews](https://www.brightnetwork.co.uk/career-path-guides/technology-it-software-development/five-ways-stand-out-your-technology/what-expect-technical-interview/). Treat project reviews as if they were technical interviews in both attitude and technical presentation.

During your project review, be prepared to:

1. Explain your code from execution point to exit point. Use the best technical vocabulary you can. 15 minutes
2. Live code. This could be refactoring, adding a new feature, or both. 20 minutes
3. You will also be asked questions that test your knowledge of JavaScript fundamentals. 10 minutes

If any requirements are missing or if significant gaps in understanding are found, be prepared to do one or all of the following:

- Submit an improved version
- Meet again for another Project Review

What won't happen:

- You won't be yelled at, belittled, or scolded
- You won't be put on the spot without support
- There's nothing you can do to instantly fail or blow it

## <a id="requirements">Project Requirements</a>

1.  Must render at least one index page (index resource - 'list of things') via JavaScript and an Active Model Serialization JSON Backend.

    > For example: in a blog domain with users and posts, you might display the index of the user's posts on the users show page, fetching the posts via a AJAX GET request, with the backend rendering the posts in JSON format, and then appending the posts to the page.

1.  Must render at least one show page (show resource - 'one specific thing') via JavaScript and an Active Model Serialization JSON Backend.

    > Borrowing from the previous blog domain example, you might allow a user to sift through the posts by clicking a 'Next' button on the posts show page, with the next post being fetched via AJAX and rendered through JavaScript.

1.  Your Rails application must dynamically render on the page at least one 'has-many' relationship through JSON using JavaScript.

    > In the previous blog domain example, if each of the posts has many comments, you could render those comments as well on that post's show page.

1.  Must use your Rails application and JavaScript to render a form for creating a resource that submits dynamically.

    > In the blog domain example, a user might be able to add a comment to a post, and the comment would be serialized, and submitted via an AJAX POST request, with the response being the new object in JSON and then appending that new comment to the DOM using JavaScript (ES6 Template Literals can help out a lot with this).

1.  Must translate the JSON responses into JavaScript Model Objects using either ES6 class or constructor syntax. The Model Objects must have at least one method on the prototype. Formatters work really well for this.
    > Borrowing from the blog domain example, instead of plainly taking the JSON response of the newly created comment and appending it to the DOM, you would create a Comment prototype object and add a function to that prototype to perhaps concatenate (format) the comments authors first and last name. You would then use the object to append the comment information to the DOM.

## <a id="instructions">Instructions</a>

1. Download the Rails with JavaScript spec file from this link: [spec-js](http://bit.ly/2CLzN4T)
   - This will open a google doc, clicking on the File tab and then on the 'make copy' option allows you to store an editable copy.
   - This spec file is a checklist to be used to check off as you complete the requirements.
2. Update your Rails application to include dynamic features use JavaScript.
   > Make sure to commit early and commit often. Commit messages should be meaningful (clearly describe what you're doing in the commit) and accurate (there should be nothing in the commit that doesn't match the description in the commit message). Good rule of thumb is to commit every 3-7 mins of actual coding time. Most of your commits should have under 15 lines of code and a 2 line commit is perfectly acceptable.
3. Documentation:
   While working on your project record a 30-minute coding session with your favorite screen capture tool. During the session, either think out loud or not. It's up to you. You don't need to submit the video, but we may ask for it at a later time.
   > Some common video recording tools used are [Zoom](https://zoom.us/), [Quicktime](https://www.apple.com/quicktime/download/), and [Nimbus](https://chrome.google.com/webstore/detail/nimbus-screenshot-screen/bpconcjcammlapcogcnnelfmaeghhagj?hl=en).
4. Before Submitting: Prepare a video demo (narration helps!) describing how a user would interact with your Rails with JavaScript app.
   > Make sure to highlight the dynamic features that you added to your Rails application. After you create your demo, publish it on a service like [YouTube](https://www.youtube.com/) or [Google Drive](https://www.google.com/drive/).
5. Make sure to write a blog post about your project and the process.
6. To Submit: On Learn, submit links to the GitHub repository for your app, your video demo (not your 30-minute coding session), and your blog post each to the corresponding textbox in the right, and hit "I'm done" to wrap it up.

## <a id="support">Project Support</a>

Unlike the rest of the curriculum, if you have any questions about your assessment or need help with it, please **don’t** use the Ask New Question feature. Rather than working with Learn Experts, please reach out to your Learn Instructor responsible for this section instead.

You can find your Learn Instructor using the following link: [Who are the section leads](http://help.learn.co/instructional-support/receiving-course-support/who-are-the-section-leads) and/or schedule up to four 30-minute [Project Support sessions](https://theflatironschool.typeform.com/to/B9BrgH).

## <a id="success">Practicing for Success on Learn</a>

#### Be scrappy.

- If you make a mistake, correct yourself! We all make mistakes, I promise.
- Think on your feet. Feel free to look things up while you're pairing with us. You'll be asked to expand on concepts you implemented and you will be pushed to the edge of your knowledge.
- Explain the details. We're curious!
- Don’t worry if your code isn’t perfect the first time - focus on getting something working, then refactoring to improve it.

#### Make no little plans.

- You're going to learn a ton. We will give pointers and show you ways to improve your code. This isn't telling you that your code is wrong, it's simply us teaching. Whatever you don't quite understand will be explained.
- Be proud of your project and your code, and show confidence in it.

#### Radiate positivity.

- Present yourself and your project in the best way possible.
- Be open to feedback, both positive and constructive.
- Remember, the interviewer is a person too. Be nice to them!

#### Work Together.

- Trust yourself.
- Trust us - our goal is to help you be successful in achieving your goals.
- We understand that this process can be stressful. We’re here to help you through.

#### Pursue mastery.

- Use the best technical vocabulary you can. We’ll help you with the words you can’t remember, or if you’re unsure about how something is pronounced.
- Ask questions! Curiosity and willingness to learn are hugely valued in our industry. If you haven’t heard of something, that’s okay - use this opportunity to learn about it!

## <a id="resources">Resources</a>

- [Using Active Model Serializer](https://learn.co/tracks/full-stack-web-development-v6/rails-and-javascript/building-apis/using-active-model-serializer)
- [Rails Guides - Using Turbolinks with JQuery](https://guides.rubyonrails.org/working_with_javascript_in_rails.html#turbolinks)
- [MDN Fetch API](https://developer.mozilla.org/en-US/docs/Web/API/Fetch_API)
- [MDN Classes](https://developer.mozilla.org/en-US/docs/Web/javascript/Reference/Classes)
- [JS Prototypes](https://learn.co/tracks/full-stack-web-development-v6/javascript/object-oriented-js/prototypes)
- [Video - JS debugging](https://instruction.learn.co/student/video_lectures#/220)
- [Video - Adding JavaScript to a sample Rails App](https://instruction.learn.co/student/video_lectures#/197)

<p class='util--hide'>View <a href='https://learn.co/lessons/rails-js-assessment'>Rails App with a jQuery Front End</a> on Learn.co and start learning to code for free.</p>
