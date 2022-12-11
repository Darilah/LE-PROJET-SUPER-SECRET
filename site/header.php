<header id="header" class="col-md-auto">
  <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #000000;">
    <div class="container-fluid">
      <img src="image.jpg" alt="" width="100" height="55">
        <ul class="navbar list-unstyled col-md-5 col-md-offset-1">
          <li class="nav-item">
            <a class="nav-link-active" aria-current="page" href="index.php">ACCUEIL</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="artistes.php">ARTISTES</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="genre.php">GENRES</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="contact.php">CONTACT</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ajout_picture.php">AJOUT_IMAGE</a>
          </li>
        </ul>
        <!-- Dropdown -->
        <ul class="nav col-md-1 col-md-offset-10">
          <div class="dropdown">
            <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <img src="./images/oe.jpg" alt="mdo" width="32" height="32" class="rounded-circle">
            </a>
            <ul class="dropdown-menu text-small dropdown-menu-dark" style="background-color: #000000; position: absolute; inset: 0px auto auto 0px; margin: 0px; transform: translate(0px, 34px);" data-popper-placement="bottom-start">
              <li><a class="dropdown-item" href="#">Mes favoris</a></li>
              <li><hr class="dropdown-divider"></li>
              <li><a class="dropdown-item" href="logout.php">Se déconnecter</a></li>
            </ul>
          </div>
        </ul>
        <!-- Dropdown -->
    </div>
  </nav>
</header>