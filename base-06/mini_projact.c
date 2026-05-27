#include <stdio.h>

int main () {

int servers_count ;

printf ("enter  number of servers :" ) ;

scanf ( "%d", &servers_count) ;

int  servers_with_backup = servers_count * 2.0 ;

printf ("total servers : %d \n",servers_with_backup) ;

return 0 ; }

