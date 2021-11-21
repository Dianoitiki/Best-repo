--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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
-- Name: children; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.children (
    id integer NOT NULL,
    lname character varying(50),
    fname character varying(50),
    mname character varying(50),
    yob integer,
    gender character(1),
    wage numeric,
    father integer,
    mother integer,
    twin integer DEFAULT '-1'::integer
);


ALTER TABLE public.children OWNER TO postgres;

--
-- Name: men; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.men (
    id integer NOT NULL,
    lname character varying(50),
    fname character varying(50),
    mname character varying(50),
    yob integer,
    gender character(1),
    wage numeric,
    wife integer,
    children_count integer
);


ALTER TABLE public.men OWNER TO postgres;

--
-- Name: women; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.women (
    id integer NOT NULL,
    lname character varying(50),
    fname character varying(50),
    mname character varying(50),
    yob integer,
    gender character(1),
    wage numeric,
    husband integer,
    children_count integer
);


ALTER TABLE public.women OWNER TO postgres;

--
-- Data for Name: children; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.children (id, lname, fname, mname, yob, gender, wage, father, mother, twin) FROM stdin;
1	Efremov	Alexandr	Markovich	2000	m	30000	2	2	-1
2	Tarasova	Irina	Artemovna	2000	w	20000	4	4	-1
3	Tarasova	Anna	Artemovna	2004	w	30000	4	4	-1
4	Kudryavtseva	Anna	Artemovna	1999	w	20000	5	5	-1
5	Ermakova	Asia	Daniilovna	2002	w	30000	6	6	-1
6	Egova	Miroslava	Daniilovna	2001	w	30000	9	9	-1
7	Egova	Uliana	Daniilovna	2002	w	20000	9	9	-1
8	Danilovna	Olga	Artemovna	2006	w	0	10	10	-1
9	Vorontsova	Maria	Ivanovna	1999	w	40000	13	13	-1
10	Vorontsov	Kirill	Ivanovich	2003	m	40000	13	13	11
11	Vorontsov	Ilia	Ivanovich	2003	m	10000	13	13	10
12	Medvedev	Platon	Ibragimovich	2005	m	20000	14	14	13
13	Medvedev	Kirill	Ibragimovich	2005	m	0	14	14	12
14	Zacharova	Natalia	Timofeevna	2000	w	30000	15	15	-1
15	Isakova	Alisa	Michailovna	1999	w	10000	16	16	16
16	Isakova	Anna	Michailovna	1999	w	20000	16	16	15
17	Zayceva	Alisa	Kirilovna	2003	w	10000	17	17	-1
18	Korolev	Svatoslav	Matveevich	2005	m	20000	19	19	-1
19	Pokrovskaya	Ksenia	Timofeevna	2002	w	0	20	20	-1
20	Pokrovskaya	Varvara	Timofeevna	2004	w	0	20	20	-1
\.


--
-- Data for Name: men; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.men (id, lname, fname, mname, yob, gender, wage, wife, children_count) FROM stdin;
1	Cherenkov	Oleg	Alexandrovich	1983	m	50000	1	0
2	Efremov	Mark	Michailovich	1980	m	40000	2	1
3	Ozerov	Leonid	Zacharovich	1979	m	30000	3	0
4	Tarasov	Artem	Andreevich	1981	m	60000	4	2
5	Kudryavtcev	Artem	Damirovich	1984	m	50000	5	1
6	Ermakov	Daniil	Germanovich	1983	m	60000	6	1
7	Kazakov	Artem	Alievich	1980	m	50000	7	0
8	Sokolov	Egor	Alexandrovich	1984	m	30000	8	0
9	Egov	Daniil	Alexandrovich	1982	m	40000	9	2
10	Danilov	Artem	Romanovich	1985	m	40000	10	1
11	Platonov	Sergey	Artemovich	1981	m	50000	11	0
12	Kapustin	Egor	Stepanovich	1982	m	70000	12	0
13	Vorontsov	Ivan	Yaroslavovich	1980	m	80000	13	3
14	Medvedev	Ibragim	Alexandrovich	1980	m	90000	14	2
15	Zacharov	Timofey	Maximovich	1978	m	40000	15	1
16	Isakov	Michail	Artemovich	1981	m	60000	16	2
17	Zaycev	Kirill	Alexandrovich	1985	m	40000	17	1
18	Komarov	Nikita	Sergeevich	1983	m	50000	18	0
19	Korolev	Matvey	Pavlovich	1981	m	90000	19	1
20	Pokrovskiy	Timofey	Robertovich	1979	m	1000000	20	2
\.


--
-- Data for Name: women; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.women (id, lname, fname, mname, yob, gender, wage, husband, children_count) FROM stdin;
1	Cherenkova	Uliana	Victorovna	1984	w	20000	1	0
2	Efremova	Amira	Maximovna	1983	w	30000	2	1
3	Ozerova	Tatiana	Gordeeva	1979	w	30000	3	0
4	Tarasova	Maria	Daniilovna	1980	w	40000	4	2
5	Kudryavtceva	Yana	Artemovna	1981	w	30000	5	1
6	Ermakova	Valeria	Alexandrovna	1982	w	20000	6	1
7	Kazakova	Valeria	Ivanovna	1980	w	20000	7	0
8	Sokolova	Arina	Nikitichna	1985	w	30000	8	0
9	Egova	Maria	Arsentievna	1984	w	20000	9	2
10	Danilova	Vasilisa	Ivanovna	1990	w	30000	10	1
11	Platonova	Marianna	Michailovna	1982	w	30000	11	0
12	Kapustina	Maya	Markovna	1984	w	20000	12	0
13	Vorontsova	Anastasia	Daniilovna	1981	w	40000	13	3
14	Medvedeva	Malika	Davidovna	1980	w	30000	14	2
15	Zacharova	Anastasia	Kirilovna	1980	w	40000	15	1
16	Isakova	Elizabet	Romanovna	1982	w	20000	16	2
17	Zayceva	Varvara	Andreevna	1989	w	20000	17	1
18	Komarova	Sofia	Maximovna	1980	w	30000	18	0
19	Koroleva	Ksenia	Miroslavovna	1982	w	30000	19	1
20	Pokrovskaya	Esenia	Daniilovna	1977	w	200000	20	2
\.


--
-- Name: children children_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT children_pkey PRIMARY KEY (id);


--
-- Name: men men_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.men
    ADD CONSTRAINT men_pkey PRIMARY KEY (id);


--
-- Name: men men_wife_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.men
    ADD CONSTRAINT men_wife_key UNIQUE (wife);


--
-- Name: women women_husband_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.women
    ADD CONSTRAINT women_husband_key UNIQUE (husband);


--
-- Name: women women_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.women
    ADD CONSTRAINT women_pkey PRIMARY KEY (id);


--
-- Name: children child_men; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT child_men FOREIGN KEY (father) REFERENCES public.men(id) ON DELETE CASCADE;


--
-- Name: children child_women; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.children
    ADD CONSTRAINT child_women FOREIGN KEY (mother) REFERENCES public.women(id) ON DELETE CASCADE;


--
-- Name: men men_women; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.men
    ADD CONSTRAINT men_women FOREIGN KEY (wife) REFERENCES public.women(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

