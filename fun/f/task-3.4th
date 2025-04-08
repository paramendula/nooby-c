: 1-3-swap rot rot swap ; ( swap rot )

: my-over swap dup rot swap ;

: <rot swap rot swap ; ( rot rot )

: 2c4 ( n -- ) dup 1 + / ;

: 2c5 ( x -- ) dup 7 * 5 + * ;

: 2c6 ( a b -- ) over 9 * swap - * ;
