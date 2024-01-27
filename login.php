<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sistem Pengecekan Ruangan (SIPERANG) TIK | Login</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="flex items-center justify-center h-screen bg-gray-100">
  <div class="bg-white p-8 rounded-lg shadow-md w-96">
    <h2 class="text-2xl font-bold mb-4">Login</h2>
    <form action="authenticate.php" method="post">
      <div class="mb-4">
        <label for="username" class="block text-gray-700">Username:</label>
        <input type="text" name="username" id="username" class="w-full border-2 border-gray-300 p-2 rounded">
      </div>

      <div class="mb-4">
        <label for="password" class="block text-gray-700">Password:</label>
        <input type="password" name="password" id="password" class="w-full border-2 border-gray-300 p-2 rounded">
      </div>

      <button type="submit" class="w-full bg-blue-500 text-white p-2 rounded hover:bg-blue-700">Login</button>
    </form>
  </div>
</body>
</html>
