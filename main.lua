<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Chat estilo Roblox con toggle</title>
  <style>
    body { margin: 0; font-family: sans-serif; }

    /* Botón flotante */
    #toggleChatBtn {
      position: fixed;
      bottom: 20px;
      right: 20px;
      width: 60px;
      height: 60px;
      background: #00ffcc;
      border: none;
      border-radius: 50%;
      font-size: 26px;
      color: black;
      font-weight: bold;
      cursor: pointer;
      z-index: 10000;
    }

    /* Chat lateral */
    #robloxChat {
      position: fixed;
      top: 0;
      right: 0;
      width: 300px;
      height: 100vh;
      background: #222;
      color: white;
      display: none;
      flex-direction: column;
      border-left: 2px solid #111;
      z-index: 9999;
    }

    #chatHeader {
      background: #111;
      padding: 10px;
      text-align: center;
      font-weight: bold;
      font-size: 16px;
      border-bottom: 1px solid #333;
    }

    #chatMessages {
      flex: 1;
      overflow-y: auto;
      padding: 10px;
      font-size: 14px;
    }

    .msg {
      margin-bottom: 10px;
    }

    .userMsg { color: #00ffcc; }
    .botMsg { color: #fca311; }

    #chatInput {
      display: flex;
      border-top: 1px solid #444;
    }

    #chatInput input {
      flex: 1;
      padding: 10px;
      border: none;
      background: #333;
      color: white;
      font-size: 14px;
    }

    #chatInput button {
      background: #00ffcc;
      border: none;
      padding: 10px;
      color: black;
      font-weight: bold;
      cursor: pointer;
    }
  </style>
</head>
<body>

<!-- Botón flotante -->
<button id="toggleChatBtn">💬</button>

<!-- Chat lateral estilo Roblox -->
<div id="robloxChat">
  <div id="chatHeader">💬 Chat</div>
  <div id="chatMessages">
    <div class="msg botMsg"><strong>Bot:</strong> ¡Hola! ¿Cómo puedo ayudarte?</div>
  </div>
  <div id="chatInput">
    <input type="text" id="userInput" placeholder="Escribe aquí...">
    <button onclick="sendMsg()">➤</button>
  </div>
</div>

<script>
  const toggleBtn = document.getElementById("toggleChatBtn");
  const chatBox = document.getElementById("robloxChat");

  toggleBtn.onclick = () => {
    chatBox.style.display = (chatBox.style.display === "flex") ? "none" : "flex";
  };

  function sendMsg() {
    const input = document.getElementById("userInput");
    const text = input.value.trim();
    if (!text) return;

    addMessage("user", text);
    input.value = "";

    setTimeout(() => {
      const response = getBotResponse(text.toLowerCase());
      addMessage("bot", response);
    }, 400);
  }

  function addMessage(sender, text) {
    const chat = document.getElementById("chatMessages");
    const msgDiv = document.createElement("div");
    msgDiv.classList.add("msg", sender === "user" ? "userMsg" : "botMsg");
    msgDiv.innerHTML = `<strong>${sender === "user" ? "Tú" : "Bot"}:</strong> ${text}`;
    chat.appendChild(msgDiv);
    chat.scrollTop = chat.scrollHeight;
  }

  function getBotResponse(msg) {
    if (msg.includes("hola")) return "¡Hola! ¿Quieres saber más sobre nuestros servicios?";
    if (msg.includes("web")) return "Ofrecemos diseño web profesional. ¿Qué tipo de página quieres?";
    if (msg.includes("precio")) return "Nuestros precios empiezan desde $29. ¿Quieres una cotización?";
    if (msg.includes("whatsapp")) return "Puedes escribirme por WhatsApp: https://wa.me/51XXXXXXXX";
    return "Hmm... no entendí. Pero dime qué necesitas y te ayudo.";
  }
</script>

</body>
</html>
