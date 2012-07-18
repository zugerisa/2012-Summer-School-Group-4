clc;

binary = im2bw(test_6_grayscale);

labels = bwlabel(binary,8);

regProps = regionprops(labels);
maxMin = regionprops(labels,'Extrema');

for i = 1 : size(regProps)
    centers(i,:) = regProps(i).Centroid
end

for i = 1 : size(regProps)
    
    maxMin = maxMin(i).Extrema
end
