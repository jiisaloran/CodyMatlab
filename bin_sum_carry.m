function [sum, carry] = bin_sum_carry(pc,x,y)
  sum = mod(pc+x+y,2);
  carry = pc+x+y>1;
end