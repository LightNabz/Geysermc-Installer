$upload_dir = "data/";

if (!file_exists($upload_dir)) {
    mkdir($upload_dir, 0777, true);
}

if (isset($_POST["submit"])) {
    $gambar = $_FILES["gambar"];
    $gambar_name = $gambar["name"];
    $gambar_tmp = $gambar["tmp_name"];
    $gambar_size = $gambar["size"];
    $gambar_error = $gambar["error"];

}

$allowed_types = ["image/jpeg", "image/png", "image/gif", "image/jpg"];
$gambar_mime = mime_content_type($gambar_tmp);

if (!in_array($gambar_mime, $allowed_types)) {
    echo "Tipe file tidak diizinkan.";
} else {
    // Continue
}

$max_size = 5 * 1024 * 1024; // 5MB
if ($gambar_size > $max_size) {
    echo "Ukuran gambar terlalu besar. Maksimal 5 MB.";
} else {
    // Continue
}

$gambar_extension = pathifo($gambar_name, PATHINFO_EXTENSTION);
$new_gambar_name = uniqid() . "." . $gambar_extension;

$destination = $upload_dir . $new_gambar_name;

if (move_uploaded_file($gambar_tmp, $destination)) {
    echo "Gambar berhasil diunggah.";
} else {
    echo "Gagal mengunggah gambar.";
}

echo '<img src="' . $destination . '" alt="Gambar yang diunggah">';
