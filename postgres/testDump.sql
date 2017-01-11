--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: accounts; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE accounts (
    username character varying(20) NOT NULL,
    pass character varying(20),
    email character varying(30),
    organization character varying(20),
    user_type character varying(20),
    username_sh character varying(30),
    password_sh character varying(20)
);


ALTER TABLE accounts OWNER TO postgres;

--
-- Name: history; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE history (
    username character varying(20) NOT NULL,
    service_type character varying(20),
    parameters character varying(300)
);


ALTER TABLE history OWNER TO postgres;

--
-- Name: tentative; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tentative (
    username character varying(20) NOT NULL,
    pass character varying(20),
    email character varying(30),
    organization character varying(20),
    user_type character varying(20)
);


ALTER TABLE tentative OWNER TO postgres;

--
-- Data for Name: accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY accounts (username, pass, email, organization, user_type, username_sh, password_sh) FROM stdin;
george	12345	geo@test.gr	UoA	Classified	geoSH	12vervr
Maria	12345	maria@bla.gr	Bla	Unclassified	\N	\N
manos	as	fsdf	df	sdf	\N	\N
gstam	12345!	gstam@di.uoa.gr	UoA	Admin	efaki	testapp
\.


--
-- Data for Name: history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY history (username, service_type, parameters) FROM stdin;
gstam	event_detection	POLYGON((21.40869095921516 35.63944106897394, 7.4340815842151615 35.63944106897394, 7.4340815842151615 45.151053265563405, 21.40869095921516 45.151053265563405, 21.40869095921516 35.63944106897394)),null,null,null
gstam	change_detection	POLYGON((26.022948771715164 33.61461929233377, 7.214355021715164 33.61461929233377, 7.214355021715164 44.74673324024681, 26.022948771715164 44.74673324024681, 26.022948771715164 33.61461929233377)),2016-08-30T00:00:00.000Z,2016-12-13T00:00:00.000Z,efaki,testapp,HH
gstam	event_detection	POLYGON((21.716308146715168 37.125286284966805, 8.444823771715164 37.125286284966805, 8.444823771715164 44.809121700077355, 21.716308146715168 44.809121700077355, 21.716308146715168 37.125286284966805)),null,null,italy,rome
gstam	event_detection	POLYGON((20.94726383686066 33.57801474614398, 2.490232586860664 33.57801474614398, 2.490232586860664 47.75409797968001, 20.94726383686066 47.75409797968001, 20.94726383686066 33.57801474614398)),null,null,null
gstam	event_detection	null,null,null,barcelona
gstam	event_detection	POLYGON((22.319068908691403 36.29727983504752, 8.783912658691404 36.29727983504752, 8.783912658691404 44.6685307892852, 22.319068908691403 44.6685307892852, 22.319068908691403 36.29727983504752)),null,null,italy,rome
gstam	event_detection	POLYGON((22.450904846191403 36.33268979874782, 8.520240783691404 36.33268979874782, 8.520240783691404 44.76221478930714, 22.450904846191403 44.76221478930714, 22.450904846191403 36.33268979874782)),null,null,italy,rome
gstam	event_detection	POLYGON((5.263137817382808 38.51351962326325, -4.844284057617192 38.51351962326325, -4.844284057617192 43.29295042445051, 5.263137817382808 43.29295042445051, 5.263137817382808 38.51351962326325)),null,null,barcelona
Maria	event_detection	POLYGON((7.509498596191405 39.04465272691368, -3.0373764038085933 39.04465272691368, -3.0373764038085933 43.08481205545519, 7.509498596191405 43.08481205545519, 7.509498596191405 39.04465272691368)),null,null,null
Maria	change_detection	POLYGON((18.847389221191406 38.496459168875305, 9.794654846191404 38.496459168875305, 9.794654846191404 43.372987403546915, 18.847389221191406 43.372987403546915, 18.847389221191406 38.496459168875305)),2016-10-03T00:00:00.000Z,2016-12-13T00:00:00.000Z,efaki,testapp,HH
Maria	event_detection	POLYGON((23.022193908691406 35.8354892228877, 6.762428283691403 35.8354892228877, 6.762428283691403 45.16642612815147, 23.022193908691406 45.16642612815147, 23.022193908691406 35.8354892228877)),null,null,null
gstam	event_detection	POLYGON((5.493850708007811 39.50377580420397, -1.8889617919921888 39.50377580420397, -1.8889617919921888 43.32492792202396, 5.493850708007811 43.32492792202396, 5.493850708007811 39.50377580420397)),null,null,barcelona
\.


--
-- Data for Name: tentative; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tentative (username, pass, email, organization, user_type) FROM stdin;
Nikos	12345	nick@bla.gr	Bla	Classified
Lalalo	12345	lalalo@di.uoa.gr	UoA	Classified
Bill	ksdf	bill@test.gr	Test	Unclassified
Mimis	12345	mimis@test.gr	BLO	Classified
\.


--
-- Name: tempKey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tentative
    ADD CONSTRAINT "tempKey" PRIMARY KEY (username);


--
-- Name: userKey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY accounts
    ADD CONSTRAINT "userKey" PRIMARY KEY (username);


--
-- Name: historyFKey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY history
    ADD CONSTRAINT "historyFKey" FOREIGN KEY (username) REFERENCES accounts(username);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

