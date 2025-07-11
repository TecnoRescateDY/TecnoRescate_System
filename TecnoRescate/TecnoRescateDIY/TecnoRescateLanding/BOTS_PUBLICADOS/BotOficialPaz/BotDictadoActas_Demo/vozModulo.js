
const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;

const recognition = new SpeechRecognition();
recognition.lang = 'es-AR';
recognition.interimResults = false;
recognition.continuous = false;

let callbackFinal = () => {};

recognition.onresult = (event) => {
  let textoFinal = '';
  for (let i = event.resultIndex; i < event.results.length; i++) {
    textoFinal += event.results[i][0].transcript;
  }
  callbackFinal(textoFinal.trim());
};

recognition.onerror = (event) => {
  console.error('Error en reconocimiento:', event.error);
};

export default {
  recognition,
  iniciarReconocimiento: (callback) => {
    callbackFinal = callback;
    recognition.start();
  },
  detenerReconocimiento: () => {
    recognition.stop();
  }
};
