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
  var songId = '<%= e song.id %>';

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
      console.log(data)

      console.log(name)
      var SongItem = $('<li class="song"> <p>' + name + '</p> <p id="' + songId + '" class="btn btn-sm button-artist delete-button">Delete Song</p> </li>')

      $(".song-list").append( SongItem );
      newEvent();

  });
  $("#addSong").modal('hide');
  window.location.reload();

}
function removeSong(){
  var songId = $(this).attr("id");
  deleteSong(songId);
}

function deleteSong(songId) {
  var pathName = location.pathname;
  $.ajax({
    type: "DELETE",
    url:  "../../api" + pathName + "/songs/ " + songId + ".json",
    contentType: "application/json",
    dataType: "json"
  })
  .done(function(data) {
    $('.song-delete').parent().remove();
    console.log("Deleted!");
  });
}

function deleteAllSongs(event){
  console.log("Deleted!");
  $('.song-list').removeSong();
}

function newEvent(){
  $(".delete-button").off();
  $(".delete-button").on('click', removeSong);
}

$(document).ready(function() {
  $("form").bind('submit', submitsong);
  $(".remove-songs").bind('click', deleteAllSongs);
  newEvent()
});
