<%@ page pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
                        <h4>Forgot Password</h4>
                    </div>
                    <div class="card-body">
                       
                            <div class="form-group mb-3 px-2">
                                <label class="labelform" for="forgot">Email:</label>
                                <input  type="email" class="form-control formcontrol" name="email" id="email" placeholder="Enter email">
                            </div>
                            <button type="submit" id="sendBtn" class="btn btn-primary">SEND</button><br>
                            <h5 style="color: red" id="messageReturn"></h5>
                      
                    </div>
                </div>
            </div>
        </div>
    </div>
  <%@ include file="/common/footer.jsp" %>
  <script type="text/javascript">
  	$('#sendBtn').click(function(){
  		$('#messageReturn').text('');
  		var email = $('#email').val();
  		var formData = {'email': email};
  		$.ajax({
  			url:'forgotPass',
  			type: 'POST',
  			data: formData
  		}).then(function(data){
  			$('#messageReturn').text('Password success , please check your email !');
  			setTimeout(function(){
  				window.location.href ='http://localhost:8082/asm-java4/home';
  			},5*1000);
  		}).fail(function(error) {
  			$('#messageReturn').text('Password failed , Try again !');
		});
  	});
  </script>
</body>
</html>