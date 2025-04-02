A/B Test Alejandro:  Make a meaningful name for the test. For example  "Signup/Sign In 1 screen or 2 screens", could be a title for an A/B test to determine if users prefer having account creation and login on a single screen, or two screens.

<br>User Story Number: For instance, the "Signup/Sign In 1 screen or 2 screens" A/B test would be a task under US1 (Account Creation). 

<br>Metrics:  Your team's HEART metrics that this A/B test measures.

<br>Hypothesis: State your hypothesis for this A/B test


<br>Experiment - Detail out the experiment setup that you will use to test your hypothesis using Firebase capabilities. Describe the audiences – will all users be able to view the experiment? Or you will only allocate x% of your user base to the experiment? Lay out the details with the rationale behind this decision. Describe the tracking using Firebase Analytics. With your HEART metrics, what tracking needs to be set up? 

<br>Variations - In this section, describe what variations you would like to test. Layout the design work related and add diagrams, mockups and designs related to the confirmed variation that you’d like to test.

<br> **A/B Test 2**
<br> 
<br> A/B Test: Workout Completion Button - Standard vs. Gamified Animation 
<br>
<br> User Story Number: US4(Golden Path)
<br>
<br> Metrics: 
<br> NPS - user reported rate of app by the pop up rating after three completed
<br> excersices to see who is likely to recommend. 
<br> CTR - user logging in, the element at the begining of our golden path. 
<br> Adoption - new users creating accounts, authentication signups in firebase 
<br> analytics.
<br> DAU - via Google Analytics for Firebase. It can track DAU and give insights into <br> our user engagement levels. By connecting the project it  will show the activity <br> of users.
<br> Retention - Given in firebase analytics to see how many users are returning. 
<br> Average Workouts Completed - By clicking finish button, with a custom function <br> it will send an average of workouts completed by users via a 
<br> Google Analytics Event. We can examine if users are effectively using the app. 
<br> 
<br>Hypothesis: We believe that adding a celebratory animation, like a confetti burst or achievement pop up, when a user completes a workout will increase engagement and retention. If the user feels rewarded and supported when finishing a workout then they will be more likely to return and maintain consistency. 
<br>
<br> Experiment: For the audience we will allow 50% will see version 1, with a 
<br> standard finish button, and the other 50% will se version 2, with the 
<br> gamification. The audience who sees it will be the users who have completed at <br> least one workout within the first 5 days of sign up and we can run the 
<br> experiment for a sprint of 4 weeks. We can track in firebase analytics by 
<br> tracking the completed_workouts and completed_animation, streak (to log user <br> consistency with animation), and retention to see who is returning. 
<br>
<br> Variations:  
Variant A: Standard Workout Completed Button
Variant B: Animated Confirmation 

<br> Diagram: https://drive.google.com/file/d/1y7Juy7lAzvqhdsYzPTDQA3WqIhfoZr_b/view?usp=sharing
