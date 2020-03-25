--DROP TABLE dogs CASCADE CONSTRAINTS
CREATE TABLE dogs (
    id#                 number(5)       not null,
    name                varChar(15)     not null,
    breed               varChar(20),
    age                 number(4)      not null,
    family              varChar(20),
    trainer             varChar(20),
    training_stage      number(5)       not null,
    blind_owner         varChar(20),
    primary key(id#)
);   

--DROP TABLE family CASCADE CONSTRAINTS
CREATE TABLE family (
    id#               number(5)       not null,
    family_name       varChar(25)     not null,
    dog               number(5),
    address           varChar(50)     not null,
    phone_number      varChar(11)     not null,
    email             varChar(25),
    primary key(id#),
    foreign key(dog) references dogs(id#)
);    