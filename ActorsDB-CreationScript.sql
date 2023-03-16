--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.1

-- Started on 2023-03-16 15:43:13

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "Actors";
--
-- TOC entry 3325 (class 1262 OID 16498)
-- Name: Actors; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Actors" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "Actors" OWNER TO postgres;

\connect "Actors"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 214 (class 1259 OID 16519)
-- Name: Customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Customers" (
    "CustomerID" character varying NOT NULL,
    "CompanyName" character varying NOT NULL,
    "ContactName" character varying,
    "ContactTitle" character varying,
    "Address" character varying,
    "City" character varying,
    "PostalCode" character varying,
    "Country" character varying,
    "Phone" character varying
);


ALTER TABLE public."Customers" OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16524)
-- Name: Employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Employees" (
    "EmployeeID" integer NOT NULL,
    "LastName" character varying NOT NULL,
    "FirstName" character varying NOT NULL,
    "Title" character varying,
    "TitleOfCourtesy" character varying,
    "BirthDate" timestamp with time zone,
    "HireDate" timestamp with time zone,
    "Address" character varying,
    "City" character varying,
    "PostalCode" character varying,
    "Country" character varying,
    "HomePhone" character varying,
    "Notes" text,
    "ReportsTo" integer
);


ALTER TABLE public."Employees" OWNER TO postgres;

