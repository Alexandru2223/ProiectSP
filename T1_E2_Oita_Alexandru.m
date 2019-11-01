clear all
close all
clc


v=randn(1,50);
for i=1:length(v)
    if v(i)<0
        disp(v(i))
    end
end 