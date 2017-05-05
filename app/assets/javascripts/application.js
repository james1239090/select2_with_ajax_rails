// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require select2
//= require turbolinks
//= require_tree .

$(function() {
	function reformat(data, type) {
		var type_id = type + "_id",
			type_name = type;
		var newData = data.map(function(item, index) {
			return {
				id: item[type_id],
				text: item[type_name].name
			};
		});
		return newData;
	}

	$('#select_product').on('select2:select', function(e) {
		var product_id = $(this).val();

		$.ajax({
			url: "/product_options.json",
			dataType: "JSON",
			data: {
				g_id: "color_id",
				p_id: product_id
			},
			success: function(data) {
				$('#select_color').select2({
					data: reformat(data, "color"),
					placeholder: {
						id: '-1', // the value of the option
						text: 'Select an option'
					}
				});
			}
		});
	});

	$('#select_color').on('select2:select', function(e) {
		var color_id = $(this).val(),
			product_id = $('#select_product').val();
		$.ajax({
			url: "/product_options.json",
			dataType: "JSON",
			data: {
				g_id: "dimension_id",
				c_id: color_id,
				p_id: product_id
			},
			success: function(data) {
				console.log(data);
				$('#select_dimension').select2({
					data: reformat(data, "dimension"),
					placeholder: {
						id: '-1', // the value of the option
						text: 'Select an option'
					}
				});
			}
		});
	});
});
