a = input('Enter the fuzzy set a:');
b = input('Enter the fuzzy set b:');

sum = a+b;
product = a .* b;
b_complement = 1 - b;
difference = a - b;


disp('The Algebraic sum');
as = sum - product;
disp(as);
disp('The Algebraic Difference');
ad = a + b_complement;
disp(ad);
disp('The Algebraic Product');
ap = product;
disp(ap)
disp('The Bounded Sum');
bs = min(1,sum);
disp(bs);
disp('The Bounded Difference');
bd = max(0,difference);
disp(bd);
disp('The bounded Product');
bp = max(0,(sum -1));
disp(bp);