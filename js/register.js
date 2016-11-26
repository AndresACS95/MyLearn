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
<<<<<<< Updated upstream
=======

//GET de los universidades
$.ajax({
  type: "GET",
  url: "webservices/newOrder.php",
  dataType: 'json',
  success: function(data){
    var obj = JSON.parse(data);
    $.each(obj,function(index,element){
      var ingredient_type = element.type;
      var ul_name = "";
      switch (ingredient_type) {
        case '0':
          ul_name = "#list_helados";
          break;
        case '1':
          ul_name = "#list_topping";
          break;
        case '2':
          ul_name = "#list_adicional";
          break;
      }
      $(ul_name).append('<li class="IngredientsItem"><div class="form-group"><div class="checkbox"><label><input type="checkbox" id="'+element.name+ingredient_type+'"><img class="ingredient_image" src="'+element.image+'"/></label></div><center><strong>'+element.name+'</strong></center><div class="radio '+element.name+ingredient_type+'"><label class="radio"><input class="calc" type="radio" name="'+element.name+ingredient_type+'" id="'+element.name+ingredient_type+'P" text="Poco" value="'+(parseInt(element.price,10))/2+'" disabled>Poco - ₡'+(parseInt(element.price,10))/2+'</label><label class="radio"><input class="calc" type="radio" name="'+element.name+ingredient_type+'" id="'+element.name+ingredient_type+'R" text="Regular" value="'+element.price+'" disabled>Regular - ₡'+element.price+'</label><label class="radio"><input class="calc" type="radio" name="'+element.name+ingredient_type+'" id="'+element.name+ingredient_type+'M" text="Mucho" value="'+(parseInt(element.price,10))*2+'" disabled>Mucho - ₡'+(parseInt(element.price,10))*2+'</label></div></div></li>');
    });
  }
});
>>>>>>> Stashed changes
