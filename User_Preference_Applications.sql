SELECT
	User_Account.UserId,
	User_Account.User_Email,
	User_Application.Application_Id,
    User_Application.TimeSlot,
    Job_Posting.Job_Id,
    Subopening_Info_Table.*
FROM
	User_Account
JOIN User_Application ON User_Account.UserId=User_Application.User_Id
JOIN Job_Posting ON User_Application.Opening_Id = Job_Posting.Job_Id
JOIN Subopening_Info_Table ON Job_Posting.Job_Id = Subopening_Info_Table.Job_Id
JOIN Preferences ON User_Application.Application_Id = Preferences.ApplicationId
WHERE
	Preferences.Instructional_Design_Engineer = 1 AND Subopening_Info_Table.Job_Role = 'Instructional Designer'
    OR
    Preferences.Software_Engineer = 1 AND Subopening_Info_Table.Job_Role = 'Software Engineer'
    OR
    Preferences.Software_Testing_Engineer = 1 AND Subopening_Info_Table.Job_Role = 'Software Tester';