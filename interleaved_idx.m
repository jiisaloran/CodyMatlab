%% Matlab Cody 801
% Problem 801. Construct an index vector from two input vectors in
% vectorized fashion Create an index vector defined by two input vectors,
% one defining the beginnings of one or more index ranges, and the other
% defining the ends of the ranges. The difficult part is that for and while
% loops are disallowed. No looping! [I apologize for the rudimentary regexp
% test for 'for' 'while' and 'eval'.] My test cases scan for usage of these
% substrings, so choice of variable names is effectively restricted as
% well. So given 2 input vectors x1 and x2, the desired output is a third
% vector y, containing [x1(1):x2(1) x1(2):x2(2) ... x1(end):x2(end)]
   
function y = interleaved_idx(x1,x2)
   y = x1:x2;
   if length(x1)>1
      x1 = x1(2:end);
      x2 = x2(2:end);
      y = [y interleaved_idx(x1, x2)];
   end
end
