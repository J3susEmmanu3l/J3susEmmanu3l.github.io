<?php

    $nombre = $_GET["nombre"];
    $edad = $_GET["edad"];
    $escuela = $_GET["escuela"];
    $sexo = $_GET["sexo"];
    $nacimiento = $_GET["nacimiento"];

    echo"<h2>Jesus Emmanuel Ruiz Lopez 11/09/2024</h2>";
    if ($edad>=18) {
        echo "<h1>".$nombre." es mayor de edad</h1>";
    }else {
        echo"<h1>".$nombre." NO es mayor de edad</h1>";
    }
    
    echo"<h2>Nombre del Alumno: ".$nombre."</h2>";
    echo"<h2>Edad: ".$edad."</h2>";
    echo"<h2>Escuela: ".$escuela."</h2>";
    echo"<h2>Sexo: ".$sexo."</h2>";
    echo"<h2>Fecha de Nacimiento: ".$nacimiento."</h2>";
?>