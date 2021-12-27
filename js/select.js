let departamento = document.getElementById('cbDepartamento');
let provincia = document.getElementById('cbProvincia');
let distrito = document.getElementById('cbDistrito');

departamento.addEventListener('change', ()=>{
    provincia.removeAttribute('disabled');
    recargarProvincias("");

});

provincia.addEventListener('change', ()=>{
    distrito.removeAttribute('disabled');
    recargarDistritos("");
});

let departamentoM = document.getElementById('cbDepartamentoMadre');
let provinciaM = document.getElementById('cbProvinciaMadre');
let distritoM = document.getElementById('cbDistritoMadre');

departamentoM.addEventListener('change', ()=>{
    provinciaM.removeAttribute('disabled');    
    recargarProvincias("Madre");
});

provinciaM.addEventListener('change', ()=>{
    distritoM.removeAttribute('disabled');    
    recargarDistritos("Madre");
});

const recargarProvincias = (m) => {
    $.ajax({
        type: 'POST',
        url: 'provincias.php',
        data: 'id_dep=' + $('#cbDepartamento'+m).val(),
        success: function(r){
            $('#cbProvincia'+m).html(r);
        }
    })
}
const recargarDistritos = (m) => {
    $.ajax({
        type: 'POST',
        url: 'distritos.php',
        data: 'id_prov=' + $('#cbProvincia'+m).val(),
        success: function(r){
            $('#cbDistrito'+m).html(r);
        }
    })
}

