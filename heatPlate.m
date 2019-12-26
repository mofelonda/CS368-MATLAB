function temps = heatPlate(TA,TB)
% Returns temperatures of a heat plate given two non-insulated positions. 
%   accepts two temperature values TA and TB 
%   returns a matrix that is a 3x3 matrix of temps for T1 through T9
T = [1 -1/3 0 -1/3 0 0 0 0 0;
    -1/3 1 -1/3 0 -1/3 0 0 0 0;
     0 -1/2 1 0 0 -1/2 0 0 0;
    -1/3 0 0 1 -1/3 0 -1/3 0 0;
     0 -1/4 0 -1/4 1 -1/4 0 -1/4 0;
     0 0 -1/3 0 -1/3 1 0 0 -1/3;
     0 0 0 -1/2 0 0 1 -1/2 0;
     0 0 0 0 -1/3 0 -1/3 1 -1/3;
     0 0 0 0 0 -1/3 0 -1/3 1];

b = [TA/3;0;0;0;0;0;0;0;TB/3];
temps = T \ b;
temps = reshape(temps, 3, 3);
temps = temps';
end

