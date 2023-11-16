function validarEntrada(evento) {
	var keycode;
	if (window.event) keycode = window.event.keyCode;
	else if (evento) keycode = evento.which;
	else return true;
	if ((keycode < 48 || keycode > 57) && (keycode < 64 || keycode > 90) && (keycode < 97 || keycode > 122)) //Rango ASCII de números y letras
		if (keycode != 8 && keycode != 13 && keycode != 27 && keycode != 0) { //Caracteres especiales permitidos
			alert('Sólo puedes introducir letras y números');
			return false;
		} else if (keycode == 13)
			enviarLogin();
		else return true;
	else return true;
}

function enviarSignIn() {
	datos = document.signIn;
	if (datos.dniUsuario.value == '' || datos.password.value == '')
		document.getElementById("error2").innerHTML = 'Tienes que rellenar todos los campos.';
	else if (!/^\d{8}[A-Za-z]$/.test(datos.dniUsuario.value)) {
		document.getElementById("error2").innerHTML = 'El DNI no tiene un formato válido.';
	}
	else datos.submit();
}

function enviarSignUp() {
	datos = document.signUp;
	if (datos.nombreUsuario.value == '' || datos.apellidosUsuario.value == '' || datos.dniUsuario.value == '' || datos.tlfUsuario.value == '' || datos.password.value == '' || datos.email.value == '') {
		document.getElementById("error1").innerHTML = 'Tienes que rellenar todos los campos.';
	} else if (datos.nombreUsuario.value.length < 5) {
		document.getElementById("error1").innerHTML = 'El nombre de usuario debe tener al menos 5 caracteres.';
	} else if (!/^(?=.*\d)[A-Za-z\d]{7,}$/.test(datos.password.value)) {
		document.getElementById("error1").innerHTML = 'La contraseña debe tener al menos un número y 7 caracteres.';
	} else if (!/^\d{8}[A-Za-z]$/.test(datos.dniUsuario.value)) {
		document.getElementById("error1").innerHTML = 'El DNI no tiene un formato válido.';
	} else if (!/.*@.*/.test(datos.email.value)) {
		document.getElementById("error1").innerHTML = 'El email debe contener "@".';
	} else if (!/^\d{9}$/.test(datos.tlfUsuario.value)) {
		document.getElementById("error1").innerHTML = 'El teléfono debe contener 9 dígitos.';
	}
	else
		datos.submit();
}

function enviarCorreo() {
	datos = document.signIn;
	if (datos.emailUsuario.value == '') {
		document.getElementById("resultado").innerHTML = 'Tienes que indicar un email.';
	} else if (!/.*@.*/.test(datos.emailUsuario.value)) {
		document.getElementById("resultado").innerHTML = 'El email debe contener "@".';
	}
	else {
		datos.submit();
		document.getElementById("resultado").innerHTML = "Se le ha enviado un correo con la recuperación de la contraseña.";
	}
}
