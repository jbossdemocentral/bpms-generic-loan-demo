#!/bin/sh 
DEMO="Generic Loan Demo"
AUTHORS="Dan-Grigore Pupaza, Andrew Block,"
AUTHORS2="Alexandre Porcelli, Eric D. Schabell, Duncan Doyle"
PROJECT="git@github.com:jbossdemocentral/bpms-generic-loan-demo.git"
PRODUCT="JBoss BPM Suite"
TARGET_DIR=./target
JBOSS_HOME=./target/jboss-eap-7.0
SERVER_DIR=$JBOSS_HOME/standalone/deployments/
SERVER_CONF=$JBOSS_HOME/standalone/configuration/
SERVER_BIN=$JBOSS_HOME/bin
SRC_DIR=./installs
SUPPORT_DIR=./support
PRJ_DIR=./projects/bpms-generic-loan
BPMS=jboss-bpmsuite-6.4.0.GA-deployable-eap7.x.zip
EAP=jboss-eap-7.0.0-installer.jar
VERSION=6.4

# wipe screen.
clear 

echo
echo "#################################################################"
echo "##                                                             ##"   
echo "##  Setting up the ${DEMO}                           ##"
echo "##                                                             ##"   
echo "##                                                             ##"   
echo "##     ####  ####   #   #      ### #   # ##### ##### #####     ##"
echo "##     #   # #   # # # # #    #    #   #   #     #   #         ##"
echo "##     ####  ####  #  #  #     ##  #   #   #     #   ###       ##"
echo "##     #   # #     #     #       # #   #   #     #   #         ##"
echo "##     ####  #     #     #    ###  ##### #####   #   #####     ##"
echo "##                                                             ##"   
echo "##                                                             ##"   
echo "##  brought to you by,                                         ##"   
echo "##   ${AUTHORS}                         ##"
echo "##   ${AUTHORS2}        ##"
echo "##                                                             ##"   
echo "##  ${PROJECT} ##"
echo "##                                                             ##"   
echo "#################################################################"
echo

command -v mvn -q >/dev/null 2>&1 || { echo >&2 "Maven is required but not installed yet... aborting."; exit 1; }

# make some checks first before proceeding.	
if [ -r $SRC_DIR/$EAP ] || [ -L $SRC_DIR/$EAP ]; then
	echo Product EAP sources are present...
	echo
else
	echo Need to download $EAP package from the Customer Portal 
	echo and place it in the $SRC_DIR directory to proceed...
	echo
	exit
fi

if [ -r $SRC_DIR/$BPMS ] || [ -L $SRC_DIR/$BPMS ]; then
		echo Product BPM Suite sources are present...
		echo
else
		echo Need to download $BPMS package from the Customer Portal 
		echo and place it in the $SRC_DIR directory to proceed...
		echo
		exit
fi

# Remove the old JBoss instance, if it exists.
if [ -x $JBOSS_HOME ]; then
	echo "  - removing existing JBoss product..."
	echo
	rm -rf $JBOSS_HOME
fi

# Run installers.
echo "JBoss EAP installer running now..."
echo
java -jar $SRC_DIR/$EAP $SUPPORT_DIR/installation-eap -variablefile $SUPPORT_DIR/installation-eap.variables

if [ $? -ne 0 ]; then
	echo
	echo "Error occurred during JBoss EAP installation!"
	exit
fi

echo
echo "JBoss BPM Suite installer running now..."
echo
unzip -qo $SRC_DIR/$BPMS -d ./target

if [ $? -ne 0 ]; then
	echo "Error occurred during JBoss BPM Suite installation!"
	exit
fi

echo "  - enabling demo accounts setup ..."
echo
$JBOSS_HOME/bin/add-user.sh -a -r ApplicationRealm -u erics -p bpmsuite1! -ro analyst,admin,manager,user,kie-server,kiemgmt,rest-all --silent

echo "  - setting up demo projects..."
echo
cp -r $SUPPORT_DIR/bpm-suite-demo-niogit $SERVER_BIN/.niogit

echo "  - setting up standalone.xml configuration adjustments..."
echo
cp $SUPPORT_DIR/standalone.xml $SERVER_CONF

echo "  - setup email task notification users..."
echo
cp $SUPPORT_DIR/userinfo.properties $SERVER_DIR/business-central.war/WEB-INF/classes/

echo "  - making sure standalone.sh for server is executable..."
echo
chmod u+x $JBOSS_HOME/bin/standalone.sh

# Optional: uncomment this to install mock data for BPM Suite.
#
#echo "  - setting up mock bpm dashboard data..."
#cp $SUPPORT_DIR/1000_jbpm_demo_h2.sql $SERVER_DIR/dashbuilder.war/WEB-INF/etc/sql
#echo

echo
echo "========================================================================"
echo "=                                                                      ="
echo "=  You can now start the $PRODUCT with:                         ="
echo "=                                                                      ="
echo "=   $SERVER_BIN/standalone.sh                           ="
echo "=                                                                      ="
echo "=  Login into business central at:                                     ="
echo "=                                                                      ="
echo "=    http://localhost:8080/business-central  (u:erics / p:bpmsuite1!)  ="
echo "=                                                                      ="
echo "=  $PRODUCT $VERSION $DEMO Setup Complete.               ="
echo "=                                                                      ="
echo "========================================================================"

