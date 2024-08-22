function seleccionarDistrito() {
    let provincia = document.getElementById('estaticoProvincia').value;
    let canton = document.getElementById('estaticoCanton').value;
    let distrito = document.getElementById('estaticoDistrito').value;

    let selectProvincia = document.getElementById('provincia');
    selectOptionByText(selectProvincia, provincia);

    setTimeout(() => {
        let selectCanton = document.getElementById('canton');
        selectOptionByText(selectCanton, canton);

        setTimeout(() => {
            let selectDistritos = document.getElementById('distrito');
            selectOptionByText(selectDistritos, distrito);
        }, 200);
    }, 100);
}

function selectOptionByText(selectElement, text) {
    for (let i = 0; i < selectElement.options.length; i++) {
        if (selectElement.options[i].text === text) {
            selectElement.selectedIndex = i;
            selectElement.dispatchEvent(new Event('change'));
            break;
        }
    }
}

window.onload = function () {
    seleccionarDistrito();
};

function mensajeModificar() {
    Swal.fire({
        title: "Atención!",
        text: "Cambiar tu comunidad eliminará tus publicaciones y comentarios actuales, seguro que deseas continuar?",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#d33",
        cancelButtonColor: "#3085d6",
        confirmButtonText: "Continuar",
        cancelButtonText: "Cancelar"
    }).then((result) => {
        if (result.isConfirmed) {

            let opcionesDistrito = document.getElementById('opcionesDistrito');
            let botonRevertir = document.getElementById('btnRevertirDistrito');
            let botonCambiar = document.getElementById('btnModificarDistrito');
            botonCambiar.setAttribute("hidden", "true");
            botonRevertir.removeAttribute("hidden");
            opcionesDistrito.removeAttribute("hidden"); 
            
        }
    });
}

function mensajeRevertir() {
    Swal.fire({
        title: "Revertir cambios?",
        text: "Se mantendrá tu comunidad actual",
        icon: "warning",
        showCancelButton: true,
        confirmButtonColor: "#d33",
        cancelButtonColor: "#3085d6",
        confirmButtonText: "Continuar",
        cancelButtonText: "Cancelar"
    }).then((result) => {
        if (result.isConfirmed) {

            let opcionesDistrito = document.getElementById('opcionesDistrito');
            let botonRevertir = document.getElementById('btnRevertirDistrito');
            let botonCambiar = document.getElementById('btnModificarDistrito');
            botonRevertir.setAttribute("hidden", "true");
            botonCambiar.removeAttribute("hidden");
            opcionesDistrito.setAttribute("hidden", "true"); 
            seleccionarDistrito();
            Swal.fire({
                title: "Cambios revertidos",
                text: "Puedes continuar modificando tu perfil!",
                icon: "success",
                timer: 2000,
                showConfirmButton: false
            });
        }
    });
}