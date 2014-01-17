JBoss BPM Suite Generic Loan Demo
=================================


Quickstart
----------

1. Clone project.

2. Add products to installs directory.

3. Run 'init.sh' or 'init.bat' file.

4. Login to http://localhost:8080/business-central  (u:erics / p:bpmsuite)

  - login for Loan Officer role (u:alan / p:bpmsuite)

5. Generic Loan demo pre-installed as project.

6. Process and Task dashboard pre-filled with mock data. 


Note
----

The demo covers the following aspects:
 - Business process definition
 - Guided Rule definition
 - Rules definition (DLR format)
 - Forms definition (for both process, to collect the input parameters, and user task)
 - Data models (using Date Modeler)


The following values can be used (in process form) for testing:
 - Applicant: Your Name
 - Age: 21
 - Income: 2000
 - Amount: 10010    (auto approval if value under 10k)
 - Period (in months): 24

Note that the entire demo is running default in memory, restart server, lose your process instances, data, monitoring history.


Generic Loan demo known issues
------------------------------

1)

Simulation run with a small number of instances (less than 20) will work, but the graphs in the reports are not displayed.

Supporting Articles
-------------------

[Red Hat JBoss BPM Suite - Automated Lending with a Generic Loan Demo] (http://www.schabell.org/2013/11/jboss-bpm-suite-automated-lending-generic-loan-demo.html)


Released versions
-----------------

See the tagged releases for the following versions of the product:

- CR1 - JBoss BPM Suite 6.0.0.CR1, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.5 - JBoss BPM Suite 6.0.0.ER7, JBoss EAP 6.1.1, mock data populated in Process and Task dashboard, and generic loan demo installed.

- v0.4 - JBoss BPM Suite 6.0.0.Beta, JBoss EAP 6.1.1, mock data populated in Process and Task dashboard, and generic loan demo installed.

- v0.3 - JBoss BPM Suite 6.0.0.Beta, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.2 - JBoss BPM Suite 6.0.0.ER5, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.1 - JBoss BPM Suite 6.0.0.Beta1, JBoss EAP 6.1.1, and generic loan demo installed.


![Install Console](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/install-console.png?raw=true)

![Loan Process](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/generic-loan-process.png?raw=true)

![Process & Task Dashboard](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/mock-bpm-data.png?raw=true)

