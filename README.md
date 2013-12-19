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

Demo works as documented, but there are many errors you will see in the server logs. You can ignore, but added here below for your
information.


2)

Log error messages if you have exisiting build artifact from project in your local maven repository on start up of product, looks
like this for me:

12:54:55,211 INFO  [org.guvnor.m2repo.backend.server.GuvnorM2Repository] (MSC service thread 1-1) Maven Repository root set to:
/Users/erics/demo-projects/bpms6/bpms-generic-loan-demo/target/jboss-eap-6.1/bin

12:54:59,353 INFO  [org.drools.compiler.kie.builder.impl.KieRepositoryImpl] (MSC service thread 1-1) KieModule was
added:ZipKieModule[ReleaseId=ro.bull.bpm.examples:loan:1.0file=/Users/erics/demo-projects/maven-repository/ro/bull/bpm/examples/loan/1.0/loan-1.0.jar]

12:55:01,054 ERROR [stderr] (Thread-89) Exception in thread "Thread-89" java.lang.NullPointerException

12:55:01,055 ERROR [stderr] (Thread-89) 	at org.uberfire.metadata.io.BatchIndex$1.run(BatchIndex.java:57)


3)

Login to product produces these errors in the server log, seems to work even though errors shown:

12:57:42,411 ERROR [org.uberfire.backend.server.config.DefaultPasswordServiceImpl] (http-localhost/127.0.0.1:8080-1) Unable to
decrypt: org.jasypt.exceptions.EncryptionOperationNotPossibleException
	at org.jasypt.encryption.pbe.StandardPBEByteEncryptor.decrypt(StandardPBEByteEncryptor.java:981) [jasypt-1.9.0.jar:]
	at org.jasypt.encryption.pbe.StandardPBEStringEncryptor.decrypt(StandardPBEStringEncryptor.java:725) [jasypt-1.9.0.jar:]
	at org.uberfire.backend.server.config.DefaultPasswordServiceImpl.decrypt(DefaultPasswordServiceImpl.java:42)


Supporting Articles
-------------------

[Red Hat JBoss BPM Suite - Automated Lending with a Generic Loan Demo] (http://www.schabell.org/2013/11/jboss-bpm-suite-automated-lending-generic-loan-demo.html)


Released versions
-----------------

See the tagged releases for the following versions of the product:

- v0.4 - JBoss BPM Suite 6.0.0.Beta, JBoss EAP 6.1.1, mock data populated in Process and Task dashboard, and generic loan demo installed.

- v0.3 - JBoss BPM Suite 6.0.0.Beta, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.2 - JBoss BPM Suite 6.0.0.ER5, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.1 - JBoss BPM Suite 6.0.0.Beta1, JBoss EAP 6.1.1, and generic loan demo installed.
