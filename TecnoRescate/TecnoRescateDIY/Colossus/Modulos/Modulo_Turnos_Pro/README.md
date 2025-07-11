
# Módulo Turnos Profesionales

Plantilla HTML básica para agendar turnos y confirmar vía WhatsApp. Diseñada para profesionales de la salud o servicios individuales.

---

## 🚀 ¿Cómo funciona?

1. Se muestra un iframe con un formulario publicado desde Google Apps Script.
2. El usuario completa sus datos y envía.
3. Luego puede confirmar el turno por WhatsApp con un mensaje prellenado.

---

## 🛠️ Personalización rápida

- Cambiá el número de WhatsApp en:
  - `index.html` (etiqueta `<a href="https://wa.me/...">`)
  - `script.js` (variable `whatsapp`)

- Reemplazá el `iframe src` por el enlace a tu propio formulario de Google Apps Script:
```html
<iframe src="https://script.google.com/macros/s/TU_LINK/exec" allowfullscreen></iframe>
