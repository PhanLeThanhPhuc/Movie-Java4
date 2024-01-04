<%@ page pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <title>Title</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

</head>

<style>
  .menuu {
    height: 60px;
    background-color:	#ededed	;

  }

  .row {
    --bs-gutter-x:0rem;
  }
  .search-box {
  position: relative;
  display: inline-block;
}

.search-btn {
  position: absolute;
  top: 50%;
  right: 5px;
  transform: translateY(-50%);
  background-color: transparent;
  border: none;
}

.fa-search {
  color: #555;
  font-size: 16px;
}
</style>
</head>

<body>

  <div class="row">
    <div class="col-2" style="background-color: #2F4F4F;;">
      <nav id="navbar-example3" class="h-100 flex-column align-items-stretch pe-4 border-end">
        <div class="" style="height: 150px;">
          <img src="../img/logo4-1.png" width="280px" height="150px" stclass="" alt="">
        </div>
        <nav class="nav nav-pills flex-column text-center">
          <a class="nav-link active text-light" href="#item-1">HONE</a>
          <a class="nav-link text-light " href="#item-2">VIDEOS</a>
          <a class="nav-link text-light" href="#item-3">USERS</a>
          <a class="nav-link text-light" href="#item-4">REPORTS</a>
        </nav>
      </nav>
    </div>

    <div class="col-10" style="height: 910px;">
      <div data-bs-spy="scroll" data-bs-target="#navbar-example3" data-bs-smooth-scroll="true" class="scrollspy-example-2" data-bs-offset="0" tabindex="0"
        style="height: 890px; overflow-y: auto; background-color: #DCDCDC">
        <nav class="menuu row">
          <ul class="nav col-12">
            <div class="col-5 row">
            <li class="nav-item col-4" style="margin-top:11px;">
              <a class="nav-link active fw-bold" style="color: blue;" aria-current="page" href="#">ADMINTATION TOOL</a>
            </li>
            <li class="nav-item col-8">
              <div class="search-box">
                <input type="text" style="width: 250px;height:35px ;margin-top:12px;background-color: #FFFAFA;border: 1px solid #ccc;" placeholder="Tìm kiếm...">
                <button style="margin-top: 6px" type="submit" class="search-btn"><i class="fa fa-search"></i></button>
              </div>
            </li>
          </div>
          <div class="col-3"></div>
          <div class="col-4 row">
            <li class="col-6"></li>
            <li class="nav-item col-2 mt-2">
              <a class="nav-link" href="#"><i class="fa-regular fa-comments" style=" font-size:25px;"></i></a>
            </li>
            <li class="nav-item col-2 mt-2">
              <a class="nav-link disabled" ><i class="fa-solid fa-bell" style=" font-size:25px;"></i></a>
            </li>
            <li class="col-2"></li>
          </div>
          </ul>
        </nav>
        <div style="background-color: #DCDCDC">
        <img alt="" src="../img/logo4-1.png" width="500px" style="margin-left: 500px;margin-top: 180px">
        </div>
        <footer class=" text-muted" style="margin-top: 820px;height: 60px; text-align: center;background-color: #ededed">
        <p style="padding-top: 20px">Bản quyền &copy; 2023 - Đặng Trung Tinh</p>
        </footer>
        </div>
      </div>
      
    </div>
    
  </div>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
    </script>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
    integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
    </script>
  <link rel="stylesheet" href="footer.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

  <script src="https://kit.fontawesome.com/f61ca73bc8.js" crossorigin="anonymous"></script>

</body>

<script>
  var navLinks = document.querySelectorAll('#navbar-example3 .nav-link');

  navLinks.forEach(function (link) {
    link.addEventListener('click', function (event) {
      event.preventDefault();

      navLinks.forEach(function (link) {
        link.classList.remove('active');
      });

      this.classList.add('active');
    });
  });
</script>

</html>