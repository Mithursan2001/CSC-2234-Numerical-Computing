rows = input('Enter the number of rows for the matrices: ');
cols = input('Enter the number of columns for the matrices: ');


disp('Enter the elements of Matrix A:');
A = zeros(rows, cols);  
for i = 1:rows
    for j = 1:cols
        A(i, j) = input(['Enter element A(', num2str(i), ',', num2str(j), '): ']);
    end
end


disp('Enter the elements of Matrix B:');
B = zeros(rows, cols);  
for i = 1:rows
    for j = 1:cols
        B(i, j) = input(['Enter element B(', num2str(i), ',', num2str(j), '): ']);
    end
end


C = A + B;

% Display the result
disp('Matrix A:');
disp(A);

disp('Matrix B:');
disp(B);

disp('Sum of Matrix A and B (Matrix C):');
disp(C);
