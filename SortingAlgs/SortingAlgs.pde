
SortList sl;
//declare sorter here
BubbleSort bs;
//declare sorter here

void setup() {
  size(640, 480);
  background(0);
  sl = new SortList(200);
  sl.printList();
  frameRate(30);
  fill(255);
  stroke(100);
  //instantiate sorter here
  bs = new BubbleSort();
  //instantiate sorter here
}

void draw() {
  background(0);
  //flagcheck
  if(bs.complete) {
    text(frameCount/frameRate + " seconds", 50, 50);
    stroke(50, 255, 50);
    drawArray(sl.entries);
    stop();
  }
  //flagcheck
  //test sorter by individual passes here
  sl.entries = bs.pass(sl.entries);
  //test sorter by individual passes here
  drawArray(sl.entries);
}
