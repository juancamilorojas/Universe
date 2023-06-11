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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_id_black_hole_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_id_black_hole_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_id_black_hole_seq OWNER TO freecodecamp;

--
-- Name: black_hole_id_black_hole_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_id_black_hole_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(52) NOT NULL,
    distance_from_earth numeric(15,2),
    volume numeric(18,2),
    habitable boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(52) NOT NULL,
    distance_from_earth numeric(15,2),
    volume numeric(18,2),
    habitable boolean NOT NULL,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(52) NOT NULL,
    distance_from_earth numeric(15,2),
    volume numeric(18,2),
    habitable boolean NOT NULL,
    star_id integer,
    year_discovered integer,
    natives integer,
    other_names text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(52) NOT NULL,
    distance_from_earth numeric(15,2),
    volume numeric(18,2),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_id_black_hole_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A*', 1);
INSERT INTO public.black_hole VALUES (2, 'M33 X-7', 4);
INSERT INTO public.black_hole VALUES (3, 'M87', 5);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000.00, 123456789.00, false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 163000.00, 123456789.00, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 3000000.00, 123456789.00, false);
INSERT INTO public.galaxy VALUES (5, 'Small Megellanic Cloud', 200000.00, 15000000000.00, false);
INSERT INTO public.galaxy VALUES (6, 'Wolf-Lundmark-Melotte', 3000000.00, 50000000000.00, false);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0.00, 123456789.00, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 384400.00, 21970000000.00, false, 2);
INSERT INTO public.moon VALUES (2, 'Phobos', 9400.00, 5689000.00, false, 6);
INSERT INTO public.moon VALUES (3, 'Deimos', 23460.00, 1580000.00, false, 6);
INSERT INTO public.moon VALUES (4, 'Io', 421700.00, 26000000000.00, false, 7);
INSERT INTO public.moon VALUES (5, 'Europa', 671100.00, 15600000000.00, false, 7);
INSERT INTO public.moon VALUES (6, 'Ganymede', 1070400.00, 76300000000.00, false, 7);
INSERT INTO public.moon VALUES (7, 'Callisto', 1882700.00, 59100000000.00, false, 7);
INSERT INTO public.moon VALUES (8, 'Iapetus', 3560820.00, 1665000000.00, false, 8);
INSERT INTO public.moon VALUES (9, 'Rhea', 52108.00, 230900000.00, false, 8);
INSERT INTO public.moon VALUES (10, 'Dione', 377396.00, 73280000.00, false, 8);
INSERT INTO public.moon VALUES (11, 'Thetys', 294619.00, 41530000.00, false, 8);
INSERT INTO public.moon VALUES (12, 'Mimas', 185539.00, 3816000.00, false, 8);
INSERT INTO public.moon VALUES (13, 'Enceladus', 237948.00, 7648000.00, false, 8);
INSERT INTO public.moon VALUES (14, 'Titan', 1221870.00, 714000000000.00, false, 8);
INSERT INTO public.moon VALUES (15, 'Triton', 354759.00, 2141000000.00, false, 10);
INSERT INTO public.moon VALUES (16, 'Oberon', 583520.00, 293400000.00, false, 9);
INSERT INTO public.moon VALUES (17, 'Titania', 435910.00, 351800000.00, false, 9);
INSERT INTO public.moon VALUES (18, 'Umbriel', 266300.00, 119500000.00, false, 9);
INSERT INTO public.moon VALUES (19, 'Ariel', 191020.00, 181900000.00, false, 9);
INSERT INTO public.moon VALUES (20, 'Miranda', 129390.00, 7000000.00, false, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'Earth', 0.00, 123456789.00, true, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Andromeda I', 2537000.00, 123456789.00, false, 2, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Triangulum I', 3000000.00, 123456789.00, false, 3, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'LMC P1', 163000.00, 123456789.00, false, 4, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Mercury', 57910000.00, 60830000000.00, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Venus', 108200000.00, 928400000000.00, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Mars', 227900000.00, 163100000000.00, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Jupiter', 778600000.00, 1431280000000000.00, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Saturn', 1433500000.00, 8271300000000000.00, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Uranus', 2872500000.00, 6833400000000000.00, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Neptune', 4495100000.00, 6254000000000000.00, false, 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'Pluto', 5906376272.00, 7000000000.00, false, 1, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.00, 123456789.00, 1);
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 2537000.00, 123456789.00, 2);
INSERT INTO public.star VALUES (3, 'Beta Trianguli', 3000000.00, 123456789.00, 3);
INSERT INTO public.star VALUES (4, 'LMC X-1', 163000.00, 123456789.00, 4);
INSERT INTO public.star VALUES (5, 'Sirius', 8600000000.00, 12000000000.00, 1);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 4200000000.00, 20000000000.00, 1);


--
-- Name: black_hole_id_black_hole_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_id_black_hole_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 13, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: black_hole black_hole_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_id_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_star_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

