jQuery(document).ready(function($){
  $('.nivoSlider').nivoSlider({
    effect: 'fade', // Use any effect you want
    directionNav: true, // We don't need next and prev navigation
    controlNav: false, // 1,2,3... Navigation, we don't need them too
    manualAdvance: true
  });
});