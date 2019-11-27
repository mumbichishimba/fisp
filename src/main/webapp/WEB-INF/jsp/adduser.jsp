<%-- 
    Document   : adduser
    Created on : Nov 20, 2019, 9:36:09 PM
    Author     : Mumbi Chishimba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Add User</h2>
        <table border="1">
            <tbody>
                <tr>
                    <td>Firstname</td>
                    <td><input type="text" name="firstname" /></td>
                </tr>
                <tr>
                    <td>Othernames</td>
                    <td><input type="text" name="othernames" /></td>
                </tr>
                <tr>
                    <td>Lastname</td>
                    <td><input type="text" name="lastname" /></td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td><input type="date" name="dateofbirth" /></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <select name="gender">
                            <option value="M">Male</option>
                            <option value="F">Female</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><input type="text" name="address" /></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" /></td>
                </tr>
                <tr>
                    <td>City</td>
                    <td><input type="text" name="city" /></td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" /></td>
                </tr>
                <tr>
                    <td>Password (Confirm)</td>
                    <td><input type="password" name="password_confirm" /></td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="submit" value="Add" /> </td>
                </tr>
            </tbody>
        </table>

    </body>
</html>
