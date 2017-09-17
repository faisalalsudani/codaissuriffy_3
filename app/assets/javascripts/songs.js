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
      type: 'POST',
      url:  "../../api" + pathName + "/songs.json",
      data: JSON.stringify({
          name: name,
          artist_id: artistId,
      }),
      contentType: "application/json",
      dataType: "json"
    }).done(function(data) {
       // var songId = data.id;
       var songId = $('li').data('id');
      console.log(data)
      console.log(songId)
      var SongItem = $('<li class="song"> <p  id="' + songId + '">' + name + '</p> <p class="btn btn-sm button-artist delete-button">Delete Song</p></li>');
      $(".song-list").append( SongItem ).bind('click', deleteSong);;
      newEvent();
      console.log(songId);
      location.reload(true);
      $("#addSong").modal('hide');
  });

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
    console.log(data);
    $("#" + songId).parent().remove();
    console.log("Deleted!");
  });
}

function removeSong(){
  var songId = $(this).attr("id");
  deleteSong(songId);
}


// function deleteAllSongs(event) {
//   event.preventDefault();
//   $(".song-list").remove();
// }

function deleteAllSongs(event) {
  event.preventDefault();
  $(".delete-song").trigger( "click" );
}

function newEvent(){
  $(".delete-song").off();
  $(".delete-song").on('click', removeSong);
}

$(document).ready(function() {
  $("form").bind('submit', submitsong);
  $(".delete-all-songs").bind('click', deleteAllSongs);
  newEvent()
});
