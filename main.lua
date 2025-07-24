<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>By Unitec</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(to bottom right, #d4fc79, #96e6a1);
      animation: backgroundChange 10s infinite alternate;
    }

    @keyframes backgroundChange {
      0% { background: #ffe6f0; }
      25% { background: #e6f7ff; }
      50% { background: #e6ffe6; }
      75% { background: #fff5e6; }
      100% { background: #ffe6f0; }
    }

    header {
      background: linear-gradient(to right, red, orange, yellow, green, cyan, blue, violet);
      color: white;
      padding: 20px;
      text-align: center;
      font-size: 28px;
      font-weight: bold;
      animation: rainbow 5s linear infinite;
    }

    @keyframes rainbow {
      0% { filter: hue-rotate(0deg); }
      100% { filter: hue-rotate(360deg); }
    }

    .mensaje {
      text-align: center;
      font-size: 18px;
      margin: 10px;
      color: #222;
      background-color: #fff;
      border-radius: 10px;
      padding: 10px;
    }

    .productos {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      padding: 10px;
    }

    .producto {
      background: white;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.2);
      margin: 10px;
      padding: 10px;
      width: 180px;
      text-align: center;
    }

    .producto img {
      width: 100%;
      height: 120px;
      object-fit: cover;
      border-radius: 8px;
    }

    .producto p {
      margin: 10px 0 5px;
      font-weight: bold;
    }

    .botones {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin: 20px 0;
    }

    .boton {
      background: linear-gradient(to right, #ff416c, #ff4b2b);
      color: white;
      border: none;
      padding: 12px 20px;
      margin: 10px;
      border-radius: 30px;
      cursor: pointer;
      font-size: 16px;
      transition: transform 0.2s;
    }

    .boton:hover {
      transform: scale(1.05);
    }

    .footer {
      text-align: center;
      padding: 10px;
      background-color: #111;
      color: white;
      font-size: 14px;
    }

    @media screen and (max-width: 600px) {
      .producto {
        width: 90%;
      }
    }
  </style>
</head>
<body>

  <header>By Unitec</header>

  <div class="mensaje">RECUERDA PUEDES PERSONALIZARLO A TU GUSTO :3</div>

  <div class="productos">
    <div class="producto">
      <img src="https://i.imgur.com/zYl6aHX.jpeg" alt="Cartuchera Neceser">
      <p>Cartuchera Neceser</p>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/H1oABaW.jpeg" alt="Foto Roca">
      <p>Foto Roca</p>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/Z3AQED4.jpeg" alt="Llavero Sublimable">
      <p>Llavero Sublimable</p>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/XH7J5ab.jpeg" alt="Libreta">
      <p>Libreta</p>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/mRZLaQB.jpeg" alt="Morral Sublimable">
      <p>Morral Sublimable</p>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/W8OD59z.jpeg" alt="Mouse Pad">
      <p>Mouse Pad</p>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/2v9jFJG.jpeg" alt="Polos Sublimables">
      <p>Polos Sublimables</p>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/VvpeErf.jpeg" alt="Taza Mágica">
      <p>Taza Mágica</p>
    </div>
    <div class="producto">
      <img src="https://i.imgur.com/qOYr7Ej.jpeg" alt="Termo Digital">
      <p>Termo Digital</p>
    </div>
  </div>

  <div class="botones">
    <button class="boton" onclick="comprar()">Comprar</button>
    <button class="boton" onclick="window.location.href='https://link-hub.net/1368874/f4Cc33ZaCaQi'">Obtener Descuento</button>
  </div>

  <div class="footer">
    Fe y Alegría 10 - Lima, Perú © 2025
  </div>

  <script>
    function comprar() {
      alert("Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540");
    }
  </script>

</body>
</html>
