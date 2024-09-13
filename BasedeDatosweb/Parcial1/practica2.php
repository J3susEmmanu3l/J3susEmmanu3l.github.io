<?php
    $nombre = $_POST["nombre"];
    $fecha = $_POST["fecha"];
    $num_control = $_POST["num_control"];

    $materias = $_POST["materias"];
    $calificaciones = $_POST["calificaciones"];
    $maestro = $_POST["maestro"];

    $promedio = 0;
    $suma    = 0;

    for ($i=0; $i < count($calificaciones); $i++) { 
        $suma = $suma + $calificaciones[$i];        
    }
    
    $promedio = $suma / count($materias);

    echo"<h1>Alumno: ".$nombre."</h1>";
    echo"<h2>Num de Control: ".$num_control."</h2>";
    echo"<h2>Fecha: ".$fecha."</h2>";

    for ($i=0; $i < count($calificaciones); $i++) { 
        if ($calificaciones<=5) {
            echo"<h4 style='color:red;'>Materia: ".$materias[$i]."-------Calificacion: ".$calificaciones[$i]."----------Maestro: ".$maestro[$i]."</h4>";
        }else{
            echo"<h4>Materia: ".$materias[$i]."-------Calificacion: ".$calificaciones[$i]."----------Maestro: ".$maestro[$i]."</h4>";
        }
        
    }

    if ($promedio<=5) {
        echo"<h2 style='color:red;'>Promedio= ".number_format($promedio,2)."</h2>";
    }else{
        echo"<h2 style='color:green;'>Promedio= ".number_format($promedio,2)."</h2>";
    }

?>