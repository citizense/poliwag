// function LegiScan() {
// 	this.legiscanUrl = 'https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getMasterList&state=';
// }

// LegiScan.prototype.query = function() {
// 	return $('form#legiscan-search input').val();
// };

// LegiScan.prototype.makeRequest = function() {
// 	$.ajax({
// 			url: this.legiscanUrl + this.query(),
// 			type: 'jsonp',
// 		}).done(function(data){
// 			var results = data.results;
// 			var resultsLS = $('#legiscan-results')

// 			var html = "";

//       		for(i=0; i < results.length; i++) {
//         		console.log(results[i]);
//         		var listing = results[i];

// 	        html += "<div data-id=" + listing.listing_id + " class='listing'>";
//     	    html += "<a href='" + listing.url + "' target=_blank>";
//         	html += "<img src='" + listing.Images[0].url_570xN + "' />";
//         	html += "<p>" + listing.title + "</p>";
//         	html += "</a>";
//         	html += "</div>";
//       }
// 		});
// 	};