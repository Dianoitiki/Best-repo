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

--
-- Name: pllua; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pllua WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION pllua; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pllua IS 'Lua as a procedural language';


--
-- Name: file_fdw; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS file_fdw WITH SCHEMA public;


--
-- Name: EXTENSION file_fdw; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION file_fdw IS 'foreign-data wrapper for flat file access';


--
-- Name: misum(integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.misum(a integer, b integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
	BEGIN
		RETURN a+b;
	END;
$$;


ALTER FUNCTION public.misum(a integer, b integer) OWNER TO postgres;

--
-- Name: misum2(integer, integer, integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.misum2(a integer, b integer, c integer) RETURNS integer
    LANGUAGE pllua
    AS $$
	local d=(a+b)*c
	return d
$$;


ALTER FUNCTION public.misum2(a integer, b integer, c integer) OWNER TO postgres;

--
-- Name: madatasrv; Type: SERVER; Schema: -; Owner: postgres
--

CREATE SERVER madatasrv FOREIGN DATA WRAPPER file_fdw;


ALTER SERVER madatasrv OWNER TO postgres;

--
-- Name: mydatasrv; Type: SERVER; Schema: -; Owner: postgres
--

CREATE SERVER mydatasrv FOREIGN DATA WRAPPER file_fdw;


ALTER SERVER mydatasrv OWNER TO postgres;

SET default_tablespace = '';

--
-- Name: mydata; Type: FOREIGN TABLE; Schema: public; Owner: postgres
--

CREATE FOREIGN TABLE public.mydata (
    x integer,
    y integer
)
SERVER mydatasrv
OPTIONS (
    filename '/home/postgres/data.csv',
    format 'csv'
);


ALTER FOREIGN TABLE public.mydata OWNER TO postgres;

SET default_table_access_method = heap;

--
-- Name: test; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.test (
    x integer,
    y integer
);


ALTER TABLE public.test OWNER TO postgres;

--
-- Data for Name: test; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.test (x, y) FROM stdin;
1	3
2	6
3	9
\.


--
-- PostgreSQL database dump complete
--

