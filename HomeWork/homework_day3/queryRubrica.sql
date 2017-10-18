# Insert new user contact

Insert into contatti (name, surname, number, email, phone) values
						('Klizia', 'Maselli', '3209845671', 'kliziMaselli@gmail.com', 2);
                        
# Visualize user information and smartphone model
select C.*, S.name as model from contatti as C inner join smartphone as S on C.phone = S.id;

# update permission
set sql_safe_updates = 0;

# user information updates 
update contatti
set email = "silverio.vaira@gmail.com" # the old email was wrong
where name = "silverio";

update contatti
set surname = upper(surname)
where phone = 6;

# user updates control
select * from contatti;

#s martphone information updates
update smartphone
set displayResolution = "1280x768", size = "140x72x9.4"
where brand = 1;

# smartphone update control
select * from smartphone;

# show smartphone information
select S.id, S.name, S.ram, S.cpu, S.displayPpi, 
S.displaySize, S.displayResolution, S.size, 
S.weight, S.notes, B.name as brand, O.description as opSys
from smartphone as S inner join brand as B on S.brand = B.id
inner join opsys as O on S.opsys = O.id;