import "./node_modules/slidem/slidem-deck.js";
import "./node_modules/slidem/slidem-slide.js";
import "./node_modules/slidem/slidem-polymersummit-slide.js";

const video = document.querySelector("#faceCam");

window.navigator.mediaDevices
  .getUserMedia({ video: true, audio: false })
  .then((stream) => {
    video.srcObject = stream;
    video.onloadedmetadata = (e) => {
      video.play();
    };
  })
  .catch(console.log);
