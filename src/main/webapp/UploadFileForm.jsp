<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Upload File</title>
</head>
<body>
    <h2>Upload File</h2>
    <form action="uploadFile" method="post" enctype="multipart/form-data">
        <table>
            <tr>
                <td><label>Upload File</label></td>
                <td><input type="file" name="file" required="required" /></td>
                <td><input type="submit" value="Add" class="button" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
