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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(15),
    number integer NOT NULL,
    founded date,
    spectral_type character varying(2)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type character varying(15),
    constellation character varying(15),
    is_naked_eye boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    meaning text,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL,
    founded date
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    num_of_moons integer NOT NULL,
    has_life boolean,
    diameter_in_km integer NOT NULL,
    name character varying(30) NOT NULL,
    dist_from_sun_in_au numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    class character(1),
    temp_in_k integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (3, 'OK', 2019, NULL, NULL);
INSERT INTO public.asteroid VALUES (5, 'Itokawa', 25143, NULL, NULL);
INSERT INTO public.asteroid VALUES (6, 'Mathilde', 253, NULL, NULL);
INSERT INTO public.asteroid VALUES (7, 'Eros', 433, NULL, NULL);
INSERT INTO public.asteroid VALUES (8, 'Vesta', 4, NULL, NULL);
INSERT INTO public.asteroid VALUES (1, 'Bennu', 101955, '1999-09-11', NULL);
INSERT INTO public.asteroid VALUES (2, 'Chariklo', 10199, '1997-02-15', NULL);
INSERT INTO public.asteroid VALUES (4, 'Ida', 243, '1984-09-29', 'S');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 'Sagittarius', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 'Andromeda', true);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 'Spiral', 'Coma Berenices', false);
INSERT INTO public.galaxy VALUES (5, 'Cygnus A', 'Elliptical', 'Cygnus', false);
INSERT INTO public.galaxy VALUES (4, 'Tadpole', 'Spiral', 'Draco', false);
INSERT INTO public.galaxy VALUES (6, 'Canis Major Dwarf', 'Irregular', 'Canis Major', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Month', 'Moon', 1, NULL);
INSERT INTO public.moon VALUES (2, 'Greek god of fear and panic', 'Phobos', 4, NULL);
INSERT INTO public.moon VALUES (3, 'Greek god of dread and terror', 'Deimos', 4, NULL);
INSERT INTO public.moon VALUES (4, 'Ancestor to Perseus, Cadmus, Heracles, and Minos', 'Io', 5, NULL);
INSERT INTO public.moon VALUES (5, 'Mother of king Minos and Crete', 'Europa', 5, NULL);
INSERT INTO public.moon VALUES (6, 'Foster-mother of Zeus', 'Amalthea', 5, NULL);
INSERT INTO public.moon VALUES (7, 'Daughter ovf the river god Inachus', 'Themisto', 5, NULL);
INSERT INTO public.moon VALUES (8, 'Princess of the Locris region', 'Megaclite', 5, NULL);
INSERT INTO public.moon VALUES (10, 'One of the giants. Son of Gaia', 'Mimas', 6, NULL);
INSERT INTO public.moon VALUES (11, 'One of the giants. Son of Gaia and Uranus', 'Enceladus', 6, NULL);
INSERT INTO public.moon VALUES (13, 'One of the titans', 'Dione', 6, NULL);
INSERT INTO public.moon VALUES (14, 'One of the Titans. Older sister of Cronus', 'Rhea', 6, NULL);
INSERT INTO public.moon VALUES (16, 'Named after a character in Alexndar Pope''s works', 'Ariel', 7, NULL);
INSERT INTO public.moon VALUES (17, 'Named after "dusky melancholy sprite"', 'Umbriel', 7, NULL);
INSERT INTO public.moon VALUES (18, 'Shape-changing sea god', 'Proteus', 8, NULL);
INSERT INTO public.moon VALUES (19, 'One of the Nereids', 'Halimede', 8, NULL);
INSERT INTO public.moon VALUES (20, 'One of the Nereids', 'Psamathe', 8, NULL);
INSERT INTO public.moon VALUES (21, 'Associated with safety and rescue at sea', 'Sao', 8, NULL);
INSERT INTO public.moon VALUES (22, 'One of the Nereid', 'Laomedeia', 8, NULL);
INSERT INTO public.moon VALUES (23, 'One of the Nereids', 'Neso', 8, NULL);
INSERT INTO public.moon VALUES (24, 'Mythological sea-horse creature', 'Hippocamp', 8, NULL);
INSERT INTO public.moon VALUES (12, 'One of the giants. Mother of Oceanids', 'Tethys', 6, '1684-03-21');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 0, false, 4879, 'Mercury', 0.39);
INSERT INTO public.planet VALUES (2, 0, false, 12104, 'Venus', 0.72);
INSERT INTO public.planet VALUES (3, 1, true, 12756, 'Earth', 1);
INSERT INTO public.planet VALUES (4, 2, false, 6792, 'Mars', 1.52);
INSERT INTO public.planet VALUES (5, 80, false, 142984, 'Jupiter', 5.2);
INSERT INTO public.planet VALUES (6, 83, false, 120536, 'Saturn', 9.54);
INSERT INTO public.planet VALUES (7, 27, false, 51118, 'Uranus', 19.2);
INSERT INTO public.planet VALUES (8, 14, false, 49528, 'Neptune', 30.6);
INSERT INTO public.planet VALUES (9, 5, false, 2376, 'Pluto', 39);
INSERT INTO public.planet VALUES (10, 27, false, 750000000, 'Proxima Centaru C', 14300.0);
INSERT INTO public.planet VALUES (11, 56, false, 435223, 'Alpha Centauri Bb', 134.3);
INSERT INTO public.planet VALUES (12, 13, false, 56475, 'GJ 273b', 2348.3);
INSERT INTO public.planet VALUES (13, 7, false, 134134, 'Eris', 1244.1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (7, 'Messier 64', 3, NULL, NULL);
INSERT INTO public.star VALUES (11, 'Adhara', 6, 'B', 222000);
INSERT INTO public.star VALUES (12, 'Aludra', 6, 'B', 15000);
INSERT INTO public.star VALUES (3, 'Alpheratz', 2, 'A', 8500);
INSERT INTO public.star VALUES (5, 'Sirius', 1, 'A', 9940);
INSERT INTO public.star VALUES (6, 'Vega', 1, 'A', 9602);
INSERT INTO public.star VALUES (10, 'Albireo', 5, 'A', 10000);
INSERT INTO public.star VALUES (8, 'Theta Draconis', 4, 'F', 6105);
INSERT INTO public.star VALUES (4, 'Sun', 1, 'G', 5778);
INSERT INTO public.star VALUES (13, 'Amadioha', 6, 'G', 5778);
INSERT INTO public.star VALUES (1, 'Almach', 2, 'K', 4500);
INSERT INTO public.star VALUES (2, 'Mirach', 2, 'K', 3842);
INSERT INTO public.star VALUES (9, 'NML Cygni', 5, 'M', 3300);
INSERT INTO public.star VALUES (14, 'Proxima Centauri', 1, 'M', 3042);
INSERT INTO public.star VALUES (15, 'Luyten''s Star', 6, 'M', 3150);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 8, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 45, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 15, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

