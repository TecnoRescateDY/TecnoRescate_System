// Número de WhatsApp de Lorena (formato internacional sin +)
const whatsapp = "5491130802250"; // Reemplazar con el real

// --- Formulario de contacto ---
document.getElementById("formulario-contacto")?.addEventListener("submit", function(e) {
  e.preventDefault();
  const nombre = document.getElementById("nombre").value.trim();
  const mensaje = document.getElementById("mensaje").value.trim();

  const url = `https://wa.me/${whatsapp}?text=Hola%20soy%20${encodeURIComponent(nombre)}.%20${encodeURIComponent(mensaje)}`;
  window.open(url, "_blank");
});

// --- Agenda de turnos ---
document.getElementById("form-turno")?.addEventListener("submit", function(e) {
  e.preventDefault();
  const nombre = document.getElementById("nombre-turno").value.trim();
  const fecha = document.getElementById("fecha").value;
  const hora = document.getElementById("hora").value;

  const mensaje = `Hola, soy ${nombre}. Quisiera reservar un turno para el día ${fecha} a las ${hora}.`;
  const url = `https://wa.me/${whatsapp}?text=${encodeURIComponent(mensaje)}`;
  window.open(url, "_blank");
});

// --- Dictado de voz ---
const btnDictar = document.getElementById("btn-dictar");
const areaTexto = document.getElementById("texto-dictado");
const btnEnviarVoz = document.getElementById("btn-enviar-voz");

btnDictar?.addEventListener("click", () => {
  if (!('webkitSpeechRecognition' in window)) {
    alert("Tu navegador no soporta reconocimiento de voz.");
    return;
  }

  const recognition = new webkitSpeechRecognition();
  recognition.lang = "es-AR";
  recognition.continuous = false;
  recognition.interimResults = false;

  recognition.onstart = () => {
    btnDictar.textContent = "🎤 Escuchando...";
  };

  recognition.onresult = (event) => {
    const texto = event.results[0][0].transcript;
    areaTexto.value = texto;
    btnDictar.textContent = "🎤 Iniciar dictado";
  };

  recognition.onerror = () => {
    btnDictar.textContent = "🎤 Iniciar dictado";
    alert("Error en el reconocimiento de voz.");
  };

  recognition.start();
});

btnEnviarVoz?.addEventListener("click", () => {
  const mensaje = areaTexto.value.trim();
  if (mensaje.length === 0) return alert("Primero dictá un mensaje.");
  const url = `https://wa.me/${whatsapp}?text=${encodeURIComponent(mensaje)}`;
  window.open(url, "_blank");
});
