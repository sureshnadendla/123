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
-- Name: categories; Type: TABLE; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying(255),
    num_of_deals integer DEFAULT 0,
    parent_id integer DEFAULT (-1),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.categories OWNER TO ld_user;

--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: ld_user
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO ld_user;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ld_user
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ld_user
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: ld_user
--

COPY categories (id, name, num_of_deals, parent_id, created_at, updated_at) FROM stdin;
9	Camera parts	0	-1	2013-03-13 08:19:32.180803	2013-03-13 08:19:32.180803
16	Memory Card	0	-1	2013-03-13 08:19:32.281087	2013-03-13 08:19:32.281087
19	Bags	0	-1	2013-03-13 08:19:32.316476	2013-03-13 08:19:32.316476
25	Handbags	0	-1	2013-03-13 08:19:32.401015	2013-03-13 08:19:32.401015
31	Totes	0	-1	2013-03-13 08:19:32.472598	2013-03-13 08:19:32.472598
35	Slingbags	0	-1	2013-03-13 08:19:32.548502	2013-03-13 08:19:32.548502
41	Laptop Backpack	0	-1	2013-03-13 08:19:32.620492	2013-03-13 08:19:32.620492
17	Luggage & Travel	1	-1	2013-03-13 08:19:32.308384	2013-03-13 09:43:15.397845
4	Software	21	-1	2013-03-13 08:19:32.13265	2013-04-01 06:02:51.909396
28	Antivirus	6	-1	2013-03-13 08:19:32.436593	2013-04-01 06:05:52.126203
33	Internet Security	4	-1	2013-03-13 08:19:32.50457	2013-04-01 06:10:43.160265
21	Operating Systems	1	-1	2013-03-13 08:19:32.348765	2013-03-13 10:17:12.585192
26	Office Tools	4	-1	2013-03-13 08:19:32.428511	2013-04-01 06:10:43.167666
50	Educational Media	1	-1	2013-04-02 07:59:49.753946	2013-04-02 08:45:07.66425
10	Books	2	-1	2013-03-13 08:19:32.185166	2013-04-04 05:27:20.885497
15	Education	3	-1	2013-03-13 08:19:32.277161	2013-04-06 15:09:04.891085
5	eBooks	7	-1	2013-03-13 08:19:32.158394	2013-03-17 09:46:02.35794
37	Fiction & Non-Fiction	2	-1	2013-03-13 08:19:32.556544	2013-03-17 09:51:32.917481
32	Game	7	-1	2013-03-13 08:19:32.501005	2013-04-24 06:22:31.6963
7	PlayStation 	4	-1	2013-03-13 08:19:32.172565	2013-03-14 11:20:15.040679
12	sports	2	-1	2013-03-13 08:19:32.241306	2013-03-14 16:29:46.376041
29	Cricket	2	-1	2013-03-13 08:19:32.464412	2013-04-24 06:22:42.828123
44	Football	5	-1	2013-03-17 09:34:09.60885	2013-03-19 16:30:46.517182
14	Basketball	1	-1	2013-03-13 08:19:32.272438	2013-04-24 06:24:27.221898
2	Baby products	7	-1	2013-03-13 08:19:32.097824	2013-04-28 07:20:07.604843
46	Bouncers	1	-1	2013-03-20 06:13:52.840455	2013-03-20 06:15:33.106207
24	Toys	2	-1	2013-03-13 08:19:32.397015	2013-03-16 20:05:57.013819
13	Kitchen Appliance  	2	-1	2013-03-13 08:19:32.24506	2013-03-20 06:15:33.115419
30	Mixer/Juicer/Grinders	1	-1	2013-03-13 08:19:32.468658	2013-04-29 06:48:08.748611
23	Induction Cooktops	0	-1	2013-03-13 08:19:32.392441	2013-03-16 20:31:36.380079
36	Sandwich & Roti Maker	1	-1	2013-03-13 08:19:32.55255	2013-04-29 06:49:38.406595
38	Hand Blenders	3	-1	2013-03-13 08:19:32.584484	2013-03-21 08:49:37.041934
39	Food Processors	5	-1	2013-03-13 08:19:32.588609	2013-04-29 06:49:38.471924
6	Electric Kettle	0	-1	2013-03-13 08:19:32.168515	2013-03-16 23:07:22.070481
3	Pop-up Toasters	3	-1	2013-03-13 08:19:32.128348	2013-04-29 06:49:38.477907
47	Home Improvement	2	-1	2013-03-21 08:48:43.506516	2013-03-21 09:31:51.240502
42	Water Purifiers	3	-1	2013-03-14 10:15:07.282734	2013-03-22 15:41:33.046365
48	Emergency Lights	0	-1	2013-03-24 06:14:56.731448	2013-03-24 06:14:56.731448
45	Irons	2	-1	2013-03-18 10:12:24.798031	2013-03-26 13:54:32.974029
1	Vacuum Cleaners	3	-1	2013-03-13 08:19:32.057811	2013-04-29 06:49:38.543394
22	Landline Phones	1	-1	2013-03-13 08:19:32.353242	2013-04-30 11:32:48.209305
49	Voltage Stabilizers	1	-1	2013-03-31 06:51:06.57274	2013-03-31 07:38:04.666747
34	Grocery	1	-1	2013-03-13 08:19:32.508603	2013-03-31 10:33:14.579183
27	Jewellery	8	-1	2013-03-13 08:19:32.432501	2013-03-31 10:41:30.737262
43	Wireless	2	-1	2013-03-16 20:09:06.242706	2013-05-29 06:53:23.035196
40	Office Products	2	-1	2013-03-13 08:19:32.592587	2013-05-31 06:37:56.962972
8	Apparels	6	-1	2013-03-13 08:19:32.176655	2013-05-31 06:37:56.970692
11	Lens	0	9	2013-03-13 08:19:32.236425	2013-03-13 08:19:32.236425
18	Camera Bag	233	-1	2013-03-13 08:19:32.313243	2013-03-13 08:19:32.313243
20	Backpacks	0	9	2013-03-13 08:19:32.344387	2013-03-13 08:19:32.344387
\.


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ld_user
--

SELECT pg_catalog.setval('categories_id_seq', 50, true);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ld_user; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: index_categories_on_name; Type: INDEX; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE INDEX index_categories_on_name ON categories USING btree (name);


--
-- PostgreSQL database dump complete
--

