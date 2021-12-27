<?php
include('con_db.php');
$id_dep = $_POST['id_dep'];
$consulta = "SELECT * from provincias where id_dep = '$id_dep' ";

$provincias = mysqli_query($conex, $consulta);
$cadena = "<option selected disabled value=''>Escoger ...</option>";

while ($row = mysqli_fetch_array($provincias)) {
    $cadena = $cadena . "<option value = " . $row['id_prov'] . ">" . $row['nombre'] . "</option>";
}
echo $cadena;
