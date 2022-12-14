
  
show indexes from country;

#Filter: (country.country_name = 'india')  (cost=25.05 rows=25) (actual time=0.408..0.577 rows=1 loops=1)
#Table scan on country  (cost=25.05 rows=248) (actual time=0.215..0.440 rows=248 loops=1)
#Covering index lookup on country using country_name (country_name='india')  (cost=0.35 rows=1) (actual time=0.066..0.077 rows=1 loops=1)


CREATE INDEX country_name
ON country (country_name);

explain analyze
select * from country
where country_name LIKE "in%";

# With Index for country
#Filter: (country.country_name like 'in%')  (cost=0.66 rows=2) (actual time=0.816..1.086 rows=2 loops=1)
#Covering index range scan on country using country_name over ('in' <= country_name <= 'in????????????????????????????????????????????????????????????????????????????????????????????')  (cost=0.66 rows=2) (actual time=0.065..0.333 rows=2 loops=1)

# Without Index
#Filter: (country.country_name like 'in%')  (cost=25.05 rows=28) (actual time=0.413..0.595 rows=2 loops=1)
#Table scan on country  (cost=25.05 rows=248) (actual time=0.198..0.431 rows=248 loops=1)




select literacy_rate from literacy
where literacy_rate > 90;





create index literacy_rate
on literacy(literacy_rate);

explain analyze
select * from literacy
where literacy_rate>90;

#-> Filter: (literacy.literacy_rate > 90.000000)  (cost=18.95 rows=123) (actual time=0.170..0.345 rows=123 loops=1)
#-> Table scan on literacy  (cost=18.95 rows=187) (actual time=0.159..0.262 rows=187 loops=1)

'-> Filter: (literacy.literacy_rate > 90.000000)  (cost=18.95 rows=123) (actual time=0.092..0.235 rows=123 loops=1)\n    
-> Table scan on literacy  (cost=18.95 rows=187) (actual time=0.084..0.169 rows=187 loops=1)\n'

alter table literacy; 
drop index literacy_rate; 


show indexes from literacy;



