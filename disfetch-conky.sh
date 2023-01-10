disfetch | sed -r "s/\x1B\[(30|90)m/\${color 0A0E14}/g" \
         | sed -r "s/\x1B\[(31|91)m/\${color FF3333}/g" \
         | sed -r "s/\x1B\[(32|92)m/\${color C2D94C}/g" \
         | sed -r "s/\x1B\[(33|93)m/\${color FF8F40}/g" \
         | sed -r "s/\x1B\[(34|94)m/\${color 59C2FF}/g" \
         | sed -r "s/\x1B\[(35|95)m/\${color A277FF}/g" \
         | sed -r "s/\x1B\[(36|96)m/\${color 95E6CB}/g" \
         | sed -r "s/\x1B\[(37|97)m/\${color EDECEE}/g" \
         | sed -r "s/\x1B\[(0)m/\${color EDECEE}/g"     \
         | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2};?)?)?[mGK]//g"
