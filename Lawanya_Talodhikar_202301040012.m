%1 create a matrix A
A=[1 0 2 11;0 -1 3 4;6 9 20 100]
%2 crate a matrix B
 B=1:4
 %3 create a column matrix C
 C=[9 7 6 3]
 C=C'

 %4 find multiplication of A and trenaspose B
x=A*(B')
%5 element wise matrice operation A^3
cube=A.*A.*A

%6 create a column vector upto 1 starting from 100
column_vector=100:-3:1
%7 print the first 100 numbers of 1 to 25
x=linspace(1,25,100)
%8 find the rank of A
X=rank(A)
%9 delete 2 and 4 column of A
A(:,2)=[];
A(:,3)=[];
Y=A
%10 add 3 row to B to create Z
new_rows=randi(10,[3 4]);
Z=[B;new_rows];
disp(Z);


