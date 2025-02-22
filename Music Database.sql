CREATE DATABASE "Music Store Database ";
-- Create table 1

CREATE TABLE album(
	album_id INT NOT NULL,
    title VARCHAR(120),
    artist_id INT
);
COPY  album 
FROM 'E:\music store data\album.csv'
DELIMITER ','
CSV HEADER; 

--Create table 2

CREATE TABLE artist(
artist_id INT NOT NULL,
name character varying(120) );

COPY  artist
FROM 'E:\music store data\artist.csv'
DELIMITER ','
CSV HEADER; 

-- Create table 3
CREATE TABLE customer(
    customer_id integer NOT NULL,
    first_name character(50),
    last_name character(50),
    company character varying(120),
    address character varying(120),
    city character varying(50),
    state character varying(50),
    country character varying(50),
    postal_code character varying(50),
    phone character varying(50),
    fax character varying(50),
    email character varying(50),
    support_rep_id integer
);


COPY  customer
FROM 'E:\music store data\customer.csv'
DELIMITER ','
CSV HEADER; 

-- Create table 4
CREATE TABLE employee(
employee_id INT  NOT NULL,
    last_name character(50),
    first_name character(50),
    title character varying(50),
    reports_to character varying(30),
    levels character varying(10),
    birthdate timestamp without time zone,
    hire_date timestamp without time zone,
    address character varying(120),
    city character varying(50),
    state character varying(50),
    country character varying(30),
    postal_code character varying(30),
    phone character varying(30),
    fax character varying(30),
    email character varying(30)
);
SET datestyle TO 'ISO, DMY';

COPY employee
FROM 'E:\music store data\employee.csv'
DELIMITER ','
CSV HEADER; 

-- Create table 5
 CREATE TABLE genre(
 genre_id INT NOT NULL,
 name character varying(120)
);	
COPY genre
FROM 'E:\music store data\genre.csv'
DELIMITER ','
CSV HEADER; 


--Create table 6
CREATE TABLE invoice(
    invoice_id integer NOT NULL,
    customer_id integer,
    invoice_date timestamp without time zone,
    billing_address character varying(120),
    billing_city character varying(30),
    billing_state character varying(30),
    billing_country character varying(30),
    billing_postal character varying(30),
    total double precision
);

COPY  invoice
FROM 'E:\music store data\invoice.csv'
DELIMITER ','
CSV HEADER; 


--Create table 7
CREATE TABLE invoice_line
(invoice_line_id INT NOT NULL,
    invoice_id integer,
    track_id integer,
    unit_price double precision,
    quantity double precision
);
COPY  invoice_line
FROM 'E:\music store data\invoice_line.csv'
DELIMITER ','
CSV HEADER; 




--Create table 8
CREATE TABLE public.media_type (
    media_type_id INT NOT NULL,
    name character varying(120)
);
COPY media_type
FROM 'E:\music store data\media_type.csv'
DELIMITER ','
CSV HEADER; 


--Create table 9
CREATE TABLE public.playlist (
    playlist_id character varying(50) NOT NULL,
    name character varying(120)
);

COPY  playlist
FROM 'E:\music store data\playlist.csv'
DELIMITER ','
CSV HEADER; 


--Create table 10
CREATE TABLE public.playlist_track (
    playlist_id character varying(50),
    track_id integer
);

COPY playlist_track
FROM 'E:\music store data\playlist_track.csv'
DELIMITER ','
CSV HEADER; 



-- Create table 11
CREATE TABLE public.track (
    track_id integer NOT NULL,
    name character varying(150),
    album_id character varying(50),
    media_type_id character varying(50),
    genre_id character varying(50),
    composer character varying(190),
    milliseconds integer,
    bytes integer,
    unit_price double precision
);

COPY  track
FROM 'E:\music store data\track.csv'
DELIMITER ','
CSV HEADER; 



