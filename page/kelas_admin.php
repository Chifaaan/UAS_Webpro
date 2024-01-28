<?php
include("../util/connection.php");
$username = "admin";

$sql = "select * from ruangan";
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
          <a href="kelas_admin.html">
            <li class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md">
              🏛️ fasilitas kelas
            </li>
          </a>
          <a href="ruangan_admin.html">
            <li class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md">
              🏫 fasilitas ruangan
            </li>
          </a>
          <a href="tambah.php">
            <li class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md">
              ➕ Tambah Kelas
            </li>
          </a>
          <a href="tambah_jadwal_ruang.html">
            <li class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md">
              ➕ 📅 Tambah Pemakaian Ruang
            </li>
          </a>
          <a href="tambah_jadwal_kelas.html">
            <li class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md">
              ➕ 📅 Tambah Jadwal kelas
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
                      <a href="../util/detailadmin.php?class=<?php echo $row['id_ruangan'] ?>" class="text-black-200 bg-sky-200 py-1 px-2 hover:bg-sky-300 rounded-md ">Edit</a>
                    </td>
                    </td>
                  </tr>
              <?php }
              } ?>
            </table>
          </div>








          <!-- <div
              class="rounded-md mb-2 shadow-slate-400 shadow-lg flex flex-row h-max relative bg-white p-4 justify-center"
            >
              <form
                action="upload.php"
                method="post"
                enctype="multipart/form-data"
                class="flex flex-col items-center justify-center p-4"
              >
                <label for="file" class="text-lg font-bold mb-4"
                  >Pilih File untuk Diupload</label
                >

                <div class="flex flex-col items-center justify-center w-full">
                  <input
                    type="file"
                    id="file"
                    name="file"
                    class="hidden h-20 border-2"
                  />
                  <div class="flex space-x-2">
                    <button
                      onclick="document.getElementById('file').click()"
                      type="button"
                      class="bg-blue-500 text-white py-2 px-4 rounded-md"
                    >
                      Pilih File
                    </button>
                    <button
                      type="submit"
                      class="bg-green-500 text-white py-2 px-4 rounded-md"
                    >
                      Upload
                    </button>
                  </div>
                </div>
              </form>
            </div> -->
        </div>
      </div>
    </div>
  </main>

  <footer></footer>
</body>

</html>