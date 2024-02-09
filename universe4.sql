--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-0ubuntu0.20.04.1)

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
-- Name: asteroids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroids (
    diameter_km numeric(6,1) NOT NULL,
    topology text NOT NULL,
    name character varying(40) NOT NULL,
    star_id integer NOT NULL,
    asteroids_id integer NOT NULL
);


ALTER TABLE public.asteroids OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroids_asteroids_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroids_asteroids_id_seq OWNER TO freecodecamp;

--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroids_asteroids_id_seq OWNED BY public.asteroids.asteroids_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    galaxy_type character varying(40) NOT NULL,
    light_years_across integer NOT NULL,
    black_hole_solar_masses integer NOT NULL
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
    name character varying(40) NOT NULL,
    is_spherical boolean NOT NULL,
    planet_id integer,
    tidally_locked boolean
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
    name character varying(40) NOT NULL,
    planet_type character varying(40) NOT NULL,
    star_id integer,
    has_life boolean NOT NULL,
    civilization text NOT NULL
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
    name character varying(40) NOT NULL,
    star_type character varying(40) NOT NULL,
    galaxy_id integer,
    solar_masses numeric(12,1)
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
-- Name: asteroids asteroids_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids ALTER COLUMN asteroids_id SET DEFAULT nextval('public.asteroids_asteroids_id_seq'::regclass);


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
-- Data for Name: asteroids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroids VALUES (940.0, 'Largest object in asteroid belt.', 'Ceres', 1, 1);
INSERT INTO public.asteroids VALUES (525.0, 'One of the largest asteroids.', 'Vesta', 1, 2);
INSERT INTO public.asteroids VALUES (513.0, 'Third largest asteroid.', 'Pallas', 1, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 3600, 4297000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 220000, 110000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 60000, 1);
INSERT INTO public.galaxy VALUES (4, 'Messier 81', 'Spiral', 90000, 1);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', 'Irregular', 37000, 1);
INSERT INTO public.galaxy VALUES (6, 'Messier 94', 'Irregular', 50000, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 3, true);
INSERT INTO public.moon VALUES (2, 'Phobos', true, 4, true);
INSERT INTO public.moon VALUES (3, 'Deimos', true, 4, true);
INSERT INTO public.moon VALUES (4, 'Io', true, 5, false);
INSERT INTO public.moon VALUES (5, 'Europa', true, 5, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 5, true);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 5, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 6, true);
INSERT INTO public.moon VALUES (10, 'Titan', true, 6, true);
INSERT INTO public.moon VALUES (8, 'Mimas', true, 6, true);
INSERT INTO public.moon VALUES (11, 'Miranda', true, 7, true);
INSERT INTO public.moon VALUES (12, 'Ariel', true, 7, true);
INSERT INTO public.moon VALUES (13, 'Umbriel', true, 7, true);
INSERT INTO public.moon VALUES (14, 'Triton', true, 8, true);
INSERT INTO public.moon VALUES (15, 'Proximis', true, 9, true);
INSERT INTO public.moon VALUES (16, 'Novalis', true, 9, true);
INSERT INTO public.moon VALUES (17, 'Centauris Minor', true, 10, false);
INSERT INTO public.moon VALUES (18, 'Frostalia', true, 11, true);
INSERT INTO public.moon VALUES (19, 'Lumina', true, 12, false);
INSERT INTO public.moon VALUES (20, 'Nebulon', true, 10, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'Jupiter', 'Gas giant', 1, false, 'High windspeed mega storms.');
INSERT INTO public.planet VALUES (6, 'Saturn', 'Gas giant', 1, false, 'Many ringed vistas.');
INSERT INTO public.planet VALUES (1, 'Mercury', 'Rocky', 1, false, 'None, a hot desolate place.');
INSERT INTO public.planet VALUES (2, 'Venus', 'Rocky', 1, false, 'None, highly acid environment.');
INSERT INTO public.planet VALUES (4, 'Mars', 'Rocky', 1, false, 'None, poor atmospheric retention.');
INSERT INTO public.planet VALUES (3, 'Earth', 'Rocky', 1, true, 'One, a whole bunch of intelligent apes.');
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant', 1, false, 'Arse of a planet');
INSERT INTO public.planet VALUES (8, 'Neptune', 'Ice giant', 1, false, 'A mighty oceanic realm.');
INSERT INTO public.planet VALUES (9, 'Proxima B', 'Rocky', 2, false, 'Pretty proximal to us.');
INSERT INTO public.planet VALUES (10, 'Alpha Centauri A-II', 'Rocky', 3, false, 'Hypothetical.');
INSERT INTO public.planet VALUES (12, 'Sirius Prime', 'Rocky', 6, false, 'Hypothetical.');
INSERT INTO public.planet VALUES (11, 'Bernards Exo', 'Rocky', 5, false, 'Maybe Bernard lives there?');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 'Main sequence', 1, 1.0);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 'Red dwarf', 1, 0.1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'Orange dwarf', 1, 0.9);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'Yellow dwarf', 1, 1.1);
INSERT INTO public.star VALUES (5, 'Bernards star', 'Red dwarf', 1, 0.1);
INSERT INTO public.star VALUES (6, 'Sirius A', 'White dwarf', 1, 2.0);


--
-- Name: asteroids_asteroids_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroids_asteroids_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroids asteroids_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_name_key UNIQUE (name);


--
-- Name: asteroids asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroids_id);


--
-- Name: asteroids asteroids_topology_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_topology_key UNIQUE (topology);


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
-- Name: asteroids asteroids_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroids
    ADD CONSTRAINT asteroids_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

