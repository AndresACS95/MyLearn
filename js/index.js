var PersonText = '["firstname":"John", "lastname":"Someone"]';
$.ajax({
type : 'POST',
url : "jar/prueba.java",
data : {'personModel' : personText},
datatype : 'json',
success : function(data) {
    var obj = jQuery.parseJSON(data);
}
});
