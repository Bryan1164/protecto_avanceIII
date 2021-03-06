<%-- 
    Document   : verificacion
    Created on : 21/10/2020, 04:56:00 PM
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Login Empresa S.A</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
    </head>
    <body>
       <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
                                            Verificacion
					</span>
				</div>

				<form class="verificacion" validate-form">
                                    
                                    <div class="wrap-input100 validate-input m-b-26" data-validate="Password is required">
                                        <span class="label-input100">Correo Electronico</span>
                                        <input class="input100" type="text" name="correo" placeholder="Correo Electronico">
                                        <span class="focus-input100"></span>
                                    </div>
                                    
                                    <div class="wrap-input100 validate-input m-b-26" data-validate="Password is required">
                                        <span class="label-input100">Codigo de Verificacion</span>
                                        <input class="input100" type="number" name="pass" placeholder="Codigo de verificacion">
                                        <span class="focus-input100"></span>
                                    </div>
                                    
                                        
              
                                        <div class="flex-sb-m w-full p-b-30">    

                                            <div class="container-login300-form-btn">
                                                <button class="login100-form-btn">
                                                    <a href="claves.jsp" class="txt1">
                                                        CAMBIO DE CLAVE
                                                    </a>
                                                </button>
                                                
                                            </div>

                                        </div>
				</form>
                        </div>
		</div>
	</div>
  
       <!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
           
    </body>
</html>
