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
-- Name: main_categories; Type: TABLE; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE TABLE main_categories (
    id integer NOT NULL,
    name character varying(255),
    num_of_deals integer DEFAULT 0,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.main_categories OWNER TO ld_user;

--
-- Name: main_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: ld_user
--

CREATE SEQUENCE main_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.main_categories_id_seq OWNER TO ld_user;

--
-- Name: main_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ld_user
--

ALTER SEQUENCE main_categories_id_seq OWNED BY main_categories.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ld_user
--

ALTER TABLE ONLY main_categories ALTER COLUMN id SET DEFAULT nextval('main_categories_id_seq'::regclass);


--
-- Data for Name: main_categories; Type: TABLE DATA; Schema: public; Owner: ld_user
--

COPY main_categories (id, name, num_of_deals, created_at, updated_at) FROM stdin;
9	Jewellery	0	2013-03-13 08:19:32.180803	2013-03-13 08:19:32.180803
11	Shoes	0	2013-03-13 08:19:32.236425	2013-03-13 08:19:32.236425
16	Musics	0	2013-03-13 08:19:32.281087	2013-03-13 08:19:32.281087
18	Books	0	2013-03-13 08:19:32.313243	2013-03-13 08:19:32.313243
19	Magazines	0	2013-03-13 08:19:32.316476	2013-03-13 08:19:32.316476
20	Kids	0	2013-03-13 08:19:32.344387	2013-03-13 08:19:32.344387
25	Foods & Drinks	0	2013-03-13 08:19:32.401015	2013-03-13 08:19:32.401015
31	Furniture	0	2013-03-13 08:19:32.472598	2013-03-13 08:19:32.472598
35	Pets	0	2013-03-13 08:19:32.548502	2013-03-13 08:19:32.548502
41	Other	0	2013-03-13 08:19:32.620492	2013-03-13 08:19:32.620492
43	Wireless	1	2013-03-16 20:09:06.242706	2013-03-16 23:38:21.864063
17	Musical Instruments	1	2013-03-13 08:19:32.308384	2013-03-13 09:43:15.397845
4	Electronics	21	2013-03-13 08:19:32.13265	2013-04-01 06:02:51.909396
28	Out door	6	2013-03-13 08:19:32.436593	2013-04-01 06:05:52.126203
33	Lighting	4	2013-03-13 08:19:32.50457	2013-04-01 06:10:43.160265
21	Toys	1	2013-03-13 08:19:32.348765	2013-03-13 10:17:12.585192
26	Home	4	2013-03-13 08:19:32.428511	2013-04-01 06:10:43.167666
50	Lawn & patio	1	2013-04-02 07:59:49.753946	2013-04-02 08:45:07.66425
10	Watches	2	2013-03-13 08:19:32.185166	2013-04-04 05:27:20.885497
5	Cameras	7	2013-03-13 08:19:32.158394	2013-03-17 09:46:02.35794
37	Automotive	2	2013-03-13 08:19:32.556544	2013-03-17 09:51:32.917481
32	Hardware	7	2013-03-13 08:19:32.501005	2013-04-24 06:22:31.6963
7	Tvs	4	2013-03-13 08:19:32.172565	2013-03-14 11:20:15.040679
29	Garden	2	2013-03-13 08:19:32.464412	2013-04-24 06:22:42.828123
14	Software	1	2013-03-13 08:19:32.272438	2013-04-24 06:24:27.221898
2	Computers	7	2013-03-13 08:19:32.097824	2013-04-28 07:20:07.604843
46	Dvd	1	2013-03-20 06:13:52.840455	2013-03-20 06:15:33.106207
40	Office Products	1	2013-03-13 08:19:32.592587	2013-03-16 19:43:38.622934
13	Movies	2	2013-03-13 08:19:32.24506	2013-03-20 06:15:33.115419
23	Health & Beauty	0	2013-03-13 08:19:32.392441	2013-03-16 20:31:36.380079
36	Pets Product	1	2013-03-13 08:19:32.55255	2013-04-29 06:49:38.406595
39	Gifts	5	2013-03-13 08:19:32.588609	2013-04-29 06:49:38.471924
6	Phones	0	2013-03-13 08:19:32.168515	2013-03-16 23:07:22.070481
3	Computer Parts	3	2013-03-13 08:19:32.128348	2013-04-29 06:49:38.477907
47	Mobile application	2	2013-03-21 08:48:43.506516	2013-03-21 09:31:51.240502
42	Photography	3	2013-03-14 10:15:07.282734	2013-03-22 15:41:33.046365
48	Jewelry	0	2013-03-24 06:14:56.731448	2013-03-24 06:14:56.731448
45	Network media player	2	2013-03-18 10:12:24.798031	2013-03-26 13:54:32.974029
1	Laptops	3	2013-03-13 08:19:32.057811	2013-04-29 06:49:38.543394
22	Sports	1	2013-03-13 08:19:32.353242	2013-04-30 11:32:48.209305
49	Major appliances	1	2013-03-31 06:51:06.57274	2013-03-31 07:38:04.666747
34	Kitchen	1	2013-03-13 08:19:32.508603	2013-03-31 10:33:14.579183
27	Home Improvement	8	2013-03-13 08:19:32.432501	2013-03-31 10:41:30.737262
44	Amazon devices	6	2013-03-17 09:34:09.60885	2013-05-02 12:05:06.809345
24	Grocery	4	2013-03-13 08:19:32.397015	2013-05-02 12:05:06.816691
15	Games	5	2013-03-13 08:19:32.277161	2013-05-02 12:05:06.82498
38	Baby products	3	2013-03-13 08:19:32.584484	2013-05-02 13:16:14.865083
12	Bags	3	2013-03-13 08:19:32.241306	2013-05-02 13:16:16.771692
30	Bathroom	1	2013-03-13 08:19:32.468658	2013-05-02 13:22:43.816771
8	Apparels	6	2013-03-13 08:19:32.176655	2013-05-02 13:23:05.662452
\.


--
-- Name: main_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ld_user
--

SELECT pg_catalog.setval('main_categories_id_seq', 50, true);


--
-- Name: main_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ld_user; Tablespace: 
--

ALTER TABLE ONLY main_categories
    ADD CONSTRAINT main_categories_pkey PRIMARY KEY (id);


--
-- Name: index_main_categories_on_name; Type: INDEX; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE INDEX index_main_categories_on_name ON main_categories USING btree (name);


--
-- PostgreSQL database dump complete
--

