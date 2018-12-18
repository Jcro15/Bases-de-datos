Create view Cruces as
   select  B.event from (select staff,event,dow,tod,duration from teaches, event where staff='co.MC' and teaches.event=event.id) A ,(select staff,event,dow,tod,duration from teaches, event where staff='co.CA' and teaches.event=event.id) B  
where (A.dow=B.dow and ((A.tod+A.duration>B.tod and A.tod+A.duration<B.tod+B.duration) or(B.tod+B.duration>A.tod and B.tod+B.duration<A.tod+A.duration)));
/  

select * FROM Cruces;




