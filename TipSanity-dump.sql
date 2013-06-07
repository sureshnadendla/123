--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
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
-- Name: browsed_deals; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE browsed_deals (
    deal_id integer,
    user_id integer
);


ALTER TABLE public.browsed_deals OWNER TO postgres;

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
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE comments (
    id integer NOT NULL,
    body character varying(255),
    commented_ip character varying(255),
    user_id integer,
    deal_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.comments OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_id_seq OWNER TO postgres;

--
-- Name: comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE comments_id_seq OWNED BY comments.id;


--
-- Name: coupons; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE coupons (
    id integer NOT NULL,
    code character varying(255),
    expiry_date timestamp without time zone,
    description text,
    coupon_header character varying(255),
    user_id integer,
    deal_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.coupons OWNER TO postgres;

--
-- Name: coupons_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE coupons_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coupons_id_seq OWNER TO postgres;

--
-- Name: coupons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE coupons_id_seq OWNED BY coupons.id;


--
-- Name: created_deals; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE created_deals (
    deal_id integer,
    user_id integer
);


ALTER TABLE public.created_deals OWNER TO postgres;

--
-- Name: deals; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE deals (
    id integer NOT NULL,
    merchant_id integer,
    saving_type_id integer,
    sku character varying(255),
    rating double precision,
    simple_rating_percentage double precision,
    reference_url character varying(255),
    image_url character varying(255),
    original_url character varying(255),
    item_description_short text,
    item_description_long text,
    item_title character varying(255),
    location character varying(255),
    expiry_date timestamp without time zone,
    active boolean,
    verified boolean,
    success boolean,
    published boolean,
    commision boolean,
    non_url boolean,
    original_price double precision,
    best_price double precision,
    profit double precision,
    profit_percentage double precision,
    shipping_statement character varying(255),
    saving_statement character varying(255),
    deal_view_count integer,
    expiry_date_found boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.deals OWNER TO postgres;

--
-- Name: deals_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE deals_categories (
    deal_id integer,
    category_id integer
);


ALTER TABLE public.deals_categories OWNER TO postgres;

--
-- Name: deals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE deals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deals_id_seq OWNER TO postgres;

--
-- Name: deals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE deals_id_seq OWNED BY deals.id;


--
-- Name: instant_rebates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE instant_rebates (
    id integer NOT NULL,
    description text,
    expiry_date timestamp without time zone,
    user_id integer,
    deal_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.instant_rebates OWNER TO postgres;

--
-- Name: instant_rebates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE instant_rebates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.instant_rebates_id_seq OWNER TO postgres;

--
-- Name: instant_rebates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE instant_rebates_id_seq OWNED BY instant_rebates.id;


--
-- Name: mail_in_rebates; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE mail_in_rebates (
    id integer NOT NULL,
    description text,
    expiry_date timestamp without time zone,
    url character varying(255),
    user_id integer,
    deal_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.mail_in_rebates OWNER TO postgres;

--
-- Name: mail_in_rebates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE mail_in_rebates_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mail_in_rebates_id_seq OWNER TO postgres;

--
-- Name: mail_in_rebates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE mail_in_rebates_id_seq OWNED BY mail_in_rebates.id;


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
    num_of_deals integer DEFAULT 0,
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
-- Name: saved_deals; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE saved_deals (
    deal_id integer,
    user_id integer
);


ALTER TABLE public.saved_deals OWNER TO postgres;

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


ALTER TABLE public.savingtypes OWNER TO ld_user;

--
-- Name: savingtypes_id_seq; Type: SEQUENCE; Schema: public; Owner: ld_user
--

CREATE SEQUENCE savingtypes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.savingtypes_id_seq OWNER TO ld_user;

--
-- Name: savingtypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ld_user
--

ALTER SEQUENCE savingtypes_id_seq OWNED BY savingtypes.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE schema_migrations (
    version character varying(255) NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE tags (
    id integer NOT NULL,
    body character varying(255),
    user_id integer,
    deal_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.tags OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO postgres;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tags_id_seq OWNED BY tags.id;


--
-- Name: userprofiles; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE userprofiles (
    id integer NOT NULL,
    user_id integer,
    username character varying(255),
    street_address character varying(255),
    street_address2 character varying(255),
    city character varying(255),
    state character varying(255),
    phone_number integer,
    zip character varying(255),
    deal_poster boolean,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    profile_image_file_name character varying(255),
    profile_image_content_type character varying(255),
    profile_image_file_size integer,
    profile_image_updated_at timestamp without time zone,
    deactivate boolean,
    display_name character varying(255)
);


ALTER TABLE public.userprofiles OWNER TO postgres;

--
-- Name: userprofiles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE userprofiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.userprofiles_id_seq OWNER TO postgres;

--
-- Name: userprofiles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE userprofiles_id_seq OWNED BY userprofiles.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE users (
    id integer NOT NULL,
    email character varying(255) DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying(255) DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying(255),
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    sign_in_count integer DEFAULT 0,
    current_sign_in_at timestamp without time zone,
    last_sign_in_at timestamp without time zone,
    current_sign_in_ip character varying(255),
    last_sign_in_ip character varying(255),
    confirmation_token character varying(255),
    confirmed_at timestamp without time zone,
    confirmation_sent_at timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- Name: versions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE versions (
    id integer NOT NULL,
    item_type character varying(255) NOT NULL,
    item_id integer NOT NULL,
    event character varying(255) NOT NULL,
    whodunnit character varying(255),
    object text,
    created_at timestamp without time zone
);


ALTER TABLE public.versions OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE versions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.versions_id_seq OWNER TO postgres;

--
-- Name: versions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE versions_id_seq OWNED BY versions.id;


--
-- Name: votes; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE votes (
    id integer NOT NULL,
    vote boolean DEFAULT false NOT NULL,
    voteable_id integer NOT NULL,
    voteable_type character varying(255) NOT NULL,
    voter_id integer,
    voter_type character varying(255),
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE public.votes OWNER TO postgres;

--
-- Name: votes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE votes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.votes_id_seq OWNER TO postgres;

--
-- Name: votes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE votes_id_seq OWNED BY votes.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ld_user
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comments ALTER COLUMN id SET DEFAULT nextval('comments_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY coupons ALTER COLUMN id SET DEFAULT nextval('coupons_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY deals ALTER COLUMN id SET DEFAULT nextval('deals_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY instant_rebates ALTER COLUMN id SET DEFAULT nextval('instant_rebates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY mail_in_rebates ALTER COLUMN id SET DEFAULT nextval('mail_in_rebates_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ld_user
--

ALTER TABLE ONLY merchants ALTER COLUMN id SET DEFAULT nextval('merchants_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: ld_user
--

ALTER TABLE ONLY savingtypes ALTER COLUMN id SET DEFAULT nextval('savingtypes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tags ALTER COLUMN id SET DEFAULT nextval('tags_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY userprofiles ALTER COLUMN id SET DEFAULT nextval('userprofiles_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY versions ALTER COLUMN id SET DEFAULT nextval('versions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY votes ALTER COLUMN id SET DEFAULT nextval('votes_id_seq'::regclass);


--
-- Data for Name: browsed_deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY browsed_deals (deal_id, user_id) FROM stdin;
\.


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
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comments (id, body, commented_ip, user_id, deal_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY coupons (id, code, expiry_date, description, coupon_header, user_id, deal_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: coupons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('coupons_id_seq', 1, false);


--
-- Data for Name: created_deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY created_deals (deal_id, user_id) FROM stdin;
1	1
\.


--
-- Data for Name: deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY deals (id, merchant_id, saving_type_id, sku, rating, simple_rating_percentage, reference_url, image_url, original_url, item_description_short, item_description_long, item_title, location, expiry_date, active, verified, success, published, commision, non_url, original_price, best_price, profit, profit_percentage, shipping_statement, saving_statement, deal_view_count, expiry_date_found, created_at, updated_at) FROM stdin;
1	1	1	B006DQWIKK	\N	\N	http://www.amazon.com/Connection-Reader-SAMSUNG-GALAXY-P7500/dp/B006DQWIKK?SubscriptionId=AKIAIJUCUBHUHOAHW3TA&tag=tipsanity-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B006DQWIKK	http://ecx.images-amazon.com/images/I/41XR6ZLyoWL._SL160_.jpg	http://www.amazon.com/Connection-Reader-SAMSUNG-GALAXY-P7500/dp/B006DQWIKK/ref=pd_sim_pc_5	5 in 1 USB Card Reader for Samsung Galaxy Tab 7.7, 8.9, 10.1 P7500 P7510 P7310 P7300\n\nWith Samsung Galaxy Tab Connection Kit it is possible to transfer photos from a photo camera via USB cable or directly from an SD card to your Sa	msung Galaxy Tab. In addition, it enables you to use an USB keyboard, USB mouse or USB Flash Disk with your Galaxy Tab.\n\nTo be able to switch between USB port and SD card, the connection kit has a built-in switch on one side.\n\nFEATURES:\n\n1. 100% brand new and high quality.\n2. 5+1 in 1 camera connection kit for Samsung Galaxy Tab.\n3. Support MS. SD. SDHC. MMC. MMC2. RS MMC. UITRA2 SD. EXTREME SD .. EXTREME 3 SD, TF (Micro-SD).\n4. Support usb hard disk (The hard disk must have external power).\n5. Allowing you transfer photos and videos from a digital camera using a USB cable or directly from an SD(HC)/MS/MMC/M2/TF Card.\n6. With SD(HC)/MS/MMC/M2/TF card reader.\n7. Supporting external input when connect normal USB keyboard.\n8. Support standard photo formats, including JPEG, RAW and MP4, MOV video format.\n9. Switch the button on the side the connection kit when using a USB or SD model\n10. Compatible with USB Camera that support Picture Transfer Protocol (PTP) or mass storage class devices.\n\nAll Product Advantages at One Glance:\n\n- USB port and 2 SD card readers in one\n- Compact, lightweight design\n\nCompatibility:\n\n- Samsung Galaxy Tab 7.7, 8.9, 10.1 (no iPad)\n- USB Flash Disk FAT32 (no NTFS)\n- Supports: MS, SD, SDHC, MMC, MMC2, RS MMC, UITRA2 SD, EXTREME SD , EXTREME 3 SD, TF (Micro SD)\n\nPackage Content:\n\n- Galaxy Tab Connection Kit/SD/SDHC Card Reader (black)	OEM USB OTG Connection Kit & Card Reader for SAMSUNG GALAXY TAB 10.1 P7500 P7510 BLACK	\N	2013-06-07 23:59:59.999999	\N	f	t	t	t	\N	49.990000000000002	0.0100000000000000002	49.980000000000004	99	\N	\N	\N	t	2013-06-06 14:30:38.291177	2013-06-06 14:30:53.218044
\.


--
-- Data for Name: deals_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY deals_categories (deal_id, category_id) FROM stdin;
1	37
\.


--
-- Name: deals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('deals_id_seq', 1, true);


--
-- Data for Name: instant_rebates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY instant_rebates (id, description, expiry_date, user_id, deal_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: instant_rebates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('instant_rebates_id_seq', 1, false);


--
-- Data for Name: mail_in_rebates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY mail_in_rebates (id, description, expiry_date, url, user_id, deal_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: mail_in_rebates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('mail_in_rebates_id_seq', 1, false);


--
-- Data for Name: merchants; Type: TABLE DATA; Schema: public; Owner: ld_user
--

COPY merchants (id, name, code, affiliate_code, logo_url, affiliate_reference, priority, mid, api_support, num_of_deals, commision_merchant_id, created_at, updated_at) FROM stdin;
4	advanceautoparts	advanceautoparts		advanceautoparts.jpg	http://www.advanceautoparts.com	1	2800540	t	0	2	2013-03-13 08:19:31.468577	2013-03-13 08:19:31.468577
5	build.com	build		build.jpg	http://www.build.com	1	2648659	t	0	2	2013-03-13 08:19:31.472964	2013-03-13 08:19:31.472964
18	railscasts	railscasts	\N	\N	http://railscasts.com	1	\N	f	0	\N	2013-04-23 14:02:54.721108	2013-04-23 14:02:54.721108
3	Tigerdirect	tigerdirect		tigerdirect.jpg	http://www.tigerdirect.com	1	14028	t	1	1	2013-03-13 08:19:31.429209	2013-03-13 10:00:48.525118
19	flipkart	flipkart	\N	\N	http://www.flipkart.com	1	\N	f	0	\N	2013-04-23 14:04:50.783815	2013-04-23 14:04:50.783815
16	petsupplies	petsupplies	\N	\N	http://www.petsupplies.com	1	\N	f	0	\N	2013-03-31 09:47:31.976145	2013-03-31 09:47:31.976145
6	faucetdirect.com	faucetdirect		faucetdirect.jpg	http://www.faucetdirect.com	1	2648659	t	2	2	2013-03-13 08:19:31.47683	2013-04-01 08:47:08.498002
7	handlesets.com	handlesets		handlesets.jpg	http://www.handlesets.com	1	2648659	t	1	2	2013-03-13 08:19:31.52836	2013-04-01 08:47:08.509382
8	lightingdirect.com	lightingdirect		lightingdirect.jpg	http://www.lightingdirect.com	1	2648659	t	1	2	2013-03-13 08:19:31.5328	2013-04-01 08:47:08.516992
9	pullsdirect.com	pullsdirect		pullsdirect.jpg	http://www.pullsdirect.com	1	2648659	t	1	2	2013-03-13 08:19:31.536772	2013-04-01 08:47:08.524663
11	ventingdirect.com	ventingdirect		ventingdirect.jpg	http://www.ventingdirect.com	1	2648659	t	1	2	2013-03-13 08:19:31.580776	2013-04-01 08:47:08.532698
12	ventingpipe.com	ventingpipe		ventingpipe.jpg	http://www.ventingpipe.com	1	2648659	t	1	2	2013-03-13 08:19:31.584865	2013-04-01 08:47:08.536851
13	floormall.com	floormall		floormall.jpg	http://www.floormall.com	1	2648659	t	1	2	2013-03-13 08:19:31.624268	2013-04-01 08:47:08.544071
14	capitallighting	1800lighting		1800lighting.jpg	http://www.1800lighting.com	1	2843671	t	2	2	2013-03-13 08:19:31.628802	2013-04-01 08:47:08.548052
0	unknown	unknown		unknown_merchant.png		1	\N	f	3	\N	2013-03-13 08:19:31.672209	2013-04-01 08:47:08.552022
2	rakuten	rakuten		rakuten.jpg	http://www.rakuten.com	1	36342	t	8	1	2013-03-13 08:19:31.422847	2013-04-01 08:47:08.558245
15	garden.com	garden		garden.jpg	http://www.garden.com	1	2343512	t	3	2	2013-03-13 08:19:31.632804	2013-04-01 08:47:08.564245
10	toolsdirect.com	toolsdirect		toolsdirect.jpg	http://www.toolsdirect.com	1	2648659	t	2	2	2013-03-13 08:19:31.576217	2013-04-01 08:47:08.568697
17	globalsources	globalsources	\N	\N	http://www.globalsources.com	1	\N	f	0	\N	2013-04-02 07:56:13.331052	2013-04-02 07:56:13.331052
1	Amazon	amazon	tipsanity-20	amazon_logo.jpg	http://www.amazon.com/?&tag=tipsanity-20&camp=216797&creative=394565&linkCode=ur1&adid=03QM33JJ3TN561ZRMCER&&ref-refURL=http%3A%2F%2Fhttp://www.tipsanity.com%2Famazon.htm	1	\N	t	50	\N	2013-03-13 08:19:31.286714	2013-05-02 13:23:05.684158
20	compare.ebay	compare.ebay	\N	\N	http://compare.ebay.com	1	\N	f	0	\N	2013-05-03 06:17:59.58952	2013-05-03 06:17:59.58952
\.


--
-- Name: merchants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ld_user
--

SELECT pg_catalog.setval('merchants_id_seq', 20, true);


--
-- Data for Name: saved_deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY saved_deals (deal_id, user_id) FROM stdin;
\.


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
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
20130503053220
20130503101225
20130503101511
20130503102045
20130510111420
20130510111659
20130510112127
20130510112428
20130510112835
20130511070257
20130511070716
20130515083043
20130521083140
20130522055651
20130529113234
20130529113506
20130529113551
20130601064748
20130606070833
20130606092510
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tags (id, body, user_id, deal_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tags_id_seq', 1, false);


--
-- Data for Name: userprofiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userprofiles (id, user_id, username, street_address, street_address2, city, state, phone_number, zip, deal_poster, created_at, updated_at, profile_image_file_name, profile_image_content_type, profile_image_file_size, profile_image_updated_at, deactivate, display_name) FROM stdin;
1	1						\N		f	2013-06-06 14:21:02.251079	2013-06-06 14:21:02.251079	sc1.png	image/png	1334849	2013-06-06 14:20:51.128756	f	subbiah
\.


--
-- Name: userprofiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('userprofiles_id_seq', 1, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, created_at, updated_at) FROM stdin;
1	subbiah@motifworks.com	$2a$10$.d6DwvebmhUVYkH2TljFZ.zaJ1OYF8JQXabvnsy0MKnT58Gny2fBO	\N	\N	\N	1	2013-06-06 14:23:43.203291	2013-06-06 14:23:43.203291	127.0.0.1	127.0.0.1	\N	2013-06-06 14:23:43.112558	2013-06-06 14:20:54.041057	2013-06-06 14:20:54.041568	2013-06-06 14:23:43.204759
\.


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 1, true);


--
-- Data for Name: versions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY versions (id, item_type, item_id, event, whodunnit, object, created_at) FROM stdin;
\.


--
-- Name: versions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('versions_id_seq', 1, false);


--
-- Data for Name: votes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY votes (id, vote, voteable_id, voteable_type, voter_id, voter_type, created_at, updated_at) FROM stdin;
\.


--
-- Name: votes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('votes_id_seq', 1, false);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ld_user; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: comments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY comments
    ADD CONSTRAINT comments_pkey PRIMARY KEY (id);


--
-- Name: coupons_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY coupons
    ADD CONSTRAINT coupons_pkey PRIMARY KEY (id);


--
-- Name: deals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY deals
    ADD CONSTRAINT deals_pkey PRIMARY KEY (id);


--
-- Name: instant_rebates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY instant_rebates
    ADD CONSTRAINT instant_rebates_pkey PRIMARY KEY (id);


--
-- Name: mail_in_rebates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY mail_in_rebates
    ADD CONSTRAINT mail_in_rebates_pkey PRIMARY KEY (id);


--
-- Name: merchants_pkey; Type: CONSTRAINT; Schema: public; Owner: ld_user; Tablespace: 
--

ALTER TABLE ONLY merchants
    ADD CONSTRAINT merchants_pkey PRIMARY KEY (id);


--
-- Name: savingtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: ld_user; Tablespace: 
--

ALTER TABLE ONLY savingtypes
    ADD CONSTRAINT savingtypes_pkey PRIMARY KEY (id);


--
-- Name: tags_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: userprofiles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY userprofiles
    ADD CONSTRAINT userprofiles_pkey PRIMARY KEY (id);


--
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: versions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY versions
    ADD CONSTRAINT versions_pkey PRIMARY KEY (id);


--
-- Name: votes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY votes
    ADD CONSTRAINT votes_pkey PRIMARY KEY (id);


--
-- Name: fk_one_vote_per_user_per_entity; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX fk_one_vote_per_user_per_entity ON votes USING btree (voter_id, voter_type, voteable_id, voteable_type);


--
-- Name: index_categories_on_name; Type: INDEX; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE INDEX index_categories_on_name ON categories USING btree (name);


--
-- Name: index_merchants_on_code; Type: INDEX; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE INDEX index_merchants_on_code ON merchants USING btree (code);


--
-- Name: index_merchants_on_name; Type: INDEX; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE INDEX index_merchants_on_name ON merchants USING btree (name);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_email ON users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON users USING btree (reset_password_token);


--
-- Name: index_versions_on_item_type_and_item_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_versions_on_item_type_and_item_id ON versions USING btree (item_type, item_id);


--
-- Name: index_votes_on_voteable_id_and_voteable_type; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_votes_on_voteable_id_and_voteable_type ON votes USING btree (voteable_id, voteable_type);


--
-- Name: index_votes_on_voter_id_and_voter_type; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX index_votes_on_voter_id_and_voter_type ON votes USING btree (voter_id, voter_type);


--
-- Name: unique_schema_migrations; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE UNIQUE INDEX unique_schema_migrations ON schema_migrations USING btree (version);


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

