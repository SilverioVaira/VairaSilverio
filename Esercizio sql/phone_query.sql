# 1. Select all smartphones in the database
SELECT * from smartphone;

# 2. Select all smartphones in the database with projection: name, ram, size, and cpu;
select name, ram, size, cpu from smartphone;

# 3. Select name of smartphone with display resolution equal to 1080x1920
select name from smartphone where displayResolution = "1080x1920";

# 4. Select name of smartphone with display resolution equal to 1080x1920 and 3Gb ram;
select name from smartphone where displayResolution = "1080x1920" and ram = "3Gb";

# 5. Select all Galaxy smartphone;
select * from smartphone where name like "Galaxy%"; 

# 6. select all Galaxy smartphones with dual-core cpu
select * from smartphone where name like "Galaxy%" and cpu like "%ual-core%";

# 7. Select all smarthpone with weight greater than or equal 150 grams
select * from smartphone where weight >= 150;

# 8. Select all smarphones with weight less than 150 frams;
select * from smartphone where weight < 150;

# 9. Select all smartphone sorted by display ppi
select * from smartphone order by displayPpi;

# 10. Select all smartphone descendant sorted by display ppi
select * from smartphone order by displayPpi desc;

# 11. Select name and brand of all smarphones in the database
select S.name , B.name from smartphone as S inner join brand as B on S.brand = B.id;

# 12. Select name and opSys of all smartphones in the database sorted by opSys, name;
select S.name , O.description as opSys from smartphone as S inner join opsys as O on S.opsys = O.id
order by O.description, S.name;

# 13. Select name and opSys of all Android smartphones in the database descendant sorted by weight;
select S.name, O.description as opSys, S.weight from smartphone as S inner join opsys as O on S.opsys = O.id
where O.description = "Android" order by S.weight desc;

# 14. Select name, brand, country of all smartphones in the database sorted by country, brand, name;
select S.name , B.name as brand, C.name as country from smartphone as S inner join brand as B on S.brand = B.id
inner join country as C on B.country = C.code order by C.name, B.name, S.name;

# 15. Select count of smartphones in the database with 3Gb ram;
select count(id) from smartphone where ram = "3Gb";

# 16. Select count of smartphones for each opSys in the database;
select count(S.id), O.description as sysOp from smartphone as S inner join opsys as O 
on S.opsys = O.id group by O.description;

# 17. Select count of smartphones for each country in the database;
select count(S.id), C.name as country from smartphone as S inner join brand as B
on S.brand = B.id inner join country as C on B.country = C.code group by C.name;