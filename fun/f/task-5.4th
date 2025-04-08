: 4rev swap 2swap swap ;
: over-over 0 2over rot drop drop ;
: 3dup over-over over-over over-over ;

: e1 ( c a b -- ) over + * + ;

: e2 ( a b -- ) 2dup - rot + / ;

1 2 3 e1 . cr
10 5 e2 . cr

: CONVICTED-OF 0 ;
: ARSON 10 + ;
: HOMICIDE 20 + ;
: BOOKMAKING 2 + ;
: TAX-EVASION 5 + ;
: WILL-SERVE . ." YEARS" ;

CONVICTED-OF ARSON HOMICIDE TAX-EVASION
WILL-SERVE cr

: egg.cartons 12 /mod ;

49 egg.cartons . . cr

bye