<%@ page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Form</title>
    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css">
	<style>
        body {
            background-color: #f8f9fa;
        }

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
                        <h4>Forgot password</h4>
                    </div>
                    <div class="card-body">
                        <form>
					<div class="mb-3 mt-3 mx-3">
						<label for="username" class="form-label">USERNAME:</label> <input
							type="text" class="form-control" id="username" name="username"
							placeholder="Nhập tên đăng nhập">
					</div>
					<div class="mb-3 mx-3">
						<label for="email" class="form-label">EMAIL:</label> <input
							type="email" class="form-control" id="email"
							name="email" placeholder="Nhập email">
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