--
-- TOC entry 3318 (class 0 OID 16519)
-- Dependencies: 214
-- Data for Name: Customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', '12209', 'Germany', '030-0074321');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico', '(5) 555-4729');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Owner', 'Mataderos  2312', 'México D.F.', '05023', 'Mexico', '(5) 555-3932');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK', '(171) 555-7788');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Order Administrator', 'Berguvsvägen  8', 'Luleå', 'S-958 22', 'Sweden', '0921-12 34 65');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Sales Representative', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany', '0621-08460');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('BLONP', 'Blondesddsl père et fils', 'Frédérique Citeaux', 'Marketing Manager', '24, place Kléber', 'Strasbourg', '67000', 'France', '88.60.15.31');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('BOLID', 'Bólido Comidas preparadas', 'Martín Sommer', 'Owner', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain', '(91) 555 22 82');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('BONAP', 'Bon app''', 'Laurence Lebihan', 'Owner', '12, rue des Bouchers', 'Marseille', '13008', 'France', '91.24.45.40');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada', '(604) 555-4729');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('BSBEV', 'B''s Beverages', 'Victoria Ashworth', 'Sales Representative', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK', '(171) 555-1212');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Sales Agent', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina', '(1) 135-5555');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Marketing Manager', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico', '(5) 555-3392');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland', '0452-076545');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('COMMI', 'Comércio Mineiro', 'Pedro Afonso', 'Sales Associate', 'Av. dos Lusíadas, 23', 'Sao Paulo', '05432-043', 'Brazil', '(11) 555-7647');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Sales Representative', 'Berkeley Gardens 12  Brewery', 'London', 'WX1 6LT', 'UK', '(171) 555-2282');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Order Administrator', 'Walserweg 21', 'Aachen', '52066', 'Germany', '0241-039123');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('DUMON', 'Du monde entier', 'Janine Labrune', 'Owner', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France', '40.67.88.88');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('EASTC', 'Eastern Connection', 'Ann Devon', 'Sales Agent', '35 King George', 'London', 'WX3 6FW', 'UK', '(171) 555-0297');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', '8010', 'Austria', '7675-3425');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 'Rua Orós, 92', 'Sao Paulo', '05442-030', 'Brazil', '(11) 555-9857');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Accounting Manager', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain', '(91) 555 94 44');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('FOLIG', 'Folies gourmandes', 'Martine Rancé', 'Assistant Sales Agent', '184, chaussée de Tournai', 'Lille', '59000', 'France', '20.16.10.16');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('FOLKO', 'Folk och fä HB', 'Maria Larsson', 'Owner', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden', '0695-34 67 21');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 'Berliner Platz 43', 'München', '80805', 'Germany', '089-0877310');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('FRANR', 'France restauration', 'Carine Schmitt', 'Marketing Manager', '54, rue Royale', 'Nantes', '44000', 'France', '40.32.21.21');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy', '011-4988260');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Sales Manager', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal', '(1) 354-2534');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('GALED', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Marketing Manager', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain', '(93) 203 4560');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('GODOS', 'Godos Cocina Típica', 'José Pedro Freyre', 'Sales Manager', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain', '(95) 555 82 82');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('GOURL', 'Gourmet Lanchonetes', 'André Fonseca', 'Sales Associate', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil', '(11) 555-9482');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Marketing Manager', '2732 Baker Blvd.', 'Eugene', '97403', 'USA', '(503) 555-7555');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela', '(2) 283-2951');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil', '(21) 555-0091');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('HILAA', 'HILARION-Abastos', 'Carlos Hernández', 'Sales Representative', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela', '(5) 555-1340');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Sales Representative', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA', '(503) 555-6874');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', '8 Johnstown Road', 'Cork', NULL, 'Ireland', '2967 542');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK', '(198) 555-8888');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('KOENE', 'Königlich Essen', 'Philip Cramer', 'Sales Associate', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany', '0555-09876');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LACOR', 'La corne d''abondance', 'Daniel Tonini', 'Sales Representative', '67, avenue de l''Europe', 'Versailles', '78000', 'France', '30.59.84.10');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LAMAI', 'La maison d''Asie', 'Annette Roulet', 'Sales Manager', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France', '61.77.61.10');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada', '(604) 555-3392');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA', '(509) 555-7969');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 'Magazinweg 7', 'Frankfurt a.M.', '60528', 'Germany', '069-0245984');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LETSS', 'Let''s Stop N Shop', 'Jaime Yorres', 'Owner', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA', '(415) 555-5938');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LILAS', 'LILA-Supermercado', 'Carlos González', 'Accounting Manager', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela', '(9) 331-6954');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Owner', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela', '(8) 34-56-12');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Sales Manager', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA', '(503) 555-9573');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Marketing Manager', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy', '035-640230');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Sales Agent', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium', '(02) 201 24 67');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('MEREP', 'Mère Paillarde', 'Jean Fresnière', 'Marketing Assistant', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada', '(514) 555-8054');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Marketing Assistant', 'Heerstr. 22', 'Leipzig', '04179', 'Germany', '0342-023176');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('NORTS', 'North/South', 'Simon Crowther', 'Sales Associate', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK', '(171) 555-7733');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('OCEAN', 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Sales Agent', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina', '(1) 135-5333');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Sales Representative', '2743 Bering St.', 'Anchorage', '99508', 'USA', '(907) 555-7584');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('OTTIK', 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Owner', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany', '0221-0644327');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('PARIS', 'Paris spécialités', 'Marie Bertrand', 'Owner', '265, boulevard Charonne', 'Paris', '75012', 'France', '(1) 42.34.22.66');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('PERIC', 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Sales Representative', 'Calle Dr. Jorge Cash 321', 'México D.F.', '05033', 'Mexico', '(5) 552-3745');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Sales Manager', 'Geislweg 14', 'Salzburg', '5020', 'Austria', '6562-9722');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Sales Representative', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal', '(1) 356-5634');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('QUEDE', 'Que Delícia', 'Bernardo Batista', 'Accounting Manager', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil', '(21) 555-4252');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('QUEEN', 'Queen Cozinha', 'Lúcia Carvalho', 'Marketing Assistant', 'Alameda dos Canàrios, 891', 'Sao Paulo', '05487-020', 'Brazil', '(11) 555-1189');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Accounting Manager', 'Taucherstraße 10', 'Cunewalde', '01307', 'Germany', '0372-035188');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('RANCH', 'Rancho grande', 'Sergio Gutiérrez', 'Sales Representative', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina', '(1) 123-5555');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Assistant Sales Representative', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA', '(505) 555-5939');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Sales Associate', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy', '0522-556721');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Assistant Sales Agent', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil', '(21) 555-3412');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Sales Manager', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland', '0897-034214');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Accounting Manager', 'Gran Vía, 1', 'Madrid', '28001', 'Spain', '(91) 745 6200');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('SANTG', 'Santé Gourmet', 'Jonas Bergulfsen', 'Owner', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway', '07-98 92 35');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Sales Representative', '187 Suffolk Ln.', 'Boise', '83720', 'USA', '(208) 555-8097');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Sales Manager', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK', '(171) 555-1717');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Owner', 'Vinbæltet 34', 'Kobenhavn', '1734', 'Denmark', '31 12 34 56');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('SPECD', 'Spécialités du monde', 'Dominique Perrier', 'Marketing Manager', '25, rue Lauriston', 'Paris', '75016', 'France', '(1) 47.55.60.10');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Sales Manager', 'P.O. Box 555', 'Lander', '82520', 'USA', '(307) 555-4680');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('SUPRD', 'Suprêmes délices', 'Pascale Cartrain', 'Accounting Manager', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium', '(071) 23 67 22 20');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('THEBI', 'The Big Cheese', 'Liz Nixon', 'Marketing Manager', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA', '(503) 555-3612');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('THECR', 'The Cracker Box', 'Liu Wong', 'Marketing Assistant', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA', '(406) 555-5834');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('TOMSP', 'Toms Spezialitäten', 'Karin Josephs', 'Marketing Manager', 'Luisenstr. 48', 'Münster', '44087', 'Germany', '0251-031259');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Owner', 'Avda. Azteca 123', 'México D.F.', '05033', 'Mexico', '(5) 555-2933');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('TRADH', 'Tradição Hipermercados', 'Anabela Domingues', 'Sales Representative', 'Av. Inês de Castro, 414', 'Sao Paulo', '05634-030', 'Brazil', '(11) 555-2167');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('TRAIH', 'Trail''s Head Gourmet Provisioners', 'Helvetius Nagy', 'Sales Associate', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA', '(206) 555-8257');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Sales Manager', 'Smagsloget 45', 'Århus', '8200', 'Denmark', '86 21 32 43');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Sales Agent', '2, rue du Commerce', 'Lyon', '69004', 'France', '78.32.54.86');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Accounting Manager', '59 rue de l''Abbaye', 'Reims', '51100', 'France', '26.47.15.10');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('WANDK', 'Die Wandernde Kuh', 'Rita Müller', 'Sales Representative', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany', '0711-020361');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Accounting Manager', 'Torikatu 38', 'Oulu', '90110', 'Finland', '981-443655');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('WELLI', 'Wellington Importadora', 'Paula Parente', 'Sales Manager', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil', '(14) 555-8122');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Owner', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA', '(206) 555-4112');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Owner/Marketing Assistant', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland', '90-224 8858');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Owner', 'ul. Filtrowa 68', 'Warszawa', '01-012', 'Poland', '(26) 642-7012');
INSERT INTO public."Customers" ("CustomerID", "CompanyName", "ContactName", "ContactTitle", "Address", "City", "PostalCode", "Country", "Phone") VALUES ('8743t', 'Company', 'Contact', 'Title', 'Address', 'City', '2742', 'Country', '98348329');


