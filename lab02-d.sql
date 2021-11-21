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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character varying(70),
    fname character varying(1478),
    mname character varying(25)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer NOT NULL,
    soft_id integer NOT NULL
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    room_id integer,
    note character varying(500),
    ip_addr character varying(45),
    mac_addr character varying(17)
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num integer,
    emp_id integer
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    name character varying(50),
    ver character varying(50),
    quant integer
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname) FROM stdin;
1	Kuznetsova	Agnia	Ilinichna
2	Efimova	Evgenia	Filipovna
3	Maksimov	Alexander	Vadimovich
4	Burov	Leonid	Egorovich
5	Kravtsova	Madina	Makarovna
6	Volkova	Valeria	Arcentevna
7	Tichonov	Nikita	Bogdanovich
8	Kostina	Sofia	Maksimovna
9	Zacharova	Ksenia	Andreevna
10	Panina	Antonina	Daniilovna
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id) FROM stdin;
1	13
1	14
2	15
2	16
3	17
3	13
4	14
4	15
5	16
5	17
6	13
6	14
7	15
7	16
8	17
8	13
9	14
9	15
10	16
10	17
11	13
11	14
12	15
12	16
13	17
13	13
14	14
14	15
15	16
15	17
16	13
16	14
17	15
17	16
18	17
18	13
19	14
19	15
20	16
20	17
21	13
21	14
22	15
22	16
23	17
23	13
24	14
24	15
25	16
25	17
26	13
26	14
27	15
27	16
28	17
28	13
29	14
29	15
30	16
30	17
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, room_id, note, ip_addr, mac_addr) FROM stdin;
1	1		192.168.0.1	01:D9:96:4E:65:FF
2	1		192.168.0.2	01:D9:96:4E:66:FF
3	1		192.168.0.3	01:D9:96:4E:67:FF
4	2		192.168.0.4	01:D9:96:4E:68:FF
5	2		192.168.0.5	01:D9:96:4E:69:FF
6	2		192.168.0.6	01:D9:96:4E:70:FF
7	3		192.168.0.7	01:D9:96:4E:71:FF
8	3		192.168.0.8	01:D9:96:4E:72:FF
9	3		192.168.0.9	01:D9:96:4E:73:FF
10	4		192.168.0.10	01:D9:96:4E:74:FF
11	4		192.168.0.11	01:D9:96:4E:75:FF
12	4		192.168.0.12	01:D9:96:4E:76:FF
13	5		192.168.0.13	01:D9:96:4E:77:FF
14	5		192.168.0.14	01:D9:96:4E:78:FF
15	5		192.168.0.15	01:D9:96:4E:79:FF
16	6		192.168.0.16	01:D9:96:4E:80:FF
17	6		192.168.0.17	01:D9:96:4E:81:FF
18	6		192.168.0.18	01:D9:96:4E:82:FF
19	7		192.168.0.19	01:D9:96:4E:83:FF
20	7		192.168.0.20	01:D9:96:4E:84:FF
21	7		192.168.0.21	01:D9:96:4E:85:FF
22	8		192.168.0.22	01:D9:96:4E:87:FF
23	8		192.168.0.23	01:D9:96:4E:88:FF
24	8		192.168.0.24	01:D9:96:4E:89:FF
25	9		192.168.0.25	01:D9:96:4E:90:FF
26	9		192.168.0.26	01:D9:96:4E:91:FF
27	9		192.168.0.27	01:D9:96:4E:92:FF
28	10		192.168.0.28	01:D9:96:4E:93:FF
29	10		192.168.0.29	01:D9:96:4E:94:FF
30	10		192.168.0.30	01:D9:96:4E:95:FF
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id) FROM stdin;
0	100	1
1	101	3
2	102	7
3	103	1
4	104	2
5	200	6
6	201	7
7	202	8
8	203	4
9	204	3
10	300	5
11	301	2
12	302	9
13	303	5
14	304	10
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, name, ver, quant) FROM stdin;
13	Windows 10	1507	25
14	Microsoft Office	2019	15
15	Visual Studio	2019	6
16	VNC Viewer	6.21.406	56
17	Adobe Photoshop CC 2021	22.5.1	10
\.


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: installs installs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT installs_pkey PRIMARY KEY (pc_id, soft_id);


--
-- Name: pcs pcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pcs_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: soft soft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT soft_pkey PRIMARY KEY (id);


--
-- Name: installs inst_pcs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT inst_pcs FOREIGN KEY (pc_id) REFERENCES public.pcs(id);


--
-- Name: installs inst_soft; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT inst_soft FOREIGN KEY (soft_id) REFERENCES public.soft(id);


--
-- Name: pcs pcs_rooms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pcs_rooms FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- Name: rooms rooms_emp; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_emp FOREIGN KEY (emp_id) REFERENCES public.employees(id);


--
-- PostgreSQL database dump complete
--

