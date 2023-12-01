// Función para cargar regiones y candidatos
async function cargarDatos() {
    try {
        // Obtener datos de regiones
        const responseRegiones = await fetch('http://localhost/regiones.php', {
            method: 'GET',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
        });

        // Obtener datos de candidatos
        const responseCandidatos = await fetch('http://localhost/candidatos.php', {
            method: 'GET',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
        });

        if (!responseRegiones.ok || !responseCandidatos.ok) {
            throw new Error('Error al cargar los datos');
        }

        const datosRegiones = await responseRegiones.json();
        const datosCandidatos = await responseCandidatos.json();

        // LOGICA para seleccionar las regiones

        // selecciona elemento región, comuna y candidato
        let regionElement = document.getElementById('region');
        let comunaElement = document.getElementById('comuna');
        let candidatoElement = document.getElementById('candidato');

        // Limpia el contenido de cada elemento
        regionElement.innerHTML = '';
        comunaElement.innerHTML = '';
        candidatoElement.innerHTML = '';

        // Eliminar regiones duplicadas
        let regiones = datosRegiones.map(elemento => elemento.region);
        regiones = [...new Set(regiones)];

        // Despliega regiones en elemento option
        regiones.forEach(element => {
            let option = document.createElement('option');
            option.innerHTML = element;
            regionElement.appendChild(option);
        })

        // Asigna función al evento onchange para cargar comuna y candidato
        regionElement.onchange = function () {
            let regionSeleccionada = regionElement.value;
            comunaElement.innerHTML = '';
            candidatoElement.innerHTML = '';

            datosRegiones.forEach(dato => {
                if (dato.region === regionSeleccionada) {
                    let optionComuna = document.createElement('option');
                    optionComuna.innerHTML = dato.comuna;
                    comunaElement.appendChild(optionComuna);
                }
            });

            datosCandidatos.forEach(dato => {
                if (dato.region === regionSeleccionada) {
                    let optionCandidato = document.createElement('option');
                    optionCandidato.innerHTML = dato.candidato;
                    candidatoElement.appendChild(optionCandidato);
                }
            });
        }

    } catch (error) {
        console.log('Error:', error.message);
    }
}

// Llamar a la función al cargar la página
cargarDatos();
