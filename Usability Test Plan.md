# Testing Overview

The following test plan describes the objectives of our testing of the working prototype created in Part One of the Project. This involved the creation of a Flat Expenses Management App.

Our key objectives from user testing are to evaluate the following:

* Handling of **“Core Functionalities”** offered by the working prototype. This includes creation of expenses, paying relevant users, viewing past/future expenses, managing insights, and modifying settings. We will primarily be observing the usability of our app for the test subjects.
* Identify any **bugs** or **pain points** in the design experienced by users.
* Understand the overall **emotional feeling** as users use our app. As we are handling something as delicate as finances, we want to ensure that users are confident in their decisions to reduce stress on them. From our sentiment analysis, we will ensure that there is overall neutral feeling while interacting with the app.
* Collect **general feedback** and **satisfaction** from test subjects.

With these objectives in mind, we will collect and analyse user experience of the app through the use of metrics. From these metrics, we will then classify them by severity, giving us an understanding of how to prioritise changes in future iterations. This study will be primarily focused on the experience of university students. They will be 6 SWEN303 students at Victoria University. While it is good that we are doing user testing, this does not cover the needs of all our intended user base. Future testing must be done for a broader picture of the usability of our application.

# Methodology

#### Selection Criteria
Participants for this usability test are software engineering students from Victoria University enrolled in the SWEN303 course. These participants were selected through group pairings suggested by the course lecturer. The participants' average skill level with software systems is assumed to be relatively high, given their background, which may influence their interaction with the prototype. This selection aims to ensure that participants can complete the set tasks effectively, though their advanced skill level should be considered when analysing test results.

#### Participant Details

- **Number of Participants**: Six
- **Background**: Software engineering students with experience in using and evaluating software systems
- **Skill Level**: Relatively high, given their academic background and familiarity with technology

### Environment

Tests will be conducted remotely, with participants located in a quiet environment, ideally at their workstation or desk. This setup aims to minimise distractions and simulate a typical user environment. The test facilitator and note-taker will join the participants in a voice call, and the participants will access the system prototype via a Figma link, which can be opened in a web browser without additional software installation.

### Procedure

Test participants will be asked to complete testing in a quiet environment, preferably at their workstation or desk. The test facilitator and note-taker will then join a participant in a voice call, and the participant will be sent the system prototype through a Figma link which they can open in a browser without downloading additional software.

The test facilitator will then introduce the system to the participant and their role in testing. To ensure honest answers are obtained from the participant, it is important to assure them that it is the system being evaluated, not their proficiency. Additionally, the facilitator will inform the user that personal information such as their name will not be used outside of identifying them for the testing procedure and analysis. The facilitator will then give a quick overview of the purpose and function of the system with reference to the prototype.

The facilitator will then ask test participants to read aloud each task before completing it, voicing their thought process as they do so. After each task, the facilitator will ask the participant for their general thoughts on the process. Another person present in the call will be the note-taker who will record notes on the participant's response to each task, as well as their thoughts during completion. Notes on time taken, any potential errors in the system, and differences in expectation by the user and the actual system will be recorded also.

After all tasks are completed, the users will be asked to complete a Google Form questionnaire independently. This questionnaire will ask users to evaluate system function through the performance of each task and overall, as well as questions on general function and their interaction with it.

# Script

#### Introduction and Consent

1. **Welcome and Briefing**: 
   - The facilitator will welcome the participants and provide a brief overview of the test's purpose, emphasizing that the focus is on evaluating the system, not the participants.
   - Participants will be assured that their personal information will remain confidential and only used for identifying them during the testing process.

2. **Consent Form**: 
   - Participants will be asked to read and sign a consent form, which outlines their role in the test, the nature of the tasks, and their rights as participants.

#### Testing of Prototypes

