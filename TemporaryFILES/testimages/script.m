clc;

binary = im2bw(scann_grayscale);         % Convert grayscale scann to binary
labels = bwlabel(binary,8);              % Seperate the Punchingholes
regProps = regionprops(labels);          % Calculate the properties of the holes

for i = 1 : size(regProps)                
    centers(i,:) = regProps(i).Centroid  % Write the Centers of the holes in a Vector
end


