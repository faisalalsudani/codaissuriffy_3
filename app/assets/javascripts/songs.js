// application.js

//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

function submitsong(event) {
  event.preventDefault();
  createsong($("#song_name").val());
  $("#song_name").val(null);
}

function createsong(name) {
  var pathName = location.pathname;
  var artistId = pathName.split("/").pop();
    $.ajax({
      type: "POST",
      url:  "../../api" + pathName + "/songs.json",
      data: JSON.stringify({
          name: name,
          artist_id: artistId,
      }),
      contentType: "application/json",
      dataType: "json"
    }).done(function(data) {

      var songId = data.id;
      var SongItem = $('<li class="song"> <p  id="' + songId + '">' + name + '</p> <p class="btn btn-sm button-artist delete-song">Delete Song</p></li>');
      $(".song-list").append( SongItem );
      refreshEventHandlers();
      $("#addSong").modal('hide');
  });
}

function removeSong(){
  var songId = $(this).attr("id");
  deleteSong(songId);
}

function removeAllSongs() {
  $.each($(".delete-button"), function(index, song) {
    var songId = $(song).attr("id");
    deleteSong(songId);
  });
}

function deleteSong( songId) {
  var pathName = location.pathname;
  $.ajax({
    type: "DELETE",
    url:  "../../api" + pathName + "/songs/ " + songId +".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $("#" + songId).parent().remove();
  });
}

function refreshEventHandlers(){
  $(".delete-button").off();
  $(".delete-button").on('click', removeSong);
}

$(document).ready(function() {
  $("form").bind('submit', submitsong);
  $(".delete-all-songs").bind('click', removeAllSongs);
  refreshEventHandlers()
});
