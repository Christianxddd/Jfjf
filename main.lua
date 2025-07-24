<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>By Unitec</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      margin: 0;
      font-family: 'Arial Black', sans-serif;
      background: linear-gradient(270deg, #ff00c8, #00fff7, #ffc400, #00ff4c);
      background-size: 800% 800%;
      animation: rainbow 10s ease infinite;
      color: white;
      text-align: center;
    }

    @keyframes rainbow {
      0% {background-position:0% 50%}
      50% {background-position:100% 50%}
      100% {background-position:0% 50%}
    }

    h1 {
      margin-top: 20px;
      font-size: 2.8em;
      text-shadow: 2px 2px #000;
    }

    p {
      font-size: 1.2em;
      margin-bottom: 30px;
    }

    .productos {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      padding: 10px;
    }

    .producto {
      background: rgba(0, 0, 0, 0.6);
      border-radius: 10px;
      margin: 10px;
      width: 250px;
      padding: 15px;
      box-shadow: 0 0 10px black;
    }

    .producto img {
      max-width: 100%;
      height: auto;
      border-radius: 8px;
    }

    .producto h2 {
      font-size: 1.3em;
      margin: 10px 0;
    }

    .producto button {
      background: #ff00c8;
      border: none;
      padding: 10px;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
      margin-top: 10px;
    }

    .producto button:hover {
      background: #00ffff;
      color: black;
    }

    .mensaje {
      background: rgba(0, 0, 0, 0.6);
      margin: 20px;
      padding: 10px;
      border-radius: 10px;
      font-size: 1.1em;
      text-shadow: 1px 1px black;
    }
  </style>
</head>
<body>
  <h1>By Unitec</h1>
  <p class="mensaje">RECUERDA, PUEDES PERSONALIZARLO A TU GUSTO :3</p>

  <div class="productos">
    <!-- Lista de productos -->
    <div class="producto">
      <img src="https://i.imgur.com/q3VStZN.jpg" alt="Cartuchera">
      <h2>Cartuchera Neceser</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/eb5DGMK.jpg" alt="Foto Roca">
      <h2>Foto Roca</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/BFlHXyG.jpg" alt="Llavero">
      <h2>Llavero Sublimable</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/KidGWHj.jpg" alt="Libreta">
      <h2>Libreta</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/Ic8fw0J.jpg" alt="Morral">
      <h2>Morral Sublimable</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/NtJmWkl.jpg" alt="Mouse Pad">
      <h2>Mouse Pad</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/ihG5m9G.jpg" alt="Polos">
      <h2>Polos Sublimables</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/MwzoNfl.jpg" alt="Taza">
      <h2>Taza Mágica</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/bXIRdzr.jpg" alt="Termo">
      <h2>Termo Digital</h2>
      <button onclick="mostrarInfo()">Comprar</button>
    </div>
  </div>

  <script>
    function mostrarInfo() {
      alert("📞 Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540\n\n💳 También puedes pagar por PayPal:\nhttps://www.paypal.com/paypalme/jostin10045");
    }
  </script>
</body>
</html>
