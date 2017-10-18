drop database if exists Phone;

#crea un nuovo database 
Create database phone
	default character set latin1
    default collate latin1_general_ci;
    
use Phone;

# modifica i parametri del database
alter database Phone
	default character set utf8
    default collate utf8_unicode_ci;
    
drop table if exists country;

CREATE TABLE country (
    code VARCHAR(2) NOT NULL,
    name VARCHAR(32) NOT NULL,
    PRIMARY KEY (code)
);
    
drop table if exists brand;

CREATE TABLE brand (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(32) NOT NULL,
    country VARCHAR(2) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (country)
        REFERENCES country (code)
);



drop table if exists opsys;
CREATE TABLE opsys (
    id INT(11) NOT NULL AUTO_INCREMENT,
    description VARCHAR(64) NOT NULL,
    company VARCHAR(64) NOT NULL,
    opensource TINYINT(1) NOT NULL,
    PRIMARY KEY (id)
);

drop table if exists smartphone;
CREATE TABLE smartphone (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL,
    ram VARCHAR(5) NOT NULL,
    cpu VARCHAR(64) NOT NULL,
    displayPpi INT(11) NOT NULL,
    displaySize VARCHAR(12) NOT NULL,
    displayResolution VARCHAR(64) NOT NULL,
    size VARCHAR(64) NOT NULL,
    weight INT(4) NOT NULL,
    notes VARCHAR(1024) NOT NULL,
    brand INT(11) NOT NULL,
    opsys INT(11) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (brand)
        REFERENCES brand (id),
    FOREIGN KEY (opsys)
        REFERENCES opsys (id)
);

