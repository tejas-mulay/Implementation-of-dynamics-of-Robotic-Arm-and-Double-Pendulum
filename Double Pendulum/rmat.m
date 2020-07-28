function t = mat(alp, a, theta, d)

t =[cos(theta), -sin(theta), 0; sin(theta)*cos(alp), cos(alp)*cos(alp), -sin(alp); sin(theta)*sin(alp), cos(theta)*sin(alp), cos(alp)]
end
