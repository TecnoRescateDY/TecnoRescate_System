
function escribirLento(texto, destinoID, callback) {
  const el = document.getElementById(destinoID);
  el.textContent = "";
  let i = 0;
  const intervalo = setInterval(() => {
    if (i < texto.length) {
      el.textContent += texto.charAt(i);
      i++;
    } else {
      clearInterval(intervalo);
      if (callback) callback();
    }
  }, 30);
}

function mostrar(mensaje) {
  document.getElementById('mapa').style.display = 'none';
  escribirLento(mensaje, 'respuesta');
}

function mostrarMapa() {
  const mensaje = "📍 Te esperamos en nuestra barbería. Mirá el mapa abajo 👇";
  escribirLento(mensaje, 'respuesta', () => {
    document.getElementById('mapa').style.display = 'block';
  });
}

window.onload = function() {
  escribirLento("🤖 Hola, soy tu bot de la barbería. ¿En qué puedo ayudarte hoy?", 'respuesta');
};
