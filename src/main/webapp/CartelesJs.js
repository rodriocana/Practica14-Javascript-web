    function handleTickInit(tick) {
  // palabras que aparecen en los carteles
  var rotation = [
      'Tomas   ',
      'Apruebame',
      'PSP     ',
      'Por Favor',
      'Te lo pido' 
  ];
  // contador de en que palabra empieza el cartel
  var index = 0;
  // each 3 seconds we'll update the billboard
  Tick.helper.interval(function(){
      // get the word at the current index
      tick.value = rotation[index];
      // when we reach the end we start over at zero
      index = index < rotation.length - 1 ? index + 1 : 0;
  }, 3000);
}