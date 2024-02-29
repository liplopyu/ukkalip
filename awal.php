<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <title>Eperpus</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
      .center-card {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        opacity: 0.9;
      }

      body {
        background-image: url('assets/bckground.png');
        background-size: cover;
        height:100vh;
      }

      .card {
        transition: transform 0.3s ease-in-out; /* Transisi transformasi */
      }

      /* Menambahkan efek scale saat card dihover */
      .card:hover {
        transform: scale(1.05);
      }
    </style>
  </head>
  <body>
    <div class="container">
      <div class="center-card">
        <a href="login.php" class="card" style="width: 30rem; background: white; text-decoration: none; color: inherit;">
          <img src="assets/logo.png" class="card-body pt-2" alt="logo" />
          <hr />
          <div class="card-body pt-2">
            <h3 class="card-text text-center">Portal Login EPerpus</h3>
          </div>
        </a>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>
