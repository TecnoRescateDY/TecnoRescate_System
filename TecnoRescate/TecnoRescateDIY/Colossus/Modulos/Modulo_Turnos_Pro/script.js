
// Número de WhatsApp (sin el +)
const whatsapp = "5490000000000"; // ← Reemplazar por el número real

// Escucha el evento de envío desde el iframe si usás postMessage (opcional avanzado)
// window.addEventListener("message", function(event) {
//   if (event.data === "form_enviado") {
//     const mensaje = "Hola, acabo de reservar un turno.";
//     const url = `https://wa.me/${whatsapp}?text=${encodeURIComponent(mensaje)}`;
//     window.open(url, "_blank");
//   }
// });
