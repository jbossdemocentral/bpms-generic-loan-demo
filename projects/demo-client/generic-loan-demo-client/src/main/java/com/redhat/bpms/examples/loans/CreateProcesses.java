package com.redhat.bpms.examples.loans;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import org.kie.api.runtime.KieSession;
import org.kie.api.runtime.manager.RuntimeEngine;
import org.kie.services.client.api.RemoteRestRuntimeEngineFactory;

public class CreateProcesses
{

	public static void main(String[] args)
	{
		if( args.length < 2 || args.length > 4 )
		{
			System.out
				.println( "Usage: java -jar jboss-genearic-demo-client.jar username password [http://localhost:8080/business-central [ro.bull.bpm.examples:loan:1.0]]" );
			return;
		}

		String userId = args[0];
		String password = args[1];

		String applicationContext;
		if( args.length > 2 )
		{
			applicationContext = args[2];
		}
		else
		{
			applicationContext = "http://localhost:8080/business-central";
		}

		String deploymentId;
		if( args.length > 3 )
		{
			deploymentId = args[3];
		}
		else
		{
			deploymentId = "ro.bull.bpm.examples:loan:1.0";
		}

		populateSamples( userId, password, applicationContext, deploymentId );
	}

	public static void populateSamples(String userId, String password, String applicationContext, String deploymentId)
	{
		RuntimeEngine runtimeEngine = getRuntimeEngine( applicationContext, deploymentId, userId, password );
		KieSession kieSession = runtimeEngine.getKieSession();
		Map<String, Object> processVariables;
		// Name, age, email, income, amount, period.
		processVariables = getProcessArgs( "Amy", 33, "amy@me.com", 3000, 20000, 24 );
		kieSession.startProcess( "ro.bull.bpm.examples.loan.LoanApp", processVariables );
		// Name, age, email, income, amount, period.
		processVariables = getProcessArgs( "Fred", 16, "fred@me.com", 500, 1000, 24 );
		kieSession.startProcess( "ro.bull.bpm.examples.loan.LoanApp", processVariables );
		// Name, age, email, income, amount, period.
		processVariables = getProcessArgs( "Bob", 22, "bob@me.com", 2200, 10000, 10 );
		kieSession.startProcess( "ro.bull.bpm.examples.loan.LoanApp", processVariables );
		// Name, age, email, income, amount, period.
		processVariables = getProcessArgs( "George", 53, "george@me.com", 1100, 30000, 36 );
		kieSession.startProcess( "ro.bull.bpm.examples.loan.LoanApp", processVariables );
		// Name, age, email, income, amount, period.
		processVariables = getProcessArgs( "Billy", 43, "billy@me.com", 2500, 25000, 48 );
		kieSession.startProcess( "ro.bull.bpm.examples.loan.LoanApp", processVariables );
		// Name, age, email, income, amount, period.
		processVariables = getProcessArgs( "Sally", 35, "sally@me.com", 5000, 50000, 24 );
		kieSession.startProcess( "ro.bull.bpm.examples.loan.LoanApp", processVariables );
		// Name, age, email, income, amount, period.
		processVariables = getProcessArgs( "Kid", 10, "kid@me.com", 1000, 2000, 12 );
		kieSession.startProcess( "ro.bull.bpm.examples.loan.LoanApp", processVariables );
		// Name, age, email, income, amount, period.
		processVariables = getProcessArgs( "Joan", 80, "joan@me.com", 1000, 2000, 12 );
		kieSession.startProcess( "ro.bull.bpm.examples.loan.LoanApp", processVariables );
		System.out.println();
		System.out.println("Started process instances successfully!");
		System.out.println();
	}

	private static RuntimeEngine getRuntimeEngine(String applicationContext, String deploymentId, String userId, String password)
	{
		try
		{
			URL jbpmURL = new URL( applicationContext );
			RemoteRestRuntimeEngineFactory remoteRestSessionFactory = RemoteRestRuntimeEngineFactory.newBuilder()
        .addDeploymentId(deploymentId)
        .addUrl(jbpmURL)
        .addUserName(userId)
        .addPassword(password)
        .buildFactory();
			RuntimeEngine runtimeEngine = remoteRestSessionFactory.newRuntimeEngine();
			return runtimeEngine;
		}
		catch( MalformedURLException e )
		{
			throw new IllegalStateException( "This URL is always expected to be valid!", e );
		}
	}

	private static Map<String, Object> getProcessArgs(String name, int age, String email, float income, float amount, int period)
	{
		Map<String, Object> processVariables = new HashMap<String, Object>();
		processVariables.put( "name", name );
		processVariables.put( "age", age );
		processVariables.put( "email", email );
		processVariables.put( "income", income );
		processVariables.put( "amount", amount );
		processVariables.put( "period", period );
		return processVariables;
	}
}
