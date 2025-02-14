--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE games;
--
-- Name: games; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE games WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE games OWNER TO freecodecamp;

\connect games

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
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    number_of_guesses integer NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (16, 9, 11);
INSERT INTO public.games VALUES (17, 10, 41);
INSERT INTO public.games VALUES (18, 10, 597);
INSERT INTO public.games VALUES (19, 11, 471);
INSERT INTO public.games VALUES (20, 11, 831);
INSERT INTO public.games VALUES (21, 10, 354);
INSERT INTO public.games VALUES (22, 10, 325);
INSERT INTO public.games VALUES (23, 10, 212);
INSERT INTO public.games VALUES (24, 12, 706);
INSERT INTO public.games VALUES (25, 12, 803);
INSERT INTO public.games VALUES (26, 13, 960);
INSERT INTO public.games VALUES (27, 13, 156);
INSERT INTO public.games VALUES (28, 12, 815);
INSERT INTO public.games VALUES (29, 12, 793);
INSERT INTO public.games VALUES (30, 12, 286);
INSERT INTO public.games VALUES (31, 14, 490);
INSERT INTO public.games VALUES (32, 14, 583);
INSERT INTO public.games VALUES (33, 15, 837);
INSERT INTO public.games VALUES (34, 15, 754);
INSERT INTO public.games VALUES (35, 14, 537);
INSERT INTO public.games VALUES (36, 14, 412);
INSERT INTO public.games VALUES (37, 14, 632);
INSERT INTO public.games VALUES (38, 9, 10);
INSERT INTO public.games VALUES (39, 16, 92);
INSERT INTO public.games VALUES (40, 16, 48);
INSERT INTO public.games VALUES (41, 17, 491);
INSERT INTO public.games VALUES (42, 17, 863);
INSERT INTO public.games VALUES (43, 16, 307);
INSERT INTO public.games VALUES (44, 16, 892);
INSERT INTO public.games VALUES (45, 16, 547);
INSERT INTO public.games VALUES (46, 18, 719);
INSERT INTO public.games VALUES (47, 18, 859);
INSERT INTO public.games VALUES (48, 19, 906);
INSERT INTO public.games VALUES (49, 19, 977);
INSERT INTO public.games VALUES (50, 18, 980);
INSERT INTO public.games VALUES (51, 18, 764);
INSERT INTO public.games VALUES (52, 18, 180);
INSERT INTO public.games VALUES (53, 20, 174);
INSERT INTO public.games VALUES (54, 20, 817);
INSERT INTO public.games VALUES (55, 21, 60);
INSERT INTO public.games VALUES (56, 21, 94);
INSERT INTO public.games VALUES (57, 20, 88);
INSERT INTO public.games VALUES (58, 20, 150);
INSERT INTO public.games VALUES (59, 20, 92);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (9, 'Me');
INSERT INTO public.users VALUES (10, 'user_1739544415237');
INSERT INTO public.users VALUES (11, 'user_1739544415236');
INSERT INTO public.users VALUES (12, 'user_1739544474007');
INSERT INTO public.users VALUES (13, 'user_1739544474006');
INSERT INTO public.users VALUES (14, 'user_1739544577029');
INSERT INTO public.users VALUES (15, 'user_1739544577028');
INSERT INTO public.users VALUES (16, 'user_1739544682937');
INSERT INTO public.users VALUES (17, 'user_1739544682936');
INSERT INTO public.users VALUES (18, 'user_1739544720188');
INSERT INTO public.users VALUES (19, 'user_1739544720187');
INSERT INTO public.users VALUES (20, 'user_1739544806817');
INSERT INTO public.users VALUES (21, 'user_1739544806816');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 59, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 21, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

