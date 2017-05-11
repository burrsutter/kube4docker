
oc new-project fabric8demo

For a new project, use the following:
mvn io.fabric8:fabric8-maven-plugin:3.3.4:setup
but this has already been applied, check the pom.xml 

So all you need is the following:
mvn fabric8:deploy

