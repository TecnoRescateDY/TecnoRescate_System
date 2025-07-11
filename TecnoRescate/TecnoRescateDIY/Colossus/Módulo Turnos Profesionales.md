# Módulo Turnos Profesionales -

Este módulo permite a pacientes reservar turnos de forma simple, conectando con una agenda publicada desde Google Apps Script y confirmando vía WhatsApp.

## 🚀 ¿Cómo funciona?

1. El formulario se muestra embebido desde un Apps Script de Google.
2. El usuario completa nombre, fecha y hora.
3. Al enviar, se abre WhatsApp con el mensaje listo para confirmar.
4. El profesional puede editar los turnos en Google Calendar o Google Sheet.

## 📦 Archivos incluidos

- `index.html`: Página lista para publicar en Netlify o cualquier servidor web.

## 🛠️ Instrucciones para adaptar

1. Crear tu propio Apps Script (https://script.new)
2. Copiar el HTML embebido (`formulario.html` y script).
3. Publicar como App Web (habilitar permisos).
4. Reemplazar el `iframe src` con tu nuevo link.

## 🟢 WhatsApp de confirmación

Editá el número de WhatsApp en el HTML si es otro profesional:
```html
https://wa.me/5491122334455?text=...
