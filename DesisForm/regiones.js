 // Función para cargar usuarios
 async function cargarRegiones() {
    try {
        const response = await fetch('http://localhost/regiones.php', {
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
  
        // selecciona elemento región y comuna
        let regionElement = document.getElementById('region');
        let comunaElement = document.getElementById('comuna');
  
        // Limpia el contenido de cada elemento
        regionElement.innerHTML = '';
        comunaElement.innerHTML = '';

        // Eliminar regiones duplicadas
        let regiones = datos.map(elemento => elemento.region);
        regiones = [... new Set(regiones)];
  
        // Despliega regiones en elemento option
        regiones.forEach(element => {
            let option = document.createElement('option');
            option.innerHTML = element;
            regionElement.appendChild(option);
        })

        // LOGICA para poner comuna según región respectiva ---

        regionElement.onchange = function () {
            let regionSeleccionada = regionElement.value;
            comunaElement.innerHTML = '';

            datos.forEach(dato => {                
                if (dato.region === regionSeleccionada) {
                    let option = document.createElement('option');
                    option.innerHTML = dato.comuna;
                    comunaElement.appendChild(option);
                }               
            });
        }           

    } catch (error) {
        console.log('Error:', error.message);
    }
  }
  
  // Llamar a la función para cargar regiones al cargar la página
  cargarRegiones();