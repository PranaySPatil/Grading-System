$(function() {
	// window.alert("Refreshed");
    $(".btn").click(function() {

	  // window.alert("Post Clicked");
      var ist1 = $("input#ist1").val();
      var ist2 = $("input#ist2").val();
  	  var ese = $("input#ist3").val();
      var grade = $("input#grade").val()
      var ta = $("input#ta").val();

      var dataString = 'ist1='+ ist1 + '&ist2=' + ist2 + '&ese=' + ese + '&grade=' + grade + '&ta=' + ta;
	  //alert (dataString);return false;
	  $.ajax({
	    type: "POST",
	    url: "../php/updateMarks.php",
	    data: dataString,
	    success: function() {
	      window.alert("Data Saved Successfully");
	    }
	  });
	  return false;
    });
});