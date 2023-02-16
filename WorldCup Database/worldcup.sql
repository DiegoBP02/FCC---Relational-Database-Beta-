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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: customers; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    customer_name character varying(255) NOT NULL
);


ALTER TABLE public.customers OWNER TO freecodecamp;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.customers ALTER COLUMN customer_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.customers_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 353, 354, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 355, 356, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 354, 356, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 353, 355, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 354, 362, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 356, 364, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 355, 366, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 353, 368, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 356, 370, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 364, 372, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 355, 374, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 366, 376, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 354, 378, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 362, 380, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 368, 382, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 353, 384, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 385, 384, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 387, 366, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 384, 387, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 385, 366, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 387, 394, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 384, 355, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 366, 370, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 385, 353, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 366, 402, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 370, 368, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 353, 406, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 385, 408, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 387, 376, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 394, 412, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 384, 372, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 355, 416, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (353, 'France');
INSERT INTO public.teams VALUES (354, 'Croatia');
INSERT INTO public.teams VALUES (355, 'Belgium');
INSERT INTO public.teams VALUES (356, 'England');
INSERT INTO public.teams VALUES (362, 'Russia');
INSERT INTO public.teams VALUES (364, 'Sweden');
INSERT INTO public.teams VALUES (366, 'Brazil');
INSERT INTO public.teams VALUES (368, 'Uruguay');
INSERT INTO public.teams VALUES (370, 'Colombia');
INSERT INTO public.teams VALUES (372, 'Switzerland');
INSERT INTO public.teams VALUES (374, 'Japan');
INSERT INTO public.teams VALUES (376, 'Mexico');
INSERT INTO public.teams VALUES (378, 'Denmark');
INSERT INTO public.teams VALUES (380, 'Spain');
INSERT INTO public.teams VALUES (382, 'Portugal');
INSERT INTO public.teams VALUES (384, 'Argentina');
INSERT INTO public.teams VALUES (385, 'Germany');
INSERT INTO public.teams VALUES (387, 'Netherlands');
INSERT INTO public.teams VALUES (394, 'Costa Rica');
INSERT INTO public.teams VALUES (402, 'Chile');
INSERT INTO public.teams VALUES (406, 'Nigeria');
INSERT INTO public.teams VALUES (408, 'Algeria');
INSERT INTO public.teams VALUES (412, 'Greece');
INSERT INTO public.teams VALUES (416, 'United States');


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 1, false);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 416, true);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent_id FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner_id FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

