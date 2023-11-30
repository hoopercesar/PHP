 // Función para cargar usuarios
 async function cargarUsuarios() {
  try {
      const response = await fetch('http://localhost/connect.php', {
          method: 'GET',
          headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
          },
      });

      if (!response.ok) {
          throw new Error('Error al cargar los datos');
      }

      const comunas = await response.json();

      let comunaElement = document.getElementById('comuna');

      // Limpia el contenido actual del elemento
      comunaElement.innerHTML = '';

      // Agrega nuevas opciones al elemento
      comunas.forEach(element => {
          if (element.ID_provincia===18) {
            let option = document.createElement('option');
            option.innerHTML = element.comuna;
            
            //option.text = element.nombre;
            comunaElement.appendChild(option);
          }
      });


  } catch (error) {
      console.log('Error:', error.message);
  }
}

// Llamar a la función para cargar comunas al cargar la página
cargarUsuarios();
// sudo cp -r /home/cesar/DesisForm/dinamica.js /var/www/html
