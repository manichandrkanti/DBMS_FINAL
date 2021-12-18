insert into Commodity values(10,'paddy','grains');
insert into Commodity values(11,'millets','grains');
insert into Commodity values(12,'poultry','meat');

insert into state values(101,'Telangana','south');
insert into state values(102,'Delhi','north');
insert into state values(103,'Tamil Nadu','south');

insert into District values(121,'Ranga Reddy','ranga reddy',101);
insert into District values(122,'vadai pakam','konnol',103);
insert into District values(123,'New Delhi','delhi',102);

insert into Market values(1,'Akash market','akash nagar',121);
insert into Market values(2,'Fruits market','Amberpet',121);
insert into Market values(3,'paini market','akainavi',122);
insert into Market values(4,'reddy market','bn reddy',123);

insert into prices values(50,'12/17/2021',30,50,1,10);
insert into prices values(51,'12/17/2021',35,55,2,10);
insert into prices values(52,'12/17/2021',220,250,4,12);
insert into prices values(53,'12/17/2021',80,100,3,11);

--insert command is used to insert the data into a table.