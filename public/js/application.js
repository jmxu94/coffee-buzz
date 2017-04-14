$(document).ready(function() {
  $('#retrieve-coffee').on('submit', function(e) {
    e.preventDefault();

    var info = $(e.target).serialize();

    $.ajax({
      url: '/coffeeshop',
      method: 'POST',
      data: info,
    }).done(function(response){
      $('#random-coffeeshop').html(response)

    });
  });

});
