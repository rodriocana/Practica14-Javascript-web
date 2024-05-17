  
         
         function validarFormulario() {
        var nombre = document.getElementById('nombre').value.trim();
        var telefono = document.getElementById('telefono').value.trim();
        var email = document.getElementById('email').value.trim();
        var gradoSuperior = document.getElementById('GradoSuperior').value;

        // Validación del nombre
        if (nombre === '') {
            alert('Por favor, ingresa tu nombre.');
            return false;
        }

        // Validación del teléfono
        if (telefono === '') {
            alert('Por favor, ingresa tu número de teléfono.');
            return false;
        } else if (!/^\d+$/.test(telefono)) {
            alert('El número de teléfono solo puede contener dígitos.');
            return false;
        }

        // Validación del email
        if (email === '') {
            alert('Por favor, ingresa tu correo electrónico.');
            return false;
        } else if (!/\S+@\S+\.\S+/.test(email)) {
            alert('Por favor, ingresa un correo electrónico válido.');
            return false;
        }

        // Validación del grado superior
        if (gradoSuperior === '') {
            alert('Por favor, selecciona tu grado superior.');
            return false;
        }

        return true;
    }