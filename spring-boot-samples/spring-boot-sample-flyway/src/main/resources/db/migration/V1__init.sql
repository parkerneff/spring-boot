CREATE TABLE PERSON (
	id BIGINT not null,
	first_name varchar(255) not null,
	last_name varchar(255) not null
);
CREATE SEQUENCE person_id_seq;
ALTER SEQUENCE person_id_seq OWNED BY person.id;
ALTER TABLE ONLY person ALTER COLUMN id SET DEFAULT nextval('person_id_seq'::regclass);
ALTER TABLE person ADD CONSTRAINT person_pk PRIMARY KEY(id);


insert into PERSON (first_name, last_name) values ('Parker', 'Neff');