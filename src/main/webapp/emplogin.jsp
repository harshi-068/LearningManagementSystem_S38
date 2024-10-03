<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>

<link type="text/css" rel="stylesheet" href="css/style.css">

<style>
.card {
  border: 1px solid rgba(255, 255, 255, 0.22);
 border-radius: 70px;
  padding: 20px;
  width: 300px;
  margin: 0 auto;
background: rgba(255, 255, 255, 0.56);
  /* The last value (0.7) controls the level of transparency */
  box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
  backdrop-filter: blur(17.5px);
-webkit-backdrop-filter: blur(17.5px);
}



.card-header {
  text-align: center;
}

</style>
</head>
<body style="background-image: linear-gradient(#ffc78c, #ffa080)">

<%@ include file="navbar.jsp" %>

<br> 

<span class="blink">
<h3 align=center style="color:red">${message}</h3>
</span>

<div class="card">
  <div class="card-header">
    <h3><u>Faculty Login</u></h3>
  </div>

  <form method="post" action="checkemplogin">
    <table align=center>
      <tr>
        <td><label>Email ID</label></td>
        <td><input type="email" name="email" required/></td>
      </tr>

      <tr><td></td></tr>

      <tr>
        <td><label>Password</label></td>
        <td><input type="password" name="pwd" required/></td>
      </tr>

      <tr><td></td></tr>
      <tr><td></td></tr>

      <tr align=center>
        <td colspan=2><input type="submit" value="Login" class="button"></td>
      </tr>
    </table>
  </form>

  <br>

  <h3 align="center">
    New Registration ? <a href="empreg">Click Here</a>
  </h3>
</div>

</body>
</html>
