<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>By Unitec</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background: linear-gradient(270deg, #ff9a9e, #fad0c4, #fad0c4, #ffdde1);
      background-size: 800% 800%;
      animation: rainbowBG 10s ease infinite;
      color: #333;
    }

    @keyframes rainbowBG {
      0% { background-position: 0% 50%; }
      50% { background-position: 100% 50%; }
      100% { background-position: 0% 50%; }
    }

    header {
      background-color: rgba(0, 0, 0, 0.7);
      color: #fff;
      padding: 1rem;
      text-align: center;
      font-size: 1.8rem;
    }

    .mensaje {
      text-align: center;
      font-size: 1rem;
      margin: 10px 0;
      color: #000;
      font-weight: bold;
    }

    .productos {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      padding: 1rem;
      gap: 1.2rem;
    }

    .producto {
      background-color: white;
      border-radius: 10px;
      padding: 1rem;
      width: 240px;
      text-align: center;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    .producto img {
      width: 100%;
      height: 160px;
      object-fit: cover;
      border-radius: 6px;
    }

    .producto h3 {
      margin: 0.8rem 0 0.5rem;
    }

    .producto button {
      background-color: #007bff;
      color: white;
      border: none;
      padding: 0.6rem 1rem;
      border-radius: 6px;
      cursor: pointer;
    }

    .producto button:hover {
      background-color: #0056b3;
    }

    /* BOTÓN DE DESCUENTO FLOTANTE */
    .descuento-button {
      position: fixed;
      bottom: 20px;
      right: 15px;
      background-color: #ff4081;
      color: white;
      padding: 12px 18px;
      border-radius: 8px;
      font-weight: bold;
      text-decoration: none;
      box-shadow: 0 4px 8px rgba(0,0,0,0.3);
      z-index: 1000;
      transition: background 0.3s ease;
    }

    .descuento-button:hover {
      background-color: #e91e63;
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
      <img src="https://via.placeholder.com/240x160?text=Cartuchera" alt="Cartuchera">
      <h3>Cartuchera Neceser</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://via.placeholder.com/240x160?text=Foto+Roca" alt="Foto Roca">
      <h3>Foto Roca</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://via.placeholder.com/240x160?text=Llavero" alt="Llavero">
      <h3>Llavero Sublimable</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://via.placeholder.com/240x160?text=Libreta" alt="Libreta">
      <h3>Libreta</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://via.placeholder.com/240x160?text=Morral" alt="Morral">
      <h3>Morral Sublimable</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://via.placeholder.com/240x160?text=Mouse+Pad" alt="Mouse Pad">
      <h3>Mouse Pad</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://via.placeholder.com/240x160?text=Polos" alt="Polos">
      <h3>Polos Sublimables</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://via.placeholder.com/240x160?text=Taza+M%C3%A1gica" alt="Taza">
      <h3>Taza Mágica</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
    <div class="producto">
      <img src="https://via.placeholder.com/240x160?text=Termo+Digital" alt="Termo">
      <h3>Termo Digital</h3>
      <button onclick="alert('Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540')">Comprar</button>
    </div>
  </div>

  <!-- BOTÓN DE DESCUENTO -->
  <a href="https://link-hub.net/1368874/f4Cc33ZaCaQi" class="descuento-button" target="_blank">
    ¡Obtén tu Descuento Aquí!
  </a>

</body>
</html>
