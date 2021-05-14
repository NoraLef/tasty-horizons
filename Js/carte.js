mainContent = $("#flipbook").html();


$("#flipbook").turn({
    autoCenter: true
});


$("#menuView .subMenu").click(function() {
	$("#flipbook").turn("destroy");
	var contentMenuToPlace = $(this).html();
	$(this).html(mainContent);
	$("#flipbook").html(contentMenuToPlace);
	mainContent = $("#flipbook").html();
	$("#flipbook").turn({
	    autoCenter: true
	});
});