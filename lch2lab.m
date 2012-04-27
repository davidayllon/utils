function [LAB] = lch2lab(LCH)

LAB = zeros(size(LCH));
LAB(:, :, 1) = LCH(:, :, 1);
LAB(:, :, 2) = LCH(:, :, 2) * cos(LCH(:, :, 3) * pi / 180);
LAB(:, :, 3) = LCH(:, :, 2) * sin(LCH(:, :, 3) * pi / 180);
