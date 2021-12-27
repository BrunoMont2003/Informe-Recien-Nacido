<?php
include('con_db.php');
$id_prov = $_POST['id_prov'];
$consulta = "SELECT * from distritos where id_prov = '$id_prov' ";

$distritos = mysqli_query($conex, $consulta);
$cadena = "<option selected disabled value=''>Escoger ...</option>";

while ($row = mysqli_fetch_array($distritos)) {
    $cadena = $cadena . "<option value = " . $row['id_dis'] . ">" . $row['nombre'] . "</option>";
}
echo $cadena;