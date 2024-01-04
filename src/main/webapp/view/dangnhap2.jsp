
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
	
	<style>
er

        .card-header {
            background-color: #007bff;
            font-size: 24px;
            font-weight: bold;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        .form-group label {
            font-weight: bold;
        }

        .form-control {
            border-radius: 20px;
            border: none;
            box-shadow: 0 0 10px rgba(0,0,0,.2);
            padding: 15px;
            font-size: 18px;
        }

        .form-check-label {
            font-weight: normal;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            border-radius: 20px;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            transition: all .2s ease-in-out;
        }

        .btn-primary:hover {
            background-color: #0062cc;
        }


    </style>
</head>
<body>
    <div class="container">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h4>Login Form</h4>
                    </div>
                    <div class="card-body">
                        <form>
                            <div class="form-group mb-3">
                                <label for="username">Username:</label>
                                <input type="text" class="form-control" id="username" placeholder="Enter username">
                            </div>
                            <div class="form-group mb-3">
                                <label for="password">Password:</label>
                                <input type="password" class="form-control" id="password" placeholder="Enter password">
                            </div>
                            <div class="form-group mb-3 form-check">
                                <input type="checkbox" class="form-check-input" id="remember-me">
                                <label class="form-check-label" for="remember-me">Remember me</label>
                            </div>
                            <button type="submit" class="btn btn-primary">Login</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Bootstrap 5 JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.min.js"></script>
</body>
</html>
