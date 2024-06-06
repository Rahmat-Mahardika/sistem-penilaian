<?php
$this->load->view("aheader_v");
?>

<style>
/* Gaya Hero Section */
.hero-section {
    background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
                url('https://i.ibb.co/C7ZBrry/image.png') no-repeat center center;
    background-size: cover;
    height: 300px; /* Tinggi sedang */
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    position: relative;
    margin-bottom: 40px; /* Jarak dari bagian bawah */
    padding: 20px;
    text-align: center;
    flex-direction: column;
}

.hero-text {
    z-index: 1;
    text-align: center;
    font-size: 1.2rem;
    font-weight: 300;
    max-width: 700px;
    margin: 0 auto;
    text-shadow: 0 2px 4px rgba(0, 0, 0, 0.8);
}

.hero-text h1 {
    font-size: 2.5rem;
    margin-bottom: 15px;
    font-weight: 700;
    letter-spacing: 1.2px;
    color: #f5f5f5; /* Warna teks */
}

.hero-text p {
    font-size: 1.2rem;
    margin: 0;
    font-weight: 300;
    letter-spacing: 0.8px;
    color: #e0e0e0; /* Warna teks deskripsi */
}

/* Gaya Tombol */
.thumbnail {
    border: none;
    text-align: center;
    transition: transform 0.3s ease, box-shadow 0.3s ease, border 0.3s ease;
    background-color: #ffffff;
    border-radius: 10px;
    padding: 20px;
    position: relative;
    overflow: hidden;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    flex: 1; /* Lebar tombol akan seimbang */
    min-width: 150px; /* Lebar minimal agar tombol tidak mengecil */
    max-width: 220px; /* Lebar maksimal agar tombol tidak terlalu besar */
    margin: 0 10px; /* Jarak antar tombol */
}

.thumbnail:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
    border: 2px solid #009cea; /* Warna hover border */
}

.thumbnail img {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 50%;
    margin-bottom: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.thumbnail .badge {
    position: absolute;
    top: 5px;
    right: 5px;
    background-color: #d9534f;
    font-size: 12px;
    border-radius: 50%;
}

.thumbnail div {
    font-size: 16px;
    font-weight: 600; /* Ketebalan teks lebih besar */
    color: #333;
}

.thumbnail a {
    text-decoration: none;
    color: #009cea; /* Warna teks */
    font-weight: 600; /* Ketebalan teks */
    font-size: 16px; /* Ukuran teks */
}

.thumbnail a:hover {
    color: #005bb5; /* Warna teks saat hover */
}

/* Gaya Container untuk Menengah */
.button-wrapper {
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-wrap: wrap; /* Membuat tombol responsive */
}
</style>

<!-- Hero Section -->
<div class="hero-section">
    <div class="hero-text">
        <h1>Selamat Datang di Panel Admin</h1>
        <p>Kelola konten Anda dengan mudah dan aman. Gunakan menu di atas atau tombol di bawah untuk mengakses berbagai fitur sesuai dengan hak akses Anda.</p>
    </div>
</div>

<div class="container">
    <div class="row justify-content-center">
        <div class="col-12">
            <div class="button-wrapper">
                <a href="<?php echo base_url(); ?>admin" class="thumbnail">
                    <img src="<?php echo base_url(); ?>assets/img/user-icon.png" alt="Admin">
                    <div>Admin</div>
                </a>
                <a href="<?php echo base_url(); ?>aanakdidik" class="thumbnail">
                    <img src="<?php echo base_url(); ?>assets/img/member-icon.png" alt="Anak Didik">
                    <div>Anak Didik</div>
                </a>
                <a href="<?php echo base_url(); ?>apesan" class="thumbnail">
                    <img src="<?php echo base_url(); ?>assets/img/message.png" alt="Pesan">
                    <div>Pesan
                        <?php
                        $query = $this->apesan_m->jumlahpesanbaru();
                        ?>
                        <span class="badge"><?php echo $query->num_rows(); ?></span>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>

<?php
$this->load->view("afooter_v");
?>
