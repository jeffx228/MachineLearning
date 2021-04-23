A = [0.985,0.004,-0.042,-0.012; 0.004,1.028,-0.011,-0.032; -0.042,-0.011,0.988,-0.001; -0.012,-0.032,-0.001,0.955]

x = [1; 0; 0; 0]

%x1 = A*x

%x2 = A*x1

%x3 = A*x2

%x4 = A*x3

x100 = x

for r = 1:100
    r 
    x100 = A*x100
end

alpha = dot(x100,A*x100)/dot(x100,x100)

I = eye(4)

%B = (A - alpha*I)^(-1)

%B = B

%y = [1; 0; 0; 0]

%y100 = y

%for r = 1:25
 %   y100 = B*y100
%end


%beta = dot(y100,B*y100)/dot(y100,y100)

lambda = (beta)^(-1) + alpha

[Q,R] = qr(A)

QR = Q*R

A

x = A(1:4).'

u = x/norm(x)

u(1) = u(1) + sign(u(1))

u = u/sqrt(abs(u(1)))

M = x - u*(u'*x) 















