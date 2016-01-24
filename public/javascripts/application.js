var HaloApi = {
  init: function() {
    this.autoComplete.init();
  },
  autoComplete: {
    init: function() {
      $('.gamertag').on('keyup', function(){
        console.log($(this))
      });
    }
  }
}

$(function(){
  HaloApi.init();
})
