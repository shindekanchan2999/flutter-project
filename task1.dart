void main() {
  
 wholeloop:
  for (var i = 1; i < 101; i++) {
   
      if (i<5)
      {
        continue wholeloop;
    }
       
      if (i==21) 
      {
        break wholeloop;
      }
      print("wholeloop: $i");
      
      
  }
}
