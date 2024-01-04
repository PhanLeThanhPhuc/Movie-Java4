<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Bootstrap Example</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/footer.css">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">

<style>

</style>
</head>
<body>
	<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-6">
      <div class="card border-0 shadow">
        <div class="card-header bg-success text-white text-uppercase fw-bold">
          Change Password
        </div>
        <div class="card-body">
          <form>
            <div class="mb-3">
              <label for="username" class="form-label">Username:</label>
              <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
            </div>
            <div class="mb-3">
              <label for="password" class="form-label">New Password:</label>
              <input type="password" class="form-control" id="password" name="password" placeholder="Enter new password">
            </div>
            <div class="mb-3">
              <label for="password1" class="form-label">Current Password:</label>
              <input type="password" class="form-control" id="password1" name="password1" placeholder="Enter current password">
            </div>
            <div class="mb-3">
              <label for="password2" class="form-label">Confirm New Password:</label>
              <input type="password" class="form-control" id="password2" name="password2" placeholder="Confirm new password">
            </div>
            <button type="submit" class="btn btn-success w-100">Change Password</button>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

	<script src="https://kit.fontawesome.com/f61ca73bc8.js"></script>
</body>
</html>