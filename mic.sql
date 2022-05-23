--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2
-- Dumped by pg_dump version 12.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ich;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ich;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ich;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ich;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ich;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ich;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ich;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ich;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ich;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ich;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ich;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ich;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO ich;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ich;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ich;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ich;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ich;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ich;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ich;

--
-- Name: murder_in_color_case; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.murder_in_color_case (
    id integer NOT NULL,
    user_id character varying(50) NOT NULL,
    case_name character varying(50) NOT NULL,
    days_left integer NOT NULL,
    evidence integer NOT NULL,
    signatures integer NOT NULL,
    warrant boolean NOT NULL,
    name character varying(50) NOT NULL,
    gender character varying(50) NOT NULL,
    race character varying(50) NOT NULL,
    height character varying(50) NOT NULL,
    age character varying(50) NOT NULL,
    weight character varying(50) NOT NULL,
    hair_color character varying(50) NOT NULL,
    face_feature character varying(50) NOT NULL,
    unique_feature character varying(50) NOT NULL,
    crime_place character varying(50) NOT NULL,
    weapon character varying(50) NOT NULL,
    notebook text NOT NULL,
    solved boolean NOT NULL,
    player_id integer NOT NULL
);


ALTER TABLE public.murder_in_color_case OWNER TO ich;

--
-- Name: murder_in_color_case_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.murder_in_color_case_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murder_in_color_case_id_seq OWNER TO ich;

--
-- Name: murder_in_color_case_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.murder_in_color_case_id_seq OWNED BY public.murder_in_color_case.id;


--
-- Name: murder_in_color_city; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.murder_in_color_city (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    theme character varying(50) NOT NULL,
    description text NOT NULL,
    travel_time integer NOT NULL
);


ALTER TABLE public.murder_in_color_city OWNER TO ich;

--
-- Name: murder_in_color_city_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.murder_in_color_city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murder_in_color_city_id_seq OWNER TO ich;

--
-- Name: murder_in_color_city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.murder_in_color_city_id_seq OWNED BY public.murder_in_color_city.id;


--
-- Name: murder_in_color_clue; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.murder_in_color_clue (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    place_id integer NOT NULL
);


ALTER TABLE public.murder_in_color_clue OWNER TO ich;

--
-- Name: murder_in_color_clue_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.murder_in_color_clue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murder_in_color_clue_id_seq OWNER TO ich;

--
-- Name: murder_in_color_clue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.murder_in_color_clue_id_seq OWNED BY public.murder_in_color_clue.id;


--
-- Name: murder_in_color_criminal; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.murder_in_color_criminal (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    gender character varying(50) NOT NULL,
    race character varying(50) NOT NULL,
    height character varying(50) NOT NULL,
    age character varying(50) NOT NULL,
    weight character varying(50) NOT NULL,
    hair_color character varying(50) NOT NULL,
    face_feature character varying(50) NOT NULL,
    unique_feature character varying(50) NOT NULL,
    crime_place character varying(50) NOT NULL,
    weapon character varying(50) NOT NULL
);


ALTER TABLE public.murder_in_color_criminal OWNER TO ich;

--
-- Name: murder_in_color_criminal_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.murder_in_color_criminal_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murder_in_color_criminal_id_seq OWNER TO ich;

--
-- Name: murder_in_color_criminal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.murder_in_color_criminal_id_seq OWNED BY public.murder_in_color_criminal.id;


