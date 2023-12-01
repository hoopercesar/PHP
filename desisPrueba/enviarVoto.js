function enviarVoto() {

    document.addEventListener('DOMContentLoaded', function () {
    const formulario = document.querySelector('form');

    formulario.addEventListener('submit', function (event) {
        event.preventDefault(); // Evitar el comportamiento predeterminado del formulario

        // Obtener los valores del formulario
        const nombre = document.getElementById('nombre').value;
        const rut = document.getElementById('rut').value;
        const email = document.getElementById('email').value;
        const region = document.getElementById('region').value;
        const comuna = document.getElementById('comuna').value;
        const candidato = document.getElementById('candidato').value;

        // Obtener las fuentes seleccionadas
        const fuentesCheckbox = document.getElementsByName('fuente');
        const fuentesSeleccionadas = [];
        fuentesCheckbox.forEach(function (checkbox) {
            if (checkbox.checked) {
                fuentesSeleccionadas.push(checkbox.value);
            }
        });

        // Crear un objeto con los datos del formulario
        const datosFormulario = {
            nombre: nombre,
            rut: rut,
            email: email,
            region: region,
            comuna: comuna,
            candidato: candidato,
            fuentes: fuentesSeleccionadas
        };

        // Enviar los datos al servidor usando Fetch API
        fetch('guardar_voto.php', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(datosFormulario)
        })
        .then(response => response.json())
        .then(data => {
            // Hacer algo con la respuesta del servidor si es necesario
            console.log(data);
        })
        .catch(error => {
            console.error('Error al enviar los datos:', error);
        });
    });
});
}


