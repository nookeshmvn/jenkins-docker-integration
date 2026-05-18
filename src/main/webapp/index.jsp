<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blockbuster Movie Tickets</title>
    <style>
        /* CSS Reset */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            /* Deep cinematic gradient background */
            background: linear-gradient(135deg, #141e30 0%, #243b55 100%);
            color: #ffffff;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        header {
            width: 100%;
            padding: 40px 20px;
            background: rgba(0, 0, 0, 0.4);
            text-align: center;
            box-shadow: 0 8px 32px 0 rgba(0, 0, 0, 0.37);
        }

        header h1 {
            font-size: 3.5em;
            margin-bottom: 10px;
            letter-spacing: 2px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.8);
        }

        header p {
            font-size: 1.2em;
            color: #f1c40f;
            font-weight: 300;
        }

        .movie-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 40px;
            padding: 60px 20px;
            width: 100%;
            max-width: 1200px;
        }

        /* Glassmorphism Card Effect */
        .movie-card {
            background: rgba(255, 255, 255, 0.05);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            border-radius: 20px;
            border: 1px solid rgba(255, 255, 255, 0.1);
            overflow: hidden;
            width: 320px;
            transition: transform 0.4s ease, box-shadow 0.4s ease;
            text-align: center;
        }

        .movie-card:hover {
            transform: translateY(-15px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.6);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .movie-poster {
            width: 100%;
            height: 450px;
            object-fit: cover;
            border-bottom: 3px solid #e74c3c;
        }

        .movie-info {
            padding: 25px;
        }

        .movie-title {
            font-size: 1.6em;
            margin-bottom: 20px;
            font-weight: 600;
            letter-spacing: 1px;
        }

        .book-btn {
            background: linear-gradient(90deg, #e74c3c, #c0392b);
            color: white;
            border: none;
            padding: 15px 30px;
            font-size: 1.1em;
            font-weight: bold;
            border-radius: 50px;
            cursor: pointer;
            transition: opacity 0.3s ease, transform 0.2s ease;
            width: 100%;
            text-transform: uppercase;
            letter-spacing: 1px;
            box-shadow: 0 4px 15px rgba(231, 76, 60, 0.4);
        }

        .book-btn:hover {
            opacity: 0.9;
            transform: scale(1.05);
        }

        footer {
            margin-top: auto;
            padding: 25px;
            font-size: 0.9em;
            color: rgba(255, 255, 255, 0.5);
            letter-spacing: 1px;
        }
    </style>
</head>
<body>

    <header>
        <h1>🎬 Blockbuster Tickets 🍿</h1>
        <p>Book your favorite movies instantly in stunning HD.</p>
    </header>

    <main class="movie-container">
        <div class="movie-card">
            <img class="movie-poster" src="https://images.unsplash.com/photo-1626814026160-2237a95fc5a0?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" alt="Space Wars">
            <div class="movie-info">
                <h3 class="movie-title">Space Wars</h3>
                <button class="book-btn">BOOK $15</button>
            </div>
        </div>

        <div class="movie-card">
            <img class="movie-poster" src="https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" alt="Action Hero">
            <div class="movie-info">
                <h3 class="movie-title">Action Hero</h3>
                <button class="book-btn">BOOK $12</button>
            </div>
        </div>
        
        <div class="movie-card">
            <img class="movie-poster" src="https://images.unsplash.com/photo-1604871000636-074fa5117945?ixlib=rb-4.0.3&auto=format&fit=crop&w=600&q=80" alt="Neon Nights">
            <div class="movie-info">
                <h3 class="movie-title">Neon Nights</h3>
                <button class="book-btn">BOOK $10</button>
            </div>
        </div>
    </main>

    <footer>
        Deployed via Jenkins & Docker Pipeline
    </footer>

</body>
</html>
