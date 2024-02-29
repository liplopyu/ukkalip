<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <title>Eperpus</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="../../register/style.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <div class="container">
      <div class="screen">
        <div class="screen__content">
          <form action="../../backend/loginpetugas.php" method="post" class="login">
            <div class="login__field">
              <i class="login__icon fas fa-user"></i>
              <input
                type="text"
                class="login__input"
                placeholder="Full Name"
                name="fullname"
                required
              />
            </div>
            <div class="login__field">
              <i class="login__icon fas fa-user"></i>
              <input
                type="text"
                class="login__input"
                placeholder="Username"
                name="username"
                required
              />
            </div>
            <div class="login__field">
              <i class="login__icon fas fa-envelope"></i>
              <input
                type="text"
                class="login__input"
                placeholder="Email"
                name="email"
                required
              />
            </div>
            <div class="login__field">
              <i class="login__icon fas fa-map-marker-alt"></i>
              <input
                type="text"
                class="login__input"
                placeholder="Alamat"
                name="alamat"
                required
              />
            </div>
            <div class="login__field">
              <i class="login__icon fas fa-lock"></i>
              <input
                type="password"
                class="login__input"
                placeholder="Password"
                name="password"
                required
              />
            </div>
            <button class="login__submit">
              <span class="button__text">Register Now</span>
              <i class="button__icon fas fa-chevron-right"></i>
            </button>
          </form>
        </div>
        <div class="screen__background">
          <span
            class="screen__background__shape screen__background__shape4"
          ></span>
          <span
            class="screen__background__shape screen__background__shape3"
          ></span>
          <span
            class="screen__background__shape screen__background__shape2"
          ></span>
          <span
            class="screen__background__shape screen__background__shape1"
          ></span>
        </div>
      </div>
    </div>
  </body>
</html>
