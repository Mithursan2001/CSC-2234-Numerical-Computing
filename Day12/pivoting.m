function[A1,b1]= pivoting(A1,b1,i)
[n,n]=size(A1)
% 2 5 8
% 4 6 2
% 7 2 6

%4
%8
%9

p=i;%p=1
big=abs(A1(i,i))% big=abs(A1(1,1))=big=2
disp('Before the pivoting')
A1
% 2 5 8
% 4 6 2
% 7 2 6
disp('After pivoting')
for j=i+1:n %j=3:3  j=3
    dummy=abs(A1(j,i));% dummy =abs(A1(3,1))=7
    if dummy>big %7>4
        big=dummy; %big=7
        
        p=j;%p=3
    end
end 
    if p~=i %3~=1
        for k=i:n%k=1:3 k=1
            dummy=A1(i,k); %A1(1,1) =2=dummy
            A1(i,k)=A1(p,k);%A(1,1)=7
            A1(p,k)=dummy;%A(3,1)=2
        end
        dummy=b1(i); %dummy=4
        b1(i)=b1(p);%bl(1)=9
        b1(p)=dummy;%b1(3)=4
    end
    
    A1
    b1
end


%out put:
% pivoting([2 5 8;4 6 2;7 2 6],[4;8;9],1)
%n = 3
%n = 3
%big = 2

%Before the pivoting

%A1 = 
      %  2     5     8
      %  4     6     2
      %  7     2     6

%After pivoting

%A1 =

   %  7     2     6
   %  4     6     2
   %  2     5     8  
 %b1 =
  %   9
  %   8
  %   4
%ans =
 %    7     2     6
 %    4     6     2
 %    2     5     8