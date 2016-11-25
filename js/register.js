$(function () {
    $('.list-group.checked-list-box .list-group-item').each(function () {

        // Settings
        var $widget = $(this),
            $checkbox = $('<input type="checkbox" class="hidden" />'),
            color = ($widget.data('color') ? $widget.data('color') : "primary"),
            style = ($widget.data('style') == "button" ? "btn-" : "list-group-item-"),
            settings = {
                on: {
                    icon: 'glyphicon glyphicon-check'
                },
                off: {
                    icon: 'glyphicon glyphicon-unchecked'
                }
            };

        $widget.css('cursor', 'pointer')
        $widget.append($checkbox);

        // Event Handlers
        $widget.on('click', function () {
            $checkbox.prop('checked', !$checkbox.is(':checked'));
            $checkbox.triggerHandler('change');
            updateDisplay();
        });
        $checkbox.on('change', function () {
            updateDisplay();
        });


        // Actions
        function updateDisplay() {
            var isChecked = $checkbox.is(':checked');

            // Set the button's state
            $widget.data('state', (isChecked) ? "on" : "off");

            // Set the button's icon
            $widget.find('.state-icon')
                .removeClass()
                .addClass('state-icon ' + settings[$widget.data('state')].icon);

            // Update the button's color
            if (isChecked) {
                $widget.addClass(style + color + ' active');
            } else {
                $widget.removeClass(style + color + ' active');
            }
        }

        // Initialization
        function init() {

            if ($widget.data('checked') == true) {
                $checkbox.prop('checked', !$checkbox.is(':checked'));
            }

            updateDisplay();

            // Inject the icon if applicable
            if ($widget.find('.state-icon').length == 0) {
                $widget.prepend('<span class="state-icon ' + settings[$widget.data('state')].icon + '"></span>');
            }
        }
        init();
    });

    $('#get-checked-data').on('click', function(event) {
        event.preventDefault();
        var checkedItems = {}, counter = 0;
        $("#check-list-box li.active").each(function(idx, li) {
            checkedItems[counter] = $(li).text();
            counter++;
        });
        $('#display-json').html(JSON.stringify(checkedItems, null, '\t'));
    });
});

function activarEstudiante(){
  document.getElementById("nombre").disabled = false;
  document.getElementById("apellido").disabled = false;
  document.getElementById("nombreUsuario").disabled = false;
  document.getElementById("contrasenia").disabled = false;
  document.getElementById("contrasenia2").disabled = false;
  document.getElementById("carne").disabled = false;
  document.getElementById("telefono").disabled = false;
  document.getElementById("listaU").disabled = false;
  document.getElementById("listaPais").disabled = false;
  document.getElementById("listaRepo").disabled = false;
  document.getElementById("correo").disabled = false;
  document.getElementById("hoja").disabled = false;
  document.getElementById("foto").disabled = false;
  document.getElementById("horasAtencion").disabled = true;
  document.getElementById("nombreEmpresa").disabled = true;
  document.getElementById("webEmpresa").disabled = true;
}

function activarProfesor(){
  document.getElementById("nombre").disabled = false;
  document.getElementById("apellido").disabled = false;
  document.getElementById("nombreUsuario").disabled = false;
  document.getElementById("contrasenia").disabled = false;
  document.getElementById("contrasenia2").disabled = false;
  document.getElementById("carne").disabled = false;
  document.getElementById("telefono").disabled = false;
  document.getElementById("listaU").disabled = false;
  document.getElementById("listaPais").disabled = false;
  document.getElementById("listaRepo").disabled = false;
  document.getElementById("correo").disabled = false;
  document.getElementById("hoja").disabled = true;
  document.getElementById("foto").disabled = false;
  document.getElementById("horasAtencion").disabled = false;
  document.getElementById("nombreEmpresa").disabled = true;
  document.getElementById("webEmpresa").disabled = true;
}

function activarEmpresa(){
  document.getElementById("nombre").disabled = false;
  document.getElementById("apellido").disabled = false;
  document.getElementById("nombreUsuario").disabled = false;
  document.getElementById("contrasenia").disabled = false;
  document.getElementById("contrasenia2").disabled = false;
  document.getElementById("carne").disabled = true;
  document.getElementById("telefono").disabled = false;
  document.getElementById("listaU").disabled = true;
  document.getElementById("listaPais").disabled = false;
  document.getElementById("listaRepo").disabled = false;
  document.getElementById("correo").disabled = false;
  document.getElementById("hoja").disabled = true;
  document.getElementById("foto").disabled = false;
  document.getElementById("horasAtencion").disabled = true;
  document.getElementById("nombreEmpresa").disabled = false;
  document.getElementById("webEmpresa").disabled = false;
}

function check(){
    var estadoActual = document.getElementById("botonContinuar");


    if(estadoActual.disabled)
    {
        estadoActual.disabled= false;
    }
    else
    {
        estadoActual.disabled= true;
    }
}

function cancelar(){
  document.location.href = "index.html";
}

function registrar(){
  document.location.href = "perfilEstudiante.html";
}
