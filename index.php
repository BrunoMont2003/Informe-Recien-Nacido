<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link rel="stylesheet" href="css/style.css" />
    <title>Info del Nacido Vivo</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>

<body>


    <header class="row p-5 m-0">
        <h1 class="text-center text-light">🍼Informe del Nacido Vivo 👶</h1>
    </header>
    <main class="container-fluid p-5">
        <div class="row justify-content-center">
            <form class="mb-5 col-lg-6 needs-validation" novalidate id="form">
                <div class="row p-3 my-5">
                    <h2>Datos del Nacido Vivo</h2>
                    <div class="col-12 col-md-6 my-2">
                        <label class="form-label">Sexo</label>
                        <div class="form-check">
                            <input required class="form-check-input" type="radio" name="sexo" id="rbSexoMasculino" />
                            <label class="form-check-label" for="rbSexoMasculino">
                                Masculino 👦
                            </label>
                        </div>
                        <div class="form-check">
                            <input required class="form-check-input" type="radio" name="sexo" id="rbSexoFemenino" />
                            <label class="form-check-label" for="rbSexoFemenino">
                                Femenino 👧
                            </label>
                        </div>
                        <div class="invalid-feedback">Por favor seleccione el sexo.</div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="txtFechaDeNacimiento" class="form-label">Fecha y Hora de Nacimiento 🕐
                        </label>
                        <input required type="datetime-local" class="form-control" id="txtFechaDeNacimiento"
                            name="fechaNacimiento" />
                        <div class="invalid-feedback">
                            Ingresar la fecha y hora de nacimiento
                        </div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="cbDepartamento" class="form-label">Departamento
                        </label>
                        <select required class="form-select" id="cbDepartamento">
                            <option selected disabled value="">Escoger ...</option>

                            <?php
                            include('con_db.php');
                            $consulta = "select * from departamentos";
                            $departamentos = mysqli_query($conex, $consulta);
                            while ($row = mysqli_fetch_array($departamentos)) {
                                $id = $row['id_dep'];
                                $nombre = $row['nombre'];

                            ?>
                            <option value="<?php echo $id; ?>">
                                <?php echo $nombre; ?>
                            </option>
                            <?php

                            }
                            ?>

                        </select>
                        <div class="invalid-feedback">Ingresar el departamento</div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="cbProvincia" class="form-label">Provincia</label>
                        <select required class="form-select" disabled id="cbProvincia">
                            <option selected disabled value="">Escoger ...</option>

                        </select>
                        <div class="invalid-feedback">Ingresar la Provincia</div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="cbDistrito" class="form-label">Distrito</label>
                        <select required class="form-select" disabled id="cbDistrito">
                            <option selected disabled value="">Escoger ...</option>
                            <option>...</option>
                        </select>
                        <div class="invalid-feedback">Ingresar el distrito</div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="txtPesoAlNacer" class="form-label">Peso Al Nacer (kg)
                        </label>
                        <input required type="number" class="form-control" id="txtPesoAlNacer" name="peso" min="0"
                            max="10" />
                        <div class="invalid-feedback">Ingresar el peso</div>
                    </div>
                </div>
                <div class="row p-3 my-5">
                    <h2>Datos del Parto</h2>

                    <div class="col-12 col-md-6 my-2">
                        <label for="cbSitioDeOcurrencia" class="form-label">Sitio de Ocurrencia 🏥
                        </label>
                        <select required class="form-select" id="cbSitioDeOcurrencia">
                            <option selected disabled value="">Escoger ...</option>
                            <option value="1">Hospital</option>
                            <option value="2">Posta</option>
                            <option value="3">Clínica</option>
                            <option value="4">En casa</option>
                            <option value="5">Otro</option>
                        </select>
                        <div class="invalid-feedback">
                            Seleccionar el sitio de Ocurrencia
                        </div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="txtSitioOcurrencia" class="form-label">Nombre del Sitio de Ocurrencia</label>
                        <input required type="text" class="form-control" name="sitioOcurrencia"
                            id="txtSitioOcurrencia" />
                        <div class="invalid-feedback">
                            Ingresar el nombre del Sitio de Ocurrencia
                        </div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="txtNombreMedico" class="form-label">Nombre del Médico👨‍⚕️
                        </label>
                        <input required type="text" class="form-control" id="txtNombreMedico" name="nombreMedico" />
                        <div class="invalid-feedback">Ingresar el nombre del Médico</div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="txtDniMedico" class="form-label">DNI del Médico</label>
                        <input required type="text" class="form-control" id="txtDniMedico" maxlength="8"
                            name="dniMedico" />
                        <div class="invalid-feedback">Ingresar el DNI del Médico</div>
                    </div>
                </div>
                <div class="row p-3 mt-5">
                    <h2>Datos de la Madre 👩‍🍼</h2>

                    <div class="col-12 col-md-6 my-2">
                        <label for="txtApellidoPaterno" class="form-label">Apellido Paterno</label>
                        <input required type="text" class="form-control" id="txtApellidoPaterno"
                            name="apellidoPaternoMadre" />
                        <div class="invalid-feedback">
                            Ingresar el Apellido Paterno de la Madre
                        </div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="txtApellidoMaterno" class="form-label">Apellido Materno</label>
                        <input required type="text" class="form-control" id="txtApellidoMaterno"
                            name="apellidoMaternoMadre" />
                        <div class="invalid-feedback">
                            Ingresar el Apellido Materno de la Madre
                        </div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="txtNombres" class="form-label">Nombres</label>
                        <input required type="text" class="form-control" id="txtNombres" name="nombresMadre" />
                        <div class="invalid-feedback">Ingresar el Nombre de la Madre</div>
                    </div>

                    <div class="col-12 col-md-6 my-2">
                        <label for="txtDniMadre" class="form-label" name="dniMadre">DNI</label>
                        <input required type="text" class="form-control" id="txtDniMadre" maxlength="8" />
                        <div class="invalid-feedback">Ingresar el DNI de la Madre</div>
                    </div>

                    <div class="col-12 mt-3">
                        <h5>Residencia Actual 🏠</h5>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="cbDepartamentoMadre" class="form-label">Departamento</label>
                        <select required class="form-select" id="cbDepartamentoMadre">
                            <option selected disabled value="">Escoger ...</option>
                            <?php
                            include('con_db.php');
                            $consulta = "select * from departamentos";
                            $departamentos = mysqli_query($conex, $consulta);
                            while ($row = mysqli_fetch_array($departamentos)) {
                                $id = $row['id_dep'];
                                $nombre = $row['nombre'];

                            ?>
                            <option value="<?php echo $id; ?>">
                                <?php echo $nombre; ?>
                            </option>
                            <?php

                            }
                            ?>
                        </select>
                        <div class="invalid-feedback">Ingresar el departamento</div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="cbProvinciaMadre" class="form-label">Provincia</label>
                        <select required class="form-select" disabled id="cbProvinciaMadre">
                            <option selected disabled value="">Escoger ...</option>
                            <option>...</option>
                        </select>
                        <div class="invalid-feedback">Ingresar la Provincia</div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="cbDistritoMadre" class="form-label">Distrito</label>
                        <select required class="form-select" disabled id="cbDistritoMadre">
                            <option selected disabled value="">Escoger ...</option>
                            <option>...</option>
                        </select>
                        <div class="invalid-feedback">Ingresar el distrito</div>
                    </div>
                    <div class="col-12 col-md-6 my-2">
                        <label for="txtDireccion" class="form-label">Direccion</label>
                        <input required type="text" class="form-control" id="txtDireccion" name="direccion" />
                        <div class="invalid-feedback">
                            Ingresar la direccion actual de la Madre
                        </div>
                    </div>
                </div>
                <div class="row p-3">
                    <div class="col-12 my-2">
                        <div class="form-check">
                            <input required class="form-check-input" type="checkbox" value="" id="chbCertifica" />
                            <label class="form-check-label" for="chbCertifica">
                                El médico certifica este informe❗
                            </label>
                        </div>
                    </div>
                </div>
                <div class="row p-3">
                    <div class="col-12 my-2">
                        <button type="submit" class="btn btn-outline-primary">
                            Confirmar
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </main>
    <script src="js/main.js"></script>
    <script src="https://kit.fontawesome.com/faff7685bf.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>

    <?php
    include('con_db.php');
    if ($conex) {
        echo 'todo correcto';
    } else {
        echo 'todo mal';
    }

    ?>

    <script src="js/select.js"></script>

</body>

</html>