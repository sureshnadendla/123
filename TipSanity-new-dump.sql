--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: browsed_deals; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY browsed_deals (deal_id, user_id) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: ld_user
--

COPY categories (id, name, parent_id, created_at, updated_at) FROM stdin;
9	Camera parts	-1	2013-03-13 08:19:32.180803	2013-03-13 08:19:32.180803
19	Bags	-1	2013-03-13 08:19:32.316476	2013-03-13 08:19:32.316476
4	Software	-1	2013-03-13 08:19:32.13265	2013-04-01 06:02:51.909396
10	Books	-1	2013-03-13 08:19:32.185166	2013-04-04 05:27:20.885497
32	Game	-1	2013-03-13 08:19:32.501005	2013-04-24 06:22:31.6963
12	sports	-1	2013-03-13 08:19:32.241306	2013-03-14 16:29:46.376041
2	Baby products	-1	2013-03-13 08:19:32.097824	2013-04-28 07:20:07.604843
13	Kitchen Appliance  	-1	2013-03-13 08:19:32.24506	2013-03-20 06:15:33.115419
47	Home Improvement	-1	2013-03-21 08:48:43.506516	2013-03-21 09:31:51.240502
11	Lens	9	2013-03-13 08:19:32.236425	2013-03-13 08:19:32.236425
20	Backpacks	9	2013-03-13 08:19:32.344387	2013-03-13 08:19:32.344387
16	Memory Card	9	2013-03-13 08:19:32.281087	2013-03-13 08:19:32.281087
25	Handbags	19	2013-03-13 08:19:32.401015	2013-03-13 08:19:32.401015
35	Slingbags	19	2013-03-13 08:19:32.548502	2013-03-13 08:19:32.548502
41	Laptop Backpack	19	2013-03-13 08:19:32.620492	2013-03-13 08:19:32.620492
17	Luggage & Travel	19	2013-03-13 08:19:32.308384	2013-03-13 09:43:15.397845
28	Antivirus	4	2013-03-13 08:19:32.436593	2013-04-01 06:05:52.126203
33	Internet Security	4	2013-03-13 08:19:32.50457	2013-04-01 06:10:43.160265
21	Operating Systems	4	2013-03-13 08:19:32.348765	2013-03-13 10:17:12.585192
26	Office Tools	4	2013-03-13 08:19:32.428511	2013-04-01 06:10:43.167666
15	Education	10	2013-03-13 08:19:32.277161	2013-04-06 15:09:04.891085
30	Mixer/Juicer/Grinders	13	2013-03-13 08:19:32.468658	2013-04-29 06:48:08.748611
23	Induction Cooktops	13	2013-03-13 08:19:32.392441	2013-03-16 20:31:36.380079
38	Hand Blenders	13	2013-03-13 08:19:32.584484	2013-03-21 08:49:37.041934
39	Food Processors	13	2013-03-13 08:19:32.588609	2013-04-29 06:49:38.471924
36	Sandwich & Roti Maker	13	2013-03-13 08:19:32.55255	2013-04-29 06:49:38.406595
6	Electric Kettle	13	2013-03-13 08:19:32.168515	2013-03-16 23:07:22.070481
3	Pop-up Toasters	13	2013-03-13 08:19:32.128348	2013-04-29 06:49:38.477907
42	Water Purifiers	47	2013-03-14 10:15:07.282734	2013-03-22 15:41:33.046365
48	Emergency Lights	47	2013-03-24 06:14:56.731448	2013-03-24 06:14:56.731448
1	Vacuum Cleaners	47	2013-03-13 08:19:32.057811	2013-04-29 06:49:38.543394
22	Landline Phones	47	2013-03-13 08:19:32.353242	2013-04-30 11:32:48.209305
45	Irons	47	2013-03-18 10:12:24.798031	2013-03-26 13:54:32.974029
49	Voltage Stabilizers	47	2013-03-31 06:51:06.57274	2013-03-31 07:38:04.666747
5	eBooks	10	2013-03-13 08:19:32.158394	2013-03-17 09:46:02.35794
37	Fiction & Non-Fiction	10	2013-03-13 08:19:32.556544	2013-03-17 09:51:32.917481
50	Educational Media	10	2013-04-02 07:59:49.753946	2013-04-02 08:45:07.66425
7	PlayStation 	32	2013-03-13 08:19:32.172565	2013-03-14 11:20:15.040679
14	Basketball	32	2013-03-13 08:19:32.272438	2013-04-24 06:24:27.221898
44	Football	32	2013-03-17 09:34:09.60885	2013-03-19 16:30:46.517182
29	Cricket	12	2013-03-13 08:19:32.464412	2013-04-24 06:22:42.828123
46	Bouncers	2	2013-03-20 06:13:52.840455	2013-03-20 06:15:33.106207
24	Toys	2	2013-03-13 08:19:32.397015	2013-03-16 20:05:57.013819
40	Office Products	4	2013-03-13 08:19:32.592587	2013-05-31 06:37:56.962972
18	Camera Bag	9	2013-03-13 08:19:32.313243	2013-03-13 08:19:32.313243
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
1	subbiah@motifworks.com	$2a$10$.d6DwvebmhUVYkH2TljFZ.zaJ1OYF8JQXabvnsy0MKnT58Gny2fBO	\N	\N	2013-06-07 04:41:03.039781	2	2013-06-07 04:41:03.089564	2013-06-06 14:23:43.203291	127.0.0.1	127.0.0.1	\N	2013-06-06 14:23:43.112558	2013-06-06 14:20:54.041057	2013-06-06 14:20:54.041568	2013-06-07 04:41:03.091078
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
-- PostgreSQL database dump complete
--

