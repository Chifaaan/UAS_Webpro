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
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
              class="bi bi-person-lines-fill" viewBox="0 0 16 16">
              <path
                d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z" />
            </svg></span>

          <span class="text-md">Selamat Datang,
            Admin
          </span></a>
      </div>
    </nav>
  </header>

  <main>
    <div class="bg-gray-700">
      <div class="flex flex-row w-9/12 py-5 mx-auto">
        <div class="text-white font-bold text-md flex flex-start basis-1/2">
          <div class="mx-4">
            <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-journals"
              viewBox="0 0 16 16">
              <path
                d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z" />
              <path
                d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z" />
            </svg>
          </div>
          <div>FORM TAMBAH KELAS/RUANGAN</div>
        </div>
      </div>
    </div>
    <div class="basis-4/4">
      <div class="px-4">
        <div class="rounded-md mb-2 shadow-slate-400 shadow-lg flex flex-row h-max relative bg-white p-4">
          <form class="w-full text-center" action="../util/proses_tambah_ruangan.php" method="post">
            <table class="w-full text-center">
              <tr>
                <th class="border-2 border-b-black w-1/4 p-2">Informasi</th>
                <th class="border-2 border-b-black w-2/4 p-2"></th>
              </tr>

              <tr>
                <td class="border-2  p-2">id Ruangan/kode</td>
                <td class="border-2  p-2"><input type="text" class=" w-full" name="id_kelas"></td>
              </tr>
              <tr>
                <td class="border-2  p-2">kapasitas</td>
                <td class="border-2  p-2"><input type="text" class=" w-full" name="kapasitas"></td>
              </tr>
              <tr>
                <td class="border-2  p-2">jenis Ruang/kelas</td>
                <td class="border-2  p-2"><input type="text" class=" w-full" name="jenis_kelas"></td>
              </tr>
              <tr>
                <td class="border-2  p-2">lokasi Ruang/Kelas</td>
                <td class="border-2  p-2"><input type="text" class=" w-full" name="lokasi_kelas"></td>
              </tr>
              <tr>
                <td class="border-2  p-2">Fasilitas Penunjang</td>
                <td class="border-2  p-2"><textarea class=" w-full" name="fasilitas_penunjang"></textarea></td>
              </tr>

            </table>

            <button type="submit" name="tambah_button" class="mt-4 p-2 rounded bg-green-400 text-white float-right">➕
              Tambah</button>
            <a href="tambah.php" class="mt-4 p-2 rounded bg-red-400 text-white float-right mr-2">❌ Batal</a>
          </form>
        </div>
      </div>
    </div>
  </main>
  <footer></footer>
</body>

</html>