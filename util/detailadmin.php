<?php
  include ("connection.php");
  $username = "Mahasiswa";

  $className = filter_var(isset($_GET['class']) ? $_GET['class'] : '', FILTER_SANITIZE_STRING);
  
  $sql = "select * from ruangan where id_ruangan = '$className'";
  $result = mysqli_query($conn, $sql);
  $row = $result->fetch_assoc();
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
          <a
            href=""
            class="flex justify-end transition-all duration-300 ease-in-out hover:text-sky-300"
          >
            <span class="mx-4">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="30"
                height="30"
                fill="currentColor"
                class="bi bi-person-lines-fill"
                viewBox="0 0 16 16"
              >
                <path
                  d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"
                /></svg
            ></span>

            <span class="text-md"
              >Selamat Datang,
              <?=$username?>
            </span></a
          >
        </div>
      </nav>
    </header>

    <main>
      <div class="bg-gray-700">
        <div class="flex flex-row w-9/12 py-5 mx-auto">
          <div class="text-white font-bold text-md flex flex-start basis-1/2">
            <div class="mx-4">
              <svg
                xmlns="http://www.w3.org/2000/svg"
                width="30"
                height="30"
                fill="currentColor"
                class="bi bi-journals"
                viewBox="0 0 16 16"
              >
                <path
                  d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z"
                />
                <path
                  d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z"
                />
              </svg>
            </div>
            <div>Detail Informasi Mengenai Kelas <?php echo $className?> </div>
          </div>
        </div>
      </div>
      <!-- <div class="flex flex-row p-4 mx-auto">
        <div
          class="basis-1/4 rounded-md transition-all duration-300 ease-in-out shadow-black shadow-sm bg-white"
        >
          <ul class="indent-7 text-sky-600 leading-9 p-2 mx-auto">
            <a href=""
              ><li
                class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md"
              >
                🏛️ fasilitas kelas 
              </li></a
            >
            <a href="ruangan.html"
              ><li
                class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md"
              >
                🏫 fasilitas ruangan 
              </li></a
            >
            <a href="login.php"
              ><li
                class="hover:border-2 hover:border-sky-500 transition-all duration-100 ease-in-out rounded-md"
              >
                📴 Logout
              </li></a
            >
          </ul>
        </div> -->
        <div class="basis-4/4">
          <div class="px-4">
            <div
              class="rounded-md mb-2  h-max relative bg-yellow-400 p-4 text-left text-lg font-bold "
            >
              <a href="detil_admin.html" class="text-black-200 bg-sky-100 active:bg-sky-100 pb-5 pt-4 px-9 mr-1 hover:underline  h-full ">🔍Detail </a>
              <a href="kelas_admin.html" class="text-black-200 bg-yellow-400 hover:bg-sky-100 pb-4 pt-4 px-9 mr-1 hover:underline hover:pb-5 transition-all h-full ">🏛️ Ruang Kelas </a>
            </div>
            
        
            <div
              class="rounded-md mb-2 shadow-slate-400 shadow-lg flex flex-row h-max relative bg-white p-4"
            >
              <form  class="w-full text-center  action="../util/proses_update_ruangan.php" method="post">
                <table class="w-full text-center">
                  <tr>
                    <th class="border-2 border-b-black w-1/4 p-2">Informasi</th>
                    <th class="border-2 border-b-black w-2/4 p-2"></th>
                  </tr>
                  
                  <tr>
                    <td class="border-2  p-2">kapasitas</td>
                    <td class="border-2  p-2"><input type="text" class=" w-full" name="kapasitas" value="<?php echo $row["kapasitas"]?>"></td>
                  </tr>
                  <tr>
                    <td class="border-2  p-2">jenis kelas</td>
                    <td class="border-2  p-2"><input type="text" class=" w-full" name="jenis_ruangan" value="<?php echo $row["jenis_ruangan"]?>"></td>
                  </tr>
                  <tr>
                    <td class="border-2  p-2">lokasi kelas</td>
                    <td class="border-2  p-2"><input type="text" class=" w-full" name="lokasi" value="<?php echo $row["lokasi"]?>"></td>
                  </tr>
                  <tr>
                    <td class="border-2  p-2">Fasilitas Penunjang</td>
                    <td class="border-2  p-2"><textarea class=" w-full" name="fasilitas"><?php echo $row["fasilitas"]?></textarea></td>
                  </tr>
                </table>

                <button type="submit" name="update_button" class="mt-4 p-2 rounded bg-sky-400 text-white float-right">⬆️ Update</button>
              </form>
          </div>

          <div
              class="rounded-md mb-2 shadow-slate-400 shadow-lg  h-max relative bg-white p-4"
            >
             <form action="proses_update_jadwal.php" method="post">
              <table class="w-full text-center">
                <tr>
                  <th class="border-2 border-b-black w-1/4 p-2">Hari</th>
                  <th class="border-2 border-b-black w-1/4 p-2">Durasi Pemakaian</th>
                  <th class="border-2 border-b-black w-1/4 p-2">Mata Kuliah</th>
                  <th class="border-2 border-b-black w-1/4 p-2">Dosen</th>
                </tr>

                
                  <tr>
                  <td class='border-2 border-b-black w-1/4 p-2'><input type='text'class='w-full text-center'  name='hari[]' value='" . $jadwal_item[0] . "'></td>
                  <td class='border-2 border-b-black w-1/4 p-2'><input type='text' name='durasi[]'class='w-full text-center'  value='" . $jadwal_item[1] . "'></td>
                  <td class='border-2 border-b-black w-1/4 p-2'><input type='text' name='mata_kuliah[]' class='w-full text-center'  value='" . $jadwal_item[2] . "'></td>
                  <td class='border-2 border-b-black w-1/4 p-2'><input type='text' name='dosen[]' class='w-full text-center'  value='" . $jadwal_item[3] . "'></td>
                </tr>
                  
              </table>
              <button type="submit" class="mt-4 p-2 rounded bg-sky-400 text-white ">⬆️ Update</button>
              <a  href="detil_ruang_admin.html" class="mt-4 p-2 rounded bg-red-400 text-white ">❌ Batal</a>
            </form> 
          </div>  
        </div> 
      </div>
    </main>
    <footer></footer>
  </body>
</html>
