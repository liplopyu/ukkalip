<?php
if(!isset($_SESSION["user_id"]) ) 
?>

<!DOCTYPE html>
<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8" />
  <title>Eperpus</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
  <link rel="stylesheet" href="register/style.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>
<body>
<div class="container">
	<div class="screen">
		<div class="screen__content">
			<form action="backend/login.php" method="post" class="login">
				<div class="login__field">
					<i class="login__icon fas fa-user"></i>
					<input type="text" class="login__input" placeholder="User name / Email" name="username_email" required>
				</div>
				<div class="login__field">
					<i class="login__icon fas fa-lock"></i>
					<input type="password" class="login__input" placeholder="Password" name="password" required>
				</div>
        <button class="login__submit">
    <span class="button__text">Log In Now</span>
    <i class="button__icon fas fa-chevron-right"></i>
  </button>
			</form>
      <div class="signup__link">
          <span class="text-decoration-none">Don't have an account yet? </span>
          <a href="register/register.html" class="text-decoration-none text-primary">Sign Up</a>
        </div>
		</div>
		<div class="screen__background">
			<span class="screen__background__shape screen__background__shape4"></span>
			<span class="screen__background__shape screen__background__shape3"></span>		
			<span class="screen__background__shape screen__background__shape2"></span>
			<span class="screen__background__shape screen__background__shape1"></span>
		</div>		
	</div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
