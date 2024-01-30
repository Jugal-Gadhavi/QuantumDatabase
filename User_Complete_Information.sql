SELECT
	User_Account.UserId,
    User_Account.User_Email, 
    Professional_Qualifications.*,
    Personal_Information.*,
    Education_Qualitfications.*
FROM 
    User_Account
JOIN Professional_Qualifications ON User_Account.UserId=Professional_Qualifications.UserId
JOIN Personal_Information ON User_Account.UserId=Personal_Information.UserId
JOIN Education_Qualitfications ON User_Account.UserId=Education_Qualitfications.User_Id;