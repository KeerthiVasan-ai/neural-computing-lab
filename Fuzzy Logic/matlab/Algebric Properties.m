a = input('Enter the Fuzzy Set a:');
b = input('Enter the Fuzzy Set b:');
c = input('Enter the Fuzzy set c:');

disp('Idempotent Law');
disp('A U A :',max(a,a))
disp('A N A :',min(a,a))

disp('Commutative Law - Union Logic');
disp('A U B:',max(a,b))
disp('B U A:',max(b,a))

disp('Commutative Law - Intersection Logic');
disp('A N B:',min(a,b))
disp('B N A:',min(a,b))

disp('Associative Law - Union Logic')
disp('(A U B) U C:',max(max(a,b),c));
disp('A U (B U C):',max(a,max(b,c)));

disp('Associative Law - Intersection Logic')
disp('(A N B) M C:',min(min(a,b),c));
disp('A N (B N C):',min(a,min(b,c)));

disp('Absorption Law');
disp(