%Cody: 105. How to find the position of an element in a vector without using the find function
function posX = findPosition(x,y)
  v=1:length(x);
  posX = v(x==y);
end
