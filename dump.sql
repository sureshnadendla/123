--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: savingtypes; Type: TABLE; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE TABLE savingtypes (
    id integer NOT NULL,
    name character varying(255),
    code_name character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.savingtypes OWNER TO suresh;

--
-- Name: savingtypes_id_seq; Type: SEQUENCE; Schema: public; Owner: ld_user
--

CREATE SEQUENCE savingtypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.savingtypes_id_seq OWNER TO suresh;

--
-- Name: savingtypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ld_user
--

ALTER SEQUENCE savingtypes_id_seq OWNED BY savingtypes.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ld_user
--

ALTER TABLE ONLY savingtypes ALTER COLUMN id SET DEFAULT nextval('savingtypes_id_seq'::regclass);


--
-- Data for Name: savingtypes; Type: TABLE DATA; Schema: public; Owner: ld_user
--

COPY savingtypes (id, name, code_name, created_at, updated_at) FROM stdin;
1	Products & Services	products-and-services	2013-03-13 08:19:30.560509	2013-03-13 08:19:30.560509
2	Collection savings	collection-deals	2013-03-13 08:19:30.62814	2013-03-13 08:19:30.62814
\.


--
-- Name: savingtypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ld_user
--

SELECT pg_catalog.setval('savingtypes_id_seq', 3, true);


--
-- Name: savingtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: ld_user; Tablespace: 
--

ALTER TABLE ONLY savingtypes
    ADD CONSTRAINT savingtypes_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

