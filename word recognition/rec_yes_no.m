pos="E";
neg="O";
threshold =training(3,"say "+pos,"say "+neg);
res=1;
while res
clc
disp("Speak now")
f=feature();
if f<threshold
output=pos
else
output=neg
end
res=input('press 0 to stop / 1 to continue  : ');
end