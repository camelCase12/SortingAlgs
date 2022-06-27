public class BubbleSort { // complete and tested
  Boolean complete = false;
  
  public int[] pass(int[] list) {
    int[] passedList = list;
    int lastEntry = list[0];
    int swapCount = 0;
    for(int i = 1; i < list.length; i++) {
     if(lastEntry > passedList[i]) {
       passedList[i-1] = passedList[i];
       passedList[i] = lastEntry; // skeet around temp var, since it's already there
       swapCount++;
     }
     lastEntry = passedList[i];
    }
    if(swapCount == 0) {
     complete = true;
    }
    return passedList;
  }
  
  BubbleSort() { }
}
