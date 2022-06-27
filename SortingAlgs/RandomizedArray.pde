public class SortList {
  public int[] entries; // the most critical piece of the list, its entries taking the form of integers for comparison
  
  public void printList() { // prints entries in the given order
   for(int i = 0; i < entries.length; i++) {
    print(entries[i] + ", "); 
   }
   println();
  }
  
  private SortList(int len) { // constructs a shuffled list based on paramater length
    entries = new int[len];
    for(int i = 0; i < entries.length; i++) {
     entries[i] = i+1; 
    }
    printList();
    entries = fisherYatesShuffle(entries);
  }
  SortList() { }
}

public int[] fisherYatesShuffle(int[] list) { // classic shuffling method, essentially picks out random pieces from the list, adding them each to the end of a second list, which eventually becomes the shuffled list.
 int[] shuffledList = new int[list.length]; // second list placeholder for shuffling purposes
 
 for(int i = 0; i < shuffledList.length; i++) {// for loop runs through the shuffled list, inserting pieces from the old list one by one
  int selection = int(random(list.length));//picks an index from the old list
  shuffledList[i] = list[selection];//inserts randomly indexed item from old list into new list //<>//
  int[] newList = new int[list.length-1];//starting here
  for(int j = 0; j < selection; j++) {
    newList[j] = list[j];
  }
  for(int k = selection+1; k < list.length; k++) {
   newList[k-1] = list[k]; 
  }
  list = newList;//going until here is just a list resizer that strikes out the randomly selected entry.
 }
 return shuffledList;
}
