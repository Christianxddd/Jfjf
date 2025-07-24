<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Fe y Alegría 10 - Productos</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background-size: cover;
      background-position: center;
      color: white;
    }
    header {
      background-color: rgba(0,0,0,0.6);
      padding: 20px;
      text-align: center;
      font-size: 2em;
      font-weight: bold;
    }
    .productos {
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 30px;
      padding: 20px;
    }
    .producto {
      background-color: rgba(0, 0, 0, 0.6);
      padding: 15px;
      border-radius: 10px;
      width: 90%;
      max-width: 400px;
      text-align: center;
    }
    .producto img {
      width: 100%;
      border-radius: 8px;
    }
    .botones {
      margin-top: 10px;
    }
    button {
      background-color: #00c896;
      border: none;
      padding: 10px 15px;
      color: white;
      font-size: 1em;
      border-radius: 5px;
      cursor: pointer;
    }
    button:hover {
      background-color: #009f77;
    }
    .descuento {
      position: fixed;
      top: 15px;
      right: 15px;
      background-color: gold;
      padding: 10px;
      border-radius: 10px;
      color: black;
      font-weight: bold;
      cursor: pointer;
      animation: brillar 1s infinite alternate;
    }
    @keyframes brillar {
      from {box-shadow: 0 0 5px gold;}
      to {box-shadow: 0 0 20px gold;}
    }

    @media screen and (max-width: 600px) {
      header {
        font-size: 1.5em;
      }
      button {
        font-size: 0.9em;
      }
    }
  </style>
</head>
<body>

<div class="descuento" onclick="window.location.href='https://link-hub.net/1368874/f4Cc33ZaCaQi'">🎉 ¡Obtener Descuento!</div>

<header>Productos - Fe y Alegría 10</header>

<div class="productos" id="productos-lista">
  <!-- Productos aquí -->
</div>

<script>
  // Detectar estación actual
  const estaciones = {
    verano: 'https://images.unsplash.com/photo-1507525428034-b723cf961d3e',
    invierno: 'https://images.unsplash.com/photo-1610394213321-ec1470a3c545',
    primavera: 'https://images.unsplash.com/photo-1497215842964-222b430dc094',
    otono: 'https://images.unsplash.com/photo-1477414348463-c0eb7f1359b6'
  };
  const mes = new Date().getMonth();
  let estacion = 'verano';
  if (mes >= 2 && mes <= 4) estacion = 'otoño';
  else if (mes >= 5 && mes <= 7) estacion = 'invierno';
  else if (mes >= 8 && mes <= 10) estacion = 'primavera';

  document.body.style.backgroundImage = `url(${estaciones[estacion]})`;

  // Productos
  const productos = [
    { nombre: "Cartuchera neceser", img: "https://i.imgur.com/RptQ67c.jpg" },
    { nombre: "Foto roca", img: "https://i.imgur.com/WiMnR8X.jpg" },
    { nombre: "Llavero sublimable", img: "https://i.imgur.com/G6R6QkA.jpg" },
    { nombre: "Libreta", img: "https://i.imgur.com/Ec3v0Z1.jpg" },
    { nombre: "Morral sublimable", img: "https://i.imgur.com/pt6n3sj.jpg" },
    { nombre: "Mouse pad", img: "https://i.imgur.com/iqRmcUN.jpg" },
    { nombre: "Polos sublimables", img: "https://i.imgur.com/I1s7cW4.jpg" },
    { nombre: "Tazas mágicas", img: "https://i.imgur.com/VyF7O1g.jpg" },
    { nombre: "Termo digital", img: "https://i.imgur.com/hYq2v5S.jpg" },
  ];

  const contenedor = document.getElementById("productos-lista");
  productos.forEach(prod => {
    const div = document.createElement("div");
    div.className = "producto";
    div.innerHTML = `
      <h2>${prod.nombre}</h2>
      <img src="${prod.img}" alt="${prod.nombre}">
      <div class="botones">
        <button onclick="contactar()">🛒 Comprar</button>
      </div>
    `;
    contenedor.appendChild(div);
  });

  function contactar() {
    alert("📱 Contáctate con el proveedor:\n+51 933 818 145\n+51 936 521 540");
  }
</script>

</body>
</html>
