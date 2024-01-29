<?php
session_start();
include("../util/connection.php");
$username = $_SESSION['userName'];

$filter_query = "select * from ruangan WHERE 1";

// Pagination settings
$itemsPerPage = 5;

// Fetch the total number of items
$sqlCount = "select COUNT(*) as total FROM ruangan";
$resultCount = mysqli_query($conn, $sqlCount);
$rowCount = mysqli_fetch_assoc($resultCount);
$totalItems = $rowCount['total'];
$totalPages = ceil($totalItems / $itemsPerPage);

$filter_nama = isset($_GET['nama']) ? $_GET['nama'] : '';
$filter_jenis = isset($_GET['jenis']) ? $_GET['jenis'] : '';
$filter_lokasi = isset($_GET['lokasi']) ? $_GET['lokasi'] : '';

if ($filter_nama != '') {
  $filter_query .= " AND id_ruangan LIKE '%$filter_nama%'";
}

if ($filter_jenis != '') {
  $filter_query .= " AND jenis_ruangan LIKE '%$filter_jenis%'";
}

if ($filter_lokasi != '') {
  $filter_query .= " AND lokasi LIKE '%$filter_lokasi%'";
}

$page = isset($_GET['page']) ? intval($_GET['page']) : 1;
$page = max(1, min($page, $totalPages));

$offset = ($page - 1) * $itemsPerPage;

$filter_query .= " LIMIT $itemsPerPage OFFSET $offset;";

$result = mysqli_query($conn, $filter_query);
$conn->close();
?>

<html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://cdn.tailwindcss.com"></script>
  <title>Sistem Pengecekan Ruangan (SIPERANG) TIK</title>
  <style>
    .pagination {
      display: flex;
      list-style: none;
      padding: 0;
    }

    .pagination li {
      margin-right: 0.5rem;
    }

    .pagination-link {
      display: inline-block;
      padding: 0.5rem;
      background-color: #e2e8f0;
      color: #2d3748;
      text-decoration: none;
      border-radius: 0.25rem;
      transition: background-color 0.3s;
    }

    .pagination-link:hover {
      background-color: #cbd5e0;
    }

    .pagination-link.font-bold {
      font-weight: bold;
    }
  </style>
</head>

<body class="bg-sky-100">
  <header class="sticky bg-slate-100 py-5 font-bold shadow-blake shadow-2xl">
    <nav class="flex flex-row mx-auto w-9/12 px-2">
      <div class="basis-1/2 uppercase text-md items-center">
        <a href="">
          <span>Sistem Pengecekan Ruangan (SIPERANG) TIK</span> <br />
          <span>Politeknik Negeri Jakarta</span>
        </a>
      </div>
      <div class="basis-1/2 text-end my-auto inline-block items-center p-2">
        <a href="" class="flex justify-end transition-all duration-300 ease-in-out hover:text-sky-300">
          <span class="mx-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
              <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z" />
            </svg></span>

          <span class="text-md">Selamat Datang,
            <?= $username ?>
          </span></a>
      </div>
    </nav>
  </header>

  <main>
    <div class="bg-gray-700">
      <div class="flex flex-row w-9/12 py-5 mx-auto">
        <div class="text-white font-bold text-md flex flex-start basis-1/2">
          <div class="mx-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-journals" viewBox="0 0 16 16">
              <path d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z" />
              <path d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z" />
            </svg>
          </div>
          <div>Dashboard Admin Data Kelas</div>
        </div>
      </div>
    </div>
    <div class="flex flex-row p-4 mx-auto">
      <div class="basis-1/4 rounded-md transition-all duration-300 ease-in-out shadow-black shadow-sm bg-white">
        <ul class="indent-7 text-sky-600 leading-9 p-2 mx-auto">
          <a href="dashboard_admin.php">
            <li class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md">
              🏦 Dashboard Jadwal
            </li>
          </a>
          <a href="tambah.php">
            <li class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md">
              ➕ Tambah Kelas
            </li>
          </a>
          <a href="../util/logout.php">
            <li class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md">
              📴 Logout
            </li>
          </a>
        </ul>
      </div>
      <div class="basis-3/4">
        <div class="px-4">
          <div class="rounded-md mb-2 shadow-slate-400 shadow-lg  h-max relative bg-white p-4 text-center text-lg font-bold">
            Fasilitas kelas Jurusan Teknik Informatika dan Komputer <br>
            <div class="text-sm font-normal">
              berikut ini adalah list kelas yang digunakan oleh mahasiswa TIK. klik tombol detil untuk informasi lebih lanjut
            </div>
          </div>

          <div class="rounded-md mb-2 shadow-slate-400 shadow-lg flex flex-row justify-center h-max relative bg-white pt-2">
            <form action="" method="get">
              <label for="hari">Nama Ruangan:</label>
              <input type="text" name="nama" value="<?= $filter_nama ?>" placeholder="Filter by Nama">

              <label for="dosen">Jenis Ruangan:</label>
              <input type="text" name="jenis" value="<?= $filter_jenis ?>" placeholder="Filter by Jenis">

              <label for="ruangan">Lokasi:</label>
              <input type="text" name="lokasi" value="<?= $filter_lokasi ?>" placeholder="Filter by Lokasi">

              <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Search</button>
            </form>
          </div>

          <div class="rounded-md mb-2 shadow-slate-400 shadow-lg flex flex-row h-max relative bg-white p-4">
            <table class="w-full text-center">
              <tr>
                <th class="border-2 border-b-black w-1/4 p-2">Kode ruangan</th>
                <th class="border-2 border-b-black w-1/4 p-2">Jenis ruangan kelas</th>
                <th class="border-2 border-b-black W-1/4 p-2">Lokasi</th>
                <th class="border-2 border-b-black W-1/4 p-2">Aksi</th>
              </tr>
              <?php
              if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
              ?>
                  <tr>
                    <td class="border-2 border-b-black p-2"><?= $row['id_ruangan']; ?></td>
                    <td class="border-2 border-b-black p-2"><?= $row['jenis_ruangan']; ?></td>
                    <td class="border-2 border-b-black p-2"><?= $row['lokasi']; ?></td>
                    <td class="p-4 border-2 border-b-black p-2">
                      <a href="detailadmin.php?class=<?php echo $row['id_ruangan'] ?>" class="text-black-200 bg-sky-200 py-1 px-2 hover:bg-sky-300 rounded-md ">Edit</a>
                    </td>
                  </tr>
              <?php }
              } ?>
            </table>
          </div>

          <div class="flex justify-center rounded-md mb-2 shadow-slate-400 shadow-lg h-max relative bg-white p-2">
            <ul class="pagination">
              <?php for ($i = 1; $i <= $totalPages; $i++) : ?>
                <li>
                  <a href="?page=<?= $i ?>" class="pagination-link <?= $i === $page ? 'text-sky-500 font-bold' : '' ?>">
                    <?= $i ?>
                  </a>
                </li>
              <?php endfor; ?>
            </ul>
          </div>

        </div>
      </div>
    </div>
  </main>

  <footer></footer>
</body>

</html>