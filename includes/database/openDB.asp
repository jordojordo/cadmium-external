<%

	Dim conCCD ' mycadmium database
	Set conCCD = Server.CreateObject("ADODB.Connection")
	conCCD.Open "Provider=SQLNCLI11;Server=172.24.16.212;Database=ConferencePortal3;UID=harvester;PWD=zUHeWud5;"

	Dim conPortal ' basic conference portal database
	Set conPortal = Server.CreateObject("ADODB.Connection")
	conPortal.Open "Provider=SQLNCLI11;Server=172.24.16.212;Database=ConferencePortal3;UID=harvester;PWD=zUHeWud5;"
	
	Dim con7 ' harvester history database
	Set con7 = Server.CreateObject("ADODB.Connection")
	con7.Open "Provider=SQLNCLI11;Server=172.24.16.212;Database=Harvester;UID=harvester;PWD=zUHeWud5;"
	
	Dim Portal3 ' myCadmium Portal Database
	Set Portal3 = Server.CreateObject("ADODB.Connection")
	Portal3.Open "Provider=SQLNCLI11;Server=172.24.16.212;Database=ConferencePortal3;UID=harvester;PWD=zUHeWud5;"	
	
	Dim conES ' conferenceportal database on eventscribe
	Set conES = Server.CreateObject("ADODB.Connection")
	conES.Open "Provider=SQLNCLI11;Server=172.24.16.6;Database=ConferencePortal;UID=eventscribe;PWD=VZ5dKMvDa4z;"
	
%>