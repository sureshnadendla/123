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
-- Name: merchants; Type: TABLE; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE TABLE merchants (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    affiliate_code character varying(255),
    logo_url character varying(500),
    affiliate_reference character varying(1000),
    priority bigint DEFAULT 1,
    mid integer,
    api_support boolean DEFAULT false,
    commision_merchant_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.merchants OWNER TO ld_user;

--
-- Name: merchants_id_seq; Type: SEQUENCE; Schema: public; Owner: ld_user
--

CREATE SEQUENCE merchants_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.merchants_id_seq OWNER TO ld_user;

--
-- Name: merchants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ld_user
--

ALTER SEQUENCE merchants_id_seq OWNED BY merchants.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ld_user
--

ALTER TABLE ONLY merchants ALTER COLUMN id SET DEFAULT nextval('merchants_id_seq'::regclass);


--
-- Data for Name: merchants; Type: TABLE DATA; Schema: public; Owner: ld_user
--

COPY merchants (id, name, code, affiliate_code, logo_url, affiliate_reference, priority, mid, api_support, commision_merchant_id, created_at, updated_at) FROM stdin;
4	advanceautoparts	advanceautoparts		advanceautoparts.jpg	http://www.advanceautoparts.com	1	2800540	t	2	2013-03-13 08:19:31.468577	2013-03-13 08:19:31.468577
5	build.com	build		build.jpg	http://www.build.com	1	2648659	t	2	2013-03-13 08:19:31.472964	2013-03-13 08:19:31.472964
18	railscasts	railscasts	\N	\N	http://railscasts.com	1	\N	f	\N	2013-04-23 14:02:54.721108	2013-04-23 14:02:54.721108
3	Tigerdirect	tigerdirect		tigerdirect.jpg	http://www.tigerdirect.com	1	14028	t	1	2013-03-13 08:19:31.429209	2013-03-13 10:00:48.525118
19	flipkart	flipkart	\N	\N	http://www.flipkart.com	1	\N	f	\N	2013-04-23 14:04:50.783815	2013-04-23 14:04:50.783815
16	petsupplies	petsupplies	\N	\N	http://www.petsupplies.com	1	\N	f	\N	2013-03-31 09:47:31.976145	2013-03-31 09:47:31.976145
6	faucetdirect.com	faucetdirect		faucetdirect.jpg	http://www.faucetdirect.com	1	2648659	t	2	2013-03-13 08:19:31.47683	2013-04-01 08:47:08.498002
7	handlesets.com	handlesets		handlesets.jpg	http://www.handlesets.com	1	2648659	t	2	2013-03-13 08:19:31.52836	2013-04-01 08:47:08.509382
8	lightingdirect.com	lightingdirect		lightingdirect.jpg	http://www.lightingdirect.com	1	2648659	t	2	2013-03-13 08:19:31.5328	2013-04-01 08:47:08.516992
9	pullsdirect.com	pullsdirect		pullsdirect.jpg	http://www.pullsdirect.com	1	2648659	t	2	2013-03-13 08:19:31.536772	2013-04-01 08:47:08.524663
11	ventingdirect.com	ventingdirect		ventingdirect.jpg	http://www.ventingdirect.com	1	2648659	t	2	2013-03-13 08:19:31.580776	2013-04-01 08:47:08.532698
12	ventingpipe.com	ventingpipe		ventingpipe.jpg	http://www.ventingpipe.com	1	2648659	t	2	2013-03-13 08:19:31.584865	2013-04-01 08:47:08.536851
13	floormall.com	floormall		floormall.jpg	http://www.floormall.com	1	2648659	t	2	2013-03-13 08:19:31.624268	2013-04-01 08:47:08.544071
14	capitallighting	1800lighting		1800lighting.jpg	http://www.1800lighting.com	1	2843671	t	2	2013-03-13 08:19:31.628802	2013-04-01 08:47:08.548052
0	unknown	unknown		unknown_merchant.png		1	\N	f	\N	2013-03-13 08:19:31.672209	2013-04-01 08:47:08.552022
2	rakuten	rakuten		rakuten.jpg	http://www.rakuten.com	1	36342	t	1	2013-03-13 08:19:31.422847	2013-04-01 08:47:08.558245
15	garden.com	garden		garden.jpg	http://www.garden.com	1	2343512	t	2	2013-03-13 08:19:31.632804	2013-04-01 08:47:08.564245
10	toolsdirect.com	toolsdirect		toolsdirect.jpg	http://www.toolsdirect.com	1	2648659	t	2	2013-03-13 08:19:31.576217	2013-04-01 08:47:08.568697
17	globalsources	globalsources	\N	\N	http://www.globalsources.com	1	\N	f	\N	2013-04-02 07:56:13.331052	2013-04-02 07:56:13.331052
1	Amazon	amazon	tipsanity-20	amazon_logo.jpg	http://www.amazon.com/?&tag=tipsanity-20&camp=216797&creative=394565&linkCode=ur1&adid=03QM33JJ3TN561ZRMCER&&ref-refURL=http%3A%2F%2Fhttp://www.tipsanity.com%2Famazon.htm	1	\N	t	\N	2013-03-13 08:19:31.286714	2013-05-02 13:23:05.684158
20	compare.ebay	compare.ebay	\N	\N	http://compare.ebay.com	1	\N	f	\N	2013-05-03 06:17:59.58952	2013-05-03 06:17:59.58952
\.


--
-- Name: merchants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ld_user
--

SELECT pg_catalog.setval('merchants_id_seq', 20, true);


--
-- Name: merchants_pkey; Type: CONSTRAINT; Schema: public; Owner: ld_user; Tablespace: 
--

ALTER TABLE ONLY merchants
    ADD CONSTRAINT merchants_pkey PRIMARY KEY (id);


--
-- Name: index_merchants_on_code; Type: INDEX; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE INDEX index_merchants_on_code ON merchants USING btree (code);


--
-- Name: index_merchants_on_name; Type: INDEX; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE INDEX index_merchants_on_name ON merchants USING btree (name);


--
-- PostgreSQL database dump complete
--

