%% Example 4.2 
% This program searches for right triangles for which all three sides are
% integers.

% Initialize the counter m
m = 0;

% Loop to check all combinations of x and y up to the limits

for x = 1:25

    for y = x:25 
        
        % Calculate the hypotenuse h

        h = sqrt(x^2 + y^2);

        % Check to see if h is an integer. 
        % IF it is, print x, y, and h and advance counter m

        if h == floor(h)
            m = m + 1;
            x
            y
            h
        end
    end
end

m
