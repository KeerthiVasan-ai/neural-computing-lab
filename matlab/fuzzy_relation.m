 a = input('Enter the Fuzzy Set a:');
 b = input('Enter the Fuzzy Set b:');
 c = input('Enter the Fuzzy set c:');
 
 union = max(a,b);
 disp(union)
 
 intersection = min(a,b);
 disp(intersection)
 
 a_complement = 1 - a;
 disp(a_complement);
 
 b_complement = 1 - b;
 disp(b_complement);
 
 set_difference = min(a,b_complement);
 disp(set_difference);
 
 %DE-Morgan's Law
 
 aub_whole_bar = 1 - union;
 disp(aub_whole_bar);
 a_bar_intersect_b_bar = min(a_complement,b_complement);
 disp(a_bar_intersect_b_bar);
 
 if aub_whole_bar == a_bar_intersect_b_bar
     disp("De Morgan Law Proved - Union Law")
 end
 
a_intersect_b_whole_bar = 1 - intersection;
disp(a_intersect_b_whole_bar);
a_bar_u_b_bar = max(a_complement,b_complement);
disp(a_bar_u_b_bar);

 if a_intersect_b_whole_bar == a_bar_u_b_bar
     disp("De Morgan Law Proved - Intersection Law")
 end
 
 
 a_union_a_bar = max(a,a_complement);
 a_intersection_a_bar = min(a,a_complement);
 
 disp(a_union_a_bar);
 disp(a_intersection_a_bar);