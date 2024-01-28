<?php
include("../util/connection.php");
$username = "admin";
$id_jadwal = filter_var(isset($_GET['id_jadwal']) ? $_GET['id_jadwal'] : '', FILTER_SANITIZE_STRING);

$sql = "SELECT jadwal.*, dosen.nama_dosen, mata_kuliah.nama_matkul
        FROM jadwal
        JOIN dosen ON jadwal.NIP = dosen.NIP
        JOIN mata_kuliah ON jadwal.id_matkul = mata_kuliah.id_matkul
        WHERE jadwal.id_jadwal = $id_jadwal";
$result = mysqli_query($conn, $sql);
$conn->close();
?>

<html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <script src="https://cdn.tailwindcss.com"></script>
  <title>Sistem Pengecekan Ruangan (SIPERANG) TIK</title>
</head>

<body class="bg-sky-100">
  <header class="sticky bg-slate-100 py-5 font-bold shadow-blake shadow-2xl">
    <nav class="flex flex-row mx-auto w-9/12 px-2">
      <div class="basis-1/2 uppercase text-md items-center">
        <a href="../page/kelas_admin.php">
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
          <div>FORM TAMBAH JADWAL KELAS </div>
        </div>
      </div>
    </div>

    <div class="basis-4/4">
      <div class="px-4">
        <div class="rounded-md mb-2 shadow-slate-400 shadow-lg  h-max relative bg-white p-4">
          <form action="../util/proses_update_jadwal.php?id_jadwal=<?php echo $id_jadwal?>" method="post">
            <table class="w-full text-center">
              <tr>
                <th class="border-2 border-b-black w-1/7 p-2">Nama Ruangan</th>
                <th class="border-2 border-b-black w-1/7 p-2">Hari</th>
                <th class="border-2 border-b-black w-1/7 p-2">Tanggal</th>
                <th class="border-2 border-b-black w-1/7 p-2">Waktu Mulai</th>
                <th class="border-2 border-b-black w-1/7 p-2">Waktu Selesai</th>
                <th class="border-2 border-b-black w-1/7 p-2">ID Matkul</th>
                <th class="border-2 border-b-black w-1/7 p-2">NIP Dosen</th>
                <th class="border-2 border-b-black w-1/7 p-2">Keterangan</th>
                <th class="border-2 border-b-black w-1/7 p-2">Status</th>
              </tr>

              <?php
              if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
              ?>
                  <tr>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='text' class='w-full text-center' name='id_ruangan' value="<?php echo $row['id_ruangan'] ?>"></td>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='text' class='w-full text-center' name='hari' value="<?php echo $row['hari'] ?>"></td>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='date' class='w-full text-center' name='tanggal' value="<?php echo $row['tanggal'] ?>"></td>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='time' name='waktu_mulai' class='w-full text-center' value="<?php echo date('H:i', strtotime($row['waktu_mulai'])) ?>"></td>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='time' name='waktu_selesai' class='w-full text-center' value="<?php echo date('H:i', strtotime($row['waktu_selesai'])) ?>"></td>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='text' name='id_matkul' class='w-full text-center' value="<?php echo $row['id_matkul'] ?>"></td>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='text' name='NIP' class='w-full text-center' value="<?php echo $row['NIP'] ?>"></td>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='text' name='keterangan' class='w-full text-center' value="<?php echo $row['keterangan'] ?>"></td>
                    <td class='border-2 border-b-black w-1/7 p-2'><input type='text' name='status' class='w-full text-center' value="<?php echo $row['status'] ?>"></td>
                  </tr>
              <?php }
              } ?>

            </table>
            <button type="submit" name="tambah_button" class="mt-4 p-2 rounded bg-green-400 text-white ">⬆️ Update</button>
            <a href="detail_jadwal.php?id_jadwal=<?php echo $id_jadwal?>" class="mt-4 p-2 rounded bg-yellow-500 text-white ">↻ Reset</a>
            <a href="dashboard_admin.php" class="mt-4 p-2 rounded bg-red-400 text-white ">❌ Batal</a>
            <a href="dashboard_admin.php" class="mt-4 p-2 rounded bg-black text-white ">🗑️ Hapus</a>
          </form>
        </div>
      </div>
    </div>
  </main>
  <footer></footer>
</body>

</html>