<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change Password</title>
</head>
<body>
    <h2>Change Password</h2>
    <form action="${pageContext.request.contextPath}/change-password" method="post">
        <label for="oldPassword">Old Password:</label><br>
        <input type="password" id="oldPassword" name="oldPassword" required><br><br>
        
        <label for="newPassword">New Password:</label><br>
        <input type="password" id="newPassword" name="newPassword" required><br><br>
        
        <label for="reNewPassword">Confirm New Password:</label><br>
        <input type="password" id="reNewPassword" name="reNewPassword" required><br><br>
        
        <button type="submit">Change Password</button>
    </form>
</body>
</html>