1. **Working with the Prototype**:
   - The recorder will start the recording and ensure that the prototype is working on the phone.
   - Participants will then go through the task list for our prototype. They will be accompanied by a facilitator/note-taker who will help direct them through the various tasks and record information. We will be recording the user to later conduct sentiment analysis on the users.
   - Key findings will focus on points of confusion while navigating the application.

2. **Collecting Quantitative Data**:
   - Users will then be asked to fill out a survey consisting of SUS questions. This will be collected in a Google Form for later evaluation.

#### Focus Group Evaluation

1. **Splitting Groups**:
   - Participants will be split into two groups of three, we will then use that to conduct a focus group consisting of five questions. 
   - Key goals from this consist of trying to understand emotional feelings and undertones as they navigate the app, as well as future recommendations.

# Roles

## Role Definitions

- **Facilitator**: The facilitator is responsible for guiding the test subject through the test plan and answering any questions the test subject might have. In focus groups they will lead the discussion and dleve into ideas brought up by participants.
- **Recorder**: The recorder is responsible for documenting the test subject's responses, feedback, and any interactions between the facilitator and the test subject. They are also responsible for ensuring that data is processesed and placed into the repository.
- **Test Subject**: The test subject is the person who will be interacting with the system being tested.

# Roles 

### Cognitive Assignments 
Test Subject: Rachel Correa
- Facilitator: Mazen Khallaf
- Recorder: Z'Arn Payne 

Test Subject: Kayi Erol-Watt 
- Facilitator: Z'Arn Payne 
- Recorder: Mazen Khallaf 

Test Subject: Arianna Case 
- Facilitator: Alvien Salvador 
- Recorder: Ricky Fong 

Test Subject: Baxter Alexander 
- Facilitator: Ricky Fong 
- Recorder: Alvien Salvador 

Test Subject: Keira Malan 
- Facilitator: Hamish Burke 
- Recorder: Risheet Peri 

Test Subject: Hugo Blair 
- Facilitator: Risheet Peri 
- Recorder: Hamish Burke 

### Focus Group Assignments 

Test Subjects: Rachel Correa, Arianna Case, Keira Malan
- Facilitator: Z'arn Payne 
- Recorder: Risheet Peri 
- Recorder: Hamish Burke 

Test Subjects: Baxter Alexander, Hugo Blair, Kayi Erol-Watt
- Facilitator: Mazen Khallaf  
- Recorder: Alvien Salvador: Recorder 
- Recorder: Ricky Fong

# Tasks

### Task 1: Verify the functionality of adding a new recurring expense and splitting it among household members.

**Steps**:
1. Navigate to the home page.
2. Select the "Add Expense" button.
3. Enter the following details:
   - **Expense Name**: Rent
   - **Category:** Rent
   - **Amount**: $1200
   - **Date**: 31/05/24
   - **Repeat**: Weekly
   - **Split With**: Select 3 household members
4. Save the expense.
5. Verify the expense is correctly listed with the appropriate details and split.

### Task 2: Ensure the functionality of paying an existing expense and verify its removal from the list.

**Steps**:
1. Navigate to the "Pay Up" section.
2. Open the dropdown for Alex to view all outstanding payments.
3. Select the expense for Power ($80.25).
4. Confirm the payment.
5. Verify the expense is removed from the list and updates are reflected in the expense records.

### Task 3: Confirm the ability to view past expenses and verify payment history.

**Steps**:
1. Navigate to the "Expenses" section.
2. Access the "Past Expenses" tab.
3. Locate the expense for garbage from the previous week.
4. Verify the details of who paid for the garbage expense.

### Task 4: Validate the insights feature for the rent category and ensure accurate data visualisation.

**Steps**:
1. Navigate to the "Insights" page.
2. Select the Rent category.
3. Change the view to display monthly insights.
4. Analyse the data presented in graphs and tables for accuracy and completeness.

### Task 5: Test the customization options for display and accessibility to ensure usability for all users.

**Steps**:
1. Open the hamburger menu and navigate to "App Settings."
2. Access the "Display Options."
3. Adjust accessibility settings (e.g., colour scheme, contrast).
4. Verify that the changes are applied and improve usability.

