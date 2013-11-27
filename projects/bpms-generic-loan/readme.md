JBoss BPM Suite Loan Demo
=========================

![Loan Process](https://dl.dropboxusercontent.com/s/9xwjbq3r1fiud0a/bpms-loan-demo.png)

Install the application into JBoss BPM Suite
--------------------------------------------

Note: JBoss BPM Suite (can be downloaded from https://access.redhat.com/) is already installed.

Before starting the installation add the loanOfficer role to the user which is used to login in Business Central.

1. Open the Business Central (ex. http://<your_ip>:<port>/business-central)
2. Login (u:erics / p:bpmsuite)
3. From the main meniu select `Authoring -> Administration`
4. From the secondary menu select `Repositories -> Clone repository`
5. Fill the Clone Repository form:
  - Repository Name - the name of the repository (created inside JBoss BPM Suite)
  - Organizational Unit - select a value from list
  - Git URL - https://github.com/eschabell/bpms-loan-demo.git
  - Leave User Name and Password fields empty

Note: The application assets are defined into the ro.bull.bpm.examples.loan package.

Run the application
-------------------

1. From the main meniu select `Authoring -> Project Authoring`
2. In `Project Explorer` select the `Organizational Unit` and than the `Repository` you created
3. From the secondary menu select `Tools -> Project Editor`
4. Push the `Build & Deploy` button (top-right corner) in order to build the application
5. From the main menu select `Process Management -> Process Definitions`
6. Start the LoanApp process

Note
----

The demo covers the following aspects:
 - Business process definition
 - Guided Rule definition
 - Rules definition (DLR format)
 - Forms definition (for both process, to collect the input parameters, and user task)
 - Data models (using Date Modeler)

Process form values
-------------------

The following values can be used (in process form) for testing:
 - Applicant: Test
 - Age: 21
 - Income: 2000
 - Amount: 10010
 - Period (in months): 24
