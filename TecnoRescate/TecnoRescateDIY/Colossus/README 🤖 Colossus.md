# 🤖 Colossus - Sistema de Automatización de Bots y Landings [FOXY_CORE]

Colossus es el sistema de generación automatizada de bots para clientes dentro del entorno **TecnoRescate DIY**. Fue diseñado para funcionar tanto online (Netlify) como local (desde pendrive o consola FOXY).

---

## 📁 Estructura del módulo

/Colossus/
├── index.html ← Panel generador de bots (usado en el Panel General)
├── Plantillas/ ← HTMLs base reutilizables por rubro
├── README/ ← Instrucciones FOXY para cada plantilla
├── presets.json ← (opcional) Configs para autocompletar el generador

yaml
Copiar
Editar

---

## 🧠 ¿Qué hace?

1. Permite seleccionar una **plantilla base** (ej: BotCervecero, Servicio, Delivery).
2. Se eligen **módulos funcionales** (QR, reservas, dictado de voz, landing pro, etc).
3. Se genera:
   - 🧾 Un presupuesto detallado para el cliente
   - 🤖 Una instrucción estándar para que FOXY cree el bot automáticamente

---

## 🛠️ ¿Qué NO hace todavía?

- No genera los archivos `.html` automáticamente (por ahora).
- No publica directamente en Netlify ni sube a GitHub.
- No genera ZIP del bot (pendiente en la versión 2.0).

---

## 📦 ¿Cómo usarlo?

1. Ingresá desde el Panel General FOXY o abrí `/Colossus/index.html`.
2. Escribí el nombre del cliente.
3. Seleccioná plantilla y módulos.
4. Copiá o descargá el resultado.
5. Pegalo en ChatGPT para que FOXY lo genere.

---

## 🧩 Flujo sugerido

1. Cliente consulta → Se usa `Colossus` para presupuestar.
2. Se genera texto → Se pasa a FOXY vía ChatGPT.
3. FOXY genera el bot → Vos lo revisás y lo subís.
4. El bot se publica → Se entrega al cliente.

---

## 📚 Plantillas recomendadas

Las plantillas HTML deben ubicarse en `/Plantillas/` con nombres como:

- `BotCervecero.html`
- `BotServicio.html`
- `BotDelivery.html`

Cada una debe tener su correspondiente archivo `README` con formato:

[FOXY_HTML_LOCAL]
Cliente: Cervecería X
Plantilla: BotCervecero
Módulos: QR, Carta Digital, Formulario
Estilo: Retro Neón / Adaptado a celular

yaml
Copiar
Editar

---

## 🔮 Futuro (versión 2.0)

- Carga automática de plantillas desde JSON
- Generación de carpetas de cliente al vuelo
- Botón "Generar ZIP"
- Botón "Subir a Netlify"

---

🦊 Foxy dice: *"Colossus no es solo un generador... es el corazón del enjambre modular."*
