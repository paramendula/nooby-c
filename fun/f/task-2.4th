: 2b1 ( c a b -- ) 4 * - 6 / + ;

10 20 2 2b1 . cr

: 2b2 ( a b -- ) 8 * / ;

80 2 2b2 . cr

: 2b3 ( a b -- ) * 2 / 100 / ;

25 40 2b3 . cr

: 2b4 ( a a -- ) 2 * 3 + * ;

10 10 2b4 . cr

: 2b5 ( c a b -- ) - swap / ;

4 150 50 2b5 . cr

bye