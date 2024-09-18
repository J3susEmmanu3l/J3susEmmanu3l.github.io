<?php
    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];

    echo "<h2> 1.-¿Quién es el creador de MINECRAFT? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta1." ---- Correcta = NOTCH</h3>";
    if ($pregunta1 == "NOTCH") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'>";
    }

    echo "<h2> 2.-¿Qué recursos ocupas para crearte una espada de hierro en Minecraft? (Escoge 2 opciones) </h2>";
    echo "<h3>Repuestas seleccionadas ";
    for ($i=0; $i < count($pregunta2); $i++) { 
        echo $pregunta2[$i].", ";
    }echo" ---- Correcta = Madera y Hierro</h3>";
    $p2_correctas = 0;
    if (count($pregunta2) == 2) {
        for ($i=0; $i < count($pregunta2); $i++) { 
            if ($pregunta2[$i] == "Madera" || $pregunta2[$i] == "Hierro") {
                $p2_correctas++;
            }
        }
        if ($p2_correctas == 2) {
            $aciertos++;
            echo "<img src='imagenes/acierto.png' width='50px'>";
        }else{
            echo "<img src='imagenes/tacha.jpeg' width='50px'>";
        }
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'>";
    }

    echo "<h2> 3.-La ".$pregunta3." es un objeto en Minecraft que permite al jugador teletransportarse a una ubicación cercana al lanzarla. </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta3." ---- Correcta = Ender Pearl/ender pearl</h3>";
    if ($pregunta3 == "Ender Pearl" || $pregunta3 == "ender pearl") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'>";
    }

    echo "<h1>Respuestas Correctas:</h1>";
    echo "<h2>".$aciertos." = ".($aciertos*10)."%</h2>";
?>