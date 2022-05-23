//This file was generated from (Academic) UPPAAL 4.1.20-stratego-8 (rev. 0D95F1A3F94D0519), January 2022

strategy not_fail = control: A[] not Fail

strategy not_fail_opt = minE (Riveting) [<=2000] {} -> {} : <> time>=2000 under not_fail

strategy unsafe = minE (Riveting) [<=2000] {} -> {} : <> time>=2000


/*
do not remove this query between synthesis and probability estimation
*/
saveStrategy("uppaal-cpp/mode.txt", not_fail_opt)


Pr[<=1800] (<> Fail) under unsafe

Pr[<=1800] (<> Fail) under not_fail

Pr[<=1800] (<> Fail) under not_fail_opt


E[<=1000; 10000] (max: Riveting) under not_fail

E[<=1000; 10000] (max: Riveting) under not_fail_opt

