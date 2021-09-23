# Scrum_Team_Patient_Intake_Kiosk

3. Abhay Patel - Microservices Developer ;
   Divesh Jadhav - PM/BA & Quality & Dev Ops;
   John Paglia - UI/UX Developer;
   Parth Bharatkumar Yagnik - Data Architect;

4. Far Vision: Full Kiosk interface where users can sign in, self-service check in, provide pre-appointment information, fill in their demographics, family and social history, insurance data, consent forms, validate data entered by the user and make these data available to Practice EHR.

5. Near Vision: Creation of the first page of the interface for sign in/up to kiosk. Users can enter name, date of birth, email address. The system queries the database for user signing in and in case the user is not found, then redirects to the signup option. 

6. StakeHolders: 
			Internal: Doctors, Front Office
			External: Patients

7. Real Stakeholder- Front office staff: The staff will be the real stakeholder for this application. This application will decrease the workload of the front office staff, reduce patient-data entry errors, and improve efficiency of check in processes for patients and office staff.

8. URL for Product Backlog : https://www.pivotaltracker.com/projects/2533031

11. Explanation of User Stories Order
The user stories are ordered in sequence of actions the user will perform when checking-in to interact with the application. The user will first login and if there is invalid login information then an error will pop up. They can also then sign up if they are not registered already. When the patient starts filling the intake form, they will view the progress using a navigation bar and be able to jump between sections to fill out information. The patient will start the intake process by filling out personal information such as address, gender, contact information, etc. They will then fill out healthcare insurance information followed by patient health history and consent and liability forms. Once the user enters in all the relevant information and submits the form, they will receive a confirmation and the front desk staff will be notified of the completed check in by the patient.  

12. Definition Of Ready : 
A.
a) Title - User Interface - Sign In Page:
b) User story opening sentence - As a patient I want to sign in with my email/username for visit/check in to the clinic.
c) Additional details - The patient will enter in their username and password and submit the information to be able to access the patient intake forms.
d) Estimated in story points - 1

B. 
a) Title - User Interface - Error Dialog:
b) User story opening sentence - As a patient if I enter some data which is not in compliance, an error notification should popup so that any data entry related error is rectified at the very beginning of the visit/encounter.
c) Additional details - This error dialog would be present on all forms and be clearly visible. If validation finds an issue with data inputted by the user such as expired insurance or an 8 digit phone number or invalid email address, the error would specify the faulty data and display in the dialog.
d) Estimated in story points - 2

C.
a) Title - User Interface - Sign up page:
b) User story opening sentence - As a patient I want to enter my Sign up details so that I can create my patient profile.
c) Additional details - The new patient will enter the email/username, create a new password and other required details for having access to the patient intake forms.
d) Estimated in story points - 1

D.
a) Title - User Interface - Navigation / progress bar
b) User Story opening sentence - As a patient I want to navigate and view my progress while using the patient intake portal so that I can navigate to another section or return to a section that was not fully filled out.
c) Additional details - The navigation bar should be able to redirect the user to the desired location in the application and at the same time show the current location while filling the form.
d) Estimated in Story Points - 2

E.
a) Title - User Interface - Enter Personal Details:
b) User story opening statement :- As a patient I want to enter personal details so that the       
front office staff can accurately keep records of my personal information.
c) Additional details :-  The patient will be entering personal details such as gender,    address, contact information, etc.
d) Estimated in Story Points - 2

F.
a) Title User Interface - Add Healthcare insurance information
b) User story opening sentence - As a patient I want to enter my insurance information so that the billing can be charged to the appropriate insurance provider.
c) Additional details - The patient will enter relevant healthcare insurance information such as group policy number, plan provider, provider contact information, etc.
d) Estimated in Story Points - 1

G.
a) Title - User Interface - Add Patient health history information
b) User story opening sentence - As a patient I want to add personal health history so that there is a record of my vaccinations, medications, past health history, and other relevant information for the doctor to refer to during my visit.
c)Additional Details - The patient will be able to enter the required health related history which can be used by the doctor for a better treatment.
d) Estimated in Story Points - 1

H.
a) Title - User Interface - Consent & Liability Forms
b) User story opening statement - As a patient I want to provide my consent to the clinic to provide health services that are required so that my treatment can be done.
c) Additional Details :- The patient will be providing consent for legal purposes so that his/her data shall be stored in the USA.
d) Estimated in Story Point - 1

I.
a) Title - User Interface - Confirmation Screen:
b) User story opening sentence - As a patient once I am finished I would like to receive a final confirmation screen indicating that I have completed all steps and I am now checked in for my visit.
c) Additional details - The confirmation screen would display information pertaining to successful completion of the intake. This would be the time of completion and overview of information entered by the patient.
d) Estimated in story points - 2

J. 
a) Title - Database interface - User check-in notification to Front office staff
b) User story opening sentence - As a patient I want to be able to send an automated notification to the front office staff when I have finished checking in and completed the patient intake forms so that they can review that information, confirm my check-in and pass it along to the doctor.
c) Additional Details - Once the patient enters all the details, and confirms it by submitting it, the data should be inserted into the database. Once the data is successfully inserted into the database, a notification should be sent to the front office staff.
d) Estimated in story points - 3

13. URL for Product Backlog : https://www.pivotaltracker.com/projects/2533031

15. The team has agreed upon the following relative size estimate : for user stories with story point 1 the estimate is 10 person hour effort, for story point 2 the estimate is 15 person hour effort and for story point 3 the estimate is 20 person hour effort. 
