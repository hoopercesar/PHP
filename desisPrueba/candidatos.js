// Función para cargar candidatos
async function cargarCandidatos() {
    try {
        const response = await fetch('http://localhost/candidatos.php', {
            method: 'GET',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
        });
  
        if (!response.ok) {
            throw new Error('Error al cargar los datos');
        }
  
        const datos = await response.json();

        // LOGICA para seleccionar las regiones
  
        // selecciona elemento región y candidato
        let regionElement = document.getElementById('region');
        let candidatoElement = document.getElementById('candidato');
        
  
        // Limpia el contenido de cada elemento
        candidatoElement.innerHTML = '';
        regionElement.innerHTML = '';
 

        // LOGICA para poner candidato según región respectiva ---

        regionElement.onchange = function () {
            let regionSeleccionada = regionElement.value;
            //candidatoElement.innerHTML = '';
            console.log(regionSeleccionada);

            datos.forEach(dato => {                
                if (dato.region === regionSeleccionada) {
                    let option = document.createElement('option');
                    option.innerHTML = dato.candidato;
                    candidatoElement.appendChild(option);
                }               
            });
        }           

    } catch (error) {
        console.log('Error:', error.message);
    }
  }
  
  // Llamar a la función al cargar la página
  cargarCandidatos();