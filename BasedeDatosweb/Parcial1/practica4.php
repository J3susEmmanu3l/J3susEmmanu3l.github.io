<?php
    $aciertos = 0;
    $pregunta1 = $_POST["pregunta1"];
    $pregunta2 = $_POST["pregunta2"];
    $pregunta3 = $_POST["pregunta3"];
    $pregunta4 = $_POST["pregunta4"];
    $pregunta5 = $_POST["pregunta5"];
    $pregunta6 = $_POST["pregunta6"];
    $pregunta7 = $_POST["pregunta7"];
    $pregunta8 = $_POST["pregunta8"];
    $pregunta9 = $_POST["pregunta9"];
    $pregunta10 = $_POST["pregunta10"];


    //PREGUNTA 1
    echo "<h2> 1.-¿Quién es el creador de MINECRAFT? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta1." ---- Correcta = NOTCH</h3>";
    if ($pregunta1 == "NOTCH") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    //PREGUNTA 2
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
            echo "<img src='imagenes/acierto.png' width='50px'><hr>";
        }else{
            echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
        }
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    //PREGUNTA 3
    echo "<h2> 3.-La ".$pregunta3." es un objeto en Minecraft que permite al jugador teletransportarse a una ubicación cercana al lanzarla. </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta3." ---- Correcta = Ender Pearl/ender pearl</h3>";
    if ($pregunta3 == "Ender Pearl" || $pregunta3 == "ender pearl") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }
    

    //PREGUNTA 4
    echo "<h2> 4.-¿Qué animal suelta lana cuando lo esquilas o matas? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta4." ---- Correcta = Oveja</h3>";
    if ($pregunta4 == "Oveja") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    //PREGUNTA 5
    echo "<h2> 5.-¿En qué año se lanzó la primera versión pública de Minecraft? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta5." ---- Correcta = 2009</h3>";
    if ($pregunta5 == "2009") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    //PREGUNTA 6
    echo "<h2> 6.-¿Cuál es el material más resistente en Minecraft para hacer herramientas y armaduras? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta6." ---- Correcta = Netherita</h3>";
    if ($pregunta6 == "Netherita") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    //PREGUNTA 7
    echo "<h2> 7.-¿Cuál es el BOSS con 3 cabezas? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta7." ---- Correcta = Wither</h3>";
    if ($pregunta7 == "Wither" || $pregunta7 == "wither") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    //PREGUNTA 8
    echo "<h2> 8.-¿Cuál es el BOSS FINAL? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta8." ---- Correcta = Ender Dragon</h3>";
    if ($pregunta8 == "Ender Dragon") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    //PREGUNTA 9
    echo "<h2> 9.-¿De qué dimesión pertenecen los Piglins? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta9." ---- Correcta = Nether</h3>";
    if ($pregunta9 == "Nether") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    //PREGUNTA 10
    echo "<h2> 10.-¿Qué criatura suelta la Ender Pearl al eliminarla? </h2>";
    echo "<h3>Repuesta seleccionada ".$pregunta10." ---- Correcta = Enderman</h3>";
    if ($pregunta10 == "Enderman") {
        $aciertos++;
        echo "<img src='imagenes/acierto.png' width='50px'><hr>";
    }else{
        echo "<img src='imagenes/tacha.jpeg' width='50px'><hr>";
    }


    echo "<h1>Respuestas Correctas:</h1>";
    echo "<h2>".$aciertos." = ".($aciertos*10)."%</h2> <br><br><br>";
?>