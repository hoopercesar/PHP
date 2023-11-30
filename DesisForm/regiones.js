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
  
        const regiones = await response.json();
  
        let regionElement = document.getElementById('region');
  
        // Limpia el contenido actual del elemento
        regionElement.innerHTML = '';
  
        // Agrega nuevas opciones al elemento
        regiones.forEach(element => {
            let option = document.createElement('option');
            option.innerHTML = element.region;
            
            //option.text = element.nombre;
            regionElement.appendChild(option);
        });
  
  
    } catch (error) {
        console.log('Error:', error.message);
    }
  }
  
  // Llamar a la función para cargar regiones al cargar la página
  cargarRegiones();