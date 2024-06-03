# Testing Overview
The following test plan describes the objectives of our testing of our working prototype created in Part One of the Project. This involved the creation of a Flat Expenses Management App.

Our key objectives from User testing are to evaluate the following:
* Handling of **“Core Functionalities”** offered by the working prototype. This includes Creation of expenses, paying relevant users, viewing past/future expenses, managing insights and modifying settings. We will primarily be observing the usability of our app for the test subjects
* Identify any **bugs** or **pain points** in the design experienced by users.
* Understand the overall **emotional feeling** as users use our app. As we are handling something as delicate as finances. We want to ensure that users are confident in their decisions to reduce stress on them. (THIS IS OPTIONAL)
* Collect **general feedback** and **satisfaction** from test subjects.

With these objectives in mind, we will collect and analyse user experience of the app through the use metrics. From these metrics, we will then classify them by severity, giving us and understanding of how will prioritise changes in future iterations.
This study will be primarily focused on the experience of University Students. They will be 6 SWEN303 Students at Victoria University. While it is good that we are doing User testing, this does not cover the needs for all our intended userbase. Future testing must be done for a broader picture on the usability of our application.


# Methodology
## Participants
#### Selection Criteria
Participants for this usability test are software engineering students from Victoria University enrolled in the SWEN303 course. These participants were selected through group pairings suggested by the course lecturer. The participants' average skill level with software systems is assumed to be relatively high, given their background, which may influence their interaction with the prototype. This selection aims to ensure that participants can complete the set tasks effectively, though their advanced skill level should be considered when analyzing test results.

#### Participant Details
- **Number of Participants**: Six
- **Background**: Software engineering students with experience in using and evaluating software systems
- **Skill Level**: Relatively high, given their academic background and familiarity with technology

### Environment
Tests will be conducted remotely, with participants located in a quiet environment, ideally at their workstation or desk. This setup aims to minimize distractions and simulate a typical user environment. The test facilitator and note taker will join the participants in a voice call, and the participants will access the system prototype via a Figma link, which can be opened in a web browser without additional software installation.

### Procedure

Test participants will be asked to complete testing in a quiet environment, preferably at their workstation or desk. The test facilitator and note taker will then join a participant in a voice call, and the participant will be sent the system prototype through a Figma link which they can open in a browser without downloading additional software.

The test facilitator will then introduce the system to the participant and their role in testing. To ensure honest answers are obtained from the participant, it is important to ensure them that it is the system being evaluated, not their proficiency. Additionally, the facilitator will inform the user that personal information such as their name will not be used outside of identifying them for the testing procedure and analysis. The facilitator will then give a quick overview of the purpose and function of the system with reference to the prototype.

The facilitator will then ask test participants to read aloud each task before completing it, voicing their thought process as they do so. After each task, the facilitator will ask the participant for their general thoughts on the process. Another person present in the call will be the note taker who will record notes on the participant's response to each task, as well as their thoughts during completion. Notes on time taken, any potential errors in the system, and differences in expectation by the user and the actual system will be recorded also. 

After all tasks are completed, the users will be asked to complete a Google form questionnaire independently. This questionnaire will ask users to evaluate system function through the performance of each task and overall, as well as questions on general function and their interaction with it.


# Script
#### Introduction and Consent
1. **Welcome and Briefing**: 
   - The facilitator will welcome the participants and provide a brief overview of the test's purpose, emphasizing that the focus is on evaluating the system, not the participants.
   - Participants will be assured that their personal information will remain confidential and only used for identifying them during the testing process.

2. **Consent Form**: 
   - Participants will be asked to read and sign a consent form, which outlines their role in the test, the nature of the tasks, and their rights as participants.

#### Testing of Prototypes
1. **Working with the Prototype**:
   - Participants will then go through the task list for our prototype. They will be accompanied by a facilitator/note-taker who will help direct them through the various tasks and record information. We will be recording the user to later conduct sentiment analysis on the users.
   - Key findings will focus on points of confusion while navigating the application.

2. **Collecting Quantitative Data**:
   - Users will then be asked to fill out a survey consisting of SUS questions. This will be collected in a google form for later evaluation.