--
-- Name: murder_in_color_place; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.murder_in_color_place (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.murder_in_color_place OWNER TO ich;

--
-- Name: murder_in_color_place_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.murder_in_color_place_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murder_in_color_place_id_seq OWNER TO ich;

--
-- Name: murder_in_color_place_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.murder_in_color_place_id_seq OWNED BY public.murder_in_color_place.id;


--
-- Name: murder_in_color_player; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.murder_in_color_player (
    id integer NOT NULL,
    user_id character varying(50) NOT NULL,
    rank character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    question_suspect character varying(50) NOT NULL,
    question_place character varying(50) NOT NULL,
    question_weapon character varying(50) NOT NULL,
    goodbye character varying(50) NOT NULL,
    place_id integer NOT NULL,
    city_id integer NOT NULL
);


ALTER TABLE public.murder_in_color_player OWNER TO ich;

--
-- Name: murder_in_color_player_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.murder_in_color_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murder_in_color_player_id_seq OWNER TO ich;

--
-- Name: murder_in_color_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.murder_in_color_player_id_seq OWNED BY public.murder_in_color_player.id;


--
-- Name: murder_in_color_responses; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.murder_in_color_responses (
    id integer NOT NULL,
    suspect text NOT NULL,
    place text NOT NULL,
    weapon text NOT NULL,
    goodbye text NOT NULL,
    witness_id integer NOT NULL
);


ALTER TABLE public.murder_in_color_responses OWNER TO ich;

--
-- Name: murder_in_color_responses_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.murder_in_color_responses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murder_in_color_responses_id_seq OWNER TO ich;

--
-- Name: murder_in_color_responses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.murder_in_color_responses_id_seq OWNED BY public.murder_in_color_responses.id;


--
-- Name: murder_in_color_witness; Type: TABLE; Schema: public; Owner: ich
--

CREATE TABLE public.murder_in_color_witness (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    place_id integer NOT NULL
);


ALTER TABLE public.murder_in_color_witness OWNER TO ich;

--
-- Name: murder_in_color_witness_id_seq; Type: SEQUENCE; Schema: public; Owner: ich
--

CREATE SEQUENCE public.murder_in_color_witness_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.murder_in_color_witness_id_seq OWNER TO ich;

--
-- Name: murder_in_color_witness_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ich
--

ALTER SEQUENCE public.murder_in_color_witness_id_seq OWNED BY public.murder_in_color_witness.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: murder_in_color_case id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_case ALTER COLUMN id SET DEFAULT nextval('public.murder_in_color_case_id_seq'::regclass);


--
-- Name: murder_in_color_city id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_city ALTER COLUMN id SET DEFAULT nextval('public.murder_in_color_city_id_seq'::regclass);


--
-- Name: murder_in_color_clue id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_clue ALTER COLUMN id SET DEFAULT nextval('public.murder_in_color_clue_id_seq'::regclass);


--
-- Name: murder_in_color_criminal id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_criminal ALTER COLUMN id SET DEFAULT nextval('public.murder_in_color_criminal_id_seq'::regclass);


--
-- Name: murder_in_color_place id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_place ALTER COLUMN id SET DEFAULT nextval('public.murder_in_color_place_id_seq'::regclass);


--
-- Name: murder_in_color_player id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_player ALTER COLUMN id SET DEFAULT nextval('public.murder_in_color_player_id_seq'::regclass);


--
-- Name: murder_in_color_responses id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_responses ALTER COLUMN id SET DEFAULT nextval('public.murder_in_color_responses_id_seq'::regclass);


--
-- Name: murder_in_color_witness id; Type: DEFAULT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_witness ALTER COLUMN id SET DEFAULT nextval('public.murder_in_color_witness_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add city	1	add_city
2	Can change city	1	change_city
3	Can delete city	1	delete_city
4	Can view city	1	view_city
5	Can add criminal	2	add_criminal
6	Can change criminal	2	change_criminal
7	Can delete criminal	2	delete_criminal
8	Can view criminal	2	view_criminal
9	Can add place	3	add_place
10	Can change place	3	change_place
11	Can delete place	3	delete_place
12	Can view place	3	view_place
13	Can add player	4	add_player
14	Can change player	4	change_player
15	Can delete player	4	delete_player
16	Can view player	4	view_player
17	Can add witness	5	add_witness
18	Can change witness	5	change_witness
19	Can delete witness	5	delete_witness
20	Can view witness	5	view_witness
21	Can add responses	6	add_responses
22	Can change responses	6	change_responses
23	Can delete responses	6	delete_responses
24	Can view responses	6	view_responses
25	Can add clue	7	add_clue
26	Can change clue	7	change_clue
27	Can delete clue	7	delete_clue
28	Can view clue	7	view_clue
29	Can add case	8	add_case
30	Can change case	8	change_case
31	Can delete case	8	delete_case
32	Can view case	8	view_case
33	Can add log entry	9	add_logentry
34	Can change log entry	9	change_logentry
35	Can delete log entry	9	delete_logentry
36	Can view log entry	9	view_logentry
37	Can add permission	10	add_permission
38	Can change permission	10	change_permission
39	Can delete permission	10	delete_permission
40	Can view permission	10	view_permission
41	Can add group	11	add_group
42	Can change group	11	change_group
43	Can delete group	11	delete_group
44	Can view group	11	view_group
45	Can add user	12	add_user
46	Can change user	12	change_user
47	Can delete user	12	delete_user
48	Can view user	12	view_user
49	Can add content type	13	add_contenttype
50	Can change content type	13	change_contenttype
51	Can delete content type	13	delete_contenttype
52	Can view content type	13	view_contenttype
53	Can add session	14	add_session
54	Can change session	14	change_session
55	Can delete session	14	delete_session
56	Can view session	14	view_session
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$180000$ktQsBLPTwB4L$c/iXmjIv1dMOcM5pqNBnkGcTWoAJfJ8iaKnvxKxUnRg=	2020-03-06 11:10:39.56765-07	t	CactusShark			levij.app@gmail.com	t	t	2020-03-06 11:09:48.907195-07
2	pbkdf2_sha256$180000$VdyuJeBepXAT$oelqzJiF4Hj1jCwHypiITdANcKL3pABYvCz4CdgQfHI=	2020-04-20 20:51:02.168687-06	t	levij.app@gmail.com			levij.app@gmail.com	t	t	2020-04-20 20:44:51.760507-06
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-03-06 16:49:25.712458-07	1	----	3		8	1
2	2020-03-06 22:01:12.204324-07	3	Idaho Springs	2	[{"changed": {"fields": ["Theme"]}}]	1	1
3	2020-04-20 21:02:05.551556-06	1	Dakota Turner	2	[]	2	2
4	2020-04-20 21:10:56.272271-06	2	Martha Baggins	1	[{"added": {}}]	2	2
5	2020-04-20 21:13:02.264227-06	2	Martha Baggins	2	[{"changed": {"fields": ["Face feature"]}}]	2	2
6	2020-04-20 21:22:07.66226-06	3	Shan Li	1	[{"added": {}}]	2	2
7	2020-04-20 21:31:35.408594-06	4	Olivia Bell	1	[{"added": {}}]	2	2
8	2020-04-20 21:36:55.974044-06	5	Martin Garcia	1	[{"added": {}}]	2	2
9	2020-04-20 21:38:37.672283-06	5	Martin Garcia	2	[]	2	2
10	2020-04-20 21:43:07.867732-06	6	Sophia Jones	1	[{"added": {}}]	2	2
11	2020-04-20 21:43:40.226645-06	1	Dakota Turner	3		2	2
12	2020-04-20 21:45:53.632814-06	7	Dakota Turner	1	[{"added": {}}]	2	2
13	2020-04-20 21:52:29.924857-06	8	Anastasia Hayes	1	[{"added": {}}]	2	2
14	2020-04-20 21:58:57.69957-06	9	Jacob Rodgers	1	[{"added": {}}]	2	2
15	2020-04-20 21:59:16.080319-06	2	Martha Baggins	2	[]	2	2
16	2020-04-20 22:08:13.752502-06	10	Karla Kun	1	[{"added": {}}]	2	2
17	2020-04-20 22:13:13.107249-06	11	Charles Obasi	1	[{"added": {}}]	2	2
18	2020-04-20 22:14:19.195091-06	30	Responses object (30)	2	[]	6	2
19	2020-04-20 22:14:48.846767-06	25	Responses object (25)	2	[]	6	2
20	2020-04-20 23:08:34.777215-06	28	Responses object (28)	2	[{"changed": {"fields": ["Weapon"]}}]	6	2
21	2020-04-21 22:03:55.546826-06	1	Anastasia Hayes	1	[{"added": {}}]	2	2
22	2020-04-21 22:08:01.480914-06	2	Charles Obasi	1	[{"added": {}}]	2	2
23	2020-04-21 22:11:53.763152-06	3	Olivia Bell	1	[{"added": {}}]	2	2
24	2020-04-21 22:24:26.881768-06	15	Olivia Bell	2	[]	5	2
25	2020-04-21 22:24:53.912077-06	3	Olivia Bell	2	[]	2	2
26	2020-04-21 22:39:59.876451-06	4	Jacob Rodgers	1	[{"added": {}}]	2	2
27	2020-04-21 22:43:03.483942-06	5	Sophia Jones	1	[{"added": {}}]	2	2
28	2020-04-21 22:44:56.110508-06	6	Dakota Turner	1	[{"added": {}}]	2	2
29	2020-04-21 22:50:25.826949-06	7	Karla Kun	1	[{"added": {}}]	2	2
30	2020-04-21 22:54:21.06178-06	8	Martin Garcia	1	[{"added": {}}]	2	2
31	2020-04-21 22:55:35.057424-06	1	Anastasia Hayes	2	[]	2	2
32	2020-04-21 22:55:39.445042-06	2	Charles Obasi	2	[]	2	2
33	2020-04-21 22:55:43.710737-06	3	Olivia Bell	2	[]	2	2
34	2020-04-21 22:55:48.387399-06	4	Jacob Rodgers	2	[]	2	2
35	2020-04-21 22:55:54.580561-06	5	Sophia Jones	2	[]	2	2
36	2020-04-21 22:56:02.76456-06	6	Dakota Turner	2	[]	2	2
37	2020-04-21 22:56:08.609765-06	7	Karla Kun	2	[]	2	2
38	2020-04-21 22:56:13.059969-06	8	Martin Garcia	2	[]	2	2
39	2020-04-21 23:01:07.634794-06	9	Alisha Trayi	1	[{"added": {}}]	2	2
40	2020-04-21 23:09:13.274259-06	10	Shan Li	1	[{"added": {}}]	2	2
41	2020-04-21 23:22:32.100871-06	28	Responses object (28)	2	[{"changed": {"fields": ["Place", "Weapon"]}}]	6	2
42	2020-04-21 23:23:28.633867-06	30	Responses object (30)	2	[]	6	2
43	2020-04-22 21:48:09.193401-06	4	Bob	1	[{"added": {}}]	4	2
44	2020-04-22 21:50:55.12525-06	5	Bob	1	[{"added": {}}]	4	2
45	2020-04-22 21:51:55.46498-06	3	Bob Thompson	1	[{"added": {}}]	8	2
46	2020-04-22 21:52:26.399976-06	3	Bob Thompson	2	[]	8	2
47	2020-04-23 14:45:34.730016-06	5	Bob	3		4	2
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	murder_in_color	city
2	murder_in_color	criminal
3	murder_in_color	place
4	murder_in_color	player
5	murder_in_color	witness
6	murder_in_color	responses
7	murder_in_color	clue
8	murder_in_color	case
9	admin	logentry
10	auth	permission
11	auth	group
12	auth	user
13	contenttypes	contenttype
14	sessions	session
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-03-06 10:58:52.676241-07
2	auth	0001_initial	2020-03-06 10:58:52.716543-07
3	admin	0001_initial	2020-03-06 10:58:52.768145-07
4	admin	0002_logentry_remove_auto_add	2020-03-06 10:58:52.781444-07
5	admin	0003_logentry_add_action_flag_choices	2020-03-06 10:58:52.790415-07
6	contenttypes	0002_remove_content_type_name	2020-03-06 10:58:52.808657-07
7	auth	0002_alter_permission_name_max_length	2020-03-06 10:58:52.813717-07
8	auth	0003_alter_user_email_max_length	2020-03-06 10:58:52.82258-07
9	auth	0004_alter_user_username_opts	2020-03-06 10:58:52.831814-07
10	auth	0005_alter_user_last_login_null	2020-03-06 10:58:52.839857-07
11	auth	0006_require_contenttypes_0002	2020-03-06 10:58:52.84212-07
12	auth	0007_alter_validators_add_error_messages	2020-03-06 10:58:52.84995-07
13	auth	0008_alter_user_username_max_length	2020-03-06 10:58:52.863342-07
14	auth	0009_alter_user_last_name_max_length	2020-03-06 10:58:52.871796-07
15	auth	0010_alter_group_name_max_length	2020-03-06 10:58:52.880602-07
16	auth	0011_update_proxy_permissions	2020-03-06 10:58:52.887777-07
18	sessions	0001_initial	2020-03-06 10:58:52.959422-07
19	murder_in_color	0002_auto_20200306_2354	2020-03-06 16:54:58.828769-07
20	murder_in_color	0003_auto_20200307_0000	2020-03-06 17:01:00.14832-07
21	murder_in_color	0001_initial	2020-04-21 21:29:22.827584-06
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
wlb945y4et864xa423kpqcar5l9s1ez1	YmExOTBjMDI0OGU2MDRlYzI1NDkzYzY5NjM0OTJkNjYwNTQ2NjRkZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MDMzOWZlMWJmZjAyMzQ4NjBiMzVlZGI2YjJmN2Q2NmNkNjJkNzNmIn0=	2020-03-20 12:10:39.570395-06
ilkuv8ergszr7qzrpvvcwpdf0y5mwjor	MzE3M2FlMmFhZWQ0NjUxZTNhM2VlNDQ0MTE0ZWIyMWEzZjJkOWUyMTp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzZmExOWFhNDJjNGZmMGNkYTg3YjYyM2U5NmViYzEwMjVkYTJkY2Q4In0=	2020-05-04 20:51:02.17178-06
\.


--
-- Data for Name: murder_in_color_case; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.murder_in_color_case (id, user_id, case_name, days_left, evidence, signatures, warrant, name, gender, race, height, age, weight, hair_color, face_feature, unique_feature, crime_place, weapon, notebook, solved, player_id) FROM stdin;
\.


--
-- Data for Name: murder_in_color_city; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.murder_in_color_city (id, name, theme, description, travel_time) FROM stdin;
1	Denver	Busy City	In front of you is a busy little town. People in the streets walk to and fro going about their business. You hear wagons rolling and children playing. You smell the homemade bread of restaurants nearby.	1
2	Louisville	Train Station	Ahead, you see a train pulled into the station, passengers around you hurry to get ready for the long journey in front of them. You see a train engineer with a hammer banging away, working on the train. You hear the loud toots of the horn and are suddenly engulfed in a thick cloud of smoke.	1
3	Idaho Springs	Indian Community	A friendly Indian community is in view. Indian mothers pick vegetables from the garden while young Indian warriors practice hunting techniques. You smell the herbs that are being used for an ancient ritual in a tent nearby.	1
4	Cripple Creek	Gold Rush	You haven't heard? There is gold in these waters! You see the creek packed with fortune hunters. You hear the roaring of water in the creek next to you. You feel the sand give way under your feet as you sink further into the creek's bank.	1
5	Fort Morgan	Military Fort	As you arrive, a massive military fort is in sight. Soldiers take part in military drills. You hear the sound of rifle bullets hitting their target. Your senses alert you to the smell of freshly baked beans. You notice a soldier cooking on a nearby fire.	1
\.


--
-- Data for Name: murder_in_color_clue; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.murder_in_color_clue (id, name, description, place_id) FROM stdin;
1	Report from Sheriff Caleb Beckett	"A witness came to my office and reported that our suspect could have been injured."	17
2	Weapon Transcript	"I did not get a close look at the weapon, but it looked metal."	16
3	Footprints	You notice some interesting footprints. It looks like the criminal has a bad leg.	18
4	Weapon Clue	"I noticed that he was carrying something blunt."	21
5	Age Clue	"He was no spring chicken."	20
6	Overheard Talk	You overheard someone describe the suspect like this. \r\n\r\n"He could have been alive when that tree was planted."	24
\.


--
-- Data for Name: murder_in_color_criminal; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.murder_in_color_criminal (id, name, gender, race, height, age, weight, hair_color, face_feature, unique_feature, crime_place, weapon) FROM stdin;
1	Anastasia Hayes	Female	Mexican	Average	Young	Thin	Blond	Big Nose	Scar	Lake	Gun
2	Charles Obasi	Male	African	Tall	Middle-Aged	Thin	Blond	Big Mouth	Scar	Store	Axe
3	Olivia Bell	Female	European	Short	Young	Average	Brown	Big Nose	Missing Teeth	Wagons	Rake
4	Jacob Rodgers	Male	European	Short	Young	Thin	Red	Big Ears	Mole	Courthouse	Shovel
5	Sophia Jones	Female	African	Tall	Middle-Aged	Heavy	Gray	Big Nose	Limp	Corral	Knife
6	Dakota Turner	Male	Indian	Tall	Old	Thin	Black	Big Eyebrows	Limp	Bridge	Hammer
7	Karla Kun	Female	Chinese	Short	Old	Average	Gray	Big Ears	Glasses	Forest	Rock
8	Martin Garcia	Male	Mexican	Tall	Old	Heavy	Gray	Big Eyebrows	Missing Teeth	Bank	Bow
9	Alisha Trayi	Female	Indian	Average	Young	Thin	Red	Big Ears	Mole	Meadow	Rope
10	Shan Li	Male	Chinese	Short	Old	Average	Brown	Big Nose	Limp	Bonfire	Bottle
\.


--
-- Data for Name: murder_in_color_place; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.murder_in_color_place (id, name, description, city_id) FROM stdin;
1	Headquarters	This is the head office of Marshall Caleb Beckett. A jail is in the back. You hear the snores of a prisoner sleeping on a cot. Maps are on the wall behind the Marshall's desk. A hat is laying on the desk. A gun case is in the corner.	1
2	Bank	The bank is strategically placed next to Headquarters. Employees count money behind a tall counter, in the background is a large black curtain. Sounds of change engulf the room. A small boy dumps his bag of coins for savings. Two windows are placed on either side of the central door.	1
3	Restaurant	You notice the fragrance of baked fish and salsa coming from the restaurant. Smells of freshly brewed coffee also invade your nose. You see a server with a large tray of drinks in her hand. Round tables are all around. Customers sit and wait for their food.	1
4	Hotel	The ding of a service bell rings in the hotel. Travelers wait in line for help. Room keys are hanging on nails behind the service desk. A pile of travel bags sit next to the door. You notice a couple grab their bags and head towards a wagon outside.	1
5	Saloon	Drunks stumble from the saloon. One hits the ground face first. Swinging doors open as people enter and exit. Benches are outside with a barrel next to the door. You see a bar with bottles set on shelves. You notice a round table with men around playing poker.	1
6	Barber	You see a striped pole outside the barber shop. A tolling church bell rings in the distance. You see a man with a beard. Shaving cream covers it. You hear the snipping of hair being cut. You see a man sitting on a chair waiting. He is reading a newspaper.	1
7	Cab	You come to the front of the train. A huge light is in the middle of it. Train horns blare as workers prepare for departure. Smoke billows out of the chimney. You see maps scattered on the driver's desk for the journey ahead.	2
8	Blacksmith	You hear the loud bangs of a blacksmith hammering and reshaping a customer's tool. You watch as sparks fly upward. There is a stable in the back. Horses stomp around making the place dusty. Horse shoes lay on a rack to be sold.	2
9	Depot	You notice a man checking train tickets at the depot. You hear dogs barking with excitement as they, along with other family members, give a proper farewell to the travelers. Passengers hurry along with bags in their hands. Children play while they wait to board.	2
10	Store	You see a building dedicated to refreshing the weary travelers. A couple sit at a table outside. An umbrella covers it. You see red pinstriped curtains lining a window. Candy, and other travel items are being displayed in the window. The door opens from time to time by anxious visitors.	2
11	Courthouse	You notice a row of pillars outside a courthouse. Steps come to a large central door where you see a sheriff leading a prisoner up the stairs. The prisoner struggles against his restraints. A statue of George Washington sits on the upper platform.	2
12	Caboose	You come to the the caboose. You see windows on the sides. Railroad workers pound at the inner joints of the train, securing the bolts in place. You notice iron rails on the back. A lantern is on board. A welded ladder leads to the train's roof.	2
13	Bonfire	You are surrounded by tipis. You hear the sound of beating drums as Indians, both old and young, dance around a bonfire. You see an extravagant feather headdress on the ground.  Elders warm themselves by the fire. You appreciate the passionate yells as they pray to their ancestors for guidance.	3
14	Garden	You see a space dedicated to crops. You hear the wind whistling through the corn, and smell the juicy onions. You notice a group of Indian ladies gardening, picking vegetables and putting them in large baskets. Some ladies have baby slings, taking care of their young.	3
15	Tipi	You smell the aroma of herbs coming from this tent. You see billows of smoke coming froma pot on a small fire. A sick Indian is laying on a bed. A lantern is by his side. Covering the inside of the tipi are colorful hand-crafted tapestries.	3
16	Lake	On a lake’s shore, you see piles of rocks. Several canoes are on the water. Indian elders teach their children how to fish. Other elders are showing young braves how to shoot rifles, which were traded by travelers. A section of beautiful sunflowers shine in the sunlight.	3
17	Forest	You stand on the edge of a forest. You can see many kinds of trees,\r\nfrom the mighty oak to the pine. You find a group of horses tied to a tree. Young warriors shoot arrows with their bows, trying to hit trees they have defined as targets.	3
18	Spring	You come across sacred springs of water that spill onto the ground. You view an Indian as he fills his canteen. Around the springs are rings of stones. You feel small being surrounded by giant pine trees. You hear the songs of birds around you.	3
19	Creek	You notice many people flocked on the banks of a creek.The water is clear enough to see rocks on the bottom. You find gold pans scattered on the coasts of the stream. All around, there are patches of cacti and yucca plants.	4
20	Wagons	A group of wagons is stopped. A man and his wife get ready for lunch, cooking on a campfire. You smell freshlybaked beans, chicken, and rice. The sound of a team of horses rings, as they are being cared for. A lantern sits on the back of a wagon.	4
21	Cabin	You come to a little wood cabin. A pile of sticks is at the side of the house. There is an axe stuck in a stump for chopping wood.You see smoke billowing out of the chimney. You notice a man working hard building a fence.	4
22	Meadow	You see a meadow up ahead. It comes alive with color as you notice a field of flowers, from sunflowers to lilies. Bees buzz as theygo from flower to flower. The sounds of kids playing in the green grass ring in your ears.	4
23	Pond	You stumble upon a small pond. You hear croaks of frogs that live there. You smell seaweed and other minerals in the water. You notice a trail of compacted plants created by years of migrating animals. You find sun-bleached antlers laying on the ground.	4
24	Mine	You notice a large mine with stalagmites at its entrance. You hear the fluttering of bats as men pick away at the rock for their prize gold nugget. You see a cart and railroad tracks nearby as you feel a strong breeze coming from the mine's entrance.	4
25	Outpost	You approach a hot campfire. Soldiers, sitting on stumps and rocks, huddle around it. You smell the fragrance of roasting coffee. You are engulfed in a plum of smoke. Other soldiers are on high alert keeping guard. They have rifles on their shoulders, ready for action at any moment.	5
26	Barracks	You come across the main housing for soldiers. Lines of small wood buildings are in view. You hear the sounds of troopers walking about with their families. A church bell rings in the distance. Dust flies up from the ground from the busyness around you.	5
27	Bridge	You come across a beautiful bridge. You see people around enjoying the scenery of both plant life and animal life.The bridge is made from smooth stones, and built over a slow-moving river. You notice a lantern resting on the side of the bridge.	5
28	Command	You come to the command office of the army captain. You hear a choir of crickets singing nearby. You notice a compass on a desk. Maps are hung on the wall behind it. An officer's coat and hat are next to the door.	5
29	Corral	You see a fenced area with a group of horses inside. The sound of neighing surrounds you. A soldier on a horse riding away. There is a trough with a man pouring water into it, while horses drink from it. A gate with a padlock keeps this area secure.	5
30	Range	You see men lined up to shoot targets. Their low-powered rifles rest on sandbags for better aim. You hear shots ringing out as the red targets move with every hit. You smell the distinct odor of gunpowder. You notice a man at a nearby table cleaning his gun.	5
\.


--
-- Data for Name: murder_in_color_player; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.murder_in_color_player (id, user_id, rank, name, description, question_suspect, question_place, question_weapon, goodbye, place_id, city_id) FROM stdin;
\.


--
-- Data for Name: murder_in_color_responses; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.murder_in_color_responses (id, suspect, place, weapon, goodbye, witness_id) FROM stdin;
1	He was as tall as the trees!	He had dried mud on his boots.	I am sorry, I did not notice anything.	I hope you find the crook soon!	1
2	He was head and shoulders above everyone.	He mentioned how he loved horses.	I did not notice anything out of the ordinary.	Have a wonderful day!	2
3	He was as thin as a bacon slice.	He said he was around water.	Everything was ok from my perspective.	Good day!	3
4	He is as thin as I am.	He mentioned that he was warming himself by a fire.	Everything was alright to me.	Good Luck!	4
5	We could see eye to eye.	He noticed the sound of neighing.	I don't know anything about that, sorry.	You have a splendid day.	5
6	You would need at least two of him to make a shadow.	"Smoke follows beauty", he kept saying.	I didn't see anything.	Safe travels!	6
7	I have a sore neck after talking to him.	He said he sat on a stone there.	I cannot speak on this.	Have a great day ahead!	7
8	His eyebrows could rival a bush.	I saw him doing something quite strange there. He had asked me if I had a match, because the light went out.	I have nothing odd to report about that.	No Problem!	8
9	He was as tall as me.	He mentioned something about a group of rocks.	Everything seemed normal to me.	I am glad to help!	9
10	The thing that stood out to me was his eyebrows.	He was telling me how well the fire was built.	I did not hear anything about that!	Adios!	10
11	He had a lot of hair, and it wasn't on top.	"The fire was quite blinding!", he said.	I saw nothing special.	I wish you well!	11
12	I would have to stand on myself to get a good look at his face.	He was telling me how smooth the rocks were over there.	I didn't see any weapon.	I wish there was more I could do!	12
13	His hair was the color of coal.	He did not mention anything about where he had been.	I cannot help you with that.	I hope you find him soon!	13
14	I was surprised to see someone else as thin as me.	No information on the place to report.	I couldn't be sure about any weapon.	I hope everything turns out alright!	14
15	I thought I saw some ribs on the man.	I could not give you any details about the location.	I did not hear anything about that.	I hope you find who you are looking for!	15
16	He bragged how good he was with a bow and arrow.	I cannot remember anything about the place he mentioned.	I am sorry, I cannot give you a definite answer.	Goodbye!	16
17	His hair blended into the night sky like mine.	I do not recall anything.	Nothing comes to mind.	If I think of any more information, I will let you know!	17
18	He mentioned he had to get something from his tent.	I cannot help you, unfortunately.	I forget what he mentioned about that.	I wish I could have assisted more!	18
19	If I did an eyebrow battle with his, we would be evenly matched.	I did not hear anything about that.	He was carrying around a banging instrument.	Take care!	19
20	He had a large umbrella over his eyes.	I cannot add any extra information on the place.	He could have used the tool to fasten the table together.	Farewell!	20
21	He was a giant.	I cannot add anything new about it.	I noticed one of my tools went missing right after he visited.	I hope you catch him!	21
22	I looked up to him.	He never mentioned any places he visited.	I saw him get on the train with something with a handle.	Take it easy!	22
23	Forehead sweat would never reach his eyes.	I cannot comment on this.	I thought I saw a T shaped item in a bag.	I wish you the best!	23
24	I wondered how many doorways he ran into.	That never came up in our conversation.	I noticed the head of it sticking out of a bag.	Be blessed!	24
25	He would fit in well here.	He commented about how well their aim was.	If he had one, I did not see it.	See you later!	25
26	I asked him if he was from around here.	He mentioned hearing crickets in the night.	There was nothing I noticed.	Have a great rest of your day!	26
27	He could fit through a large crack easily.	He said he had helped gather wood for a fire nearby.	If I knew anything, I would tell you.	Bye!	27
29	If the wind blew, he would have been swept away.	He mentioned a bell he heard.	I did not find anything suspicious.	Don't worry about!	29
28	He showed me his war cry.	He talked about hearing gunshots.	I saw nothing in his hands.	Have a good trip!	28
30	There was not much to him.	He mentioned how he loved the smell of coffee.	I didn't see anything to make me question him.	Wonderful day!	30
\.


--
-- Data for Name: murder_in_color_witness; Type: TABLE DATA; Schema: public; Owner: ich
--

COPY public.murder_in_color_witness (id, name, description, place_id) FROM stdin;
1	Martha Baggins	You spot a beautiful, young Mexican lady. She is average in weight, but small in height. Her black hair gleams in the sun. You notice a small mole next to her giant mouth.	1
2	Ezra Banks	You see a tall, middle-aged European built like a horse. He has a scar across his forehead. He has eyebrows that were so big. You see blond hair trying to escape the cowboy hat on top.	2
3	Karla Kun	You see an elderly Chinese cook taking her break. She has large, round glasses to see with, and big ears to hear with. Though she is short, her gray hair speaks of her experience. She looks average when it comes to her weight.	3
4	Rohan Dalip	You see an old Indian with ordinary stature. You notice he has an extra long nose. You see his tongue as he smiles back with a missing tooth. His brown hair blows in the wind as you stare at his thin frame.	4
5	Sophia Jones	You see a tall, African lady in front of you. You noticed a limp in her step as she came closer to greet you. She wears a flowery hat to cover her gray head. She is middle-aged with a bulky figure. She has a larger than normal nose.	6
6	Jacob Rodgers	A short, young European stares back at you with a tired look on his face. He has a mole on his lip along with large ears. His red hair is short. His thin body blends into the background.	5
7	Anastasia Hayes	You see a beautiful young Mexican lady come out of the Cabin. She has a scar across her hand from a lifestyle of hard work. You notice that her nose is sticking out further than the average. Her long blond hair engulfs her medium-statured, thin body.	21
8	Ruth Phillips	You see a middle-aged Chinese lady with brown hair. Her glasses cover her face. She is average in height, but big in size. You notice her big mouth that fits perfectly with her friendly and big personality.	22
9	Dakota Turner	You see a tall and thin Indian get up from panning gold. He drags an injured foot as he meets you. He is an experienced elder with black hair and big eyebrows.	19
10	Caton Perez	You notice a short, average-sized young man. He is a Mexican with unusual gray hair. You discover that he has a couple of teeth missing, but above-average ears.	24
11	Charles Obasi	You see a medium-aged, tall, and thin African approach. He has a scar across his cheek from his labors. You notice he has really short blond hair and large mouth as he greets you.	23
12	Abel Price	You come to an elderly Chinese gentleman wearing a cowboy hat. He has a short, but big figure. You see brown hair sticking out of his hat. You notice that he has a big mouth and is wearing glasses.	20
13	Vincent Imari	You notice an average African in both weight and height come up to you. His old age requires him to wear glasses. He has large eyebrows, which are gray along with his hair.	25
14	Cheng Biming	You watch a tall and thin Chinese soldier. He has a scar next to his large ears from past battles. He has black hair and looks to be middle-aged.	30
16	Maria Valdez	You see an elderly Mexican. Her frame is large, but her height is average. She has blond hair placed in a bun on top of her head. She has a big mouth and a mole right next to it.	26
17	Chester Thompson	You see an elderly army commander, tall and average-sized, approach you with a limp. He has black hair, large eyebrows, and is of European descent.	28
18	Meagan Harper	You see a middle-aged, medium-statured, and medium-sized African. She favors one foot you noticed as she came up. She has red hair, and large ears poking out of that hair.	29
19	Martin Garcia	You see a tall, heavy-set Mexican man greet you. He has giant eyebrows, as well as a missing tooth. He is an older gentleman with gray hair.	9
20	Alisha Trayi	You come across a skinny Indian with medium height. She has unusually red, long hair. She is young with a mole on her forehead. Underneath her hair, you notice large ears.	10
21	Noah Smith	You see the medium-aged, European blacksmith get up, clean his hands, and limp towards you. He is average in both height and weight. He has short, blond hair, and a mouth that is larger than normal.	8
22	Shan Li	You see a short and average-sized Chinese man in front of you. He is an older gentleman with a limp. You are drawn to a large nose sitting in the middle of his small face. He has brown hair under his conductor's hat.	7
23	Tara Nira	A tall, thin Indian walks up to you. She has large eyebrows with a mole right above. Her blond hair sparkles in the sunlight. She looks young.	12
24	Kelly Davis	You see a heavy-structured, short African. Her beauty is complemented with glasses that sit on top of big ears. She is middle-aged with gray hair from life experiences.	11
25	Mitsu Hakan	You watch a young Indian warrior come over to you. He is average height, but built strong and bulky. He has a scar across his chest. He has brown hair, and you notice his big mouth as you speak with him.	13
26	Winona Miller	A middle-aged Indian lady gets up from gardening and meets you. Both her height and weight are ordinary.  She has a couple of missing teeth, and a large nose above the mouth. She has red hair to match her beautiful frame.	14
27	Elizabeth Flores	You see a short and thin elder. She is Mexican in origin. She has gray hair and large ears next to it. She is also wearing glasses.	16
28	Song Tao	A tall and bulky lady comes to you. She is Chinese. She has a scar on her chin and red hair on top. She looks young, but has a nose larger than the average.	17
29	Issa Agu	You see a middle-aged African ahead of you. She has an average stature, but is skinny. She has a mole in the middle of her lip, and black hair flowing down. She also has thick eyebrows.	18
30	Adriel Yazzie	You see an elderly Indian medicine man approach. He has big eyebrows and hair, both are black. He has a scar on his temple from previous fights. He is tall and thin.	15
15	Olivia Bell	You see a short European lady average in weight. She looks young, and has a big nose for her small face. You see long, brown hair flowing from under a hat she wears. You discover rather quickly that she is missing some teeth when she greets you.	27
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 56, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 47, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 14, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);


--
-- Name: murder_in_color_case_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.murder_in_color_case_id_seq', 3, true);


--
-- Name: murder_in_color_city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.murder_in_color_city_id_seq', 5, true);


--
-- Name: murder_in_color_clue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.murder_in_color_clue_id_seq', 6, true);


--
-- Name: murder_in_color_criminal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.murder_in_color_criminal_id_seq', 10, true);


--
-- Name: murder_in_color_place_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.murder_in_color_place_id_seq', 30, true);


--
-- Name: murder_in_color_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.murder_in_color_player_id_seq', 5, true);


--
-- Name: murder_in_color_responses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.murder_in_color_responses_id_seq', 30, true);


--
-- Name: murder_in_color_witness_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ich
--

SELECT pg_catalog.setval('public.murder_in_color_witness_id_seq', 30, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: murder_in_color_case murder_in_color_case_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_case
    ADD CONSTRAINT murder_in_color_case_pkey PRIMARY KEY (id);


--
-- Name: murder_in_color_city murder_in_color_city_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_city
    ADD CONSTRAINT murder_in_color_city_pkey PRIMARY KEY (id);


--
-- Name: murder_in_color_clue murder_in_color_clue_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_clue
    ADD CONSTRAINT murder_in_color_clue_pkey PRIMARY KEY (id);


--
-- Name: murder_in_color_criminal murder_in_color_criminal_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_criminal
    ADD CONSTRAINT murder_in_color_criminal_pkey PRIMARY KEY (id);


--
-- Name: murder_in_color_place murder_in_color_place_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_place
    ADD CONSTRAINT murder_in_color_place_pkey PRIMARY KEY (id);


--
-- Name: murder_in_color_player murder_in_color_player_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_player
    ADD CONSTRAINT murder_in_color_player_pkey PRIMARY KEY (id);


--
-- Name: murder_in_color_responses murder_in_color_responses_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_responses
    ADD CONSTRAINT murder_in_color_responses_pkey PRIMARY KEY (id);


--
-- Name: murder_in_color_witness murder_in_color_witness_pkey; Type: CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_witness
    ADD CONSTRAINT murder_in_color_witness_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: murder_in_color_case_player_id_c4d760bf; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX murder_in_color_case_player_id_c4d760bf ON public.murder_in_color_case USING btree (player_id);


--
-- Name: murder_in_color_clue_place_id_d78930f6; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX murder_in_color_clue_place_id_d78930f6 ON public.murder_in_color_clue USING btree (place_id);


--
-- Name: murder_in_color_place_city_id_8fd04fdd; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX murder_in_color_place_city_id_8fd04fdd ON public.murder_in_color_place USING btree (city_id);


--
-- Name: murder_in_color_responses_witness_id_35a4a325; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX murder_in_color_responses_witness_id_35a4a325 ON public.murder_in_color_responses USING btree (witness_id);


--
-- Name: murder_in_color_witness_place_id_65d2311b; Type: INDEX; Schema: public; Owner: ich
--

CREATE INDEX murder_in_color_witness_place_id_65d2311b ON public.murder_in_color_witness USING btree (place_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: murder_in_color_case murder_in_color_case_player_id_c4d760bf_fk_murder_in; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_case
    ADD CONSTRAINT murder_in_color_case_player_id_c4d760bf_fk_murder_in FOREIGN KEY (player_id) REFERENCES public.murder_in_color_player(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: murder_in_color_clue murder_in_color_clue_place_id_d78930f6_fk_murder_in; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_clue
    ADD CONSTRAINT murder_in_color_clue_place_id_d78930f6_fk_murder_in FOREIGN KEY (place_id) REFERENCES public.murder_in_color_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: murder_in_color_place murder_in_color_plac_city_id_8fd04fdd_fk_murder_in; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_place
    ADD CONSTRAINT murder_in_color_plac_city_id_8fd04fdd_fk_murder_in FOREIGN KEY (city_id) REFERENCES public.murder_in_color_city(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: murder_in_color_responses murder_in_color_resp_witness_id_35a4a325_fk_murder_in; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_responses
    ADD CONSTRAINT murder_in_color_resp_witness_id_35a4a325_fk_murder_in FOREIGN KEY (witness_id) REFERENCES public.murder_in_color_witness(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: murder_in_color_witness murder_in_color_witn_place_id_65d2311b_fk_murder_in; Type: FK CONSTRAINT; Schema: public; Owner: ich
--

ALTER TABLE ONLY public.murder_in_color_witness
    ADD CONSTRAINT murder_in_color_witn_place_id_65d2311b_fk_murder_in FOREIGN KEY (place_id) REFERENCES public.murder_in_color_place(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

