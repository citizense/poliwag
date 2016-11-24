

function LegiScan() {
	this.legiscanUrl = 'https://api.legiscan.com/?key=getMasterList&state=';
}

LegiScan.prototype.query = function() {
	return $('form#legiscan-search input').val();
};

LegiScan.prototype.makeRequest = function() {
	$.ajax({
			url: this.legiscanUrl + this.query(),
			type: "GET",
			dataType: 'json',
		}).done(function(data){
			window.bills = data.masterlist;
			// var publish = document.getElementById("results");
			for (var k in window.bills){
				var bill = window.bills[k]
				$('#results').append($("<h2>"+bill.number+"</h2><p>"+bill.description+"</p>"));
			}


		});

		// d3.select("body").append(".results").text("New paragraph!");
	};


/*
Bill Object:

bill_id: 703308
change_hash: "4c651c25230887696112d4780e83e349"
description: "To enact section 5534.35 of the Revised Code to designate a portion of United States Route 62 within Canton as the "USMC LCpl Stacy (Annie) Dryden Memorial Highway.""
last_action: "Refer to Committee: Transportation and Infrastructure"
last_action_date: "2015-01-29"
number: "HB21"
status: "1"
status_date: "2015-01-28"
title: "USMC LCpl Stacy (Annie) Dryden Memorial Highway - part of Rt. 62 - Canton"
url: "https://legiscan.com/OH/bill/HB21/2015"


*/
