function [ f1,f2 ] =plotData(X, y)

figure; 
hold on;

pos = find(y == 1); neg = find(y == -1);

f1 = plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7);
f2 = plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7);

hold off;

end
