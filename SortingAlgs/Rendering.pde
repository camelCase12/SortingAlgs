public void drawArray(int[] array) { // draws array as a bar graph
 final float barWidth = int((float)width / (float)array.length);
 final int barIncrementalHeight = (height-50) / array.length;
 for(int i = 0; i < array.length; i++) {
  float startX = i*barWidth;
  float startY = height-(barIncrementalHeight*array[i]);
  float barHeight = barIncrementalHeight*array[i];
  rect(startX, startY, barWidth, barHeight);
 }
}
