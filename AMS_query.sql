insert into state values(104,'Madya Pradesh','central');
insert into commodity values(14,'maize','grains');

update state set state_zone='north' where state_id=104;
update commodity set commodity_name='barley' where commodity_id=14;

delete from state where state_id=104;

select * from commodity;

select d.distrrict_name, m.market_name
from District d
inner join market m on d.district_id=m.district_id;

select s.state_name, d.distrrict_name
from state s
inner join district d on d.state_id=s.state_id;

select count(state_id),state_zone
from state
group by state_zone;

select count(commodity_id),commodity_variety
from commodity
group by commodity_variety;

select market_id from market
union
select market_id from prices;

select c.commodity_name,p.price_min, p.price_max
from Commodity c, prices p
where c.commodity_id=p.commodity_id;