--
-- TOC entry 3319 (class 0 OID 16524)
-- Dependencies: 215
-- Data for Name: Employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '1948-12-08 00:00:00-05', '1992-05-01 00:00:00-05', '507 - 20th Ave. E.
Apt. 2A', 'Seattle', '98122', 'USA', '(206) 555-9857', 'Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International.', 2);
INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '1952-02-19 00:00:00-05', '1992-08-14 00:00:00-04', '908 W. Capital Way', 'Tacoma', '98401', 'USA', '(206) 555-9482', 'Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.', NULL);
INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '1963-08-30 00:00:00-05', '1992-04-01 00:00:00-05', '722 Moss Bay Blvd.', 'Kirkland', '98033', 'USA', '(206) 555-3412', 'Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992.', 2);
INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '1937-09-19 00:00:00-05', '1993-05-03 00:00:00-05', '4110 Old Redmond Rd.', 'Redmond', '98052', 'USA', '(206) 555-8122', 'Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992.', 2);
INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '1955-03-04 00:00:00-05', '1993-10-17 00:00:00-05', '14 Garrett Hill', 'London', 'SW1 8JR', 'UK', '(71) 555-4848', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French.', 2);
INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', '1963-07-02 00:00:00-05', '1993-10-17 00:00:00-05', 'Coventry House
Miner Rd.', 'London', 'EC2 7JR', 'UK', '(71) 555-7773', 'Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.', 5);
INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (7, 'King', 'Robert', 'Sales Representative', 'Mr.', '1960-05-29 00:00:00-05', '1994-01-02 00:00:00-05', 'Edgeham Hollow
Winchester Way', 'London', 'RG1 9SP', 'UK', '(71) 555-5598', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993.', 5);
INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '1958-01-09 00:00:00-05', '1994-03-05 00:00:00-05', '4726 - 11th Ave. N.E.', 'Seattle', '98105', 'USA', '(206) 555-1189', 'Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.', 2);
INSERT INTO public."Employees" ("EmployeeID", "LastName", "FirstName", "Title", "TitleOfCourtesy", "BirthDate", "HireDate", "Address", "City", "PostalCode", "Country", "HomePhone", "Notes", "ReportsTo") VALUES (9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '1966-01-27 00:00:00-05', '1994-11-15 00:00:00-05', '7 Houndstooth Rd.', 'London', 'WG2 7LT', 'UK', '(71) 555-4444', 'Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.', 5);


-- Completed on 2023-03-16 15:43:13

--
-- PostgreSQL database dump complete
--

