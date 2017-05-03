$(function() {
	function format(item) {
		return item.name;
	}
	$("#test").select2({
		ajax: {
			url: "/products.json",
			dataType: 'json',
			delay: 50,
			data: function(params) {
				return {
					by_name: params.term // search term
				};
			},
			processResults: function(data, params) {
				params.page = params.page || 1;
				console.log(data);
				return {
					results: data,
					pagination: {
						more: (params.page * 30) < data.total_count
					}
				};
			},
			cache: true
		},
		theme: "bootstrap",
		placeholder: {
			id: '-1', // the value of the option
			text: 'Select an option'
		},
		escapeMarkup: function(markup) {
			return markup;
		}, // let our custom formatter work
		minimumInputLength: 0,
		templateSelection: format,
		templateResult: format
	});

	$('#test2').select2({
		theme: "bootstrap",
		placeholder: {
			id: '-1', // the value of the option
			text: 'Select an option'
		},
		escapeMarkup: function(markup) {
			return markup;
		}, // let our custom formatter work
		minimumInputLength: 1
	});
});
