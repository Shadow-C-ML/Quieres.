<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>¿Quieres pasar el 14 de febrero conmigo?</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            text-align: center;
            background: url('https://source.unsplash.com/1600x900/?love,romantic') no-repeat center center/cover;
            color: white;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            overflow: hidden;
        }

        .container {
            background: rgba(0, 0, 0, 0.6);
            padding: 30px;
            border-radius: 15px;
            width: 80%;
            max-width: 600px;
        }

        h1 {
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
        }

        button {
            font-size: 1.5em;
            padding: 10px 20px;
            margin-top: 20px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            transition: transform 0.3s ease;
        }

        #yes {
            background-color: #ff4081;
            color: white;
        }

        #no {
            background-color: #ccc;
            color: black;
        }

        button:hover {
            transform: scale(1.1);
        }

        .heart {
            font-size: 5em;
            color: red;
            margin-top: 20px;
        }

        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>¿Quieres pasar este 14 de febrero conmigo aunque sea online, mi amor?</h1>
        <div class="buttons">
            <button id="yes" onclick="showHeart()">Sí</button>
            <button id="no" onmouseover="moveNo()">No</button>
        </div>
        <div id="heart-message" class="hidden">
            <div class="heart">❤️</div>
            <h2>¡Sabía que dirías que sí! 💕</h2>
        </div>
    </div>

    <script>
        // Función para mostrar el corazón y el mensaje
        function showHeart() {
            document.querySelector('.buttons').classList.add('hidden');
            document.getElementById('heart-message').classList.remove('hidden');
        }

        // Función para mover el botón "No" cuando se pasa el mouse
        function moveNo() {
            let button = document.getElementById('no');
            let x = Math.random() * (window.innerWidth - 100);
            let y = Math.random() * (window.innerHeight - 100);
            button.style.left = `${x}px`;
            button.style.top = `${y}px`;
            button.style.position = 'absolute';
        }
    </script>
</body>
</html>
