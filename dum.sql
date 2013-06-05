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
-- Name: comments; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE comments (
    id integer NOT NULL,
    body character varying(255),
    commentable_id integer,
    commentable_type character varying(255),
    commented_ip character varying(255),
    commented_location character varying(255),
    user_id integer,
    deal_id integer,
    coupon_id integer,
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
-- Name: deals_main_categories; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE deals_main_categories (
    deal_id integer,
    main_category_id integer
);


ALTER TABLE public.deals_main_categories OWNER TO postgres;

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
-- Name: main_categories; Type: TABLE; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE TABLE main_categories (
    id integer NOT NULL,
    name character varying(255),
    num_of_deals integer DEFAULT 0,
    parent_id integer DEFAULT (-1),
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
    owner integer,
    num_of_deals integer,
    user_id integer,
    deal_id integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    tag_count integer
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

ALTER TABLE ONLY main_categories ALTER COLUMN id SET DEFAULT nextval('main_categories_id_seq'::regclass);


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
2	1
\.


--
-- Data for Name: comments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comments (id, body, commentable_id, commentable_type, commented_ip, commented_location, user_id, deal_id, coupon_id, created_at, updated_at) FROM stdin;
\.


--
-- Name: comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('comments_id_seq', 1, false);


--
-- Data for Name: coupons; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY coupons (id, code, expiry_date, description, coupon_header, user_id, deal_id, created_at, updated_at) FROM stdin;
1	asdas	2013-06-07 00:00:00	asdas	asdas	1	3	2013-06-05 16:09:04.959734	2013-06-05 16:09:04.959734
\.


--
-- Name: coupons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('coupons_id_seq', 1, true);


--
-- Data for Name: created_deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY created_deals (deal_id, user_id) FROM stdin;
1	1
2	1
3	1
\.


--
-- Data for Name: deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY deals (id, merchant_id, saving_type_id, sku, rating, simple_rating_percentage, reference_url, image_url, original_url, item_description_short, item_description_long, item_title, location, expiry_date, active, verified, success, published, commision, non_url, original_price, best_price, profit, profit_percentage, shipping_statement, saving_statement, deal_view_count, expiry_date_found, created_at, updated_at) FROM stdin;
1	1	1	B00B4CSLSQ	\N	\N	http://www.amazon.com/Samsung-Galaxy-Bluetooth-Keyboard-Portfolio/dp/B00B4CSLSQ?SubscriptionId=AKIAIJUCUBHUHOAHW3TA&tag=tipsanity-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B00B4CSLSQ	http://ecx.images-amazon.com/images/I/51yraw1EKdL._SL160_.jpg	http://www.amazon.com/gp/product/B00B4CSLSQ/ref=s9_psimh_gw_p147_d0_i5?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-2&pf_rd_r=0EPWFMMFZQ0FVQQ61CCP&pf_rd_t=101&pf_rd_p=1389517282&pf_rd_i=507846	IVSO® Samsung Galaxy Tab 2 7.0 Bluetooth Keyboard Portfolio Case - DETACHABLE Bluetooth Keyboard Stand Case / Cover for Samsung Galaxy Tab 2 7.0 GT-P3113\r\n\r\nThis Bluetooth keyboard case is a perfect combination for your Samsung Gal	ax y Tab 2 7.0 GT-P3113/P3110 device. It provides full protection in a stylish leather case with DETACHABLE wireless Bluetooth keyboard built inside. It is easy to use and easy to setup so you get the best of both worlds. Great for the traveling business person, student, and everyone else in between.	IVSO® Samsung Galaxy Tab 2 7.0 Bluetooth Keyboard Portfolio Case - DETACHABLE Bluetooth Keyboard Stand Case / Cover for Samsung Galaxy Tab 2 7.0 Tablet (Red)	\N	2013-07-05 23:59:59.999999	\N	f	t	t	t	\N	25	29.9499999999999993	0	0	\N	\N	\N	t	2013-06-05 16:05:47.069666	2013-06-05 16:08:46.114404
3	1	1	B00AEV9MAE	\N	\N	http://www.amazon.com/Tech-Armor-Definition-Protector-Replacement/dp/B00AEV9MAE?SubscriptionId=AKIAIJUCUBHUHOAHW3TA&tag=tipsanity-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B00AEV9MAE	http://ecx.images-amazon.com/images/I/51woR%2B5MvpL._SL160_.jpg	http://www.amazon.com/Tech-Armor-Definition-Protector-Replacement/dp/B00AEV9MAE/ref=pd_sim_pc_5	Protect Your Samsung Galaxy Tab 2 7 Inch Tablet, The TECH ARMOR Way!Tech Armor HD Clear Screen Protectors provide the highest transparency while still delivering scratch resistant protection for your Samsung Galaxy Tablet AMOLED Di	splay!All Tech Armor Screen protectors are made of the highest quality Japanese PET Film available with 100% Bubble-Free Silicon Adhesives.Every Tech Armor Screen Protector is backed by the TECH ARMOR LIFETIME REPLACEMENT WARRANTY!COMPATIBILITY: Samsung Galaxy Tab 2 7 Inch Tablet The TECH ARMOR Screen Protector Kit Includes:- Three (3) HD Clear Screen Protectors - Installation Instructions - Smoothing Card- Lint-Free Polishing Cloth - Bubble Removal Tape- Retail Packaging- TECH ARMOR LIFETIME REPLACEMENT WARRANTYINSTALLATION: Please visit our amazon Webstore and watch the installation video to get the most of your screen protection investment and to get a Bubble Free Install!TECH ARMOR LIFETIME REPLACEMENT WARRANTYWe are committed to your satisfaction and will send you replacements free of charge for:- Installation Problems such as bubbles or other user error- Scratched or damaged screen protectors- Wear and TearOur commitment to you is that we will keep your device protected, the TECH ARMOR WAY, or your money back.	Tech Armor Samsung Galaxy Tab 2 7" Premium High Definition (HD) Clear Screen Protector with Lifetime Replacement Warranty [3-Pack] - Retail Packaging	\N	2013-06-06 23:59:59.999999	\N	f	t	t	t	\N	24.9899999999999984	4.95000000000000018	20.0399999999999991	80	\N	\N	\N	t	2013-06-05 16:08:11.092542	2013-06-05 16:08:17.968261
2	1	1	B007SA0Q1S	\N	\N	http://www.amazon.com/MoKo-Samsung-Galaxy-Tablet-Black/dp/B007SA0Q1S?SubscriptionId=AKIAIJUCUBHUHOAHW3TA&tag=tipsanity-20&linkCode=xm2&camp=2025&creative=165953&creativeASIN=B007SA0Q1S	http://ecx.images-amazon.com/images/I/51aV1mFVnNL._SL160_.jpg	http://www.amazon.com/gp/product/B007SA0Q1S/ref=s9_psimh_gw_p147_d0_i4?pf_rd_m=ATVPDKIKX0DER&pf_rd_s=center-2&pf_rd_r=0EPWFMMFZQ0FVQQ61CCP&pf_rd_t=101&pf_rd_p=1389517282&pf_rd_i=507846	Custom designed for your precious Samsung Galaxy Note 10.1 Android Tablet, this MoKo case features a combination of functionality and style. Well built to protect your Samsung Galaxy Note 10.1 Android Tablet for the years to come. 	    Premium quality PU leather boosts a classy look.   No-scratch microfiber interior adds comfort and an additional layer of protection.   Access to all controls and features. Device can be charged with case closed.   Folding cover transforms the case to be a stand with two angles: perfect whenever you type an email or watch a movie.   Interior hand strap for comfortable one-handed use.   Clear opening for convenient access to S Pen.    This product is sold exclusively by BSCstore. Only buy from BSCstore to get genuine MoKo(TM) products with Lifetime warranty and superb customer service.    Other style and color options also available:   1. Slim-fit Case with 4 Corners Protected, BLACK: B0082YJEAI.   2.Slim-fit Case with Opening for S Pen, BLACK: B0088I9AX4 	MoKo Slim Case for Samsung Galaxy Note 10.1 Tablet (Black)	\N	2013-07-05 23:59:59.999999	\N	f	t	t	t	\N	49.990000000000002	19	30.990000000000002	61	\N	\N	\N	t	2013-06-05 16:07:00.087283	2013-06-05 16:08:37.699954
\.


--
-- Name: deals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('deals_id_seq', 3, true);


--
-- Data for Name: deals_main_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY deals_main_categories (deal_id, main_category_id) FROM stdin;
1	5
2	6
3	48
\.


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
-- Data for Name: main_categories; Type: TABLE DATA; Schema: public; Owner: ld_user
--

COPY main_categories (id, name, num_of_deals, parent_id, created_at, updated_at) FROM stdin;
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
3	Pop-up Toasters	3	-1	2013-03-13 08:19:32.128348	2013-04-29 06:49:38.477907
47	Home Improvement	2	-1	2013-03-21 08:48:43.506516	2013-03-21 09:31:51.240502
42	Water Purifiers	3	-1	2013-03-14 10:15:07.282734	2013-03-22 15:41:33.046365
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
5	eBooks	9	-1	2013-03-13 08:19:32.158394	2013-06-05 16:05:54.82212
6	Electric Kettle	2	-1	2013-03-13 08:19:32.168515	2013-06-05 16:07:24.508892
48	Emergency Lights	2	-1	2013-03-24 06:14:56.731448	2013-06-05 16:08:17.929549
\.


--
-- Name: main_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ld_user
--

SELECT pg_catalog.setval('main_categories_id_seq', 50, true);


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
20	compare.ebay	compare.ebay	\N	\N	http://compare.ebay.com	1	\N	f	0	\N	2013-05-03 06:17:59.58952	2013-05-03 06:17:59.58952
1	Amazon	amazon	tipsanity-20	amazon_logo.jpg	http://www.amazon.com/?&tag=tipsanity-20&camp=216797&creative=394565&linkCode=ur1&adid=03QM33JJ3TN561ZRMCER&&ref-refURL=http%3A%2F%2Fhttp://www.tipsanity.com%2Famazon.htm	1	\N	t	53	\N	2013-03-13 08:19:31.286714	2013-06-05 16:08:17.953505
\.


--
-- Name: merchants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ld_user
--

SELECT pg_catalog.setval('merchants_id_seq', 20, true);


--
-- Data for Name: saved_deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY saved_deals (deal_id, user_id) FROM stdin;
1	1
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
20130503101401
20130503101511
20130503102045
20130510111420
20130510111659
20130510112127
20130510112428
20130510112835
20130510125217
20130511070257
20130511070716
20130515064309
20130515083043
20130521083140
20130522055651
20130529113234
20130529113506
20130529113551
20130530012625
20130601064748
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tags (id, body, owner, num_of_deals, user_id, deal_id, created_at, updated_at, tag_count) FROM stdin;
1	nice	1	\N	1	3	2013-06-05 16:09:13.620566	2013-06-05 16:09:13.620566	\N
\.


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tags_id_seq', 1, true);


--
-- Data for Name: userprofiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY userprofiles (id, user_id, username, street_address, street_address2, city, state, phone_number, zip, deal_poster, created_at, updated_at, profile_image_file_name, profile_image_content_type, profile_image_file_size, profile_image_updated_at, deactivate, display_name) FROM stdin;
1	1						\N		f	2013-06-05 16:04:40.028636	2013-06-05 16:04:40.028636	sc1.png	image/png	1334849	2013-06-05 16:04:32.648345	f	subbiah
\.


--
-- Name: userprofiles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('userprofiles_id_seq', 1, true);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, confirmation_token, confirmed_at, confirmation_sent_at, created_at, updated_at) FROM stdin;
1	subbiah@motifworks.com	$2a$10$KxCy.IMYqVEywsuwWfXbT.fzcrmlIDpR4UrMbNf5vbBJ5GapT3E4m	\N	\N	\N	1	2013-06-05 16:05:34.664456	2013-06-05 16:05:34.664456	127.0.0.1	127.0.0.1	\N	2013-06-05 16:05:34.629624	2013-06-05 16:04:34.856147	2013-06-05 16:04:34.856677	2013-06-05 16:05:34.666117
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
-- Name: main_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ld_user; Tablespace: 
--

ALTER TABLE ONLY main_categories
    ADD CONSTRAINT main_categories_pkey PRIMARY KEY (id);


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
-- Name: index_main_categories_on_name; Type: INDEX; Schema: public; Owner: ld_user; Tablespace: 
--

CREATE INDEX index_main_categories_on_name ON main_categories USING btree (name);


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

