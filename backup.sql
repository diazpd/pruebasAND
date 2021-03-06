toc.dat                                                                                             0000600 0004000 0002000 00000035517 13712637475 0014471 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       $                    x         	   pruebacfa    9.3.14    10.1 <    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         �           1262    15908168 	   pruebacfa    DATABASE     �   CREATE DATABASE pruebacfa WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
    DROP DATABASE pruebacfa;
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6         �           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                     3079    11750    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1259    15908243    customer    TABLE     �   CREATE TABLE customer (
    customer_id integer NOT NULL,
    name character varying,
    address character varying,
    created_date date
);
    DROP TABLE public.customer;
       public         postgres    false    6         �            1259    15908241    customer_customer_id_seq    SEQUENCE     z   CREATE SEQUENCE customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.customer_customer_id_seq;
       public       postgres    false    6    182         �           0    0    customer_customer_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE customer_customer_id_seq OWNED BY customer.customer_id;
            public       postgres    false    181         �            1259    15908232    emp99    TABLE     �   CREATE TABLE emp99 (
    id integer NOT NULL,
    name character varying,
    salary integer,
    designation character varying
);
    DROP TABLE public.emp99;
       public         postgres    false    6         �            1259    15908230    emp99_id_seq    SEQUENCE     n   CREATE SEQUENCE emp99_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.emp99_id_seq;
       public       postgres    false    180    6         �           0    0    emp99_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE emp99_id_seq OWNED BY emp99.id;
            public       postgres    false    179         �            1259    15908222 	   employees    TABLE     ,  CREATE TABLE employees (
    id integer NOT NULL,
    "firstName" character varying,
    "lastName" character varying,
    "emailId" character varying,
    email_address character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL
);
    DROP TABLE public.employees;
       public         postgres    false    6         �            1259    15908220    hibernate_sequence    SEQUENCE     t   CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.hibernate_sequence;
       public       postgres    false    6         �            1259    15908169    producto    TABLE     �   CREATE TABLE producto (
    id integer NOT NULL,
    nombre_producto character varying NOT NULL,
    cantidad_producto integer NOT NULL
);
    DROP TABLE public.producto;
       public         postgres    false    6         �            1259    15908184    producto_id_seq    SEQUENCE     q   CREATE SEQUENCE producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.producto_id_seq;
       public       postgres    false    6    171         �           0    0    producto_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE producto_id_seq OWNED BY producto.id;
            public       postgres    false    174         �            1259    15908299    student_id_seq    SEQUENCE     p   CREATE SEQUENCE student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.student_id_seq;
       public       postgres    false    6         �            1259    15908612    student    TABLE     �   CREATE TABLE student (
    id integer DEFAULT nextval('student_id_seq'::regclass) NOT NULL,
    name character varying,
    passport_number character varying
);
    DROP TABLE public.student;
       public         postgres    false    183    6         �            1259    15908621    task_id_seq    SEQUENCE     m   CREATE SEQUENCE task_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.task_id_seq;
       public       postgres    false    6         �            1259    15908623    task    TABLE     �   CREATE TABLE task (
    id integer DEFAULT nextval('task_id_seq'::regclass) NOT NULL,
    title character varying,
    description character varying,
    complete boolean,
    expired_date timestamp without time zone,
    person_name character varying
);
    DROP TABLE public.task;
       public         postgres    false    185    6         �            1259    15908175    usuario    TABLE     �  CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    primer_nombre character varying(100) NOT NULL,
    segundo_nombre character varying(100),
    primer_apellido character varying(100) NOT NULL,
    segundo_apellido character varying(100),
    nombre_usuario character varying(20) NOT NULL,
    password character varying NOT NULL,
    direccion character varying NOT NULL,
    email character varying,
    celular character varying
);
    DROP TABLE public.usuario;
       public         postgres    false    6         �            1259    15908186    usuario_id_usuario_seq    SEQUENCE     x   CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.usuario_id_usuario_seq;
       public       postgres    false    172    6         �           0    0    usuario_id_usuario_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;
            public       postgres    false    175         �            1259    15908181    venta    TABLE     �   CREATE TABLE venta (
    id integer NOT NULL,
    id_usuario integer NOT NULL,
    id_producto integer NOT NULL,
    cantidad integer NOT NULL,
    valor double precision NOT NULL
);
    DROP TABLE public.venta;
       public         postgres    false    6         �            1259    15908188    venta_id_seq    SEQUENCE     n   CREATE SEQUENCE venta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.venta_id_seq;
       public       postgres    false    173    6         �           0    0    venta_id_seq    SEQUENCE OWNED BY     /   ALTER SEQUENCE venta_id_seq OWNED BY venta.id;
            public       postgres    false    176         T           2604    15908246    customer customer_id    DEFAULT     n   ALTER TABLE ONLY customer ALTER COLUMN customer_id SET DEFAULT nextval('customer_customer_id_seq'::regclass);
 C   ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
       public       postgres    false    181    182    182         S           2604    15908235    emp99 id    DEFAULT     V   ALTER TABLE ONLY emp99 ALTER COLUMN id SET DEFAULT nextval('emp99_id_seq'::regclass);
 7   ALTER TABLE public.emp99 ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    179    180    180         P           2604    15908190    producto id    DEFAULT     \   ALTER TABLE ONLY producto ALTER COLUMN id SET DEFAULT nextval('producto_id_seq'::regclass);
 :   ALTER TABLE public.producto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    171         Q           2604    15908191    usuario id_usuario    DEFAULT     j   ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);
 A   ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
       public       postgres    false    175    172         R           2604    15908192    venta id    DEFAULT     V   ALTER TABLE ONLY venta ALTER COLUMN id SET DEFAULT nextval('venta_id_seq'::regclass);
 7   ALTER TABLE public.venta ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    176    173         �          0    15908243    customer 
   TABLE DATA                     public       postgres    false    182       2015.dat �          0    15908232    emp99 
   TABLE DATA                     public       postgres    false    180       2013.dat �          0    15908222 	   employees 
   TABLE DATA                     public       postgres    false    178       2011.dat �          0    15908169    producto 
   TABLE DATA                     public       postgres    false    171       2004.dat �          0    15908612    student 
   TABLE DATA                     public       postgres    false    184       2017.dat �          0    15908623    task 
   TABLE DATA                     public       postgres    false    186       2019.dat �          0    15908175    usuario 
   TABLE DATA                     public       postgres    false    172       2005.dat �          0    15908181    venta 
   TABLE DATA                     public       postgres    false    173       2006.dat �           0    0    customer_customer_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('customer_customer_id_seq', 2, true);
            public       postgres    false    181         �           0    0    emp99_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('emp99_id_seq', 1, false);
            public       postgres    false    179         �           0    0    hibernate_sequence    SEQUENCE SET     :   SELECT pg_catalog.setval('hibernate_sequence', 21, true);
            public       postgres    false    177         �           0    0    producto_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('producto_id_seq', 1, false);
            public       postgres    false    174         �           0    0    student_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('student_id_seq', 3, true);
            public       postgres    false    183         �           0    0    task_id_seq    SEQUENCE SET     2   SELECT pg_catalog.setval('task_id_seq', 7, true);
            public       postgres    false    185         �           0    0    usuario_id_usuario_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('usuario_id_usuario_seq', 1, false);
            public       postgres    false    175         �           0    0    venta_id_seq    SEQUENCE SET     4   SELECT pg_catalog.setval('venta_id_seq', 1, false);
            public       postgres    false    176         b           2606    15908251    customer customer_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
       public         postgres    false    182         `           2606    15908240    emp99 emp99_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY emp99
    ADD CONSTRAINT emp99_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.emp99 DROP CONSTRAINT emp99_pkey;
       public         postgres    false    180         ^           2606    15908229    employees employees_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public         postgres    false    178         X           2606    15908194    producto producto_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
       public         postgres    false    171         d           2606    15908620    student student_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public         postgres    false    184         f           2606    15908631    task task_pkey 
   CONSTRAINT     E   ALTER TABLE ONLY task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
       public         postgres    false    186         Z           2606    15908196    usuario usuario_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public         postgres    false    172         \           2606    15908198    venta venta_pkey 
   CONSTRAINT     G   ALTER TABLE ONLY venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
       public         postgres    false    173         g           2606    15908199    venta producto_fk    FK CONSTRAINT     i   ALTER TABLE ONLY venta
    ADD CONSTRAINT producto_fk FOREIGN KEY (id_producto) REFERENCES producto(id);
 ;   ALTER TABLE ONLY public.venta DROP CONSTRAINT producto_fk;
       public       postgres    false    171    173    1880         h           2606    15908204    venta user_fk    FK CONSTRAINT     k   ALTER TABLE ONLY venta
    ADD CONSTRAINT user_fk FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);
 7   ALTER TABLE ONLY public.venta DROP CONSTRAINT user_fk;
       public       postgres    false    173    172    1882                                                                                                                                                                                         2015.dat                                                                                            0000600 0004000 0002000 00000000344 13712637475 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO customer (customer_id, name, address, created_date) VALUES (1, 'mkyong1', 'address1', '2020-05-14');
INSERT INTO customer (customer_id, name, address, created_date) VALUES (2, 'mkyong2', 'address2', '2020-05-14');


                                                                                                                                                                                                                                                                                            2013.dat                                                                                            0000600 0004000 0002000 00000000002 13712637475 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2011.dat                                                                                            0000600 0004000 0002000 00000000257 13712637475 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO employees (id, "firstName", "lastName", "emailId", email_address, first_name, last_name) VALUES (1, 'pedro', 'diaz', 'dada@adsa.com', 'sssff', 'juan', 'pefff');


                                                                                                                                                                                                                                                                                                                                                 2004.dat                                                                                            0000600 0004000 0002000 00000000002 13712637475 0014246 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2017.dat                                                                                            0000600 0004000 0002000 00000000420 13712637475 0014256 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO student (id, name, passport_number) VALUES (3, 'Ranga', 'E1234567');
INSERT INTO student (id, name, passport_number) VALUES (4, 'RangaCreado', 'E1231231234567');
INSERT INTO student (id, name, passport_number) VALUES (2, 'RaviActualizado', 'A1234asdas568');


                                                                                                                                                                                                                                                2019.dat                                                                                            0000600 0004000 0002000 00000001673 13712637475 0014273 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        INSERT INTO task (id, title, description, complete, expired_date, person_name) VALUES (18, 'cxvbxcvb', 'xcvbxcvb', true, '2020-08-05 00:00:00', 'vbxcvbxcvb');
INSERT INTO task (id, title, description, complete, expired_date, person_name) VALUES (17, 'Tarea 17', 'Actualkizacion', true, '2020-08-05 00:00:00', 'Juan');
INSERT INTO task (id, title, description, complete, expired_date, person_name) VALUES (20, 'cxvb', 'vbxc', true, '2020-08-05 18:04:47.986', 'cvbxcvb');
INSERT INTO task (id, title, description, complete, expired_date, person_name) VALUES (13, 'vbncv', 'new Taskcvbncvb', true, '2020-08-05 00:00:00', 'ivonnevcbncvb');
INSERT INTO task (id, title, description, complete, expired_date, person_name) VALUES (15, 'The new task', 'new Task', true, '2020-08-05 00:00:00', 'ivonnecxbxcb');
INSERT INTO task (id, title, description, complete, expired_date, person_name) VALUES (21, 'xcvb', 'cvbxc', true, '2020-08-05 18:12:10.091', 'vbxcvb');


                                                                     2005.dat                                                                                            0000600 0004000 0002000 00000000002 13712637475 0014247 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              2006.dat                                                                                            0000600 0004000 0002000 00000000002 13712637475 0014250 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              restore.sql                                                                                         0000600 0004000 0002000 00000031133 13712637475 0015404 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 9.3.14
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.venta DROP CONSTRAINT user_fk;
ALTER TABLE ONLY public.venta DROP CONSTRAINT producto_fk;
ALTER TABLE ONLY public.venta DROP CONSTRAINT venta_pkey;
ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
ALTER TABLE ONLY public.task DROP CONSTRAINT task_pkey;
ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
ALTER TABLE ONLY public.producto DROP CONSTRAINT producto_pkey;
ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
ALTER TABLE ONLY public.emp99 DROP CONSTRAINT emp99_pkey;
ALTER TABLE ONLY public.customer DROP CONSTRAINT customer_pkey;
ALTER TABLE public.venta ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.usuario ALTER COLUMN id_usuario DROP DEFAULT;
ALTER TABLE public.producto ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.emp99 ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.customer ALTER COLUMN customer_id DROP DEFAULT;
DROP SEQUENCE public.venta_id_seq;
DROP TABLE public.venta;
DROP SEQUENCE public.usuario_id_usuario_seq;
DROP TABLE public.usuario;
DROP TABLE public.task;
DROP SEQUENCE public.task_id_seq;
DROP TABLE public.student;
DROP SEQUENCE public.student_id_seq;
DROP SEQUENCE public.producto_id_seq;
DROP TABLE public.producto;
DROP SEQUENCE public.hibernate_sequence;
DROP TABLE public.employees;
DROP SEQUENCE public.emp99_id_seq;
DROP TABLE public.emp99;
DROP SEQUENCE public.customer_customer_id_seq;
DROP TABLE public.customer;
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


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
-- Name: customer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE customer (
    customer_id integer NOT NULL,
    name character varying,
    address character varying,
    created_date date
);


ALTER TABLE customer OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE customer_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE customer_customer_id_seq OWNER TO postgres;

--
-- Name: customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE customer_customer_id_seq OWNED BY customer.customer_id;


--
-- Name: emp99; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE emp99 (
    id integer NOT NULL,
    name character varying,
    salary integer,
    designation character varying
);


ALTER TABLE emp99 OWNER TO postgres;

--
-- Name: emp99_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE emp99_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE emp99_id_seq OWNER TO postgres;

--
-- Name: emp99_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE emp99_id_seq OWNED BY emp99.id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE employees (
    id integer NOT NULL,
    "firstName" character varying,
    "lastName" character varying,
    "emailId" character varying,
    email_address character varying(255) NOT NULL,
    first_name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL
);


ALTER TABLE employees OWNER TO postgres;

--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE hibernate_sequence OWNER TO postgres;

--
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE producto (
    id integer NOT NULL,
    nombre_producto character varying NOT NULL,
    cantidad_producto integer NOT NULL
);


ALTER TABLE producto OWNER TO postgres;

--
-- Name: producto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE producto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE producto_id_seq OWNER TO postgres;

--
-- Name: producto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE producto_id_seq OWNED BY producto.id;


--
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE student_id_seq OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE student (
    id integer DEFAULT nextval('student_id_seq'::regclass) NOT NULL,
    name character varying,
    passport_number character varying
);


ALTER TABLE student OWNER TO postgres;

--
-- Name: task_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE task_id_seq
    START WITH 3
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE task_id_seq OWNER TO postgres;

--
-- Name: task; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE task (
    id integer DEFAULT nextval('task_id_seq'::regclass) NOT NULL,
    title character varying,
    description character varying,
    complete boolean,
    expired_date timestamp without time zone,
    person_name character varying
);


ALTER TABLE task OWNER TO postgres;

--
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    id_usuario integer NOT NULL,
    primer_nombre character varying(100) NOT NULL,
    segundo_nombre character varying(100),
    primer_apellido character varying(100) NOT NULL,
    segundo_apellido character varying(100),
    nombre_usuario character varying(20) NOT NULL,
    password character varying NOT NULL,
    direccion character varying NOT NULL,
    email character varying,
    celular character varying
);


ALTER TABLE usuario OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_id_usuario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_id_usuario_seq OWNER TO postgres;

--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_id_usuario_seq OWNED BY usuario.id_usuario;


--
-- Name: venta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE venta (
    id integer NOT NULL,
    id_usuario integer NOT NULL,
    id_producto integer NOT NULL,
    cantidad integer NOT NULL,
    valor double precision NOT NULL
);


ALTER TABLE venta OWNER TO postgres;

--
-- Name: venta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE venta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE venta_id_seq OWNER TO postgres;

--
-- Name: venta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE venta_id_seq OWNED BY venta.id;


--
-- Name: customer customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer ALTER COLUMN customer_id SET DEFAULT nextval('customer_customer_id_seq'::regclass);


--
-- Name: emp99 id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp99 ALTER COLUMN id SET DEFAULT nextval('emp99_id_seq'::regclass);


--
-- Name: producto id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto ALTER COLUMN id SET DEFAULT nextval('producto_id_seq'::regclass);


--
-- Name: usuario id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN id_usuario SET DEFAULT nextval('usuario_id_usuario_seq'::regclass);


--
-- Name: venta id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY venta ALTER COLUMN id SET DEFAULT nextval('venta_id_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2015.dat

--
-- Data for Name: emp99; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2013.dat

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2011.dat

--
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2004.dat

--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2017.dat

--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2019.dat

--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2005.dat

--
-- Data for Name: venta; Type: TABLE DATA; Schema: public; Owner: postgres
--

\i $$PATH$$/2006.dat

--
-- Name: customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('customer_customer_id_seq', 2, true);


--
-- Name: emp99_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('emp99_id_seq', 1, false);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('hibernate_sequence', 21, true);


--
-- Name: producto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('producto_id_seq', 1, false);


--
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('student_id_seq', 3, true);


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('task_id_seq', 7, true);


--
-- Name: usuario_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_id_usuario_seq', 1, false);


--
-- Name: venta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('venta_id_seq', 1, false);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (customer_id);


--
-- Name: emp99 emp99_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY emp99
    ADD CONSTRAINT emp99_pkey PRIMARY KEY (id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: producto producto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT producto_pkey PRIMARY KEY (id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: task task_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY task
    ADD CONSTRAINT task_pkey PRIMARY KEY (id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id_usuario);


--
-- Name: venta venta_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY venta
    ADD CONSTRAINT venta_pkey PRIMARY KEY (id);


--
-- Name: venta producto_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY venta
    ADD CONSTRAINT producto_fk FOREIGN KEY (id_producto) REFERENCES producto(id);


--
-- Name: venta user_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY venta
    ADD CONSTRAINT user_fk FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario);


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

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     