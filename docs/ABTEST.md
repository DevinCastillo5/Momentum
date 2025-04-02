**A/B Test 1: Slider vs. Text Boxes for Weight and Height Input**

<br>User Story Number: US5: Add User Information (Onboarding)

<br>Metrics: Task Succession

<br>Hypothesis: If users enter their weight and height using a slider instead of text boxes, they will complete the profile creation faster and with fewer input errors, leading to a higher completion rate and improved user experience.

<br>Experiment - To test my hypothesis on user preference between sliders and text boxes for input, I have set up a Remote Config A/B experiment in Firebase. The experiment targets 100% of the user base, meaning all users will be randomly assigned to either the baseline, which keeps the existing slider input method, or Variant A, which replaces it with a text box. Firebase Analytics will track key events such as engagement time on the profile setup screen, input completion rate, retention within 4 to 7 days, and any errors encountered while using either input method. Engagement and retention will be monitored through event tracking and session duration, while task success will be measured based on whether users complete their input and proceed without issues. User satisfaction could also be assessed through in-app feedback if needed. This experiment will provide insights into whether sliders or text boxes lead to better user interaction, guiding future UI design decisions.

<br>Variations - Variant A: Users input weight and height using sliders. Variant B: Users input weight and height using text boxes.


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
