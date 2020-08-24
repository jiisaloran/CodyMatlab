%Cody: 44358. I Plead the Fifth
function answer = I_plead_the_fifth(question)
if contains(question, 'fift') || contains(question, 'five') || contains(question, '5')
    answer = [];
else
    answer = 'yes';
end

end
