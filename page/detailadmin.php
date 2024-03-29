<?php
include("../util/connection.php");
$username = "Admin";

$className = filter_var(isset($_GET['class']) ? $_GET['class'] : '', FILTER_SANITIZE_STRING);

$queryRuangan = "select * from ruangan where id_ruangan = '$className'";
$queryJadwal = "select jadwal.*, dosen.nama_dosen, mata_kuliah.nama_matkul
from jadwal
join dosen on jadwal.NIP = dosen.NIP
join mata_kuliah on jadwal.id_matkul = mata_kuliah.id_matkul where id_ruangan ='$className'";
$resultRuangan = mysqli_query($conn, $queryRuangan);
$resultJadwal = mysqli_query($conn, $queryJadwal);
$rowRuangan = $resultRuangan->fetch_assoc();
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
          <div>Detail Informasi Mengenai Kelas <?php echo $className ?> </div>
        </div>
      </div>
    </div>
    <div class="basis-4/4">
      <div class="px-4">

        <div class="rounded-md mb-2 shadow-slate-400 shadow-lg flex flex-row h-max relative bg-white p-4">
          <form class="w-full text-center" action=" ../util/proses_update_ruangan.php?id_ruangan=<?php echo $className ?>" method="post">
            <table class="w-full">
              <tr>
                <th class="border-2 border-b-black w-1/4 p-2">Data</th>
                <th class="border-2 border-b-black w-2/4 p-2">Informasi</th>
              </tr>

              <tr>
                <td class="border-2  p-2 text-center">kapasitas</td>
                <td class="border-2  p-2 "><input type="text" class="" name="kapasitas" value='<?php echo $rowRuangan["kapasitas"] ?>'></td>
              </tr>
              <tr>
                <td class="border-2  p-2 text-center">jenis Ruangan</td>
                <td class="border-2  p-2"><input type="text" class="w-max" name="jenis_ruangan" value='<?php echo $rowRuangan["jenis_ruangan"] ?>'></td>
              </tr>
              <tr>
                <td class="border-2  p-2 text-center">lokasi Ruangan</td>
                <td class="border-2  p-2"><input type="text" class="w-max" name="lokasi" value='<?php echo $rowRuangan["lokasi"] ?>'></td>
              </tr>
              <tr>
                <td class="border-2  p-2 text-center">Fasilitas Penunjang</td>
                <td class="border-2  p-2"><input type="text" class="w-max" name="fasilitas" value='<?php echo $rowRuangan["fasilitas"] ?>'></td>
              </tr>
            </table>
            <button type="submit" name="update_button" class="mt-4 p-2 rounded bg-sky-400 text-white float-right">⬆️ Update</button>
            <a href="detailadmin.php?class=<?php echo $className ?>" class="mt-4 p-2 rounded bg-yellow-500 text-white float-right mr-5">↻ Reset</a>
            <a href="kelas_admin.php" class="mt-4 p-2 rounded bg-red-400 text-white float-right mr-5">❌ Batal</a>
            <a href="../util/proses_delete_ruangan.php?id_ruangan=<?php echo $className ?>" class="mt-4 p-2 rounded bg-black text-white float-right mr-5">🗑️ Hapus</a>
          </form>
        </div>

        <div class="rounded-md mb-2 shadow-slate-400 shadow-lg  h-max relative bg-white p-4">
          <table class="w-full text-center">
            <tr>
              <th class="border-2 border-b-black w-1/5 p-2">hari</th>
              <th class="border-2 border-b-black w-1/5 p-2">Waktu</th>
              <th class="border-2 border-b-black w-1/5 p-2">Nama Dosen</th>
              <th class="border-2 border-b-black w-1/5 p-2">Keterangan</th>
              <th class="border-2 border-b-black w-1/5 p-2">Status</th>
            </tr>

            <?php
            if ($resultJadwal->num_rows > 0) {
              while ($rowJadwal = $resultJadwal->fetch_assoc()) {
            ?>
                <tr>
                  <td class="border-2 border-b-black p-2"><?= $rowJadwal['hari']; ?></td>
                  <td class="border-2 border-b-black p-2">
                    <?php echo isset($rowJadwal['waktu_mulai']) ? date('H:i', strtotime($rowJadwal['waktu_mulai'])) : ''; ?> -
                    <?php echo isset($rowJadwal['waktu_selesai']) ? date('H:i', strtotime($rowJadwal['waktu_selesai'])) : ''; ?>
                  </td>
                  <td class="border-2 border-b-black p-2"><?= $rowJadwal['nama_dosen']; ?></td>
                  <td class="border-2 border-b-black p-2"><?= $rowJadwal['keterangan']; ?></td>
                  <td class="border-2 border-b-black p-2"><?= $rowJadwal['status']; ?></td>

                  </td>
                </tr>
            <?php }
            } ?>
          </table>
          </form>
        </div>
      </div>
    </div>
  </main>
  <footer></footer>
</body>

</html>