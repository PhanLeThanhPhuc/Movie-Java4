<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-info text-white text-uppercase fw-bold">Registration</div>
            <div class="card-body">
                <form>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="username" class="form-label">Username:</label>
                            <input type="text" class="form-control" id="username" name="username" placeholder="Enter username">
                        </div>
                        <div class="col-md-6">
                            <label for="password" class="form-label">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter password">
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <label for="fullname" class="form-label">Fullname:</label>
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter fullname">
                        </div>
                        <div class="col-md-6">
                            <label for="email" class="form-label">Email address:</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="Enter email">
                        </div>
                    </div>
                    <div class="d-flex justify-content-end">
                        <button type="submit" class="btn btn-primary">Sign up</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
