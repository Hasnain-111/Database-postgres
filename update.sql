select *from courses;
--java programming courese is not changed to advance java 

update courses set title ='advance java programming' where fee = 2999;

--multile field update
--user2 is promoted her email is not change and her role is also changed 
select *from users;
update users 
set email= 'user3@admin.com', role ='admin'
where name = 'User 3'
returning id,name,email,role;

--dynamic maths
update courses
set fee = fee*100
where fee<=3000
returning id,title,fee;