#### Focus Group Evaluation
1. **Splitting Groups**:
   - Participants will be split into two groups of three, we will then use that to conduct a focus group consisting of five questions. 
   - Key goals from this consist of trying to understand emotional feelings and undertones as they navigate the app, as well as future recomendations.    


# Roles

## Role Definitions

- Facilitator: The facilitator is responsible for guiding the test subject through the test plan and answering any questions the test subject might have
- Recorder: The recorder is responsible for documenting the test subject's responses, feedback and any interactions between the facilitator and the test subject
- Test Subject: The test subject is the person who will be interacting with the system being tested

## Role Assignments

Test Subject: ???
- Facilitator: Mazen Khallaf
- Recorder: Z'Arn Payne

Test Subject: ???
- Facilitator: Z'Arn Payne
- Recorder: Mazen Khallaf

Test Subject: ???
- Facilitator: Alvien Salvador
- Recorder: Ricky Fong

Test Subject: ???
- Facilitator: Ricky Fong
- Recorder: Alvien Salvador

Test Subject: ???
- Facilitator: Hamish ???
- Recorder: Risheet Peri

Test Subject: ???
- Facilitator: Risheet Peri
- Recorder: Hamish ???

# Tasks

### Task 1: Create a New Expense

**Objective**: Verify the functionality of adding a new recurring expense and splitting it among household members.

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

### Task 2: Pay an Existing Expense

**Objective**: Ensure the functionality of paying an existing expense and verify its removal from the list.

**Steps**:
1. Navigate to the "Pay up" section.
2. Open the dropdown for Alex to view all outstanding payments.
3. Select the expense for Power ($80.25).
4. Confirm the payment.
5. Verify the expense is removed from the list and updates are reflected in the expense records.

### Task 3: View Past Expenses

**Objective**: Confirm the ability to view past expenses and verify payment history.

**Steps**:
1. Navigate to the "Expenses" section.
2. Access the "Past Expenses" tab.
3. Locate the expense for garbage from the previous week.
4. Verify the details of who paid for the garbage expense.

### Task 4: Manage Insights

**Objective**: Validate the insights feature for the rent category and ensure accurate data visualisation.

**Steps**:
1. Navigate to the "Insights" page.
2. Select the Rent category.
3. Change the view to display monthly insights.
4. Analyse the data presented in graphs and tables for accuracy and completeness.

### Task 5: View Dashboard/Home

**Objective**: Review the main dashboard for an overview of upcoming payments and overall balance.

**Steps**:
1. Navigate to the "Dashboard/Home" section.
2. Review the overview of upcoming payments and overall owing.
3. Click the dropdown button for the upcoming payments card.
4. Click the dropdown button for the pay-up card to view all outstanding payments.

### Task 6: Change Display and Accessibility Options

**Objective**: Test the customization options for display and accessibility to ensure usability for all users.

**Steps**:
1. Open the hamburger menu and navigate to "App Settings."
2. Access the "Display Options."
3. Adjust accessibility settings (e.g., colour scheme, contrast).
4. Verify that the changes are applied and improve usability.

### Task 7: View FAQ and Contact Support

**Objective**: Test the help and support functionalities, ensuring users can find information and contact support if needed.

**Steps**:
1. Open the hamburger menu and navigate to "App Settings."
2. Access the FAQ section.
3. Review the frequently asked questions.
4. Navigate back to settings and select the "Contact Support" option.
5. Complete the support form and submit it.
6. Verify receipt of the support request and the response process.


# Focus Group Questions
1. What were your first impressions of the app?
2. How did you feel when you first started using the app?
3. What did you like about the app?
4. What did you like least about the app?
5. How easy/difficult was it to navigate the app?
6. Were there any parts of the wireframe that you found confusing or hard to use?
7. How intuitive was the navigation of the app?
8. What would you change about the app?
9. What do you think about the overall design of the app?
10. Were there any design aspects/components that stood out to you (in good or bad ways)
11. How did you feel about the color scheme of the app?
12. What tasks did you find easiest and hardest to complete, and why?
13. If this were a real app, would you use it? Why or why not?
14. Is there anything else you would like to add?

# Metrics


# Usability Goals


# Problem Severity


