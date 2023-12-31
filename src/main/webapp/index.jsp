<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<script src="https://kit.fontawesome.com/64d58efce2.js"></script>
	<link rel="stylesheet" href="common/css/style.css">
	<title>Gestor de Biblioteca</title>
</head>

<body>
	<div class="container">
		<div class="forms-container">
			<div class="signin-signup">

				<!-- Formulario de inicio de sesión -->
				<form action="./LoginUsuario" method="post" class="sign-in-form" name="login">
					<h2 class="title">Iniciar Sesión</h2>
					<div class="input-field">
						<i class="fas fa-id-card"></i> <input type="text" name="dniUsuario"
							onkeypress="return validarEntrada(event, 0)" placeholder="DNI" />
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password" name="password"
							onkeypress="return validarEntrada(event, 0)" placeholder="Contraseña" />
					</div>
					<a href="#" id="enlaceRecuperaClave">¿Olvidaste tu contraseña?</a>
					<input type="button" value="Enviar" class="btn solid" onclick="enviarLogin()" />
					<h4 id="error2"></h4>
				</form>

				<!-- Formulario de registro -->
				<form action="./RegistrarUsuario" method="post" class="sign-up-form" name="registro"
					id="formularioRegistrarse">
					<h2 class="title">Registrarse</h2>
					<div class="nombreApellidos">
						<div class="input-field">
							<i class="fas fa-user"></i> <input type="text" name="nombreUsuario"
								onkeypress="return validarEntrada(event, 1)" placeholder="Nombre" />
						</div>
						<div class="input-field">
							<i class="fas fa-user"></i> <input type="text" name="apellidosUsuario"
								onkeypress="return validarEntrada(event, 1)" placeholder="Apellidos" />
						</div>
					</div>
					<div class="input-field">
						<i class="fas fa-id-card"></i> <input type="text" name="dniUsuario"
							onkeypress="return validarEntrada(event, 1)" placeholder="DNI" />
					</div>
					<div class="input-field">
						<i class="fas fa-envelope"></i> <input type="text" name="email"
							onkeypress="return validarEntrada(event, 1)" placeholder="Email" />
					</div>
					<div class="input-field">
						<i class="fas fa-phone"></i> <input type="text" name="tlfUsuario"
							onkeypress="return validarEntrada(event, 1)" placeholder="Teléfono" />
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> <input type="password" name="password"
							onkeypress="return validarEntrada(event, 1)" placeholder="Contraseña" />
					</div>
					<input type="button" value="Enviar" class="btn" onclick="enviarRegistrar()" />
					<h4 id="error1"></h4>
				</form>

				<!-- Formulario de recuperación de contraseña -->
				<form action="./RecuperarClave" method="post" class="sign-up-form" name="recuperaClave"
					id="formularioRecuperaClave" style="display: none;">
					<h2 class="title">Recuperar Contraseña</h2>
					<div class="input-field"><i class="fas fa-envelope"></i>
						<input type="text" name="emailUsuario" onkeypress="return validarEntrada(event, 2)"
							placeholder="Email" />
					</div>
					<input type="button" value="Enviar" class="btn" onclick="enviarRecuperar()" />
					<h4 id="resultado"></h4>
				</form>
			</div>
		</div>

		<!-- Paneles -->
		<div class="panels-container">
			<!-- Panel de registrarse, aparece cuando estamos en el login -->
			<div class="panel left-panel">
				<div class="content">
					<h3>¿Eres nuevo aquí?</h3>
					<p>Únete a nuestra biblioteca virtual creando una cuenta hoy mismo.</p>
					<button class="btn transparent" id="sign-up-btn">
						Registrarse
					</button>
				</div>
				<img src="common/img/man.png" class="image" alt="" />
			</div>
			<!-- Panel de login, aparece cuando estamos en el register -->
			<!-- Desde javaScript cambiamos los textos para convertirlo de login a recuperar contraseña -->
			<div class="panel right-panel">
				<div class="content" id="panel-login">
					<h3>¿Ya tienes una cuenta?</h3>
					<p>Descubre el mundo de la lectura.</p>
					<button class="btn transparent" id="sign-in-btn">Iniciar Sesión</button>
				</div>
				<img src="common/img/woman.png" class="image" alt="" id="imagenLogin" />
			</div>
		</div>
	</div>
	<script src="common/js/main.js"></script>
	<script src="common/js/app.js"></script>
</body>

</html>