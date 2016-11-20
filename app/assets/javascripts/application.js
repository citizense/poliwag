// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require holder
//= require bootstrap
//= require bootstrap-sprockets
//= require_tree .
//= require d3
// $(document).ready(function() {
// 	$('.container #jq-form').on('submit', function(event){
// 		event.preventDefault();
// 		var query = $('id=["jq-form"]');
// 		console.log(query);
// 		var url = 'https://api.legiscan.com/?key=77fe81d295a37906c8022fb7353d6dcb&op=getMasterList&state='
		
// 		// var request = $.ajax({
// 		// 	contentType: "application/json; charset=utf-8",
// 		// 	url: url + query,
// 		// 	dataType: "JSON"
// 		// });
// 	});
// });
// $(document).ready(function() {
// 	function occurence(string){
// 		var array = []
// 		var words = string.split(' ')
// 		var frequencies = {}
// 		for( i=0; i < words.length; i++ ){
// 			word = words[i];
// 			frequencies[word] = frequencies[word] || 0;
// 			frequencies[word]++;
// 		}

// 		for (var word in frequencies)
//       array.push([word, frequencies[word]])
// 			array.sort(
//     	function(a, b) {
//         	return b[1] - a[1]
//     	})
// 		return array
// 	}
// 	// var table = $('.table-hover');
// 	// var results = d3.select('.table-hover').text();
//   legiscan = new LegiScan();

//   $('form#legiscan-search button').click(function(e) {
//     e.preventDefault();
// 		legiscan.makeRequest();
//   });
	
// 	// var dataViz = occurence(masterlist);
// 	// console.log(dataViz)
// 	// var svg = d3.select("svg"),
//  //  	width = +svg.attr("width");

//   // var data = dataViz.map(function(d) {
//   //   return {
//   //     date: parseDate(d[0]),
//   //     close: d[1]
//   //   };
// });

	// function occurence(string){
	// 	var array = []
	// 	var words = string.split(' ')
	// 	var frequencies = {}
	// 	for( i=0; i < words.length; i++ ){
	// 		word = words[i];
	// 		frequencies[word] = frequencies[word] || 0;
	// 		frequencies[word]++;
	// 	}

	// 	for (var word in frequencies)
 //      array.push([word, frequencies[word]])
	// 		array.sort(
 //    	function(a, b) {
 //        	return b[1] - a[1]
 //    	})
	// 	return array
	// }


