<?php
require "connection.php";
$conexion = conectarBD();

session_name("Taquillator");
session_start();

if (isset($_GET['localidad'])) {
    $localidad = $_GET['localidad'];
    $_SESSION['localidad'] = $localidad;
} else if (isset($_SESSION['localidad'])) {
    $localidad = $_SESSION['localidad'];
} else {
    $localidad = "todas las localidades";
}

?>
<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>Taquillator</title>
</head>

<body>
    <form action="" method="get">
    <select name="localidad">
        <option value="todas las localidades" <?php echo isset($_SESSION['localidad']) && $_SESSION['localidad'] == 'todas las localidades' ? 'selected' : ''; ?>>Todas las localidades</option>
        <option value="Gijón" <?php echo isset($_SESSION['localidad']) && $_SESSION['localidad'] == 'Gijón' ? 'selected' : ''; ?>>Gijón</option>
        <option value="Oviedo" <?php echo isset($_SESSION['localidad']) && $_SESSION['localidad'] == 'Oviedo' ? 'selected' : ''; ?>>Oviedo</option>
        <option value="Avilés" <?php echo isset($_SESSION['localidad']) && $_SESSION['localidad'] == 'Avilés' ? 'selected' : ''; ?>>Avilés</option>
    </select>
        <input type="submit" value="Buscar">
    </form>

    <a href="nueva_taquilla.php">Añadir nueva taquilla</a>
</body>

</html>



<?php


////////////////////////////////////////////
// TODO 2: Obtener taquillas según filtro //
////////////////////////////////////////////

$sql = "SELECT localidad, direccion, capacidad, ocupadas FROM puntosderecogida WHERE capacidad != ocupadas";
if($localidad !== "todas las localidades"){
    $sql .= " AND localidad = :localidad";
    $stmt = $conexion->prepare($sql);
    $stmt->bindParam(':localidad', $localidad);
    $stmt->execute();
   
} else {
    $stmt = $conexion->query($sql);
}

if ($stmt->rowCount() > 0) {
    echo "<h2>Listado de taquillas en ".$localidad."</h2>";
    echo "<table><tr><th>Localidad</th><th>Dirección</th><th>Capacidad</th><th>Ocupadas</th></tr>";
    /////////////////////////////////////
    // TODO 3: Imprimir filas de tabla //
    /////////////////////////////////////
    
    while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        echo "<tr><td>".$row["localidad"]."</td><td>".$row["direccion"]."</td><td>".$row["capacidad"]."</td><td>".$row["ocupadas"]."</td></tr>";
    }
    echo "</table>";
} else {
    echo "No hay resultados";
}

?>