var HaloApi = {
  init: function() {
    this.autoComplete.init();
  },
  autoComplete: {
    init: function() {
      $('.gamertag').on('keyup', function(e) {
        if (e.which <= 90 && e.which >= 48) {
          var gamerTags = findGamertag($(this).val());
          if(gamerTags.length == 1) {
            $(this).val(gamerTags[0]);
          }
        }
      });

      function findGamertag(input) {
        var defaultPlayers = ["TheInternets", "EXPL0Sl0N", "TheBigConundrum", "TryCsy"];
        var regex = new RegExp(input.split('').join('\\w*').replace(/\W/, ""), 'i');
        return defaultPlayers.filter(function(player) {
          if (player.match(regex)) {
            return player;
          }
        });
      }
    }
  }
}

$(function(){
  HaloApi.init();
})
