JBoss BPM Suite Generic Loan Demo
=================================
This demo is a financial simulation for getting a long and features BPM with human task integration,
rule integration and an example use of a signal.

There are three options available to you for using this demo; local, OpenShift and containerized.


Option 1 - Install on your machine
----------------------------------
1. [Download and unzip.](https://github.com/jbossdemocentral/bpms-generic-loan-demo/archive/master.zip)

2. Add products to installs directory.

3. Run 'init.sh' or 'init.bat' file. When running init.bat, be sure to run the script as an Administrator

4. Start JBoss BPMS Server by running 'standalone.sh' or 'standalone.bat' in the <path-to-project>/target/jboss-eap-6.4/bin directory.

5. Login to http://localhost:8080/business-central

    ```
    - login for admin role and Loan Officer role (u:erics / p:bpmsuite1!)
    ```

6. Generic Loan demo pre-installed as project.

7. You can pre-load the BPM Suite Generic Loan project with multiple pre-configured process instances, some will run through the
rejected path, some will be waiting for you in the Loan Officer human task when you login. To inject these pre-configured
requests just run the client jar from a command line shell. You can run the following command from the 'support' directory:

    ```
     java -jar jboss-generic-loan-demo-client.jar erics bpmsuite1!
    ```


Option 2 - Install with one click in xPaaS (bpmPaaS)
----------------------------------------------------
After clicking button, ensure `Gear` size is set to `medium`:

[![Click to install OpenShift](http://launch-shifter.rhcloud.com/launch/light/Install bpmPaaS.svg)](https://openshift.redhat.com/app/console/application_type/custom?&cartridges[]=https://raw.githubusercontent.com/jbossdemocentral/cartridge-bpmPaaS-generic-loan-demo/master/metadata/manifest.yml&name=bpmpaasgenericloan&gear_profile=medium&initial_git_url=)

Once installed you can use the JBoss BPM Suite logins: 

   * u:erics   p: bpmsuite  (admin)

   * u: alan   p: bpmsuite  (analyst)

   * u: daniel p: bpmsuite (developer)

   * u: ursla  p: bpmsuite (user)

   * u: mary   p: bpmsuite (manager)

Current hosting of bpmPaaS is on JBoss BPM Suite 6.0.2 in OpenShift Online.


Option 3 - Generate containerized installation
----------------------------------------------
The following steps can be used to configure and run the demo in a container

1. [Download and unzip.](https://github.com/jbossdemocentral/bpms-generic-loan-demo/archive/master.zip)

2. Add product installer to installs directory.

3. Copy contents of support/docker directory to the project root.

4. Build demo image.

	```
	docker build -t jbossdemocentral/bpms-generic-loan-demo .
	```
5. Start demo container.

	```
	docker run -it -p 8080:8080 -p 9990:9990 jbossdemocentral/bpms-generic-loan-demo
	```
6. Login to http://&lt;DOCKER_HOST&gt;:8080/business-central  

    ```
    - login for admin role and Loan Officer role (u:erics / p:bpmsuite1!)
    ```

7. Generic Loan demo pre-installed as project.

8. You can pre-load the BPM Suite Generic Loan project with multiple pre-configured process instances, some will run through the
rejected path, some will be waiting for you in the Loan Officer human task when you login. To inject these pre-configured
requests, invoke the client jar by executing a command in the most recently started container by running the following command in a new command line shell. 

    ```
     docker exec -it $(docker ps -lq) java -jar support/jboss-generic-loan-demo-client.jar erics bpmsuite1!
    ```

Additional information can be found in the jbossdemocentral docker [developer repository](https://github.com/jbossdemocentral/docker-developer)


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

Any user tasks have automated task reassignment back into the group should a task not complete within a minute.

Note that the entire demo is running default in memory, restart server, lose your process instances, data, monitoring history.

Source for demo client available in projects directory.


Supporting Articles
-------------------
- [7 Steps to Your First Process with JBoss BPM Suite Starter	Kit](http://www.schabell.org/2015/08/7-steps-first-process-jboss-bpmsuite-starter-kit.html)

- [3 shockingly easy ways into JBoss rules, events, planning & BPM](http://www.schabell.org/2015/01/3-shockingly-easy-ways-into-jboss-brms-bpmsuite.html)

- [Jump Start Your Rules, Events, Planning and BPM Today](http://www.schabell.org/2014/12/jump-start-rules-events-planning-bpm-today.html)

- [5 Handy Tips From JBoss BPM Suite For Release 6.0.3](http://www.schabell.org/2014/10/5-handy-tips-from-jboss-bpmsuite-release-603.html)

- [Rocket into the Clouds with OpenShift bpmPaaS Quickstarts](http://www.schabell.org/2014/10/red-hat-openshift-bpmpaas-automated-demo-projects-updated.html)

- [Red Hat JBoss BPM Suite - all product demos updated for version 6.0.2.GA release](http://www.schabell.org/2014/07/redhat-jboss-bpmsuite-product-demos-6.0.2-updated.html)

- [Red Hat JBoss BPM Suite - Generic Loan Demo with Signal Event] (http://www.schabell.org/2014/05/redhat-jboss-bpmsuite-generic-loan-signal-event.html)

- [Red Hat JBoss BPM Suite - Automated Lending with a Generic Loan Demo] (http://www.schabell.org/2013/11/jboss-bpm-suite-automated-lending-generic-loan-demo.html)


Released versions
-----------------
See the tagged releases for the following versions of the product:

- v2.5 - JBoss BPM Suite 6.3.0 on JBoss EAP 6.4.7 with generic loan demo installed.

- v2.4 - JBoss BPM Suite 6.2.0-BZ-1299002 on JBoss EAP 6.4.4 with generic loan demo installed.

- v2.3 - JBoss BPM Suite 6.2.0, JBoss EAP 6.4.4 and OSE aligned contianerization.

- v2.2 - JBoss BPM Suite 6.2.0, JBoss EAP 6.4.4 and generic loan demo installed.

- v2.1 - JBoss BPM Suite 6.1 with generic loan demo installed.

- v2.0 - JBoss BPM Suite 6.0.3 with automated task reassignment.

- v1.9 - JBoss BPM Suite 6.0.3 with optional containerized installation.

- v1.8 - moved to JBoss Demo Central, updated windows init.bat support and one click install button.

- v1.7 - JBoss BPM Suite 6.0.3 installer with generic loan demo installed.

- v1.6 - JBoss BPM Suite 6.0.2 installer used, with generic loan demo installed and demo client sources added.

- v1.5 - JBoss BPM Suite 6.0.2 installer used, with generic loan demo installed.

- v1.4 - JBoss BPM Suite 6.0.2, JBoss EAP 6.1.1, generic loan demo installed.

- v1.3 - JBoss BPM Suite 6.0.1, JBoss EAP 6.1.1, generic loan demo with customer contact signal in process.

- v1.2 - JBoss BPM Suite 6.0.1, JBoss EAP 6.1.1, generic loan demo installed.

- v1.1 - JBoss BPM Suite 6.0.0, JBoss EAP 6.1.1, generic loan demo installed, mock data question removed.

- v1.0 - JBoss BPM Suite 6.0.0, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.7 - JBoss BPM Suite 6.0.0.CR2, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.6 - JBoss BPM Suite 6.0.0.CR1, JBoss EAP 6.1.1, and generic loan demo installed, client jar added, and optional mock data population.

- v0.5 - JBoss BPM Suite 6.0.0.ER7, JBoss EAP 6.1.1, mock data populated in Process and Task dashboard, and generic loan demo installed.

- v0.4 - JBoss BPM Suite 6.0.0.Beta, JBoss EAP 6.1.1, mock data populated in Process and Task dashboard, and generic loan demo installed.

- v0.3 - JBoss BPM Suite 6.0.0.Beta, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.2 - JBoss BPM Suite 6.0.0.ER5, JBoss EAP 6.1.1, and generic loan demo installed.

- v0.1 - JBoss BPM Suite 6.0.0.Beta1, JBoss EAP 6.1.1, and generic loan demo installed.


![Loan Process](https://github.com/jbossdemocentral/bpms-generic-loan-demo/blob/master/docs/demo-images/generic-loan-process.png?raw=true)

![Process & Task Dashboard](https://github.com/jbossdemocentral/bpms-generic-loan-demo/blob/master/docs/demo-images/mock-bpm-data.png?raw=true)



