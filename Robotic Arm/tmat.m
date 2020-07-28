function t = tmat(alp, a, theta, d)

t =[cos(theta), -sin(theta), 0, a; sin(theta)*cos(alp), cos(alp)*cos(alp), -sin(alp),-sin(alp)*d; sin(theta)*sin(alp), cos(theta)*sin(alp), cos(alp), cos(alp)*d; 0, 0, 0, 1]
end
