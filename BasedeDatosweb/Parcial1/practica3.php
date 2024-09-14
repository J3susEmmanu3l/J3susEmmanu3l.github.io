<?php
    $jugador1 = $_POST["jugador1"];
    $jugador2 = $_POST["jugador2"];

    //la variable $gato es un ARRAY
    $gato = $_POST["gato"];
    //$gato[0], $gato[1], $gato[2]
    //$gato[3], $gato[4], $gato[5]
    //$gato[6], $gato[7], $gato[8]

    
    //Validar quien es el ganador

    $combinacionesGANADORAS = [
        [0,1,2], //Fila Superior
        [3,4,5], //Fila Medio
        [6,7,8], //Fila Inferior
        [0,3,6], //Columna Izquierda
        [1,4,7], //Columba Medio
        [2,5,8], //Columba Derecha
        [0,4,8], //Diagonal Izq-Der
        [2,4,6], //Diagonal Der-Izq
    ];

    foreach ($combinacionesGANADORAS as $combinacion) {
        if ($gato[$combinacion[0]]==$gato[$combinacion[1]] && $gato[$combinacion[1]]==$gato[$combinacion[2]]) {
            if ($gato[$combinacion[0]]== "X") {
                echo"<h1>Gana Jugador 1: ".$jugador1."</h1>";
                return;
            }elseif ($gato[$combinacion[0]]=="O") {
                echo"<h1>Gana Jugador 2: ".$jugador2."</h1>";
                return;
            }
        }
    }
    echo"<h1>Empate MALOS</h1>";

?>