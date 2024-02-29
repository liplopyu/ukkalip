<?php
session_start();

if(!isset($_SESSION["user_id"]) ) {
  header("Location: ../login.php");
  exit;
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/de8de52639.js" crossorigin="anonymous"></script>
    <title>Petugas Dashboard</title>
    <style>
        /* CSS untuk membuat posisi di tengah halaman */
        body, html {
            height: 100%;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Gaya untuk elemen book-cover */
        .book-cover {
            width: 200px;
            height: 300px;
            perspective: 1000px;
            position: relative;
            margin-top: -200px;
            margin-left: -300px;
        }

        .front-cover, .back-cover {
            width: 300%;
            height: 200%;
            position: absolute;
            top: 0;
            left: 0;
            transition: transform 0.5s;
        }

        .front-cover {
            background: rgb(210,251,255);
            background: linear-gradient(180deg, rgba(210,251,255,1) 0%, rgba(255,255,255,1) 52%, rgba(246,203,229,1) 100%);
            transform-origin: left;
            z-index: 2;
        }

        .front-cover h1, .front-cover p, .front-cover .alert {
            opacity: 1;
        }

        .back-cover {
            background-image: radial-gradient(circle at 50% -20.71%, #cbe7e1 0, #cae7e3 6.25%, #c9e7e6 12.5%, #c9e7e8 18.75%, #c9e7eb 25%, #c9e7ed 31.25%, #cae6ef 37.5%, #cbe6f1 43.75%, #cde5f2 50%, #cfe4f3 56.25%, #d1e4f4 62.5%, #d4e3f5 68.75%, #d7e2f5 75%, #dae1f5 81.25%, #dde0f4 87.5%, #e0e0f4 93.75%, #e3dff2 100%);
            z-index: 1;
            transform: rotateY(0deg);
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            align-items: center;
        }

        .book-cover:hover .front-cover {
            transform: rotateY(-180deg);
            z-index: 3;
        }

        .book-cover:hover .front-cover h1, 
        .book-cover:hover .front-cover p, 
        .book-cover:hover .front-cover .alert {
            opacity: 0;
        }

        .card-container {
            width: 100%;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .cardImg {
            position: relative;
            width: calc(50% - 20px); /* Adjust width to half of container width, minus margin */
            overflow: hidden;
            border-radius: 10px;
            border: 2px solid #ccc; /* Tambahkan border */
        }

        .cardImg img {
            width: 50%;
            height: 50%; /* Set height to 100% to ensure it's square */
            object-fit: cover; /* Maintain aspect ratio and cover the container */
            transition: transform 0.3s ease;
            /* Adjust gambar agar muat dalam buku */
            max-width: 100%;
            max-height: 100%;
        }

        .card-text {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            color: white;
            text-align: center;
            padding: 5px 0;
            font-size: 16px;
        }

        /* Gaya untuk elemen navigasi */
        body {
            background-image: url("../assets/bckground.png");
            background-size: cover;
            background-position: center;
            height: auto;
        }

        .navbar-brand {
            position: absolute;
            top: 0;
            left: 0;
            margin: 10px;
        }

        .dropdown {
            position: absolute;
            top: 25px;
            right: 0;
        }

        .dropdown-menu {
            margin-top: 10px;
        }

        .cardImg button {
            border: none;
            background: none;
            padding: 0;
            cursor: pointer;
        }

        .cardImg img:hover {
            transform: scale(1.05);
        }

        /* Mengubah warna latar belakang selamat datang di dashboard */
        .front-cover .alert {
            background-color: #eaffff; /* Mengubah warna latar belakang */
            border: 2px solid black; /* Menambahkan outline hitam */
            border-radius: 10px; /* Menambahkan sudut bulat */
            padding: 10px; /* Menambahkan padding */
        }

        /* Menambahkan outline pada tulisan "Dashboard" */
        .front-cover h1 {
            text-shadow: 5px 1px grey; /* Menambahkan shadow teks hitam */
            color:white;
        }

        @media screen and (max-width: 768px) {
            .cardImg {
                width: calc(50% - 20px); /* Adjust width to half of container width, minus margin */
            }
        }
    </style>
</head>
<body>
    <a class="navbar-brand">
        <img src="../assets/logo.png" alt="logo" width="130px">
    </a>
    
    <div class="dropdown">
        <button class="btn btn-light dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="../assets/logoadmin.png" alt="memberLogo" width="40px">
        </button>
        <ul class="dropdown-menu position-absolute mt-2 p-2">
            <li>
                <a class="dropdown-item text-center" href="#">
                    <img src="../assets/logoadmin.png" alt="adminLogo" width="30px">
                </a>
            </li>
            <div class="alert alert-success" role="alert">Selamat datang - <span class="fw-bold text-capitalize"><?php echo $_SESSION['username']; ?></span> di Dashboard EPerpus</div>
            <hr>         
            <li>
                <a class="dropdown-item text-center p-2 bg-danger text-light rounded" href="signout.php">Sign Out <i class="fa-solid fa-right-to-bracket"></i></a>
            </li>
        </ul>
    </div>

    <div class="mt-5 p-4">
        <div class="book-cover" id="book">
            <div class="front-cover">
                <h1 class="mt-5 fw-bold text-center">Dashboard</h1>                
                <div class="alert alert-success" role="alert">Selamat datang - <span class="fw-bold text-capitalize"><?php echo $_SESSION['username']; ?></span> di Dashboard EPerpus</div>
            </div>
            <div class="back-cover">
                <div class="cardImg">
                    <button onclick="location.href='generatelaporan/generatelaporan.php';" type="button">
                        <img src="../assets/generatelaporan.png" alt="daftar buku">
                    </button>
                    <div class="card-text"><a>Generate Laporan</a></div>
                </div>
                <div class="cardImg">
                    <button onclick="location.href='buku/tambahBuku.php';" type="button">
                        <img src="../assets/tambahbrg.png" alt="daftar buku">
                    </button>
                    <div class="card-text"><a>Tambah Buku</a></div>
                </div>
                <div class="cardImg">
                    <button onclick="location.href='peminjaman/daftarpinjam.php';" type="button">
                        <img src="../assets/pinjam.png" alt="daftar buku">
                    </button>
                    <div class="card-text"><a>Daftar Peminjaman</a></div>
                </div>
                <div class="cardImg">
                    <button onclick="location.href='pengembalian/daftarpengembalian.php';" type="button">
                        <img src="../assets/kembalikan.png" alt="daftar buku">
                    </button>
                    <div class="card-text"><a>Daftar Pengembalian</a></div>
                </div>
                <div class="cardImg">
                    <button onclick="location.href='buku/daftarbuku.php';" type="button">
                        <img src="../assets/buku.png" alt="daftar buku">
                    </button>
                    <div class="card-text"><a>Daftar Buku</a></div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
