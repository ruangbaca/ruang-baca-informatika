<body onload="initialize()">

<div id="loginForm">
    <noscript>
        <div style="font-weight: bold; color: #FF0000;">Browser anda tidak mendukung Javascript atau Javascript tidak diaktifkan. Aplikasi tidak dapat dijalankan tanpa Javascript!<div>
    </noscript>
    <form action="index.php?p=login" method="post">
    <div class="heading1">Username</div>
    <div><input type="text" name="userName" style="width: 80%;" /></div>
    <div class="heading1 marginTop">Password</div>
    <div><input type="password" name="passWord" style="width: 80%;" /></div>
    <div class="marginTop"><input type="submit" name="logMeIn" value="Logon" id="loginButton" />
        <input type="button" value="Home" id="homeButton" onClick="javascript: location.href = 'index.php';" />
    </div>
    </form>
</div>