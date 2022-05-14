**********************************************************************
                                              88 88                     
                                              88 88                     
                                              88 88                     
,adPPYYba, 8b,dPPYba,   ,adPPYb,d8  ,adPPYba, 88 88,dPPYba,  ,adPPYba,  
""     `Y8 88P'   `"8a a8"    `Y88 a8P_____88 88 88P'    "8a I8[    ""  
,adPPPPP88 88       88 8b       88 8PP""""""" 88 88       d8  `"Y8ba,   
88,    ,88 88       88 "8a,   ,d88 "8b,   ,aa 88 88b,   ,a8" aa    ]8I  
`"8bbdP"Y8 88       88  `"YbbdP"Y8  `"Ybbd8"' 88 8Y"Ybbd8"'  `"YbbdP"'  
                        aa,    ,88                                      
                         "Y8bbdP"                                       
**********************************************************************

#This was made using phpMyAdmin from Wampp
#You must have previously installed the databases of the "paisesdb.sql" and "prueba.sql" files.

%git clone https://github.com/AngelluzZ/Laminas-API-Paises-Oauth2.git
%cd <installation directory>/api-tools-source/
%composer install
%composer development-enable
%php -S 0.0.0.0:8080 -ddisplay_errors=0 -t public public/index.php

~: Enter localhost:8080 from your browser.

***Create Database Adapter***
Adapter Name:	paisesdb
Driver Type:	PDO_Mysql
DSN:		mysql:dbname=paisesdb;host=localhost;
Username:	root
Password:	<empty>
Hostname:	localhost
Port,Charset:	<empty>

***Create Authentication Adapter***
Adapter Name:	oauth2
Type:		OAuth2 PDO
DSN:		mysql:dbname=prueba;host=localhost;
Username:	root
Password:	<empty>
OAuth2 route:	/oauth

~: In API LIST in side panel select "paisesapi" and change "Set authentication type" to "oauth2 (oauth2)".
~: In API LIST in side panel select "countries", select "Database Settings" tab, and make sure "paisesdb" is selected in "Adapter name".

***TO GET ACCESS TOKEN FROM POSTMAN***
Method:		POST:		http://localhost:8080/oauth
Authorization:	Type:		Basic Auth
		Username:	testclient
		Password:	testpass
Body:
	{
	    "grant_type":"password",
	    "username":"testuser",
	    "password":"testpass"
	}

~: Copy access tocken from response body.

***TO GET ACCESS PAISESDB FROM POSTMAN***
Method:		GET:	http://localhost:8080/countries
Authorization:	Type:		Bearer Token
		Token:		<Paste access token you got from previously>
	
~: You should get the list of countries in the db in the response body.