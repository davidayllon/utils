sum_sq_x = 0;
 sum_sq_y = 0;
 sum_coproduct = 0;
 mean_x = x(1);
 mean_y = y(1);
 for index = 2 : length(x);
     sweep = (index - 1.0) / index;
     delta_x = x(index) - mean_x;
     delta_y = y(index) - mean_y;
     sum_sq_x = sum_sq_x + delta_x * delta_x * sweep;
     sum_sq_y = sum_sq_y + delta_y * delta_y * sweep;
     sum_coproduct = sum_coproduct + delta_x * delta_y * sweep;
     mean_x = mean_x + delta_x / index;
     mean_y = mean_y + delta_y / index;
 end;
 pop_sd_x = sqrt( sum_sq_x/length(x) );
 pop_sd_y = sqrt( sum_sq_y/length(x) );
 cov_x_y = sum_coproduct/length(x);
 correlation = cov_x_y / (pop_sd_x * pop_sd_y);