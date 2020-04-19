--DROP TABLE dogs CASCADE CONSTRAINTS
CREATE TABLE dogs (
    id#                 number(5)       not null,
    name                varChar(15)     not null,
    breed               varChar(20),
    age                 number(4)      not null,
    family              varChar(20),
    trainer             number(5),
    training_stage      number(5)       not null,
    blind_owner         varChar(20),
    primary key(id#)
    foreign key(trainer) references trainer(id#)
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

--DROP TABLE trainer CASCADE CONSTRAINTS
CREATE TABLE trainer (
    id#             number(5)   not null,
    first_name      varchar(25) not null,
    last_name       varchar(25) not null,
    address         varchar(25) not null,
    phone_number    varChar(11) not null,
    email           varChar(25),
    dogs_training   number(1),
    salary number(7),
    primary key(id#)
    );

--DROP TABLE blind_person CASCADE CONSTRAINTS
CREATE TABLE blind_person (
    id#             number(5)   not null,
    first_name      varchar(25) not null,
    last_name       varchar(25) not null,
    address         varchar(25) not null,
    phone_number    varChar(11) not null,
    email           varChar(25),
    wait_list_time  varchar(30), 
    dog_assigned    number(5),
    primary key(id#),
    foreign key(dog_assigned) references dogs(id#)
    );
    
    
