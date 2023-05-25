!*****************************************************************************    
program main
implicit none
INTEGER ENUFF,N	
PARAMETER (ENUFF = 9)	!This will do.
INTEGER NODE(ENUFF),LINKL(ENUFF),LINKR(ENUFF),LIST(ENUFF)
DATA NODE/ 1,2,3,4,5,6,7,8,9/	!Value = index. A rather boring payload.
DATA LINKL/2,4,6,7,0,8,0,0,0/	!"Left" and "Right" are as looking at the page.
DATA LINKR/3,5,0,0,0,9,0,0,0/	!If one thinks within the tree, they're the other way around!

!integer:: ENUFF,NODE(ENUFF),LINKL(ENUFF),LINKR(ENUFF)
character(5):: HOW	!A single word suffices.

open(6,file='Output.txt') 

HOW='POST'
call Tree_Traversal(HOW,ENUFF,N,NODE,LINKL,LINKR,LIST)
write(6,*)HOW,NODE(LIST(1:N))

end program main
    