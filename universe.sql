--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    age integer,
    size integer,
    galaxy_id integer NOT NULL,
    hj character varying
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: lumin; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lumin (
    lumin_id integer NOT NULL,
    name character varying,
    age integer NOT NULL
);


ALTER TABLE public.lumin OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    age numeric NOT NULL,
    moon_id integer NOT NULL,
    df text,
    sd character varying,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    distant boolean,
    dis boolean,
    planet_id integer NOT NULL,
    age integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    called text,
    star_id integer NOT NULL,
    galaxy_id integer,
    hj character varying
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 10000, 100000, 1, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 12000, 150000, 2, NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 8000, 76000, 3, NULL);
INSERT INTO public.galaxy VALUES ('Milky Way', 13600, 100000, 201, 'Spiral');
INSERT INTO public.galaxy VALUES ('Andromeda', 10000, 220000, 202, 'Spiral');
INSERT INTO public.galaxy VALUES ('Triangulum', 12000, 60000, 203, 'Spiral');
INSERT INTO public.galaxy VALUES ('Whirlpool', 400, 76000, 204, 'Spiral');
INSERT INTO public.galaxy VALUES ('Sombrero', 13250, 50000, 205, 'Elliptical');
INSERT INTO public.galaxy VALUES ('Pinwheel', 14000, 170000, 206, 'Spiral');


--
-- Data for Name: lumin; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lumin VALUES (1, 'Lumin1', 20);
INSERT INTO public.lumin VALUES (2, 'Lumin2', 25);
INSERT INTO public.lumin VALUES (3, 'Lumin3', 30);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon1', 10, 1, NULL, NULL, 101);
INSERT INTO public.moon VALUES ('Moon2', 20, 2, NULL, NULL, 101);
INSERT INTO public.moon VALUES ('Moon3', 30, 3, NULL, NULL, 102);
INSERT INTO public.moon VALUES ('Moon4', 40, 4, NULL, NULL, 102);
INSERT INTO public.moon VALUES ('Moon5', 50, 5, NULL, NULL, 103);
INSERT INTO public.moon VALUES ('Moon6', 60, 6, NULL, NULL, 103);
INSERT INTO public.moon VALUES ('Moon7', 70, 7, NULL, NULL, 104);
INSERT INTO public.moon VALUES ('Moon8', 80, 8, NULL, NULL, 104);
INSERT INTO public.moon VALUES ('Moon9', 90, 9, NULL, NULL, 105);
INSERT INTO public.moon VALUES ('Moon10', 100, 10, NULL, NULL, 105);
INSERT INTO public.moon VALUES ('Moon11', 110, 11, NULL, NULL, 106);
INSERT INTO public.moon VALUES ('Moon12', 120, 12, NULL, NULL, 106);
INSERT INTO public.moon VALUES ('Moon13', 130, 13, NULL, NULL, 107);
INSERT INTO public.moon VALUES ('Moon14', 140, 14, NULL, NULL, 107);
INSERT INTO public.moon VALUES ('Moon15', 150, 15, NULL, NULL, 108);
INSERT INTO public.moon VALUES ('Moon16', 160, 16, NULL, NULL, 108);
INSERT INTO public.moon VALUES ('Moon17', 170, 17, NULL, NULL, 109);
INSERT INTO public.moon VALUES ('Moon18', 180, 18, NULL, NULL, 109);
INSERT INTO public.moon VALUES ('Moon19', 190, 19, NULL, NULL, 110);
INSERT INTO public.moon VALUES ('Moon20', 200, 20, NULL, NULL, 110);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Planet1', true, false, 101, 1000, 301);
INSERT INTO public.planet VALUES ('Planet2', false, true, 102, 1200, 301);
INSERT INTO public.planet VALUES ('Planet3', true, true, 103, 1500, 302);
INSERT INTO public.planet VALUES ('Planet4', false, false, 104, 1800, 302);
INSERT INTO public.planet VALUES ('Planet5', true, false, 105, 2000, 303);
INSERT INTO public.planet VALUES ('Planet6', false, true, 106, 2300, 303);
INSERT INTO public.planet VALUES ('Planet7', true, true, 107, 2500, 304);
INSERT INTO public.planet VALUES ('Planet8', false, false, 108, 2700, 304);
INSERT INTO public.planet VALUES ('Planet9', true, false, 109, 3000, 305);
INSERT INTO public.planet VALUES ('Planet10', false, true, 110, 3200, 305);
INSERT INTO public.planet VALUES ('Planet11', true, true, 111, 3500, 306);
INSERT INTO public.planet VALUES ('Planet12', false, false, 112, 4000, 306);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 'The Sun', 301, 201, 'Yellow Dwarf');
INSERT INTO public.star VALUES ('Sirius', 'Dog Star', 302, 202, 'Main Sequence');
INSERT INTO public.star VALUES ('Vega', 'Alpha Lyrae', 303, 203, 'Main Sequence');
INSERT INTO public.star VALUES ('Betelgeuse', 'Alpha Orionis', 304, 204, 'Red Supergiant');
INSERT INTO public.star VALUES ('Rigel', 'Beta Orionis', 305, 205, 'Blue Supergiant');
INSERT INTO public.star VALUES ('Polaris', 'North Star', 306, 206, 'Supergiant');


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lumin lumin_lumin_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lumin
    ADD CONSTRAINT lumin_lumin_id_key UNIQUE (lumin_id);


--
-- Name: lumin lumin_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lumin
    ADD CONSTRAINT lumin_pkey PRIMARY KEY (lumin_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

