--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    id integer NOT NULL,
    tries integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_id_seq OWNER TO freecodecamp;

--
-- Name: games_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_id_seq OWNED BY public.games.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO freecodecamp;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: games id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN id SET DEFAULT nextval('public.games_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (211, 12, 98);
INSERT INTO public.games VALUES (212, 127, 99);
INSERT INTO public.games VALUES (213, 267, 99);
INSERT INTO public.games VALUES (214, 150, 100);
INSERT INTO public.games VALUES (215, 470, 100);
INSERT INTO public.games VALUES (216, 428, 99);
INSERT INTO public.games VALUES (217, 535, 99);
INSERT INTO public.games VALUES (218, 44, 99);
INSERT INTO public.games VALUES (219, 899, 101);
INSERT INTO public.games VALUES (220, 934, 101);
INSERT INTO public.games VALUES (221, 190, 102);
INSERT INTO public.games VALUES (222, 162, 102);
INSERT INTO public.games VALUES (223, 41, 101);
INSERT INTO public.games VALUES (224, 220, 101);
INSERT INTO public.games VALUES (225, 317, 101);
INSERT INTO public.games VALUES (226, 665, 103);
INSERT INTO public.games VALUES (227, 551, 103);
INSERT INTO public.games VALUES (228, 954, 104);
INSERT INTO public.games VALUES (229, 456, 104);
INSERT INTO public.games VALUES (230, 915, 103);
INSERT INTO public.games VALUES (231, 306, 103);
INSERT INTO public.games VALUES (232, 122, 103);
INSERT INTO public.games VALUES (233, 63, 105);
INSERT INTO public.games VALUES (234, 814, 105);
INSERT INTO public.games VALUES (235, 660, 106);
INSERT INTO public.games VALUES (236, 691, 106);
INSERT INTO public.games VALUES (237, 349, 105);
INSERT INTO public.games VALUES (238, 428, 105);
INSERT INTO public.games VALUES (239, 277, 105);
INSERT INTO public.games VALUES (240, 309, 107);
INSERT INTO public.games VALUES (241, 17, 107);
INSERT INTO public.games VALUES (242, 558, 108);
INSERT INTO public.games VALUES (243, 328, 108);
INSERT INTO public.games VALUES (244, 106, 107);
INSERT INTO public.games VALUES (245, 713, 107);
INSERT INTO public.games VALUES (246, 299, 107);
INSERT INTO public.games VALUES (247, 543, 109);
INSERT INTO public.games VALUES (248, 392, 109);
INSERT INTO public.games VALUES (249, 214, 110);
INSERT INTO public.games VALUES (250, 773, 110);
INSERT INTO public.games VALUES (251, 224, 109);
INSERT INTO public.games VALUES (252, 581, 109);
INSERT INTO public.games VALUES (253, 751, 109);
INSERT INTO public.games VALUES (254, 18, 98);
INSERT INTO public.games VALUES (255, 363, 111);
INSERT INTO public.games VALUES (256, 454, 111);
INSERT INTO public.games VALUES (257, 493, 112);
INSERT INTO public.games VALUES (258, 9, 112);
INSERT INTO public.games VALUES (259, 642, 111);
INSERT INTO public.games VALUES (260, 631, 111);
INSERT INTO public.games VALUES (261, 570, 111);
INSERT INTO public.games VALUES (262, 301, 113);
INSERT INTO public.games VALUES (263, 788, 113);
INSERT INTO public.games VALUES (264, 102, 114);
INSERT INTO public.games VALUES (265, 467, 114);
INSERT INTO public.games VALUES (266, 247, 113);
INSERT INTO public.games VALUES (267, 159, 113);
INSERT INTO public.games VALUES (268, 243, 113);
INSERT INTO public.games VALUES (269, 753, 115);
INSERT INTO public.games VALUES (270, 567, 115);
INSERT INTO public.games VALUES (271, 636, 116);
INSERT INTO public.games VALUES (272, 971, 116);
INSERT INTO public.games VALUES (273, 105, 115);
INSERT INTO public.games VALUES (274, 870, 115);
INSERT INTO public.games VALUES (275, 184, 115);
INSERT INTO public.games VALUES (276, 234, 117);
INSERT INTO public.games VALUES (277, 325, 117);
INSERT INTO public.games VALUES (278, 809, 118);
INSERT INTO public.games VALUES (279, 912, 118);
INSERT INTO public.games VALUES (280, 434, 117);
INSERT INTO public.games VALUES (281, 783, 117);
INSERT INTO public.games VALUES (282, 952, 117);
INSERT INTO public.games VALUES (283, 633, 119);
INSERT INTO public.games VALUES (284, 257, 119);
INSERT INTO public.games VALUES (285, 593, 120);
INSERT INTO public.games VALUES (286, 708, 120);
INSERT INTO public.games VALUES (287, 753, 119);
INSERT INTO public.games VALUES (288, 382, 119);
INSERT INTO public.games VALUES (289, 599, 119);
INSERT INTO public.games VALUES (290, 669, 121);
INSERT INTO public.games VALUES (291, 346, 121);
INSERT INTO public.games VALUES (292, 745, 122);
INSERT INTO public.games VALUES (293, 324, 122);
INSERT INTO public.games VALUES (294, 83, 121);
INSERT INTO public.games VALUES (295, 893, 121);
INSERT INTO public.games VALUES (296, 70, 121);
INSERT INTO public.games VALUES (297, 668, 123);
INSERT INTO public.games VALUES (298, 291, 123);
INSERT INTO public.games VALUES (299, 800, 124);
INSERT INTO public.games VALUES (300, 158, 124);
INSERT INTO public.games VALUES (301, 73, 123);
INSERT INTO public.games VALUES (302, 604, 123);
INSERT INTO public.games VALUES (303, 438, 123);
INSERT INTO public.games VALUES (304, 146, 126);
INSERT INTO public.games VALUES (305, 969, 126);
INSERT INTO public.games VALUES (306, 234, 127);
INSERT INTO public.games VALUES (307, 140, 127);
INSERT INTO public.games VALUES (308, 451, 126);
INSERT INTO public.games VALUES (309, 100, 126);
INSERT INTO public.games VALUES (310, 615, 126);
INSERT INTO public.games VALUES (311, 284, 128);
INSERT INTO public.games VALUES (312, 806, 128);
INSERT INTO public.games VALUES (313, 536, 129);
INSERT INTO public.games VALUES (314, 501, 129);
INSERT INTO public.games VALUES (315, 867, 128);
INSERT INTO public.games VALUES (316, 422, 128);
INSERT INTO public.games VALUES (317, 561, 128);
INSERT INTO public.games VALUES (318, 247, 130);
INSERT INTO public.games VALUES (319, 57, 130);
INSERT INTO public.games VALUES (320, 471, 131);
INSERT INTO public.games VALUES (321, 938, 131);
INSERT INTO public.games VALUES (322, 50, 130);
INSERT INTO public.games VALUES (323, 555, 130);
INSERT INTO public.games VALUES (324, 902, 130);
INSERT INTO public.games VALUES (325, 867, 132);
INSERT INTO public.games VALUES (326, 593, 132);
INSERT INTO public.games VALUES (327, 231, 133);
INSERT INTO public.games VALUES (328, 508, 133);
INSERT INTO public.games VALUES (329, 819, 132);
INSERT INTO public.games VALUES (330, 323, 132);
INSERT INTO public.games VALUES (331, 899, 132);
INSERT INTO public.games VALUES (332, 800, 134);
INSERT INTO public.games VALUES (333, 557, 134);
INSERT INTO public.games VALUES (334, 767, 135);
INSERT INTO public.games VALUES (335, 157, 135);
INSERT INTO public.games VALUES (336, 147, 134);
INSERT INTO public.games VALUES (337, 764, 134);
INSERT INTO public.games VALUES (338, 658, 134);
INSERT INTO public.games VALUES (339, 504, 136);
INSERT INTO public.games VALUES (340, 960, 136);
INSERT INTO public.games VALUES (341, 959, 137);
INSERT INTO public.games VALUES (342, 794, 137);
INSERT INTO public.games VALUES (343, 401, 136);
INSERT INTO public.games VALUES (344, 142, 136);
INSERT INTO public.games VALUES (345, 289, 136);
INSERT INTO public.games VALUES (346, 588, 138);
INSERT INTO public.games VALUES (347, 636, 138);
INSERT INTO public.games VALUES (348, 316, 139);
INSERT INTO public.games VALUES (349, 332, 139);
INSERT INTO public.games VALUES (350, 378, 138);
INSERT INTO public.games VALUES (351, 957, 138);
INSERT INTO public.games VALUES (352, 684, 138);
INSERT INTO public.games VALUES (353, 217, 140);
INSERT INTO public.games VALUES (354, 602, 140);
INSERT INTO public.games VALUES (355, 311, 141);
INSERT INTO public.games VALUES (356, 980, 141);
INSERT INTO public.games VALUES (357, 896, 140);
INSERT INTO public.games VALUES (358, 959, 140);
INSERT INTO public.games VALUES (359, 881, 140);
INSERT INTO public.games VALUES (360, 672, 142);
INSERT INTO public.games VALUES (361, 645, 142);
INSERT INTO public.games VALUES (362, 690, 143);
INSERT INTO public.games VALUES (363, 840, 143);
INSERT INTO public.games VALUES (364, 791, 142);
INSERT INTO public.games VALUES (365, 934, 142);
INSERT INTO public.games VALUES (366, 401, 142);
INSERT INTO public.games VALUES (367, 10, 144);
INSERT INTO public.games VALUES (368, 200, 144);
INSERT INTO public.games VALUES (369, 989, 145);
INSERT INTO public.games VALUES (370, 277, 145);
INSERT INTO public.games VALUES (371, 587, 144);
INSERT INTO public.games VALUES (372, 67, 144);
INSERT INTO public.games VALUES (373, 454, 144);
INSERT INTO public.games VALUES (374, 961, 146);
INSERT INTO public.games VALUES (375, 830, 146);
INSERT INTO public.games VALUES (376, 495, 147);
INSERT INTO public.games VALUES (377, 32, 148);
INSERT INTO public.games VALUES (378, 744, 147);
INSERT INTO public.games VALUES (379, 467, 148);
INSERT INTO public.games VALUES (380, 202, 149);
INSERT INTO public.games VALUES (381, 246, 150);
INSERT INTO public.games VALUES (382, 755, 146);
INSERT INTO public.games VALUES (383, 404, 149);
INSERT INTO public.games VALUES (384, 932, 150);
INSERT INTO public.games VALUES (385, 699, 146);
INSERT INTO public.games VALUES (386, 289, 152);
INSERT INTO public.games VALUES (387, 754, 151);
INSERT INTO public.games VALUES (388, 438, 147);
INSERT INTO public.games VALUES (389, 914, 146);
INSERT INTO public.games VALUES (390, 399, 152);
INSERT INTO public.games VALUES (391, 38, 151);
INSERT INTO public.games VALUES (392, 752, 147);
INSERT INTO public.games VALUES (393, 747, 149);
INSERT INTO public.games VALUES (394, 625, 153);
INSERT INTO public.games VALUES (395, 648, 147);
INSERT INTO public.games VALUES (396, 630, 149);
INSERT INTO public.games VALUES (397, 848, 153);
INSERT INTO public.games VALUES (398, 121, 149);
INSERT INTO public.games VALUES (399, 761, 151);
INSERT INTO public.games VALUES (400, 322, 151);
INSERT INTO public.games VALUES (401, 951, 151);
INSERT INTO public.games VALUES (402, 320, 154);
INSERT INTO public.games VALUES (403, 148, 154);
INSERT INTO public.games VALUES (404, 388, 155);
INSERT INTO public.games VALUES (405, 467, 155);
INSERT INTO public.games VALUES (406, 696, 154);
INSERT INTO public.games VALUES (407, 136, 154);
INSERT INTO public.games VALUES (408, 965, 154);
INSERT INTO public.games VALUES (409, 377, 156);
INSERT INTO public.games VALUES (410, 549, 156);
INSERT INTO public.games VALUES (411, 696, 157);
INSERT INTO public.games VALUES (412, 364, 157);
INSERT INTO public.games VALUES (413, 10, 156);
INSERT INTO public.games VALUES (414, 145, 158);
INSERT INTO public.games VALUES (415, 427, 156);
INSERT INTO public.games VALUES (416, 53, 156);
INSERT INTO public.games VALUES (417, 689, 158);
INSERT INTO public.games VALUES (418, 957, 159);
INSERT INTO public.games VALUES (419, 264, 159);
INSERT INTO public.games VALUES (420, 299, 158);
INSERT INTO public.games VALUES (421, 900, 158);
INSERT INTO public.games VALUES (422, 614, 158);
INSERT INTO public.games VALUES (423, 86, 160);
INSERT INTO public.games VALUES (424, 756, 160);
INSERT INTO public.games VALUES (425, 362, 161);
INSERT INTO public.games VALUES (426, 548, 161);
INSERT INTO public.games VALUES (427, 617, 160);
INSERT INTO public.games VALUES (428, 919, 160);
INSERT INTO public.games VALUES (429, 359, 160);
INSERT INTO public.games VALUES (430, 128, 162);
INSERT INTO public.games VALUES (431, 169, 162);
INSERT INTO public.games VALUES (432, 251, 163);
INSERT INTO public.games VALUES (433, 994, 164);
INSERT INTO public.games VALUES (434, 66, 163);
INSERT INTO public.games VALUES (435, 280, 162);
INSERT INTO public.games VALUES (436, 662, 164);
INSERT INTO public.games VALUES (437, 605, 165);
INSERT INTO public.games VALUES (438, 147, 166);
INSERT INTO public.games VALUES (439, 892, 162);
INSERT INTO public.games VALUES (440, 235, 166);
INSERT INTO public.games VALUES (441, 918, 165);
INSERT INTO public.games VALUES (442, 6, 162);
INSERT INTO public.games VALUES (443, 654, 164);
INSERT INTO public.games VALUES (444, 373, 167);
INSERT INTO public.games VALUES (445, 423, 168);
INSERT INTO public.games VALUES (446, 251, 164);
INSERT INTO public.games VALUES (447, 472, 167);
INSERT INTO public.games VALUES (448, 164, 168);
INSERT INTO public.games VALUES (449, 134, 164);
INSERT INTO public.games VALUES (450, 218, 165);
INSERT INTO public.games VALUES (451, 108, 169);
INSERT INTO public.games VALUES (452, 175, 165);
INSERT INTO public.games VALUES (453, 189, 170);
INSERT INTO public.games VALUES (454, 249, 165);
INSERT INTO public.games VALUES (455, 69, 170);
INSERT INTO public.games VALUES (456, 911, 169);
INSERT INTO public.games VALUES (457, 712, 171);
INSERT INTO public.games VALUES (458, 755, 172);
INSERT INTO public.games VALUES (459, 814, 168);
INSERT INTO public.games VALUES (460, 915, 171);
INSERT INTO public.games VALUES (461, 163, 168);
INSERT INTO public.games VALUES (462, 293, 172);
INSERT INTO public.games VALUES (463, 832, 173);
INSERT INTO public.games VALUES (464, 390, 168);
INSERT INTO public.games VALUES (465, 908, 170);
INSERT INTO public.games VALUES (466, 536, 173);
INSERT INTO public.games VALUES (467, 881, 170);
INSERT INTO public.games VALUES (468, 313, 171);
INSERT INTO public.games VALUES (469, 689, 170);
INSERT INTO public.games VALUES (470, 890, 171);
INSERT INTO public.games VALUES (471, 28, 171);
INSERT INTO public.games VALUES (472, 224, 174);
INSERT INTO public.games VALUES (473, 341, 174);
INSERT INTO public.games VALUES (474, 933, 175);
INSERT INTO public.games VALUES (475, 202, 175);
INSERT INTO public.games VALUES (476, 199, 174);
INSERT INTO public.games VALUES (477, 794, 174);
INSERT INTO public.games VALUES (478, 677, 174);
INSERT INTO public.games VALUES (479, 644, 176);
INSERT INTO public.games VALUES (480, 22, 176);
INSERT INTO public.games VALUES (481, 993, 177);
INSERT INTO public.games VALUES (482, 47, 177);
INSERT INTO public.games VALUES (483, 155, 176);
INSERT INTO public.games VALUES (484, 465, 176);
INSERT INTO public.games VALUES (485, 24, 176);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (99, 'user_1678482017420');
INSERT INTO public.users VALUES (100, 'user_1678482017419');
INSERT INTO public.users VALUES (101, 'user_1678482063939');
INSERT INTO public.users VALUES (102, 'user_1678482063938');
INSERT INTO public.users VALUES (103, 'user_1678482154689');
INSERT INTO public.users VALUES (104, 'user_1678482154688');
INSERT INTO public.users VALUES (105, 'user_1678483551023');
INSERT INTO public.users VALUES (106, 'user_1678483551022');
INSERT INTO public.users VALUES (107, 'user_1678483952947');
INSERT INTO public.users VALUES (108, 'user_1678483952946');
INSERT INTO public.users VALUES (109, 'user_1678483961417');
INSERT INTO public.users VALUES (110, 'user_1678483961416');
INSERT INTO public.users VALUES (111, 'user_1678484390082');
INSERT INTO public.users VALUES (112, 'user_1678484390081');
INSERT INTO public.users VALUES (113, 'user_1678570195720');
INSERT INTO public.users VALUES (114, 'user_1678570195719');
INSERT INTO public.users VALUES (115, 'user_1678571061300');
INSERT INTO public.users VALUES (116, 'user_1678571061299');
INSERT INTO public.users VALUES (117, 'user_1678571076333');
INSERT INTO public.users VALUES (118, 'user_1678571076332');
INSERT INTO public.users VALUES (119, 'user_1678571116591');
INSERT INTO public.users VALUES (120, 'user_1678571116590');
INSERT INTO public.users VALUES (121, 'user_1678571238329');
INSERT INTO public.users VALUES (122, 'user_1678571238328');
INSERT INTO public.users VALUES (123, 'user_1678571254432');
INSERT INTO public.users VALUES (124, 'user_1678571254431');
INSERT INTO public.users VALUES (125, 'diego');
INSERT INTO public.users VALUES (126, 'user_1678571322408');
INSERT INTO public.users VALUES (127, 'user_1678571322407');
INSERT INTO public.users VALUES (128, 'user_1678571334224');
INSERT INTO public.users VALUES (129, 'user_1678571334223');
INSERT INTO public.users VALUES (130, 'user_1678571399516');
INSERT INTO public.users VALUES (131, 'user_1678571399515');
INSERT INTO public.users VALUES (132, 'user_1678571471837');
INSERT INTO public.users VALUES (133, 'user_1678571471836');
INSERT INTO public.users VALUES (134, 'user_1678571733436');
INSERT INTO public.users VALUES (135, 'user_1678571733435');
INSERT INTO public.users VALUES (136, 'user_1678571921573');
INSERT INTO public.users VALUES (137, 'user_1678571921572');
INSERT INTO public.users VALUES (138, 'user_1678571927642');
INSERT INTO public.users VALUES (139, 'user_1678571927641');
INSERT INTO public.users VALUES (140, 'user_1678572049704');
INSERT INTO public.users VALUES (141, 'user_1678572049703');
INSERT INTO public.users VALUES (142, 'user_1678572224144');
INSERT INTO public.users VALUES (143, 'user_1678572224143');
INSERT INTO public.users VALUES (144, 'user_1678572225892');
INSERT INTO public.users VALUES (145, 'user_1678572225891');
INSERT INTO public.users VALUES (146, 'user_1678572227419');
INSERT INTO public.users VALUES (147, 'user_1678572227860');
INSERT INTO public.users VALUES (148, 'user_1678572227418');
INSERT INTO public.users VALUES (149, 'user_1678572228331');
INSERT INTO public.users VALUES (150, 'user_1678572227859');
INSERT INTO public.users VALUES (151, 'user_1678572228748');
INSERT INTO public.users VALUES (152, 'user_1678572228330');
INSERT INTO public.users VALUES (153, 'user_1678572228747');
INSERT INTO public.users VALUES (154, 'user_1678572249815');
INSERT INTO public.users VALUES (155, 'user_1678572249814');
INSERT INTO public.users VALUES (156, 'user_1678572330854');
INSERT INTO public.users VALUES (157, 'user_1678572330853');
INSERT INTO public.users VALUES (158, 'user_1678572331975');
INSERT INTO public.users VALUES (159, 'user_1678572331974');
INSERT INTO public.users VALUES (160, 'user_1678572419193');
INSERT INTO public.users VALUES (161, 'user_1678572419192');
INSERT INTO public.users VALUES (162, 'user_1678572421697');
INSERT INTO public.users VALUES (163, 'user_1678572421696');
INSERT INTO public.users VALUES (164, 'user_1678572422229');
INSERT INTO public.users VALUES (165, 'user_1678572422643');
INSERT INTO public.users VALUES (166, 'user_1678572422228');
INSERT INTO public.users VALUES (167, 'user_1678572422642');
INSERT INTO public.users VALUES (168, 'user_1678572423346');
INSERT INTO public.users VALUES (169, 'user_1678572423345');
INSERT INTO public.users VALUES (170, 'user_1678572423846');
INSERT INTO public.users VALUES (171, 'user_1678572424182');
INSERT INTO public.users VALUES (172, 'user_1678572423845');
INSERT INTO public.users VALUES (173, 'user_1678572424181');
INSERT INTO public.users VALUES (174, 'user_1678572513554');
INSERT INTO public.users VALUES (175, 'user_1678572513553');
INSERT INTO public.users VALUES (176, 'user_1678572540355');
INSERT INTO public.users VALUES (177, 'user_1678572540354');
INSERT INTO public.users VALUES (98, 'Diego');


--
-- Name: games_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_id_seq', 485, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_id_seq', 177, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: games games_id_users_user_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_id_users_user_id FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

