# Create Indices
# Index 1
CREATE INDEX country_name
ON country (country_name);

#Index 2
create index literacy_rate
on literacy(literacy_rate);

# Run Queries Using Indices
# Query 1
select * from country
where country_name LIKE "in%";

# Query 2
select literacy_rate from literacy
where literacy_rate > 90;

# Show Indices
show indexes from country;
show indexes from literacy;