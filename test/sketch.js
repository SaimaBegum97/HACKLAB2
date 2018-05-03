var talk;
var listen;

function setup(){
createCanvas(600,600);
background(0);

talk = new p5.Speech();
talk.speak("hello");


listen = new p5.SpeechRec();
listen.onResult = showVoice();
listen.start();
}

function draw(){


fill(200,20,200,90);
ellipse(mouseX,mouseY,100,100)

}
function showVoice(){
  console.log(listen.resultString);
}
