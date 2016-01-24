var HaloApi = {
  init: function() {
    this.autoComplete.init();
  },
  autoComplete: {
    init: function() {
      var defultPlayers = ["TheInternets", "EXPL0Sl0N", "TheBigConundrum", "TryCsy"];
      $('.gamertag').on('keyup', function(){
        console.log($(this))
      });
    }
  }
}

$(function(){
  HaloApi.init();
})
