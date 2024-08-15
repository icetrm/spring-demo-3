# spring-demo-3 Batch Service
Get data from sample-data.csv insert to database.
(spring-boot-starter-batch)
```text
JobLauncherApplicationRunner   : Running default command line with: []
SimpleJobLauncher      : Job: [SimpleJob: [name=importUserJob]] launched with the following parameters: [{}]
SimpleStepHandler     : Executing step: [step1]
PersonItemProcessor     : Converting (Person[firstName=Jill, lastName=Doe]) into (Person[firstName=JILL, lastName=DOE])
PersonItemProcessor     : Converting (Person[firstName=Joe, lastName=Doe]) into (Person[firstName=JOE, lastName=DOE])
PersonItemProcessor     : Converting (Person[firstName=Justin, lastName=Doe]) into (Person[firstName=JUSTIN, lastName=DOE])
PersonItemProcessor     : Converting (Person[firstName=Jane, lastName=Doe]) into (Person[firstName=JANE, lastName=DOE])
PersonItemProcessor     : Converting (Person[firstName=John, lastName=Doe]) into (Person[firstName=JOHN, lastName=DOE])
AbstractStep         : Step: [step1] executed in 29ms
JobCompletionNotificationListener  : !!! JOB FINISHED! Time to verify the results
JobCompletionNotificationListener  : Found <{Person[firstName=JILL, lastName=DOE]}> in the database.
JobCompletionNotificationListener  : Found <{Person[firstName=JOE, lastName=DOE]}> in the database.
JobCompletionNotificationListener  : Found <{Person[firstName=JUSTIN, lastName=DOE]}> in the database.
JobCompletionNotificationListener  : Found <{Person[firstName=JANE, lastName=DOE]}> in the database.
JobCompletionNotificationListener  : Found <{Person[firstName=JOHN, lastName=DOE]}> in the database.
SimpleJobLauncher      : Job: [SimpleJob: [name=importUserJob]] completed with the following parameters: [{}] and the following status: [COMPLETED] in 47ms
```
#### sample-data.csv
```text
Jill,Doe
Joe,Doe
Justin,Doe
Jane,Doe
John,Doe
```
![This is an image](/screenshot/Screenshot1.png)
![This is an image](/screenshot/Screenshot2.png)

```text
spring.batch.jdbc.initialize-schema=ALWAYS
```