### Task 6: Test the help and support functionalities, ensuring users can find information and contact support if needed.

**Steps**:
1. Open the hamburger menu and navigate to "App Settings."
2. Access the FAQ section.
3. Review the frequently asked questions.
4. Navigate back to settings and select the "Contact Support" option.
5. Complete the support form and submit it.
6. Verify receipt of the support request and the response process.

# Focus Group Questions

1. What were your first impressions of the app?
3. Describe your experience as you navigated the app?
4. Were there any parts of the app that you found confusing or hard to use?
5. How did you feel about the colour scheme of the app?
6. If this were a real app, would you use it? Why or why not?

# Metrics

We decided on both quantitative and qualitative metrics so that the test subject is not limited to ratings as feedback. The metrics will be evaluated both during the testing and post the testing so that we can get results unaffected by the Hawthorne effect (people's change in behavour when observed). Therefore, even if the Hawthorne effect deemed metrics taken during the study less applicable, we can use post-study tests, immediately after the study, to gain an insight into the test subject’s experience of the prototype. We will have a mix of objective and subjective metrics so that we can measure their correlation.

-  ## During the Test/Synchronous

    - ### Quantitative

      - #### Speed of Navigation

        We will start the timer as soon as we reveal the task to the test subject and lap the time it takes for the test subject to reach the next wireframe, i.e., the test subject finishes the sub-task. This time would involve the processes of understanding the sub-task, locating the appropriate button, and pressing it. The faster the response time, the more intuitive the user interface of our prototype is what we are assuming. However, there may be a lot of bias and a small sample group to be able to use these results for accurate testing. This is an example of an objective metric.

   - ### Qualitative
      - #### Note-taking 
         While the test subject is performing the task, we will take note on their behaviour, reactions, and interactions with the prototype. This will include observing **confusion** or **pain points** to see where user is unsure of where to click next or spend time looking for the button to where to interact. While these observations will be recorded, We are not going to record all their behaviour, reactions, and interactions throughout the task as we cannot take note in real-time. We will only focus the specific sub-task that user cannot perform or unsure of. 


      - #### Sentiment Analysis

         We will record the test subjects' responses as they evaluate the prototype synchronously and asynchronously in the focus groups. We will use AI tools like OpenAI’s Whisper to receive an accurate transcript, but we will remove the sections where the test-giver speaks. We will divide this transcript by each sub-task. We will upload these mini transcripts to a CSV file along with the task and sub-task ID. We will then use Python libraries like NLTK Vader and Roberta to calculate the sentiment analysis scores (positive, neutral, and negative). The responses by the test subjects themselves will be qualitative, but the Python libraries mentioned can convert them to quantitative responses which we can analyse and visualise using graphs using Python’s NumPy, Pandas, and Matplotlib libraries or R Data Visualisation. This is a subjective, but an AI data-driven metric. This is important as it reduces the inconsistency in our evaluation of data.

         #### _Objective_
         Determine the amount of negativity, neutrality and positivity of the test subject's responses during each task. This involves:
         1. Recording the test-subjects voice during the test
         2. Converting these recordings into transcripts using Whisper AI (https://openai.com/index/whisper/)
         3. Manually dividing these transcripts per task, removing any unncessary words
         4. Placing these sub-transcripts into a `csv` file
         5. Writing a python script that conducts the Sentiment Analysis per task per member
         6. Output `csv` files with the scores
         7. Visualise the data using these output files using R

         #### _Models_
         We are using 2 models:

         1. #### _Vader Model_ by NLTK
         - Valence Aware Dictionary and sEntiment Reasoner
         - https://ojs.aaai.org/index.php/ICWSM/article/download/14550/14399/18068
         - Less Smart Model
            - Bag-of-Words Approach
            - analyses every word without context

         2. #### _Roberta Model_ by Hugging Face
         - Robustly Optimized BERT Pretraining Approach
         - variant of the BERT (Bidirectional Encoder Representations from Transformers)
         - https://huggingface.co/docs/transformers/en/model_doc/roberta
         - Smarter Model
            - Self-Attention
            - GPT-2 tokeniser
            - trained on 160GB of text
            - determines the Sentiment based in the context

- ## Post Test/Asynchronous

   - ### Quantitative

      - #### SUS (System Usability Scale)

         We will give the test subject a Google Form with ten questions to give a rating to. We felt this was more relevant to our purpose than the NASA TLX since the NASA TLX focuses on hardware testing as well, which is not applicable to our prototypes. We will analyse the responses by using the number ratings input. This is a subjective metric.

         When processing the data, we will prioritise the use of robust statistics such as median and IQR. This is to prevent our data from being skewed by outliers, given the small sample. We will use the mean and range as secondary measures, especially given our goals to have a minimum usability score from our data.

   - ### Qualitative

      - #### Focus Group

         We will also ask more qualitative or subjective questions out of scope for the SUS metric to the test subjects in a small group, that would stimulate discussion and agreement between the test subjects. We will record their responses and evaluate our prototype. This is a subjective metric, which is is something we would need to account for it by discussing it as a group and giving it consideration.

# Usability Goals

We have decided thresholds, that if met, means that our prototype passed our user testing phase. We have decided separate Usability Goals for each Metric identified.

- ## During the Test/Synchronous

   - ### Quantitative

      - #### Speed of Navigation

         We will want each task to be finished within 1 minute since only then we can assume that the task can be completed in a user-friendly manner. Each sub-task should take no more than 10 seconds since we are assuming 5-6 sub-tasks within a task.

   - ### Qualitative

      - #### Sentiment Analysis

         Each sentiment will get a rating from 0-1 for a negative, neutral, and positive factor. We will use the maximum of these ratings to determine the overall sentiment, but we will use the numerical value to plot the trend in user-friendliness per wireframe. We used two different models—Vader (which uses Bag-of-Words without previous context) and Roberto (which is more accurate since it uses context)—to help us clearly identify any anomalies. The actual sentiment analysis will take place after the test, but the recording of the live reaction/responses is synchronous to the test. We decided that more positive or neutral responses than negative responses is a favourable outcome.

- ## Post Test/Asynchronous

   - ### Quantitative

      - #### SUS (System Usability Scale)

         We will export the results of the SUS Google Form and use a Python script to receive a rating as follows:

      1. For each question, calculate the sub-score:
         - Odd-numbered statements: User_Response - 1
         - Even-numbered statements: 5 - User_Response
      2. Sum all the sub-scores to get the SUS score for each user
      3. Normalise the SUS score (out of 100): SUS_Score * 2.5
      4. According to the Interaction Design Foundation (https://www.interaction-design.org/literature/article/system-usability-scale), a normalised SUS Score:
         - ≥ 70 is considered good
         - ≥ 85 is considered excellent
      5. Since our prototype is not a finished application, we will be aiming for an average SUS Score of 65 with none less than 50.
   <br>

   - ### Qualitative

      - #### Focus Group

         We will record the test subjects, with note-taking to aid in sentiment analysis. We are hoping for a mostly positive response, but constructive feedback for places we can improve upon.

# Problem Severity

We are using the severity rating for a usability problem based on Jakob Nielsen:

- 0 = I don’t agree that this is a usability problem at all
- 1 = Cosmetic problem only: need not be fixed unless extra time is available on project
- 2 = Minor usability problem: fixing this should be given low priority
- 3 = Major usability problem: important to fix, so should be given high priority
- 4 = Usability catastrophe: imperative to fix this before the product can be released

We chose this because we have used it in the previous part of the group project to evaluate our team’s wireframe. We are going to use it to evaluate the different team members on our group’s prototype. We will be using the frequency that people ran into paint points/confusion and factor them into our decision.