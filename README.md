JBoss BPM Suite Generic Loan Demo
=================================


Quickstart
----------

1. Clone project.

2. Add products to installs directory.

3. Run 'init.sh' or 'init.bat' file.

4. Start JBoss BPMS Server by running 'standalone.sh' or 'standalone.bat' in the <path-to-project>/target/jboss-eap-6.1/bin directory.

5. Login to http://localhost:8080/business-central

```
  - login for admin role  (u:erics / p:bpmsuite)

  - login for Loan Officer role (u:alan / p:bpmsuite)
```

6. Generic Loan demo pre-installed as project.

7. Process and Task dashboard pre-filled with mock data optional now. 

8. You can pre-load the BPM Suite Generic Loan project with multiple pre-configured process instances, some will run through the
rejected path, some will be waiting for you in the Loan Officer human task when you login. To inject these pre-configured
requests just run the client jar from a command line shell. You can run the following command from the 'support' directory:

```
     java -jar jboss-generic-loan-demo-client.jar erics bpmsuite
```

Note
----

The demo covers the following aspects:
 - Business process definition
 - Guided Rule definition
 - Rules definition (DLR format)
 - Forms definition (for both process, to collect the input parameters, and user task)
 - Data models (using Date Modeler)
 - Helper jar to pre-load with five process instances in various states.

The following values can be used (in process form) for testing:
 - Applicant: Your Name
 - Age: 21
 - Income: 2000
 - Amount: 10010    (auto rejected if value under 10k)
 - Period (in months): 24

Note that the entire demo is running default in memory, restart server, lose your process instances, data, monitoring history.


Supporting Articles
-------------------

[Red Hat JBoss BPM Suite - Generic Loan Demo with Signal Event] (http://www.schabell.org/2014/05/redhat-jboss-bpmsuite-generic-loan-signal-event.html)

[Red Hat JBoss BPM Suite - Automated Lending with a Generic Loan Demo] (http://www.schabell.org/2013/11/jboss-bpm-suite-automated-lending-generic-loan-demo.html)


Released versions
-----------------

See the tagged releases for the following versions of the product:

- v1.3 - JBoss BPM Suite 6.0.1.GA, JBoss EAP 6.1.1, generic loan demo with customer contact signal in process.

- v1.2 - JBoss BPM Suite 6.0.1.GA, JBoss EAP 6.1.1, generic loan demo installed.

- v1.1 - JBoss BPM Suite 6.0.0.GA, JBoss EAP 6.1.1, generic loan demo installed, mock data question removed.

- v1.0 - JBoss BPM Suite 6.0.0.GA, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.7 - JBoss BPM Suite 6.0.0.CR2, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.6 - JBoss BPM Suite 6.0.0.CR1, JBoss EAP 6.1.1, and generic loan demo installed, client jar added, and optional mock data population.

- v0.5 - JBoss BPM Suite 6.0.0.ER7, JBoss EAP 6.1.1, mock data populated in Process and Task dashboard, and generic loan demo installed.

- v0.4 - JBoss BPM Suite 6.0.0.Beta, JBoss EAP 6.1.1, mock data populated in Process and Task dashboard, and generic loan demo installed.

- v0.3 - JBoss BPM Suite 6.0.0.Beta, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.2 - JBoss BPM Suite 6.0.0.ER5, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.1 - JBoss BPM Suite 6.0.0.Beta1, JBoss EAP 6.1.1, and generic loan demo installed.


![Install Console](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/install-console.png?raw=true)

![Loan Process](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/generic-loan-process.png?raw=true)

![Process & Task Dashboard](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/mock-bpm-data.png?raw=true)

![Digital Sign bpmPaaS](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/bpmpaas-sign.png)

![Digital Sign Annoucement](https://github.com/eschabell/bpms-generic-load-demo/blob/master/docs/demo-images/announce-sign.png?raw=true)

