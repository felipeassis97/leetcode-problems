class Solution {
  int firstUniqChar(String s) {
    final inputArr = s.split('');
    for (final value in inputArr){
      // inputArr.indexOf(value): first index where the value appears
      // inputArr.lastIndexOf(value): last index where the value appears
      // If it is the same, it appears only once
      if(inputArr.indexOf(value) == inputArr.lastIndexOf(value) ){
        return inputArr.indexOf(value);
      }
    }
    return -1;
  }
}