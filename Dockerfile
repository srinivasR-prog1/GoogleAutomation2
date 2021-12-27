FROM openjdk:8-jdk-alpine
WORKDIR C:/Users/tsrin/workspace/GoogleAutomation2
COPY target/selenium-docker1.jar selenium-docker1.jar
COPY target/selenium-docker1-tests.jar selenium-docker1-tests.jar
COPY target/libs libs
COPY testng.xml testng.xml
ENTRYPOINT java -cp selenium-docker1.jar:selenium-docker1-tests.jar:libs/* -Dbrowser=$browser  -DBUS_HOST=$BUS_HOST  org.testng.TestNG $MODULE