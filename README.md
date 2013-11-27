JBoss BPM Suite Generic Loan Demo
=================================

![Install Console](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/install-console.png?raw=true)

![Loan Process](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/generic-loan-process.png?raw=true)


Quickstart
----------

1. Clone project.

2. Add products to installs directory.

3. Run 'init.sh' or 'init.bat' file.

4. Login to http://localhost:8080/business-central  (u:erics / p:bpmsuite)

  - login for Loan Officer role (u:alan / p:bpmsuite)

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


Generic Loan demo known issues for Beta1
----------------------------------------
None noted yet.


Supporting Articles
-------------------

[Red Hat JBoss BPM Suite - Automated Lending with a Generic Loan Demo] (http://www.schabell.org/2013/11/jboss-bpm-suite-automated-lending-generic-loan-demo.html)


Released versions
-----------------

See the tagged releases for the following versions of the product:

- v0.2 - JBoss BPM Suite 6.0.0.ER5, JBoss EAP 6.0, and generic loan demo installed.

- v0.1 - JBoss BPM Suite 6.0.0.Beta1, JBoss EAP 6.0, and generic loan demo installed.
