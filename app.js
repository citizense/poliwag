SUNLIGHT_API_KEY = "e0f19e29c47345bd8d4670fbbdfed9a4"

$(document).ready(function() {
	$("#search-form " ).on('submit', function(e) {
		e.preventDefault();

		var data = $("form").serialize();
		var request = $.ajax({
  		dataType: "json",
  		url: 'https://congress.api.sunlightfoundation.com/legislators?query=' + data,
  		data: data,
  		apikey: SUNLIGHT_API_KEY
		});
		
		request.done(function(response) {
			$("#results").append(response)
		})
	})
})

