x1 = optimvar('IBM', 'type', 'integer', 'LowerBound', 1, 'UpperBound', 10);
x2 = optimvar('BM', 'type', 'integer', 'LowerBound', 1, 'UpperBound', 30);
x3 = optimvar('EBM', 'type', 'integer', 'LowerBound', 1, 'UpperBound', 5);
x4 = optimvar('Finishing', 'type', 'integer', 'LowerBound', 1, 'UpperBound', Inf);

%%
problem_1 = optimproblem('Objective', 58403.3*x1 + 136799.1238*x2 + 64955.549*x3 + 42000*x4, 'ObjectiveSense','min');

%%
problem_1.Constraints.c1 = 16*x1 + 16*x2 + 8*x3 + 8*x4 <= 392;
problem_1.Constraints.c2 = 52376.3*x1 + 39980*x2 + 3566.89*x3 >= 604599.30625;
problem_1.Constraints.c3 = x1 + x2 + x3 + x4 <= 23;

%%
[sol, fval] = solve(problem_1);