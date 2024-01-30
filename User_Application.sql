SELECT
	User_Account.UserId,
	User_Account.User_Email,
	User_Application.*
FROM
	User_Account
JOIN User_Application ON User_Account.UserId=User_Application.User_Id;