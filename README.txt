This is a java based dynamic web application(Leave Management System)..
The terminologies used in the applications are JSP, Servlet, JDBC, HTML, CSS, Bootstrap..
The application is work on the basis of applying leave for the manager of the organisation and the applied leave can only see by the administrative of the website..

How it works?..

	//***USER SIDE***//

	1) whenever we run the website it will go the home page there we can see two options LOGIN and REGISTER. if you are a user not registered one then you can register by clicking the register button.
	2) After signup the user can login through the login button provided in the website..
	3) If the user is successfully logged then the user automatically redirected to the LEAVE APPLY option, there the user can apply leave for him..

	//***ADMIN SIDE***///

	1) If the admin want to login the website he can login through the LOGIN button provided in the website..
	2) If the admin is not registered and want to register as a admin then he can register by run the website it will result as an home page to signup as admin give(/admin) in the main url ie, if the url is www.leaveportal.com then give www.leaveportal.com/admin for signup as an admin..
	3) In the admin signup section the admin can provide the information asked there by he/she can register as an admin..
	4) after signup as an admin the admin can login the website through the LOGIN butoon provided in the homepage of the website..
	5) If the admin is successfully logged it will automatically redirected to the admin page where the admin can view the number of customers are applied for the leave with information such as Name, Email, Reason and Applied date and time..

	//***HOW TO SETUP DATABASE AND TABLE***//

	1) Create a database named "leave".
	2) Create 3 tables namely customer, employee, login
	3) In the customer table create fields such as id, name, password, email, mobile
	4) In the employee table create fields such as id, name, email, reason, date
	5) In the login table create fields such as id, username, password, email, mobile


	//***JDBC SETUP***//

	1) Here the jdbc connection is created in the leaveApply.java class where the connection is created on the basis of the username and password of my database..
	2) You can change it with respect to your system by editing username and password provided in the leaveApply.java class..