$().ready(function() {
  var interval = setInterval(function() {
    var momentNow = moment();
    $('#date-part').html(momentNow.format('ddd' + ', ' + 'll'));
    $('#time-part').html(momentNow.format('LTS'));
  }, 100);
  
  $('#stop-interval').on('click', function() {
    clearInterval(interval);
  });
});
