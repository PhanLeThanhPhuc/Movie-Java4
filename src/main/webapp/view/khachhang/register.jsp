<%@ page pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<%@ include file="/common/head.jsp" %>
	<style>


        .header {
            background-color: #007bff;
            font-size: 24px;
            font-weight: bold;
            color: #fff;
            text-align: center;
            padding: 20px;
        }

        .labelform {
            font-weight: bold;
        }

        .formcontrol {
            border-radius: 20px;
            border: none;
            box-shadow: 0 0 10px rgba(0,0,0,.2);
            padding: 15px;
            font-size: 18px;
        }

        .formcheck {
            font-weight: normal;
        }
        
        .form-check{
        padding-left: 2rem;
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
<%@ include file="/common/header.jsp" %>
<div class="container" style="margin-bottom: 150px; margin-top: 150px">
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header header bg-primary text-white">
                        <h4>REGISTRATION</h4>
                    </div>
                    <div class="card-body">
                        <form action="register" method="post">
                            <div class="form-group mb-3 px-2">
                                <label class="labelform" for="username">Username:</label>
                                <input type="text" class="form-control formcontrol" name="username" id="username" placeholder="Enter username">
                            </div>
                            <div class="form-group mb-3 px-2">
                                <label class="labelform" for="password">Password:</label>
                                <input type="password" class="form-control formcontrol" id="password" name="password" placeholder="Enter password">
                            </div>
                            <div class="form-group mb-3 px-2">
                                <label class="labelform" for="cfmpass">Re-Enter Password:</label>
                                <input type="password" class="form-control formcontrol" id="cfmpass" name="cfmpass" placeholder="Re-Enter password">
                            </div>
                            <div class="form-group mb-3 px-2">
                                <label class="labelform" for="email">Email:</label>
                                <input type="email" class="form-control formcontrol" id="email" name="email" placeholder="Enter password">
                            </div>
                            <button type="submit" class="btn btn-primary">SEND</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
  <%@ include file="/common/footer.jsp" %>
</body>
</html>