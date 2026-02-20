<%@ Page Language="C#" MasterPageFile="~/_includes/Site.master" AutoEventWireup="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Photo Gallery - ORIC
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<main class="container mx-auto py-8 px-4">
  
  <!-- Page Header -->
  <div class="text-center mb-12">
    <h1 class="text-4xl md:text-5xl font-bold bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] bg-clip-text text-transparent mb-4">
      Photo Gallery
    </h1>
    <div class="h-1 w-32 mx-auto bg-gradient-to-r from-[#1a4d7c] via-[#3674B5] to-[#2c5282] rounded-full"></div>
  </div>

<?php
// Create 14 rows with 5 images each
$rows = [];
for ($i = 0; $i < 14; $i++) {
  $rows[$i] = [];
  for ($j = 1; $j <= 5; $j++) {
    $imgNum = ($i * 5) + $j;
    if ($imgNum <= 70) {
      $rows[$i][] = sprintf("g%02d", $imgNum);
    }
  }
}

$base = "../assets/img/gallery/";
?>

<style>
.marquee-track {
  display: flex;
  width: max-content;
  gap: 1rem;
  animation: marquee 45s linear infinite;
}

.marquee-track.reverse {
  animation: marqueeReverse 45s linear infinite;
}

.marquee-track:hover {
  animation-play-state: paused;
}

@keyframes marquee {
  0% { transform: translateX(0); }
  100% { transform: translateX(-50%); }
}

@keyframes marqueeReverse {
  0% { transform: translateX(-50%); }
  100% { transform: translateX(0); }
}

/* Image hover effect */
.gallery-img {
  transition: all 0.4s ease;
  border: 3px solid transparent;
}

.gallery-img:hover {
  transform: scale(1.05);
  border-color: #3674B5;
  box-shadow: 0 10px 30px rgba(54, 116, 181, 0.4);
  z-index: 10;
}

/* Responsive image sizing */
.img-container {
  width: 280px;
  height: 200px;
  flex-shrink: 0;
}

@media (max-width: 768px) {
  .img-container {
    width: 200px;
    height: 150px;
  }
  
  .marquee-track {
    animation-duration: 35s;
    gap: 0.75rem;
  }
  
  .marquee-track.reverse {
    animation-duration: 35s;
  }
}

@media (max-width: 480px) {
  .img-container {
    width: 160px;
    height: 120px;
  }
  
  .marquee-track {
    animation-duration: 30s;
    gap: 0.5rem;
  }
  
  .marquee-track.reverse {
    animation-duration: 30s;
  }
}
</style>

<div class="w-full overflow-hidden space-y-6 md:space-y-8">

  <?php foreach($rows as $index => $row): ?>
    <?php if(empty($row)) continue; ?>
    
    <!-- Row <?= $index + 1 ?> (<?= $index % 2 === 0 ? 'LEFT' : 'RIGHT' ?>) -->
    <div class="flex overflow-hidden">
      <div class="marquee-track <?= $index % 2 === 1 ? 'reverse' : '' ?>">
        <?php 
        // Duplicate the row for seamless loop
        $duplicatedRow = array_merge($row, $row);
        foreach($duplicatedRow as $imgName): 
          // Try both .jpg and .JPG extensions
          $imgPath = $base . $imgName;
        ?>
          <div class="img-container rounded-xl overflow-hidden bg-gradient-to-br from-[#1a4d7c]/10 to-[#3674B5]/10 shadow-lg">
            <img 
              src="<?= $imgPath ?>.jpg" 
              alt="Gallery Image" 
              class="gallery-img w-full h-full object-cover"
              onerror="this.src='<?= $imgPath ?>.JPG'"
              loading="lazy"
            />
          </div>
        <?php endforeach; ?>
      </div>
    </div>
    
  <?php endforeach; ?>

</div>
</main>

</asp:Content>
