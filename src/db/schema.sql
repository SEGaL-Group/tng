--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: scm2pgsql; Type: COMMENT; Schema: -; Owner: postgres
--

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

--Create the tables

CREATE SEQUENCE method_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE methods (
    file_name character varying(255),
    package_name character varying(255),
    class_type character varying(255),
    method_name character varying(255),
    start_line integer,
    end_line integer,
    id integer NOT NULL PRIMARY KEY DEFAULT NEXTVAL('method_id_seq'::regclass)
);

ALTER SEQUENCE method_id_seq OWNED BY methods.id;

CREATE TABLE invokes (
    caller integer NOT NULL,
    callee integer NOT NULL,
    PRIMARY KEY(caller, callee)
);

CREATE TABLE properties (
    repository character varying(255),
    commit_id character varying(255)
);
