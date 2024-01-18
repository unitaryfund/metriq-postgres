--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3 (Ubuntu 14.3-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.3 (Ubuntu 14.3-1.pgdg20.04+1)

-- Started on 2022-06-13 15:11:41 EDT

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
-- TOC entry 209 (class 1259 OID 22645)
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO metriq;

--
-- TOC entry 210 (class 1259 OID 22648)
-- Name: dataTypes; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."dataTypes" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    name text NOT NULL,
    "friendlyName" text NOT NULL,
    "friendlyType" text NOT NULL
);


ALTER TABLE public."dataTypes" OWNER TO metriq;

--
-- TOC entry 211 (class 1259 OID 22653)
-- Name: dataTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."dataTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."dataTypes_id_seq" OWNER TO metriq;

--
-- TOC entry 3535 (class 0 OID 0)
-- Dependencies: 211
-- Name: dataTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."dataTypes_id_seq" OWNED BY public."dataTypes".id;


--
-- TOC entry 212 (class 1259 OID 22654)
-- Name: likes; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.likes (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "submissionId" integer NOT NULL
);


ALTER TABLE public.likes OWNER TO metriq;

--
-- TOC entry 213 (class 1259 OID 22657)
-- Name: likes_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.likes_id_seq OWNER TO metriq;

--
-- TOC entry 3536 (class 0 OID 0)
-- Dependencies: 213
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- TOC entry 214 (class 1259 OID 22658)
-- Name: methods; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.methods (
    id integer NOT NULL,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "methodId" integer
);


ALTER TABLE public.methods OWNER TO metriq;

--
-- TOC entry 215 (class 1259 OID 22663)
-- Name: methods_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.methods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.methods_id_seq OWNER TO metriq;

--
-- TOC entry 3537 (class 0 OID 0)
-- Dependencies: 215
-- Name: methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.methods_id_seq OWNED BY public.methods.id;


--
-- TOC entry 216 (class 1259 OID 22664)
-- Name: moderationReports; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."moderationReports" (
    id integer NOT NULL,
    description text NOT NULL,
    "resolvedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "submissionId" integer NOT NULL
);


ALTER TABLE public."moderationReports" OWNER TO metriq;

--
-- TOC entry 217 (class 1259 OID 22669)
-- Name: moderationReports_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."moderationReports_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."moderationReports_id_seq" OWNER TO metriq;

--
-- TOC entry 3538 (class 0 OID 0)
-- Dependencies: 217
-- Name: moderationReports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."moderationReports_id_seq" OWNED BY public."moderationReports".id;


--
-- TOC entry 218 (class 1259 OID 22670)
-- Name: platformDataTypeValues; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."platformDataTypeValues" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    "userId" integer NOT NULL,
    value text NOT NULL,
    "platformId" integer NOT NULL,
    "platformDataTypeId" integer NOT NULL,
    notes text NOT NULL
);


ALTER TABLE public."platformDataTypeValues" OWNER TO metriq;

--
-- TOC entry 219 (class 1259 OID 22675)
-- Name: platformDataTypeValues_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."platformDataTypeValues_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."platformDataTypeValues_id_seq" OWNER TO metriq;

--
-- TOC entry 3539 (class 0 OID 0)
-- Dependencies: 219
-- Name: platformDataTypeValues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."platformDataTypeValues_id_seq" OWNED BY public."platformDataTypeValues".id;


--
-- TOC entry 220 (class 1259 OID 22676)
-- Name: platformDataTypes; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."platformDataTypes" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    "userId" integer NOT NULL,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL,
    "dataTypeId" integer NOT NULL
);


ALTER TABLE public."platformDataTypes" OWNER TO metriq;

--
-- TOC entry 221 (class 1259 OID 22681)
-- Name: platformDataTypes_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."platformDataTypes_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."platformDataTypes_id_seq" OWNER TO metriq;

--
-- TOC entry 3540 (class 0 OID 0)
-- Dependencies: 221
-- Name: platformDataTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."platformDataTypes_id_seq" OWNED BY public."platformDataTypes".id;


--
-- TOC entry 222 (class 1259 OID 22682)
-- Name: platforms; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.platforms (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL,
    "userId" integer NOT NULL,
    "platformId" integer
);


ALTER TABLE public.platforms OWNER TO metriq;

--
-- TOC entry 223 (class 1259 OID 22687)
-- Name: platforms_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.platforms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.platforms_id_seq OWNER TO metriq;

--
-- TOC entry 3541 (class 0 OID 0)
-- Dependencies: 223
-- Name: platforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.platforms_id_seq OWNED BY public.platforms.id;


--
-- TOC entry 224 (class 1259 OID 22688)
-- Name: resultPlatformRefs; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."resultPlatformRefs" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "resultId" integer NOT NULL,
    "platformId" integer NOT NULL
);


ALTER TABLE public."resultPlatformRefs" OWNER TO metriq;

--
-- TOC entry 225 (class 1259 OID 22691)
-- Name: resultPlatformRefs_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."resultPlatformRefs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."resultPlatformRefs_id_seq" OWNER TO metriq;

--
-- TOC entry 3542 (class 0 OID 0)
-- Dependencies: 225
-- Name: resultPlatformRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."resultPlatformRefs_id_seq" OWNED BY public."resultPlatformRefs".id;


--
-- TOC entry 226 (class 1259 OID 22692)
-- Name: results; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.results (
    id integer NOT NULL,
    "isHigherBetter" boolean NOT NULL,
    "metricName" text NOT NULL,
    "metricValue" double precision NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "submissionMethodRefId" integer NOT NULL,
    "submissionTaskRefId" integer NOT NULL,
    "evaluatedAt" date,
    notes text NOT NULL,
    "standardError" double precision,
    "sampleSize" integer,
    "submissionPlatformRefId" integer
);


ALTER TABLE public.results OWNER TO metriq;

--
-- TOC entry 227 (class 1259 OID 22697)
-- Name: results_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.results_id_seq OWNER TO metriq;

--
-- TOC entry 3543 (class 0 OID 0)
-- Dependencies: 227
-- Name: results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.results_id_seq OWNED BY public.results.id;


--
-- TOC entry 228 (class 1259 OID 22698)
-- Name: submissionMethodRefs; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."submissionMethodRefs" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "submissionId" integer NOT NULL,
    "methodId" integer NOT NULL
);


ALTER TABLE public."submissionMethodRefs" OWNER TO metriq;

--
-- TOC entry 229 (class 1259 OID 22701)
-- Name: submissionMethodRefs_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."submissionMethodRefs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."submissionMethodRefs_id_seq" OWNER TO metriq;

--
-- TOC entry 3544 (class 0 OID 0)
-- Dependencies: 229
-- Name: submissionMethodRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionMethodRefs_id_seq" OWNED BY public."submissionMethodRefs".id;


--
-- TOC entry 230 (class 1259 OID 22702)
-- Name: submissionPlatformRefs; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."submissionPlatformRefs" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "submissionId" integer NOT NULL,
    "platformId" integer NOT NULL
);


ALTER TABLE public."submissionPlatformRefs" OWNER TO metriq;

--
-- TOC entry 231 (class 1259 OID 22705)
-- Name: submissionPlatformRefs_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."submissionPlatformRefs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."submissionPlatformRefs_id_seq" OWNER TO metriq;

--
-- TOC entry 3545 (class 0 OID 0)
-- Dependencies: 231
-- Name: submissionPlatformRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionPlatformRefs_id_seq" OWNED BY public."submissionPlatformRefs".id;


--
-- TOC entry 232 (class 1259 OID 22706)
-- Name: submissionTagRefs; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."submissionTagRefs" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "submissionId" integer NOT NULL,
    "tagId" integer NOT NULL
);


ALTER TABLE public."submissionTagRefs" OWNER TO metriq;

--
-- TOC entry 233 (class 1259 OID 22709)
-- Name: submissionTagRefs_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."submissionTagRefs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."submissionTagRefs_id_seq" OWNER TO metriq;

--
-- TOC entry 3546 (class 0 OID 0)
-- Dependencies: 233
-- Name: submissionTagRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionTagRefs_id_seq" OWNED BY public."submissionTagRefs".id;


--
-- TOC entry 234 (class 1259 OID 22710)
-- Name: submissionTaskRefs; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."submissionTaskRefs" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "submissionId" integer NOT NULL,
    "taskId" integer NOT NULL
);


ALTER TABLE public."submissionTaskRefs" OWNER TO metriq;

--
-- TOC entry 235 (class 1259 OID 22713)
-- Name: submissionTaskRefs_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."submissionTaskRefs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."submissionTaskRefs_id_seq" OWNER TO metriq;

--
-- TOC entry 3547 (class 0 OID 0)
-- Dependencies: 235
-- Name: submissionTaskRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionTaskRefs_id_seq" OWNED BY public."submissionTaskRefs".id;


--
-- TOC entry 236 (class 1259 OID 22714)
-- Name: submissions; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.submissions (
    id integer NOT NULL,
    name text NOT NULL,
    "nameNormal" text NOT NULL,
    description text NOT NULL,
    "contentUrl" text NOT NULL,
    "thumbnailUrl" text,
    "approvedAt" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.submissions OWNER TO metriq;

--
-- TOC entry 237 (class 1259 OID 22719)
-- Name: submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.submissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.submissions_id_seq OWNER TO metriq;

--
-- TOC entry 3548 (class 0 OID 0)
-- Dependencies: 237
-- Name: submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.submissions_id_seq OWNED BY public.submissions.id;


--
-- TOC entry 238 (class 1259 OID 22720)
-- Name: tags; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public.tags OWNER TO metriq;

--
-- TOC entry 239 (class 1259 OID 22725)
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.tags_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO metriq;

--
-- TOC entry 3549 (class 0 OID 0)
-- Dependencies: 239
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- TOC entry 240 (class 1259 OID 22726)
-- Name: tasks; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.tasks (
    id integer NOT NULL,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "taskId" integer,
    "isHideChart" boolean DEFAULT false NOT NULL
);


ALTER TABLE public.tasks OWNER TO metriq;

--
-- TOC entry 241 (class 1259 OID 22732)
-- Name: tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.tasks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_id_seq OWNER TO metriq;

--
-- TOC entry 3550 (class 0 OID 0)
-- Dependencies: 241
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- TOC entry 242 (class 1259 OID 22733)
-- Name: users; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username text NOT NULL,
    "usernameNormal" text NOT NULL,
    "passwordHash" text NOT NULL,
    email text NOT NULL,
    "clientToken" text,
    "recoveryToken" text,
    "clientTokenCreated" timestamp with time zone,
    "recoveryTokenExpiration" timestamp with time zone,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "deletedAt" timestamp with time zone,
    affiliation text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.users OWNER TO metriq;

--
-- TOC entry 243 (class 1259 OID 22739)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO metriq;

--
-- TOC entry 3551 (class 0 OID 0)
-- Dependencies: 243
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 3254 (class 2604 OID 22740)
-- Name: dataTypes id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."dataTypes" ALTER COLUMN id SET DEFAULT nextval('public."dataTypes_id_seq"'::regclass);


--
-- TOC entry 3255 (class 2604 OID 22741)
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- TOC entry 3256 (class 2604 OID 22742)
-- Name: methods id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods ALTER COLUMN id SET DEFAULT nextval('public.methods_id_seq'::regclass);


--
-- TOC entry 3257 (class 2604 OID 22743)
-- Name: moderationReports id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports" ALTER COLUMN id SET DEFAULT nextval('public."moderationReports_id_seq"'::regclass);


--
-- TOC entry 3258 (class 2604 OID 22744)
-- Name: platformDataTypeValues id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues" ALTER COLUMN id SET DEFAULT nextval('public."platformDataTypeValues_id_seq"'::regclass);


--
-- TOC entry 3259 (class 2604 OID 22745)
-- Name: platformDataTypes id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypes" ALTER COLUMN id SET DEFAULT nextval('public."platformDataTypes_id_seq"'::regclass);


--
-- TOC entry 3260 (class 2604 OID 22746)
-- Name: platforms id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms ALTER COLUMN id SET DEFAULT nextval('public.platforms_id_seq'::regclass);


--
-- TOC entry 3261 (class 2604 OID 22747)
-- Name: resultPlatformRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs" ALTER COLUMN id SET DEFAULT nextval('public."resultPlatformRefs_id_seq"'::regclass);


--
-- TOC entry 3262 (class 2604 OID 22748)
-- Name: results id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results ALTER COLUMN id SET DEFAULT nextval('public.results_id_seq'::regclass);


--
-- TOC entry 3263 (class 2604 OID 22749)
-- Name: submissionMethodRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionMethodRefs_id_seq"'::regclass);


--
-- TOC entry 3264 (class 2604 OID 22750)
-- Name: submissionPlatformRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionPlatformRefs_id_seq"'::regclass);


--
-- TOC entry 3265 (class 2604 OID 22751)
-- Name: submissionTagRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionTagRefs_id_seq"'::regclass);


--
-- TOC entry 3266 (class 2604 OID 22752)
-- Name: submissionTaskRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionTaskRefs_id_seq"'::regclass);


--
-- TOC entry 3267 (class 2604 OID 22753)
-- Name: submissions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions ALTER COLUMN id SET DEFAULT nextval('public.submissions_id_seq'::regclass);


--
-- TOC entry 3268 (class 2604 OID 22754)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 3270 (class 2604 OID 22755)
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- TOC entry 3272 (class 2604 OID 22756)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3495 (class 0 OID 22645)
-- Dependencies: 209
-- Data for Name: SequelizeMeta; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."SequelizeMeta" (name) FROM stdin;
001-386_UserAffilliation.js
002-363_MethodHierarchy.js
003-505_ResultsConfidenceIntervals.js
004-452_Architecture.js
005-452_ArchitectureRefs.js
\.


--
-- TOC entry 3496 (class 0 OID 22648)
-- Dependencies: 210
-- Data for Name: dataTypes; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."dataTypes" (id, "updatedAt", "createdAt", name, "friendlyName", "friendlyType") FROM stdin;
1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	BOOLEAN	Boolean (true/false)	bool
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	TEXT	Text	string
3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	CITEXT	Text (case-insenstive)	string
4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	BIGINT	Integer	int
5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	'DOUBLE PRECISION'	Number (64-bit floating point)	number
6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	DECIMAL	Decimal (high-precision)	number
7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	DATE	Date and time	datetime
8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	DATEONLY	Date	date
\.


--
-- TOC entry 3498 (class 0 OID 22654)
-- Dependencies: 212
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.likes (id, "createdAt", "updatedAt", "userId", "submissionId") FROM stdin;
\.


--
-- TOC entry 3500 (class 0 OID 22658)
-- Dependencies: 214
-- Data for Name: methods; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.methods (id, name, "fullName", description, "createdAt", "updatedAt", "userId", "methodId") FROM stdin;
3	VQF	Variational quantum factoring	QAOA-based quantum optimization algorithm for integer factoring	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
4	NMR	Nuclear magnetic resonance	Nuclear magnetic resonance (NMR) is a physical phenomenon in which nuclei in a strong constant magnetic field are perturbed by a weak oscillating magnetic field (in the near field) and respond by producing an electromagnetic signal with a frequency characteristic of the magnetic field at the nucleus. 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
5	QA	Quantum annealing	Quantum annealing (QA) is a metaheuristic for finding the global minimum of a given objective function over a given set of candidate solutions (candidate states), by a process using quantum fluctuations (in other words, a meta-procedure for finding a procedure that finds an absolute minimum size/length/cost/distance from within a possibly very large, but nonetheless finite set of possible solutions using quantum fluctuation-based computation instead of classical computation). 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
7	QuilC compilation	QuilC optimizing compilation	QuilC is used as an optimizing compiler for particular architectures and circuit definitions.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
6	t|ket⟩	t|ket⟩ optimizing compilation	t|ket⟩ is used as an optimizing compiler for particular architectures and circuit definitions.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
8	Qiskit compilation	Qiskit optimizing compilation	Qiskit is used as an optimizing compiler for particular architectures and circuit definitions.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
9	Hardware-efficient ansatz	Hardware-efficient ansatz	Variational circuits with gates tailored for the hardware gate set.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
10	Shor	Shor's algorithm	Shor's algorithm for integer factoring on a quantum computer. 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
11	CLOPS (method)	CLOPS (method)	CLOPS (method)	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
15	Grover	Grover's algorithm	Grover's algorithm for search.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
17	Bernstein-Vazirani	Bernstein-Vazirani's algorithm	The Bernstein-Vazirani algorithm.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
18	VOQC	VOQC	Verified Optimizer for Quantum Circuits	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
19	Nam et al. 2018	Nam et al. 2018	Results reported in the following paper:\n\nYunseong Nam, Neil J. Ross, Yuan Su, Andrew M. Childs, and Dmitri Maslov. 2018. Automated optimization of large quantum\ncircuits with continuous parameters. npj Quantum Information 4, 1 (2018), 23. https://doi.org/10.1038/s41534-018-0072-4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
20	Amy et al. 2013	Amy et al. 2013	Result reported in the following paper:\n\nMatthew Amy, Dmitri Maslov, and Michele Mosca. 2013. Polynomial-time T-depth optimization of Clifford+T circuits\nvia matroid partitioning. IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems 33 (03 2013).\nhttps://doi.org/10.1109/TCAD.2014.2341953	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
21	PyZX	PyZX	PyZX circuit compiler, documentation available at https://pyzx.readthedocs.io/en/latest/	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
23	Quantum volume	Quantum volume	Quantum volume is a benchmark for quantum computing hardware. It expresses the maximum size (quantum circuit depth times number of qubits) of square quantum circuits that can be implemented successfully by a quantum computer.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
29	Rigetti Aspen-4	Rigetti Aspen-4	Rigetti Aspen-4 superconducting processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
30	Honeywell System Model H1	Honeywell System Model H1	Honeywell System Model H1, ion-based quantum processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
35	Near-Clifford simulation	Near-Clifford simulation method	Classical simulation of near-Clifford circuits, i.e., circuits dominated by Clifford circuits. Usually the non-Clifford gates are T-gates. The scaling of the method is exponential in the number of T-gates.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
36	Extended stabilizers method	Extended stabilizers method	Extended stabilizers method	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
39	CDSC	Clifford-deformed surface codes	Error mitigation surface code from "Clifford-deformed Surface Codes," by Dua, et al.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
40	FSC	Fractal surface code	Fractal surface codes for error correction	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
41	Trapped-ion	Trapped-ion	Trapped-ion quantum computer	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
42	Zuchongzhi	Zuchongzhi	66 qubit superconducting quantum computer presented in "Strong quantum computational advantage using a superconducting quantum processor"	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
32	Goemans-Williamson	Goemans-Williamson algorithm	The Goemans-Williamson Algorithm.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
37	QNR	Quadratic nonresidues	Quadratic non-residues.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
27	Trapped-ion QCCD	Trapped-ion QCCD (quantum charge-coupled device)	Trapped-ion quantum charge-coupled device (QCCD).	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
132	ibmq-prague	ibmq-prague		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
34	TNBM	Tensor network Born machines	Tensor Network Born Machines.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
38	XZZX cluster state	XZZX cluster state	XZZX cluster state	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
14	ibmq-toronto	The IBMQ Toronto device	The IBMQ Toronto device	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
22	Swap test 	Swap test 	Swap test.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
33	Silicon qubit	Silicon qubit	31 P nuclei silicon qubit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
31	Product state approximation	Product state approximation algorithm	Product State Approximation Algorithm.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
47	SpinQ Triangulum	SpinQ Triangulum	Three-qubit quantum processor based on room temperature NMR spectrometer	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
48	QREMITM	Quantum Readout Error Mitigation via Inverse of Tensor Matrices	QREMITM takes the efficient inverse of tensor 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
49	Randomized benchmarking	Randomized benchmarking	Randomized benchmarking on hardware	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
50	Interleaved randomized benchmarking	Interleaved randomized benchmarking	Interleaved randomized benchmarking on hardware	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
53	G5M5	G5M5	apply one G5 operator, and then measure\nall the five qubits. Here G and M stand for the\nGrover operator and the measurement respectively.\nLike the convention of quantum circuit diagrams,\nthe notation G5M5 reads from left to right. G5M5\nis the one-iteration five-qubit Grover’s algorithm.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
54	G5G5M5	G5G5M5	apply two G5 operators, and then measure all the five qubits. G5G5M5 is the twoiteration five-qubit Grover’s algorithm.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
55	 R2G3M3	 R2G3M3	randomly initialize the values of two\nqubits then apply the G3 operator and measure\nthe rest three qubits.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
46	SiC	Defect spin qubits in silicon carbide (SiC)	Defect spin qubits in silicon carbide (SiC).	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
56	 R3G2M2	 R3G2M2	 randomly initialize the values of three\nqubits then apply the G2 operator and measure the\nrest two qubits.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
88	ibmq-cairo	IBMQ Cairo		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
89	ibmq-hanoi	IBMQ Hanoi		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
90	ibmq-mumbai	IBMQ Mumbai		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
57	 G2M2|G3M3	 G2M2|G3M3	In the first stage, apply the G2 operator then measure two qubits; in the second stage, initialize the two qubits based on the first-stage measurement results, then apply the G3 operator and measure the rest three qubits. We adopt the notation “|” to separate two stages. We can recycle the qubits after implementing the first-stage\ncircuit. Note that the second stage circuit is equivalent to R2G3M3.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
58	 G3M3|G2M2	 G3M3|G2M2	In the first stage, apply the G3 operator then measure three qubits; in the second stage, initialize the three qubits based on the first-stage measurement results, then apply the G2 operator and measure the rest two qubits. The second stage circuit is equivalent to R3G2M2.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
76	ILP	Integer linear programming	Integer Linear Programming 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
75	20-Mode Universal Quantum Photonic Processor	20-Mode Universal Quantum Photonic Processor	Integrated photonics is an essential technology for optical quantum computing. Universal, phase-stable, reconfigurable multimode interferometers (quantum photonic processors) enable manipulation of photonic quantum states and are one of the main components of photonic quantum computers in various architectures. In this paper, we report the realization of the largest quantum photonic processor to date. The processor enables arbitrary unitary transformations on its 20 input modes with a fidelity of (FHaar=97.4%, FPerm=99.5%), an average optical loss of 2.9 dB/mode, and high-visibility quantum interference (VHOM=98%). The processor is realized in Si3N4 waveguides.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
60	Rigetti Aspen M-1	Rigetti Aspen M-1	Rigetti Aspen-M1 superconducting processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
59	Rigetti Aspen-11	Rigetti Aspen-11	Rigetti Aspen-11 superconducting processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
61	Simulated annealing	Simulated annealing		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
62	VQAA	Variational quantum adiabatic algorithm		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
66	qFlex	qFlex: A flexible high-performance simulator for verifying and benchmarking quantum circuits implemented on real hardware	qFlex: A flexible high-performance simulator for verifying and benchmarking quantum circuits implemented on real hardware. https://github.com/ngnrsaa/qflex	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	64
67	Summit	Summit Supercomputer	Oak Ridge National Laboratory's Summit. https://www.olcf.ornl.gov/summit/	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
69	Qrack	vm6502q/qrack quantum computer simulation library and framework	The open source vm6502q/qrack library and its associated plugins and projects under the vm6502q organization header comprise a framework for full-stack quantum computing development, via high performance and fundamentally optimized simulation. The intent of "Qrack" is to provide maximum performance for the simulation of an ideal, virtually error-free quantum computer, across the broadest possible set of hardware and operating systems.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
70	Qrack QUnitMulti (default)	Qrack QUnitMulti, default optimal, multi-device	This is default optimization "layer" stack for the vm6502q/qrack simulator framework, specifically multi-device Schmidt decomposition (QUnitMulti), on top of an extended stabilizer method layer (QStabilizerHybrid), on top of "paging" the simulation into in equal segments (QPager), on top of CPU/GPU hybridization "ket" methods, (QHybrid).	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	69
73	MLIR	Multi-level intermediate representation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
51	Silicon quantum dot processor	Silicon quantum dot processor	silicon quantum dot processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
44	Quantum circuits	Quantum circuits		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
52	Neutral-atom quantum processor	Neutral-atom quantum processor	Neutral-Atom Quantum Processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
45	MCM	Multipartite collision model	The multipartite collision model.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
63	ZX-calculus	ZX-calculus	ZX-Calculus	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
64	Tensor networks	Tensor network based classical simulation algorithm		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
68	Neural networks	Neural-network quantum states (NQS) representations.	Neural-network quantum states (NQS) representations based on Restricted Boltzmann machines.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
77	ZNE	Zero-noise extrapolation (ZNE)	Zero-Noise Extrapolation (ZNE) is a quantum error mitigation technique that can be applied via pulse stretching or digital noise scaling (e.g., unitary folding)	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
28	ibmq-montreal	ibmq-montreal ( IBM Quantum Falcon processor))	This is the IBMQ Toronto device (IBM Quantum Falcon processor).	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
65	ibmq-melbourne	IBMQ Melbourne		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
71	ibmq-casablanca	IBMQ Casablanca		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
72	ibmq-santiago	IBMQ Santiago		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
74	ibmq-lima	IBMQ Lima		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
43	ACES	Averaged circuit eigenvalue sampling	A method for scalable noise metrology of quantum circuits that stands for Averaged Circuit Eigenvalue Sampling. It simultaneously estimates the individual error rates of all the gates in collections of quantum circuits, and can even account for space and time correlations between these gates.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
92	GPS	GPS (QUBO for solving travelling salesman problem)	GPS is a Quadratic Unconstrained Binary Optimization (QUBO) formulation of the Travelling Salesman Problem (TSP), which overcomes the best formulation of the Vehicle Routing Problem (VRP) in terms of the minimum number of necessary variables.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
93	Native TSP	Native travelling salesman problem on a quantum computer		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
94	MTZ	MTZ formulation of the travelling salesman problem		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
120	Maximum likelihood decoder	Maximum likelihood decoder	Used in "Matching and maximum likelihood decoding of a multi-round subsystem quantum error correction experiment," https://arxiv.org/abs/2203.07205	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
97	ibmq	IBM Quantum (ibmq)		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
16	ibmq-brooklyn	The IBMQ Brooklyn device	The IBMQ Brooklyn device	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
13	ibmq-bogota	The IBMQ Bogota device	This is the IBMQ Bogota device.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
1	QAOA	Quantum approximate optimization algorithm	QAOA (Quantum Approximate Optimization Algorithm) introduced by Farhi et al. is a quantum algorithm that attempts to solve combinatorial optimization problems involve finding an optimal object out of a finite set of objects. It is a variational algorithm that uses a unitary U(β,γ) characterized by the parameters (β,γ) to prepare a quantum state |ψ(β,γ)⟩. The goal of the algorithm is to find optimal parameter values for (β,γ) such that the quantum state |ψ(β,γ)⟩ encodes the solution to the problem.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
2	VQE	Variational quantum eigensolver	The Variational-Quantum-Eigensolver (VQE) iis a quantum/classical hybrid algorithm that can be used to find eigenvalues of a (often large) matrix H. When this algorithm is used in quantum simulations, H is typically the Hamiltonian of some system. In this hybrid algorithm a quantum subroutine is run inside of a classical optimization loop.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
26	ibmq-johannesburg	ibmq-johannesburg	This is the IBMQ Johannesburg device.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
24	ibmq-tokyo	ibmq-tokyo	This is the IBMQ Tokyo device.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
78	ibmq-belem	IBMQ Belem		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
79	ibmq-quito	IBMQ Quito		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
80	ibmq-jakarta	IBMQ Jakarta		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
81	ibmq-manila	IBMQ Manila		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
82	ibmq-perth	IBMQ Perth		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
83	ibmq-lagos	IBMQ Lagos		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
98	ibmq-boeblingen	ibmq-boeblingen		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
99	ibmq-manhattan	ibmq-manhattan		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
100	Classical simulation	Classical simulation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
101	Intel® Core™ i5-6200U	Intel® Core™ i5-6200U CPU @ 2.30GHz		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	100
102	VQE - Intel® Core™ i5-6200U	VQE - Intel® Core™ i5-6200U CPU @ 2.30GHz		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	101
103	SA - Intel® Core™ i5-6200U	Simulated annealing (SA) - Intel® Core™ i5-6200U CPU @ 2.30GHz		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	101
104	BNB - Intel® Core™ i5-6200U	Branch and bound (BNB) - Intel® Core™ i5-6200U CPU @ 2.30GHz		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	101
105	Superconducting Circuit Qubits	Superconducting Circuit Qubits	Superconducting Circuit Qubits.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
106	3D Transmon	3D Transmon	3D Transmon	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	105
107	Transmon	Transmon	Transmon	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	105
108	Fluxonium	Fluxonium	Fluxonium	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	105
109	CPB	Cooper Pair Box	Cooper Pair Box	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	105
110	Quantronium	Quantronium	Quantronium	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	105
111	PEC	Probabilistic Error Cancellation	Probabilistic Error Cancellation is a quantum error mitigation technique. 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
112	CDR	Clifford Data Regression	Clifford Data Regression is a quantum error mitigation technique.  	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
113	qubit-ADAPT	qubit adaptive derivative-assembled pseudo-trotter (ADAPT) approach	Adaptive derivative-assembled pseudo-trotter (ADAPT) ansatz for VQE.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2
114	Shadow tomography	Shadow tomography	Shadow tomography is used for quantum error mitigation.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
115	NEPEC	Noise-Extended Probabilistic Error Cancellation	The set of implementable operations used in  PEC is extended by noise scaling.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	111
117	VQA	Variational Quantum Algorithm	Any quantum algorithm based on the  optimization of variational circuits.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2
118	VAQEM	Variational Quantum Error Mitigation	Variational self-tuning of error mitigation techniques and error mitigation parameters.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	117
119	Matching decoder	Matching decoder	Used in "Matching and maximum likelihood decoding of a multi-round subsystem quantum error correction experiment", https://arxiv.org/abs/2203.07205	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
121	ibmq-valencia	ibmq-valencia	ibmq-valencia	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
116	Digital ZNE	Digital Zero-Noise Extrapolation	ZNE in which noise scaling is applied at a gate-level. E.g. via "unitary folding".	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	77
91	oqc-lucy	Oxford Quantum Circuits - Lucy	The Lucy quantum processor from Oxford Quantum Circuits. It is a coaxmon-qubit superconducting circuit processor.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
122	Perturbative regime	Perturbative regime		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
123	ibmq-almaden	ibmq-almaden	16-qubit superconducting circuit quantum processor from IBM Q.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
124	Kerr parametric oscillator	Kerr parametric oscillator	Kerr parametric oscillator	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
125	 rotational symmetric bosonic code	 rotational symmetric bosonic code	 rotational symmetric bosonic code	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
126	Autonomous error correction	Autonomous error correction	Autonomous error correction	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
127	Bosonic code	Bosonic code	Bosonic code	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
128	Erasure-flag FTQEC	Erasure-flag fault-tolerant quantum error correction	Described in https://arxiv.org/abs/2203.16488	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
129	QSimulator.jl	QSimulator.jl	Package for simulating time dynamics of quantum systems with a focus on superconducting qubits.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	100
130	SimulaQron	SimulaQron	A simulator for developing quantum internet software.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	100
131	QuNetSim	QuNetSim	A quantum network simulation framework.\nSee also repo at: https://github.com/tqsd/QuNetSim	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	100
84	ibmq-guadalupe	IBMQ Guadalupe		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
85	ibmq-sydney	IBMQ Sydney		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
86	ibmq-washington	IBMQ Washington		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
87	ibmq-auckland	IBMQ Auckland		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
133	QET-U	Quantum eigenvalue transformation of unitary matrices	Under suitable assumptions, the algorithms in [Lin, Tong, Quantum 2020] can estimate the ground state energy and prepare the ground state of a quantum Hamiltonian with near-optimal query complexities. However, this is based on a block encoding input model of the Hamiltonian, whose implementation is known to require a large resource overhead. We develop a tool called quantum eigenvalue transformation of unitary matrices with real polynomials (QET-U), which uses a controlled Hamiltonian evolution as the input model, a single ancilla qubit and no multi-qubit control operations, and is thus suitable for early fault-tolerant quantum devices. This leads to a simple quantum algorithm that outperforms all previous algorithms with a comparable circuit structure for estimating the ground state energy. For a class of quantum spin Hamiltonians, we propose a new method that exploits certain anti-commutation relations and further removes the need of implementing the controlled Hamiltonian evolution. Coupled with Trotter based approximation of the Hamiltonian evolution, the resulting algorithm can be very suitable for early fault-tolerant quantum devices. We demonstrate the performance of the algorithm using IBM Qiskit for the transverse field Ising model. If we are further allowed to use multi-qubit Toffoli gates, we can then implement amplitude amplification and a new binary amplitude estimation algorithm, which increases the circuit depth but decreases the total query complexity. The resulting algorithm saturates the near-optimal complexity for ground state preparation and energy estimating using a constant number of ancilla qubits (no more than 3). 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
134	Shot-efficient CDR	Shot-efficient Clifford Data Regression	Error mitigation will play an important role in practical applications of near-term noisy quantum computers. Current error mitigation methods typically concentrate on correction quality at the expense of frugality (as measured by the number of additional calls to quantum hardware). To fill the need for highly accurate, yet inexpensive techniques, we introduce an error mitigation scheme that builds on Clifford data regression (CDR). The scheme improves the frugality by carefully choosing the training data and exploiting the symmetries of the problem. We test our approach by correcting long range correlators of the ground state of XY Hamiltonian on IBM Toronto quantum computer. We find that our method is an order of magnitude cheaper while maintaining the same accuracy as the original CDR approach. The efficiency gain enables us to obtain a factor of 10 improvement on the unmitigated results with the total budget as small as 2x10^5 shots. 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	112
151	Qrack quantum-inspired Monte Carlo factoring	Qrack quantum-inspired Monte Carlo factoring	See the last example explained in https://github.com/vm6502q/pyqrack-jupyter/blob/main/shor.ipynb.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
152	ThereminQ	ThereminQ stack	ThereminQ is a containerized HPC/QCsim stack	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
153	Rank-1 projector simulation state preparation	Rank-1 projector simulation state preparation	 Quantum computers will be able solve important problems with significant polynomial and exponential speedups over their classical counterparts, for instance in option pricing in finance, and in real-space molecular chemistry simulations. However, key applications can only achieve their potential speedup if their inputs are prepared efficiently. We effectively solve the important problem of efficiently preparing quantum states following arbitrary continuous (as well as more general) functions with complexity logarithmic in the desired resolution, and with rigorous error bounds. This is enabled by the development of a fundamental subroutine based off of the simulation of rank-1 projectors. Combined with diverse techniques from quantum information processing, this subroutine enables us to present a broad set of tools for solving practical tasks, such as state preparation, numerical integration of Lipschitz continuous functions, and superior sampling from probability density functions. As a result, our work has significant implications in a wide range of applications, for instance in financial forecasting, and in quantum simulation. 	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
95	ibmq-cambridge	ibmq-cambridge		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
96	ibmq-rochester	ibmq-rochester		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	97
135	Formal verification	Formal verification (AKA formal methods)	Formal methods are processes and techniques by which one can mathematically prove that software does what it should, for all inputs; the proved-correct artifact is referred to as formally certified.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
136	Annealing	Quantum annealing		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
137	IonQ	IonQ	Using an IonQ processor. IonQ has not given names to their processors yet so eventually this should be updated.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	41
138	Surface code	Surface code		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
139	Qulacs	Qulacs	Qulacs GPU simulator, https://github.com/qulacs/qulacs	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
140	Qermit	Qermit	Software for quantum error mitigation. \nhttps://github.com/CQCL/qermit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
141	Mirror Circuits	Mirror Circuits		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
142	 Phase Estimation	 Phase Estimation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
143	continuous quantum bit-flip correction code	continuous quantum bit-flip correction code		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
144	Heavy bitstring sampling	Heavy bitstring sampling		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
145	probabilistic error cancellation	probabilistic error cancellation	Probabilistic error cancellation is a quantum error mitigation technique.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
146	SA	Simulated Annealing		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
147	BNB	Branch and Bound		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
148	F-VQE	Filtering Variational Quantum Eigensolver	Variational quantum algorithm to solve combinatorial optimization problems on NISQ devices. It approximates the action of a filtering operator on a state via an optimised parameterised quantum circuit. The repeated action of the operator amplifies the probability of candidate solutions close to the optimum.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
149	HE-ITE	Hardware Efficient Imaginary Time Evolution	This variational quantum algorithm approximates imaginary time evolution on problems with more variables than the number of available qubits. It uses the fact that local observables are only affected by the qubits and gates in its causal cone.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
150	Quantinuum System Model H1-1	Quantinuum System Model H1-1		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
154	Index slicing	Index slicing (tensor network simulation)	Index slicing decomposes a tensor network contraction task into many subtasks that have identical shapes and can be executed in an embarrassingly parallel way, that is, there is no dependency or communication required between the execution of the subtasks. Such an algorithm can be readily deployed on modern computational clusters and experimental evidence shows that such parallelization introduces little overhead to the total running time.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	64
\.


--
-- TOC entry 3502 (class 0 OID 22664)
-- Dependencies: 216
-- Data for Name: moderationReports; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."moderationReports" (id, description, "resolvedAt", "createdAt", "updatedAt", "userId", "submissionId") FROM stdin;
\.


--
-- TOC entry 3504 (class 0 OID 22670)
-- Dependencies: 218
-- Data for Name: platformDataTypeValues; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."platformDataTypeValues" (id, "updatedAt", "createdAt", "userId", value, "platformId", "platformDataTypeId", notes) FROM stdin;
1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Alienware BIOS version 1.6.2	4	1	
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Ubuntu 20.04.4 LTS	4	2	
3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Intel(R) Core(TM) i9-10980HK CPU @ 2.40GHz	4	3	
4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	NVIDIA GeForce RTX 3080 Laptop GPU	4	4	
5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	31866	4	5	
6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	DDR4 Synchronous 3200 MHz (0.3 ns)	4	6	
7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	0	4	7	
8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	5	15	8	
9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	5	26	8	
10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	5	2	8	
11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	65	18	8	
12	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	27	14	8	
13	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	7	21	8	
14	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	16	19	8	
15	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	27	13	8	
16	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	7	24	8	
17	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	7	20	8	
18	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	5	27	8	
19	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	5	23	8	
20	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	27	12	8	
21	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	7	22	8	
22	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	5	25	8	
23	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	4	17	8	
24	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	27	3	8	
25	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	127	16	8	
26	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	8	10	8	
27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	79	7	8	
28	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	38	8	8	
29	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	66	38	8	
30	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	NVIDIA V100	42	9	
31	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	11.0	42	10	
32	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	QTensor	42	11	
33	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Torch_CPU	43	12	
34	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Numpy	44	12	
35	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	CuPy	45	12	
36	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Torch_GPU	46	12	
37	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Torch_CPU + Torch_GPU	47	12	
38	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	NumPy_Merged	49	12	
39	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	CuPy_Merged	50	12	
40	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	NumPy_Merged + CuPy_Merged	51	12	
41	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Chimera	53	13	
42	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Pegasus	54	13	
43	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	20	66	8	
44	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	53	69	8	
\.


--
-- TOC entry 3506 (class 0 OID 22676)
-- Dependencies: 220
-- Data for Name: platformDataTypes; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."platformDataTypes" (id, "updatedAt", "createdAt", "userId", name, "fullName", description, "dataTypeId") FROM stdin;
1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	BIOS	BIOS version		2
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	OS	Operating system		2
3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	CPU	CPU model		2
5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	RAM (MB)	RAM (MB)		4
6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	RAM type	RAM type		2
4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	OpenCL device	OpenCL Device		2
7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Alienware overclock level	Alienware BIOS overclock level		4
8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Qubits	Qubits		4
9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	CUDA device	BIOS version		2
10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	CUDA version	BIOS version		2
11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Simulator software	Classical simulator software		2
12	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Back end	Back end		2
13	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	Topology	BIOS version		2
\.


--
-- TOC entry 3508 (class 0 OID 22682)
-- Dependencies: 222
-- Data for Name: platforms; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.platforms (id, "updatedAt", "createdAt", name, "fullName", description, "userId", "platformId") FROM stdin;
13	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-hanoi	ibmq-hanoi		1	1
14	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-cairo	ibmq-cairo		1	1
15	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-auckland	ibmq-auckland		1	1
16	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-washington	ibmq-washington		1	1
17	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-sydney	ibmq-sydney		1	1
18	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-brooklyn	ibmq-brooklyn		1	1
19	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-guadalupe	ibmq-guadalupe		1	1
20	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-lagos	ibmq-lagos		1	1
21	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-casablanca	ibmq-casablanca		1	1
22	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-perth	ibmq-perth		1	1
23	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-manila	ibmq-manila		1	1
24	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-jakarta	ibmq-jakarta		1	1
25	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-quito	ibmq-quito		1	1
26	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-belem	ibmq-belem		1	1
27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-lima	ibmq-lima		1	1
28	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	20-Mode Universal Quantum Photonic Processor	20-Mode Universal Quantum Photonic Processor		1	\N
29	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Kerr parametric oscillator	Kerr parametric oscillator		1	\N
30	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Neutral-atom quantum processor	Neutral-atom quantum processor		1	\N
31	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Rigetti Aspen-4	Rigetti Aspen-4		1	6
32	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Silicon quantum dot processor	Silicon quantum dot processor		1	\N
33	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	SpinQ	SpinQ		1	\N
34	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	SpinQ Triangulum	SpinQ Triangulum		1	33
35	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Summit	Summit Supercomputer		1	\N
36	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Trapped-ion	Trapped-ion		1	\N
37	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Trapped-ion QCCD	Trapped-ion QCCD		1	\N
38	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Zuchongzhi	Zuchongzhi		1	\N
39	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-almaden	ibmq-almaden		1	1
40	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-santiago	ibmq-santiago		1	1
41	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-valencia	ibmq-valencia		1	1
42	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor -  NVIDIA DGX-2 server	QTensor -  NVIDIA DGX-2 server	Test system for "Performance Evaluation and Acceleration of the QTensor Quantum Circuit Simulator on GPUs"	1	\N
43	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (Torch_CPU) - NVIDIA DGX-2 server	QTensor (Torch_CPU) - NVIDIA DGX-2 server		1	42
48	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (NumPy + CuPy) - NVIDIA DGX-2 server	QTensor (NumPy + CuPy) - NVIDIA DGX-2 server		1	42
44	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (Numpy) - NVIDIA DGX-2 server	QTensor (Numpy) - NVIDIA DGX-2 server		1	42
45	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (CuPy) - NVIDIA DGX-2 server	QTensor (CuPy) - NVIDIA DGX-2 server		1	42
46	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (Torch_GPU) - NVIDIA DGX-2 server	QTensor (Torch_GPU) - NVIDIA DGX-2 server		1	42
47	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (Torch_CPU + Torch_GPU) - NVIDIA DGX-2 server	QTensor (Torch_CPU + Torch_GPU) - NVIDIA DGX-2 server		1	42
49	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (NumPy_Merged) - NVIDIA DGX-2 server	QTensor (NumPy_Merged) - NVIDIA DGX-2 server		1	42
50	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (CuPy_Merged) - NVIDIA DGX-2 server	QTensor (CuPy_Merged) - NVIDIA DGX-2 server		1	42
51	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	QTensor (NumPy_Merged + CuPy_Merged) - NVIDIA DGX-2 server	QTensor (NumPy_Merged + CuPy_Merged) - NVIDIA DGX-2 server		1	42
52	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	D-Wave	D-Wave		1	\N
53	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	DW2000Q	DW2000Q		1	52
54	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	DWAdv	DWAdv		1	52
55	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Neutral atom programmable quantum simulator	Neutral atom programmable quantum simulator	A programmable quantum simulator\nbased on deterministically prepared two-dimensional arrays of neutral atoms, featuring strong interactions controlled via coherent atomic excitation into Rydberg states	1	\N
56	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-prague	ibmq-prague		1	1
57	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ionq	ionq	IonQ hasn't named their processors yet so eventually this should be updated with the name.	1	36
58	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq simulator	ibmq simulator		1	1
59	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Superconducting Circuit Qubits	Superconducting Circuit Qubits		1	\N
60	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Transmon	Transmon		1	59
61	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Superconducting chip with three transmons and two joint readout resonators	Superconducting chip with three transmons and two joint readout resonators		1	60
75	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	D-Wave 2X	D-Wave 2X		1	52
1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq	ibmq	IBM Quantum	1	\N
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-bogota	ibmq-bogota		1	1
3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-toronto	ibmq-toronto		1	1
4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Qrack - Alienware m17	Qrack - Alienware m17	Customized Alienware m17 used in vm6502q/qrack benchmarks	1	\N
5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Rigetti	Rigetti		1	\N
6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Rigetti Aspen	Rigetti Aspen		1	5
7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Rigetti Aspen M-1	Rigetti Aspen M-1		1	6
8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Rigetti Aspen-11	Rigetti Aspen-11		1	6
9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	oqc	Oxford Quantum Circuits		1	\N
10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	oqc-lucy	oqc-lucy		1	9
11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-montreal	ibmq-montreal		1	1
12	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-mumbai	ibmq-mumbai		1	1
62	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Honeywell System Model H1	Honeywell System Model H1	Honeywell System Model H1, ion-based quantum processor.	1	\N
63	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Sycamore	Google Sycamore		1	\N
64	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Rigetti 16Q Aspen-1 	Rigetti		1	5
65	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Rochester	Rochester		1	1
66	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-tokyo	ibmq-tokyo		1	1
67	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-johannesburg	ibmq-johannesburg		1	1
68	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-cambridge	ibmq-cambridge		1	1
69	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-rochester	ibmq-rochester		1	1
70	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-boeblingen	ibmq-boeblingen		1	1
71	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-manhattan	ibmq-manhattan		1	1
72	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Intel® Core™ i5-6200U	Intel® Core™ i5-6200U		1	\N
73	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	PyZX	PyZX		1	\N
74	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Bruker AV-400	Bruker AV-400 spectrometer		1	\N
76	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-melbourne	IBMQ Melbourne		1	1
77	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	NASA Pleiades	NASA Pleiades	HPC cluster	1	\N
78	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	NASA Electra	NASA Electra	HPC cluster	1	\N
79	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	ibmq-london	ibmq-london	5-qubit QPU	1	1
80	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Quantinuum System Model H1-1	Quantinuum System Model H1-1		1	\N
81	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Honeywell System Model H0	Honeywell System Model H0		1	\N
82	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Quantinuum System Model H1-2	Quantinuum System Model H1-2		1	\N
83	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	TR-K80	AMD Threadripper + Tesla K80 24GB	Threadripper system with a Tesla K80 	1	\N
84	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	Alibaba Cloud Quantum Development Platform	Alibaba Cloud Quantum Development Platform		1	\N
\.


--
-- TOC entry 3510 (class 0 OID 22688)
-- Dependencies: 224
-- Data for Name: resultPlatformRefs; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."resultPlatformRefs" (id, "updatedAt", "createdAt", "deletedAt", "userId", "resultId", "platformId") FROM stdin;
1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	102	4
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	106	4
\.


--
-- TOC entry 3512 (class 0 OID 22692)
-- Dependencies: 226
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.results (id, "isHigherBetter", "metricName", "metricValue", "createdAt", "updatedAt", "deletedAt", "userId", "submissionMethodRefId", "submissionTaskRefId", "evaluatedAt", notes, "standardError", "sampleSize", "submissionPlatformRefId") FROM stdin;
66	t	Approximation ratio	0.498	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	50	50	2019-09-19	anti-ferromagnetic Heisenberg XYZ model	\N	\N	\N
23	t	Factorized integer	14	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	13	19	\N		\N	\N	\N
27	t	Database size	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	22	25	\N		\N	\N	\N
28	t	Bitstring length	2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	24	27	\N		\N	\N	\N
67	t	Approximation ratio	0.649	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	50	50	2019-09-19		\N	\N	\N
68	t	Approximation ratio	0.53	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	51	51	2020-03-31		\N	\N	\N
69	t	Approximation ratio	0.88	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	52	52	\N		\N	\N	\N
61	t	Quantum volume	3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	46	2020-05-31		\N	\N	35
22	f	BeH2 energy (Hartree units)	-15.2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	18	\N		\N	\N	\N
64	f	H2 energy (Hartreee units)	-1.8422	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	49	49	2021-12-02		\N	\N	\N
65	f	H2 energy (Hartreee units)	-1.8464	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	49	49	2021-12-02		\N	\N	\N
70	t	Fidelity (L2)	0.925	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	53	54	2022-01-19		\N	\N	\N
71	t	Fidelity (L2)	0.995	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	54	56	2022-01-19	Sequence fidelity for CNOT gate.	\N	\N	\N
72	t	Fidelity	0.989	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	55	57	2022-01-21		\N	\N	\N
73	t	Rate	0.978	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	55	57	2022-01-21		\N	\N	\N
74	t	Coverage	0.409	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	55	57	2022-01-21		\N	\N	\N
75	f	T-gates exponent coefficient	0.23	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	56	58	2016-01-27	The algorithm scales as 2^(0.5*t), where t=number of T gates.	\N	\N	\N
76	t	Fidelity (L2)	0.866	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	57	60	2022-01-21	Average of GHZ state fidelities, with various angles. Taken from Figure 2. 	\N	\N	\N
78	t	Gate error threshold	0.022	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	61	64	2022-01-25		\N	\N	\N
79	t	Gate error threshold	0.5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	62	65	2022-01-19	Limit at infinite Pauli noise bias	\N	\N	\N
31	f	Gate count	69	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	30	\N		\N	\N	79
77	t	CNOT gate fidelity	0.995	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	59	62	2022-01-19	CNOT Gate Fidelity. See paper for details in "Sequence-fidelity and gate-fidelity extraction in randomized benchmarking".	\N	\N	\N
160	t	Quantum volume	3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	26
163	t	Quantum volume	3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	24
166	t	Quantum volume	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	21
169	t	Quantum volume	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	20
172	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	16
175	t	Quantum volume	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	13
25	t	CLOPS	951	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	23	\N		\N	\N	3
57	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	40	44	2019-10-11		\N	\N	83
2	t	Approximation ratio	0.2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	3	3	2020-04-08		\N	\N	78
60	t	Quantum volume	6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	302	45	2020-06-20		\N	\N	135
6	t	Factorized integer	291311	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	6	6	2017-06-25		\N	\N	101
62	t	Quantum volume	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	47	47	2020-12-07	Published in PRX Quantum	\N	\N	84
55	t	Database size	256	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	36	40	2020-11-16	Simulated, performed live on Unitary Fund Quantum Software Talk by Daniel Strano, Intro to Qrack... : https://www.youtube.com/watch?v=yxyqJDC4SUo&t=14s	\N	\N	4
26	t	CLOPS	753	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	23	23	\N		\N	\N	81
24	t	CLOPS	1419	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	20	23	\N		\N	\N	2
63	t	Quantum volume	10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	48	48	2021-10-27		\N	\N	77
33	f	Gate count	35	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	9	30	\N		\N	\N	79
37	t	Gate count	11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	31	\N		\N	\N	80
39	f	Gate count	230	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	9	31	\N		\N	\N	80
35	f	Gate count	56	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	30	\N		\N	\N	79
41	f	Gate count	25	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	31	\N		\N	\N	80
59	t	Quantum volume	6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	45	43	2020-09-04		\N	\N	82
7	t	Factorized integer	200000	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	7	7	2016-04-20		\N	\N	102
157	t	Quantum volume	3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	29
80	t	Gate error threshold	0.017	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	63	66	2022-01-10		\N	\N	\N
84	t	Coherence Time (T2) in Seconds	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	71	73	2022-02-02	±1.3 seconds. Spin coherence time. Published in Sci. Adv. https://www.science.org/doi/10.1126/sciadv.abm5912?	\N	\N	\N
86	t	Coherence Time (T2) in Seconds	0.0023	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	72	75	2020-09-21		\N	\N	\N
87	t	Coherence Time (T2) in Seconds	0.00125	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	73	76	2014-12-01	Published in Nature Materials, https://www.nature.com/articles/nmat4144	\N	\N	\N
88	t	Coherence Time (T2) in Seconds	0.00036	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	74	77	2013-05-07	Published in https://www.nature.com/articles/ncomms2854	\N	\N	\N
89	t	Qubits	29	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	77	80	2022-01-26	fidelity is over 0.5	\N	\N	\N
97	t	T gate count	1400	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	98	2022-02-18	50-qubit circuit simulation.	\N	\N	\N
99	t	Gate cycles	20	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	96	104	2020-05-14	53-qubit random quantum circuits. 0.2% XEB fidelity. Taken from Table I on page 12.	\N	\N	\N
100	t	Qubits	54	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	96	102	2020-05-14	20-cycle for cross-entropy benchmarking fidelity (XEB).	\N	\N	\N
101	f	T gate count	279	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	97	109	2020-01-20	Reduce gate count from 567 to 279 the T-gate counts for the e 9 qubit circuit nth prime6.tfc from the Reversible Circuit Benchmark page at https://reversiblebenchmarks.github.io/	\N	\N	\N
85	t	Single-qubit relaxation time (T1)	104	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	71	74	2022-02-02	Within 95% confidence level. See Sci. Adv. https://www.science.org/doi/10.1126/sciadv.abm5912	\N	\N	\N
170	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	18
110	t	Hellinger distance	0.763	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	275	122	2021-12-21	7-qubit no ancilla	\N	\N	111
109	t	Hellinger distance	0.76	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	275	122	2021-12-21	7-qubit with ancilla	\N	\N	111
173	t	Quantum volume	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	15
179	f	Qubits	75	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	144	2022-01-18		\N	\N	\N
183	f	Time (s)	19.92	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	144	2022-01-18		\N	\N	\N
185	f	Time (s)	34.14	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	144	2022-01-18		\N	\N	\N
187	f	Distance (cm)	565	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	144	2022-01-18		\N	\N	\N
189	f	Qubits	507	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	148	2022-01-18		\N	\N	\N
191	f	Qubits	1066	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	148	2022-01-18		\N	\N	\N
195	f	Time (s)	634.68	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	148	2022-01-18		\N	\N	\N
197	f	Distance (cm)	1228	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	148	2022-01-18		\N	\N	\N
199	f	Qubits	648	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	146	2022-01-18		\N	\N	\N
201	f	Qubits	522	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	146	2022-01-18		\N	\N	\N
203	f	Time (s)	70.62	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	146	2022-01-18		\N	\N	\N
114	t	Fidelity	0.974	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	119	130	2022-03-03	1000 state preparation trials	\N	\N	30
115	t	Fidelity	0.995	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	119	131	2022-03-03	190 state preparation trials	\N	\N	30
111	t	Mean of bitstring length	0.935946	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	276	126	2021-12-20		\N	\N	113
82	t	Qubits	56	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	67	70	2021-06-28		\N	\N	42
112	t	Mean of bitstring length	0.951753	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	276	126	2021-12-20		\N	\N	114
176	t	Quantum volume	0	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	10
102	f	28qb QFT seconds	0.307	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	110	121	2022-03-01	https://docs.google.com/spreadsheets/d/1fZ_TS3fnHHZvPe_FS8Xd9Tl_ynxUItOSi1Xi-57JOe8/edit?usp=sharing	\N	\N	4
113	t	Mean of bitstring length	0.991576	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	276	126	2021-12-20		\N	\N	115
161	t	Quantum volume	2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	25
81	t	Gate fidelity	0.9951	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	64	67	2021-11-24	π/2-gate	\N	\N	40
83	t	Gate cycles	20	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	67	70	2021-06-28		\N	\N	42
164	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	23
38	f	Circuit depth	9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	31	\N		\N	\N	80
95	f	Hardness parameter exponent	0.9515	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	93	97	2022-02-18		\N	\N	62
32	f	Circuit depth	45	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	30	\N		\N	\N	79
34	f	Circuit depth	21	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	9	30	\N		\N	\N	79
40	f	Circuit depth	83	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	9	31	\N		\N	\N	80
36	f	Circuit depth	27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	30	\N		\N	\N	79
167	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	19
42	f	Circuit depth	14	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	31	\N		\N	\N	80
96	f	Hardness parameter exponent	1.034	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	97	2022-02-18		\N	\N	62
107	t	Hellinger distance	0.754	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	275	122	2021-12-17		\N	\N	110
108	t	Hellinger distance	0.751	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	275	122	2021-12-21		\N	\N	112
145	t	Qubits	27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	14
177	t	Quantum volume	0	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	8
140	t	Qubits	38	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	8
180	f	Qubits	100	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	144	2022-01-18		\N	\N	\N
182	f	Qubits	140	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	144	2022-01-18		\N	\N	\N
184	f	Time (s)	4.8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	144	2022-01-18		\N	\N	\N
186	f	Distance (cm)	565	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	144	2022-01-18		\N	\N	\N
188	f	Distance (cm)	565	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	144	2022-01-18		\N	\N	\N
190	f	Qubits	2028	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	148	2022-01-18		\N	\N	\N
192	f	Time (s)	479.52	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	148	2022-01-18		\N	\N	\N
194	f	Time (s)	580.62	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	148	2022-01-18		\N	\N	\N
196	f	Distance (cm)	1428.6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	148	2022-01-18		\N	\N	\N
198	f	Qubits	243	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	146	2022-01-18		\N	\N	\N
202	f	Time (s)	72.54	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	146	2022-01-18		\N	\N	\N
204	f	Time (s)	160.56	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	146	2022-01-18		\N	\N	\N
205	f	Distance (cm)	612.2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	146	2022-01-18		\N	\N	\N
206	f	Distance	1146	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	146	2022-01-18		\N	\N	\N
207	f	Distance	958	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	146	2022-01-18		\N	\N	\N
212	f	Time (s)	1276.74	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	88
147	t	Qubits	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	11
159	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	27
155	t	Qubits	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	27
154	t	Qubits	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	25
152	t	Qubits	7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	24
150	t	Qubits	7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	23
165	t	Quantum volume	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	22
151	t	Qubits	7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	22
168	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	12
146	t	Qubits	27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	12
139	t	Qubits	65	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	20
137	t	Qubits	127	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	18
171	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	17
142	f	Qubits	27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	17
141	t	Qubits	27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	15
174	t	Quantum volume	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	14
226	f	Hellinger distance	0.12	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	166	151	2021-12-02	2 oracle calls	\N	\N	\N
223	f	Hellinger distance	0.0228	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	166	151	2021-12-02	1 oracle call	\N	\N	\N
222	f	Hellinger distance	0.0261	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	165	151	2021-12-02	1 oracle call	\N	\N	\N
224	f	Hellinger distance	0.03	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	167	151	2021-12-02	1 oracle call	\N	\N	\N
225	f	Hellinger distance	0.152	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	165	151	2021-12-02	2 oracle calls	\N	\N	\N
227	f	Hellinger distance	0.127	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	167	151	2021-12-02		\N	\N	\N
228	t	Coherence Time (T2) in Seconds	0.0001	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	152	2012-03-08	3D Transmon. Result taken from Figure 3a. Roughly 10^5 ns. 	\N	\N	\N
143	f	Qubits	27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	16
156	t	Qubits	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	29
153	t	Qubits	7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	26
148	t	Qubits	16	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	21
144	t	Qubits	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	19
149	t	Qubits	8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	10
178	t	Quantum volume	0	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	7
229	f	Logical error per syndrome measurement round	0.04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	205	178	2022-03-14		\N	\N	\N
230	f	Logical error per syndrome measurement round	0.03	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	206	178	2022-03-14		\N	\N	\N
232	t	Time (s)	4400000	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	227	193	2022-03-30	7-qubit codes	\N	\N	\N
231	f	Time (s)	18000	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	227	193	2022-03-30	4-qubit codes	\N	\N	\N
234	t	T gate count	70	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	196	2021-09-02	50-qubit quantum circuit.	\N	\N	\N
138	t	Qubits	79	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-10		\N	\N	7
162	t	Quantum volume	3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	11
158	t	Quantum volume	3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	28
209	f	Time (s)	445.32	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	85
210	f	Time (s)	365.35	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	87
213	f	Time (s)	211.68	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	89
218	f	Time (s)	292.52	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	90
215	f	Time (s)	303.75	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	91
216	f	Time (s)	670.67	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	92
235	t	Quantum volume	8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	233	200	2022-04-06		\N	\N	63
219	f	Time (s)	54.46	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	93
220	f	Time (s)	0.02	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	267	150	2021-07-09		\N	\N	93
221	f	Time (s)	0.01	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	268	150	2021-07-09		\N	\N	93
208	f	Time (s)	215.49	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	150	2021-07-09		\N	\N	86
29	t	Factorized integer	16373	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	28	2021-11-23	See https://github.com/vm6502q/pyqrack-jupyter/blob/main/shor.ipynb for source, for result.	\N	\N	4
106	f	Trend scale (seconds)	1e-09	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	110	121	2022-03-01	Exponential like [Trend scale (seconds)] * 2^n empirically observed, for n qubits\n\nAlienware m17 laptop\nAlienware BIOS version 1.6.2 (overclocking default/off)\nUbuntu 20.04.4 LTS\nCPU model: Intel(R) Core(TM) i9-10980HK CPU @ 2.40GHz\nDefault device: NVIDIA GeForce RTX 3080 Laptop GPU\nSecondary device: Intel(R) Gen9 HD Graphics NEO\nGeneral system RAM: 31866MB, 2x16GiB Row of chips DDR4 Synchronous 3200 MHz (0.3 ns)\nhttps://docs.google.com/spreadsheets/d/1fZ_TS3fnHHZvPe_FS8Xd9Tl_ynxUItOSi1Xi-57JOe8/edit?usp=sharing	\N	\N	4
238	t	Approximation ratio	0.628	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	234	90	2022-02-11		\N	\N	32
239	f	Mitigation threshold shots	3000	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	237	209	2022-04-14		\N	\N	48
240	f	Mitigation threshold shots	120000	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	236	209	2022-04-14		\N	\N	48
241	f	Time (s)	347	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	50
242	f	Time (s)	246	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	51
243	f	Time (s)	6.7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	52
244	f	Time (s)	3.5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	53
245	f	Time (s)	2.6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	54
246	f	Time (s)	2.1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	55
247	f	Time (s)	383	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	56
248	f	Time (s)	5.6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	57
249	f	Time (s)	1.4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	240	212	2022-04-12		\N	\N	58
265	t	Quantum volume	9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-18		\N	\N	136
266	f	Quantum volume	3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-18		\N	\N	137
250	f	Hardness parameter exponent	0.6313	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	93	97	2022-02-18	Considering only graphs with\nminimum energy gaps large enough to be resolved in the duration of the quantum evolution	\N	\N	62
251	f	Distance	2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	245	216	\N		\N	\N	65
256	f	Distance	0	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	35	38	2021-12-15		\N	\N	\N
257	t	Fidelity (L2)	0.78	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	234	83	\N	Result extracted from Figure 3b (GHZ fidelity vs N qubit number)	\N	\N	32
258	t	Qubits	6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	234	84	\N		\N	\N	32
259	t	CLOPS	8333	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	274	91	\N	Not peer-reviewed or third-party reviewed.	\N	\N	33
260	t	CLOPS	7512	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	274	91	\N	Not peer-reviewed or third-party reviewed.	\N	\N	34
237	t	Qubits	27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	13
236	t	Qubits	5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-08		\N	\N	28
261	t	Approximation ratio	1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	286	234	2021-06-18	F-VQE outperforms VQE and QAOA on all metrics on 25 MaxCut weighted 3-regular random instances of 6, 8, 10, 12 and 14 nodes: average approximation ratio, optimisation steps, and fraction of solved instances.	\N	25	130
267	f	Qubits	12	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-18		\N	\N	136
263	f	Qubits	6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	287	234	2021-06-18	HE-ITE solves a random 24-node MaxCut weighted 3-regular graph using only 6 qubits. 	\N	25	130
268	f	Qubits	11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	277	142	2022-03-18		\N	\N	137
262	t	Approximation ratio	1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	286	234	2021-06-18	F-VQE solves a random 10-node MaxCut weighted 3-regular on the Honeywell / Quantinuum H1 device. 	\N	1	129
264	t	Approximation ratio	1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	288	235	2021-09-08	F-VQE achieves 25% probability of sampling the optimal solution on a 23-qubit Job-shop Scheduling problem of industrial relevance on the superconducting processor ibmq_manhattan.	\N	1	132
269	t	Quantum volume	10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	252	48	2021-07-12		\N	\N	134
271	t	Quantum volume	9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	295	237	2021-03-02		\N	\N	139
278	t	Gate fidelity	0.9921	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	303	244	2020-06-20		0.0004	\N	135
48	t	Gate count	775	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	29	34	2020-11-13	Results presented in the paper "A Verified Optimizer for Quantum Circuits", Table 2.	\N	\N	\N
49	t	Gate count	805	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	30	34	2020-11-13	Results presented in the paper "A Verified Optimizer for Quantum Circuits", Table 2.	\N	\N	\N
50	t	Gate count	682	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	31	34	2020-11-13	Results presented in the paper "A Verified Optimizer for Quantum Circuits", Table 2.	\N	\N	\N
52	f	Gate count	606	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	32	34	2020-11-13	Results presented in the paper "A Verified Optimizer for Quantum Circuits", Table 2.	\N	\N	\N
1	t	Qubits	22	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	2	2	2020-04-08		\N	\N	\N
3	t	Factorized integer	3127	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	5	2020-12-14		\N	\N	\N
4	t	Factorized integer	6557	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	5	2020-12-14		\N	\N	\N
5	t	Factorized integer	1099551473989	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	5	2020-12-14		\N	\N	\N
18	f	LiH energy (Hartree units)	-7.7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	18	\N		\N	\N	\N
20	f	H2 energy (Hartreee units)	-1.1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	18	\N		\N	\N	\N
53	f	T gate count	215	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	31	34	2020-11-13	Results presented in the paper "A Verified Optimizer for Quantum Circuits", Table 3.	\N	\N	\N
295	f	Qubits	1120	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	253	2022-05-30		\N	\N	\N
296	f	Circuit depth	5200	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	253	2022-05-30		\N	\N	\N
297	f	Bands	3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	254	2022-05-30		\N	\N	\N
298	f	Qubits	180	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	254	2022-05-30		\N	\N	\N
299	f	Circuit depth	730	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	254	2022-05-30		\N	\N	\N
300	f	Infidelity exponent, function of iterations	-1.19	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	309	255	2022-05-01		\N	\N	\N
301	f	Infidelity exponent, function of iterations	-1.3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	309	256	2022-05-01		\N	\N	\N
302	f	Time (days)	20	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	310	258	2021-09-13	Extrapolated estimate	\N	\N	144
19	f	H2 energy (Hartree units)	-7.7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	11	18	\N		\N	\N	\N
21	f	BeH2 energy (Hartree units)	-1.1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	11	18	\N		\N	\N	\N
47	f	Circuit depth	10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	8	31	2021-12-01		\N	\N	80
43	t	Factorized integer	163214	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	27	32	2021-11-03		\N	\N	\N
51	f	Gate count	606	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	32	34	2020-11-13		\N	\N	\N
17	f	H2 energy	0	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	11	18	\N		\N	\N	\N
275	t	Gate fidelity	0.9976	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	299	241	2021-03-02		0.0003	\N	139
274	t	Gate fidelity	0.9954	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	298	240	2020-09-29		0.0007	\N	138
270	t	Quantum volume	7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	294	236	2020-09-29		\N	\N	138
273	t	Quantum volume	12	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	297	239	2022-04-11		\N	\N	141
276	t	Gate fidelity	0.9981	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	300	242	2022-04-11		0.0003	\N	141
277	f	Gate fidelity	0.9977	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	301	243	2021-12-17		0.009	\N	140
272	f	Quantum volume	11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	296	238	2021-12-17		\N	\N	140
280	t	Qubits	36	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	307	245	2022-05-23	17000ms per GPU ( K80 has 2 GPUs )\nmeasured results export: https://github.com/twobombs/thereminq/blob/master/miscfiles/TNN_d.tar.gz	11	3081	143
279	t	Quantum volume	8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	304	200	2022-04-06		\N	\N	63
254	t	Factorized integer	2147483637	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	305	28	2022-05-02	27 * 79536431, 143 ms for quantum subroutine, which was engaged in Shor's algorithm, (simulated), 3n+1 footprint,  as can be trivially validated in https://github.com/vm6502q/pyqrack-jupyter/blob/main/shor.ipynb	0	\N	4
281	t	Qubits	38	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	307	245	2022-05-23	overview of error rates and/at depth\nhttps://user-images.githubusercontent.com/12692227/156922673-f563cdfc-1a66-4e67-a5e9-ea557ab7bc5d.png	14	17	143
282	f	Qubits	40	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	307	245	\N	overview of error rate and/at depth \n\nhttps://user-images.githubusercontent.com/12692227/156922673-f563cdfc-1a66-4e67-a5e9-ea557ab7bc5d.png	37	4	143
283	t	Qubits	28	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	307	246	2022-05-23	Sycamore scope from 12 to 28qubits with 99678 measured results downloadable at :\nhttps://github.com/twobombs/thereminq/blob/master/miscfiles/qrack-supreme12-28q14d10k.tar.gz	0	10223	143
284	t	Qubits	24	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	307	247	2022-05-23	Range between 4 and 24qubits\nTotal amount of samples 724615\nDownloadable at https://github.com/twobombs/thereminq/blob/master/miscfiles/qrack-cosmos.tar.gz	0	34500	143
285	f	Bands	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	250	2022-05-30		\N	\N	\N
286	f	Qubits	1120	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	250	2022-05-30		\N	\N	\N
287	f	Circuit depth	4900	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	250	2022-05-30		\N	\N	\N
288	f	Bands	7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	251	2022-05-30		\N	\N	\N
289	f	Qubits	1870	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	251	2022-05-30		\N	\N	\N
290	f	Circuit depth	28000	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	251	2022-05-30		\N	\N	\N
291	f	Bands	11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	252	2022-05-30		\N	\N	\N
292	f	Qubits	1024	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	252	2022-05-30		\N	\N	\N
293	f	Circuit depth	8000	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	252	2022-05-30		\N	\N	\N
294	f	Bands	4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	308	253	2022-05-30		\N	\N	\N
\.


--
-- TOC entry 3514 (class 0 OID 22698)
-- Dependencies: 228
-- Data for Name: submissionMethodRefs; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."submissionMethodRefs" (id, "createdAt", "updatedAt", "deletedAt", "userId", "submissionId", "methodId") FROM stdin;
17	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	14	2
20	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	13
293	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	150
21	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	14
22	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	16	15
23	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	16
24	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	17	17
26	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	10
29	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	6
30	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	8
31	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	18
32	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	19
33	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	20
34	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	21
35	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	22
36	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	15
37	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	32	2
38	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	30	13
40	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	42	24
42	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	42	26
44	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	43	27
45	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	41	28
296	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	179	144
46	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	44	29
47	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	45	26
49	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	48	2
50	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	50	31
51	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	51	31
52	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	52	32
53	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	53	33
54	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	56	33
55	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	57	34
57	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	59	33
59	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	61	33
60	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	33	37
61	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	62	38
62	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	63	39
63	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	64	40
64	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	65	41
65	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	66	2
66	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	67	2
67	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	69	42
68	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	70	43
69	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	71	44
70	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	72	45
71	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	73	46
72	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	74	46
73	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	75	46
74	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	76	46
75	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	81	11
299	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	181	49
77	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	84	48
78	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	49
79	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	50
302	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	43	144
303	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	43	49
82	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	88	36
84	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	53
85	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	54
86	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	55
87	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	56
88	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	57
89	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	58
56	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	58	35
92	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	91	61
93	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	91	62
94	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	63
95	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	93	63
96	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	64
97	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	63
98	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	96	63
99	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	97	63
308	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	183	2
103	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	64
104	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	66
106	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	105	64
107	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	106	64
108	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	107	68
110	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	70
111	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	13
112	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	71
113	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	72
114	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	109	1
119	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	75
120	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	113	68
121	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	114	76
122	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	111	64
123	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	101	77
294	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	182	144
297	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	180	144
300	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	180	49
304	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	163	144
307	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	152
309	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	184	153
146	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	92
147	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	93
148	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	94
149	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	2
164	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	126	15
165	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	126	83
166	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	126	72
167	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	126	13
168	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	105
169	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	106
170	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	107
171	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	108
172	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	109
173	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	110
178	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	18	77
180	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	18	112
1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	1	1
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	2	2
3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	3	1
4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	4	2
5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	6	3
6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	4
7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	9	5
8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	6
9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	7
10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	8
11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	2
12	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	9
13	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	13	10
224	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	126
225	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	152	105
226	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	153	127
227	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	154	128
230	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	158	129
231	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	159	130
232	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	160	131
234	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	1
235	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	165	133
236	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	166	112
237	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	166	134
238	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	167	10
239	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	167	135
240	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	1
241	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	169	136
242	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	170	137
243	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	171	138
244	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	171	139
246	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	140
247	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	112
248	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	77
249	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	141
250	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	174	142
251	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	175	143
252	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	144
295	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	181	144
298	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	182	49
301	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	179	49
305	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	151
310	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	185	154
260	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	79	111
261	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	142	111
262	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	18	111
263	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	133	111
264	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	134	111
265	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	136	111
266	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	111
267	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	146
268	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	147
272	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	77
273	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	80	111
274	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	90	11
275	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	142
276	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	110	141
277	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	23
278	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	164	64
279	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	9
281	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	6
282	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	44
286	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	148
287	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	149
288	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	178	148
289	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	178	9
292	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	178	6
48	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	46	30
15	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	14	1
27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	22	10
28	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	25	4
39	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	41	23
83	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	89	15
58	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	58	36
306	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	27	100
233	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	163	132
14	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	14	2
245	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	172	57
290	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	178	99
291	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	178	105
285	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	177	1
284	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	177	2
283	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	177	30
280	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	177	27
181	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	129	2
182	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	129	71
183	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	129	113
184	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	129	77
185	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	130	2
186	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	132	114
187	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	131	114
188	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	115
190	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	133	77
191	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	134	77
193	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	135	77
195	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	137	77
196	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	138	77
197	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	138	116
198	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	139	77
199	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	139	116
200	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	140	77
201	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	141	117
202	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	141	118
205	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	143	119
206	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	143	120
207	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	77
212	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	116
213	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	145	77
214	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	77
215	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	77
219	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	150	2
220	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	151	112
223	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	125
\.


--
-- TOC entry 3516 (class 0 OID 22702)
-- Dependencies: 230
-- Data for Name: submissionPlatformRefs; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."submissionPlatformRefs" (id, "createdAt", "updatedAt", "deletedAt", "userId", "submissionId", "platformId") FROM stdin;
17	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	15
18	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	16
19	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	17
20	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	18
21	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	19
22	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	20
23	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	21
24	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	22
25	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	23
26	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	24
27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	25
28	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	26
29	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	27
30	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	28
31	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	29
32	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	30
33	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	90	7
34	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	90	8
35	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	44	31
36	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	32
38	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	83	34
39	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	35
40	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	65	36
42	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	69	38
43	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	151	39
44	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	2
45	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	25
46	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	40
47	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	41
48	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	166	3
49	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	42
50	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	43
51	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	44
52	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	45
53	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	46
54	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	47
55	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	48
56	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	49
57	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	50
58	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	51
60	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	169	53
61	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	169	54
62	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	91	55
63	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	163	56
64	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	170	57
68	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	1
69	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	21
70	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	20
71	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	174	58
73	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	174	1
74	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	175	59
75	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	175	60
76	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	175	61
78	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	3	63
79	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	64
80	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	65
81	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	18
82	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	41	11
83	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	42	66
84	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	45	67
85	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	11
86	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	67
87	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	68
88	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	69
89	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	70
90	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	17
91	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	3
92	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	71
93	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	72
97	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	26
98	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	27
99	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	25
100	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	97	73
101	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	74
102	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	9	75
103	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	2
104	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	17
105	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	24
106	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	20
107	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	22
108	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	18
109	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	99	76
110	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	2
111	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	21
112	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	40
113	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	110	2
114	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	110	27
115	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	110	62
116	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	164	77
117	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	164	78
118	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	142	1
119	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	142	13
120	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	141	1
65	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	172	7
66	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	172	42
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	2
3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	3
4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	4
7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	7
8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	8
10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	10
11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	2
12	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	3
13	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	11
14	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	12
15	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	13
16	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	14
121	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	141	21
122	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	141	11
124	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	138	79
125	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	138	1
126	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	136	36
128	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	1
129	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	62
130	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	58
131	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	37
132	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	178	71
133	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	178	59
134	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	80
135	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	43	81
136	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	82
137	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	57
138	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	182	80
139	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	181	80
140	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	179	82
141	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	180	82
142	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	83
143	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	83
144	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	185	84
77	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	46	62
41	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	43	37
\.


--
-- TOC entry 3518 (class 0 OID 22706)
-- Dependencies: 232
-- Data for Name: submissionTagRefs; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."submissionTagRefs" (id, "createdAt", "updatedAt", "deletedAt", "userId", "submissionId", "tagId") FROM stdin;
28	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	13	25
29	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	15	26
30	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	15	27
31	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	15	28
32	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	15	29
33	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	16	30
34	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	16	31
35	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	17	32
36	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	12
37	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	13
38	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	33
39	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	34
40	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	35
43	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	41	38
44	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	42	38
45	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	43	38
46	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	44	38
48	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	31
53	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	58	42
54	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	58	43
55	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	58	44
56	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	58	45
57	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	59	46
59	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	59	47
60	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	60	46
61	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	61	46
62	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	62	48
64	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	62	50
65	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	62	51
66	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	62	52
68	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	63	51
69	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	64	52
70	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	64	51
71	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	63	52
72	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	65	52
73	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	66	2
74	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	66	53
75	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	66	54
76	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	67	2
77	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	67	53
78	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	68	2
79	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	68	53
80	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	69	29
81	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	70	55
83	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	71	57
84	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	71	58
85	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	72	59
86	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	72	60
89	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	74	62
90	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	75	62
91	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	76	62
92	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	77	63
93	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	78	64
94	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	78	65
95	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	78	50
96	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	78	51
97	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	79	3
98	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	80	3
99	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	80	4
100	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	81	66
101	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	81	38
102	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	81	67
103	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	82	67
104	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	82	68
105	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	82	69
106	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	83	70
108	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	83	71
109	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	64
110	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	72
111	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	73
112	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	74
113	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	75
114	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	76
115	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	76	47
116	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	76	74
117	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	53	47
118	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	53	74
119	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	77
22	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	17
51	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	53	17
58	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	59	17
87	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	73	17
107	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	83	17
88	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	73	62
63	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	62	78
120	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	78
121	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	79
122	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	1
123	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	87	80
124	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	88	42
125	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	88	43
126	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	88	44
127	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	88	45
128	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	30
129	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	81
130	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	82
131	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	90	29
132	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	91	79
133	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	91	83
134	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	84
135	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	85
136	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	81
137	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	86
138	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	87
139	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	93	84
140	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	43
141	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	88
142	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	89
143	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	84
144	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	90
145	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	81
148	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	96	84
150	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	97	84
151	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	97	90
152	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	98	58
153	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	99	93
154	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	99	94
155	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	100	79
156	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	101	42
157	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	102	13
158	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	102	58
159	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	89
161	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	43
162	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	95
163	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	105	88
165	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	106	88
167	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	106	89
169	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	107	96
170	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	107	58
171	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	43
172	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	97
173	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	98
174	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	99
175	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	100
176	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	109	1
177	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	109	79
178	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	110	58
180	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	112	75
181	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	112	102
183	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	113	103
184	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	114	104
185	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	105
186	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	106
187	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	107
188	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	108
189	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	109
190	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	116	110
191	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	116	58
192	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	117	111
193	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	117	112
194	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	118	63
195	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	119	63
196	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	120	63
197	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	121	2
198	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	38
199	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	113
200	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	114
201	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	115
203	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	117
204	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	118
205	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	68
207	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	115
208	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	119
209	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	2
210	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	1
211	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	126	120
212	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	126	121
213	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	29
214	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	122
215	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	123
217	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	3
218	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	38
221	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	18	3
222	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	129	2
223	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	130	2
224	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	131	3
225	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	132	3
226	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	133	3
229	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	133	5
230	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	133	4
231	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	134	3
234	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	135	3
235	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	135	5
237	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	135	128
238	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	136	3
216	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	17
179	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	111	35
182	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	113	35
147	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	12
149	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	96	12
146	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	85
160	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	85
164	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	105	85
166	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	106	85
168	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	107	85
219	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	5
240	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	136	128
242	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	137	5
244	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	137	16
245	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	138	3
247	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	138	130
248	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	139	3
250	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	139	131
251	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	140	3
253	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	140	132
255	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	141	134
256	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	141	2
257	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	142	3
259	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	142	128
260	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	79	128
261	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	143	52
262	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	3
263	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	135
264	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	136
265	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	60
267	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	145	5
268	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	5
269	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	5
270	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	4
271	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	3
272	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	52
273	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	150	20
274	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	151	3
275	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	84	3
276	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	150	3
277	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	152	64
278	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	153	64
279	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	64
280	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	154	52
283	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	159	137
284	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	159	138
286	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	160	137
287	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	161	43
288	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	161	89
289	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	162	43
291	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	163	20
292	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	164	85
293	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	165	53
294	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	165	139
1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	1	1
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	2	2
3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	4	2
4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	3
5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	4
6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	5
7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	6
8	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	6	7
9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	6	1
10	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	7	8
11	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	9
13	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	9	11
14	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	12
15	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	13
16	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	14
18	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	2
19	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	16
20	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	17
21	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	18
23	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	20
24	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	13	21
25	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	13	22
26	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	13	23
27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	13	24
341	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	17
342	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	68
343	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	79
344	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	58
345	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	98
346	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	35
347	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	16
348	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	113
349	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	152
350	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	179	38
351	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	179	153
352	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	180	38
353	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	180	153
354	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	181	38
355	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	181	154
356	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	182	38
357	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	182	154
358	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	67
359	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	81
360	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	98
361	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	87
362	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	183	155
363	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	184	57
364	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	185	88
67	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	63	3
295	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	166	140
296	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	167	21
297	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	1
298	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	169	141
299	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	169	142
300	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	170	143
301	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	170	144
302	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	170	145
303	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	171	64
304	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	172	2
305	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	3
306	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	174	115
307	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	175	64
308	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	32	2
309	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	32	53
312	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	33	147
313	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	33	143
314	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	33	29
315	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	38
316	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	113
317	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	50	79
318	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	50	148
319	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	57	149
320	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	57	150
321	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	57	151
322	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	70	75
323	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	20
324	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	20
325	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	134	5
326	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	138	5
327	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	139	5
328	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	140	5
329	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	134	4
330	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	136	4
331	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	142	4
332	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	176	4
333	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	79	4
334	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	5
335	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	50	16
336	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	137	3
241	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	137	3
281	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	158	85
282	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	159	85
285	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	160	85
337	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	101	5
338	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	7
339	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	8
340	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	13
\.


--
-- TOC entry 3520 (class 0 OID 22710)
-- Dependencies: 234
-- Data for Name: submissionTaskRefs; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."submissionTaskRefs" (id, "createdAt", "updatedAt", "deletedAt", "userId", "submissionId", "taskId") FROM stdin;
47	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	45	34
48	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	46	34
49	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	48	2
50	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	50	1
51	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	51	1
52	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	52	1
53	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	53	35
54	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	53	36
56	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	56	38
57	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	57	39
58	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	58	40
59	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	59	35
60	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	59	36
62	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	61	38
63	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	33	42
64	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	62	43
65	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	63	44
66	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	64	45
67	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	65	46
68	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	66	2
69	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	67	2
70	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	69	47
71	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	70	48
72	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	71	49
73	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	73	50
74	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	73	51
75	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	74	50
76	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	75	50
77	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	76	50
78	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	81	21
79	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	83	52
80	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	84	35
81	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	38
82	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	85	53
83	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	36
84	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	35
85	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	87	54
86	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	88	40
88	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	89	23
89	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	1
90	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	86	55
91	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	90	21
95	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	22	59
96	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	22	60
97	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	91	1
98	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	58
99	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	93	58
100	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	93	40
101	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	92	40
102	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	58
103	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	40
104	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	47
105	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	94	61
106	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	58
107	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	40
108	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	57
109	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	95	62
110	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	96	57
111	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	97	57
112	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	97	62
113	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	58
114	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	104	47
115	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	105	58
116	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	105	47
117	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	106	47
118	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	107	58
119	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	107	63
121	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	65
122	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	108	23
124	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	109	1
126	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	110	57
127	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	111	58
128	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	112	60
129	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	114	57
130	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	66
131	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	115	67
132	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	113	58
133	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	114	68
134	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	101	60
135	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	116	59
136	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	117	59
137	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	118	59
138	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	80	60
139	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	121	59
142	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	123	34
143	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	69
144	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	70
145	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	71
146	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	72
147	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	73
148	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	124	74
149	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	69
150	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	125	70
151	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	126	75
152	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	56
153	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	50
154	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	51
155	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	127	76
158	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	18	60
159	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	129	2
160	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	129	60
161	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	130	2
162	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	132	60
163	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	132	35
164	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	131	60
165	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	84	60
166	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	5	60
167	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	133	60
168	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	134	60
169	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	135	60
170	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	136	60
171	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	137	60
172	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	138	60
173	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	139	60
174	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	140	60
175	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	141	60
176	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	142	60
177	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	79	60
178	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	143	77
179	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	78
1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	1	1
2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	2	2
3	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	3	3
4	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	4	2
5	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	6	4
6	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	8	4
7	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	9	4
18	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	11	2
19	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	13	4
23	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	12	22
24	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	14	2
25	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	16	23
27	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	17	24
28	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	4
29	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	25
30	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	26
31	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	10	27
34	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	26	28
37	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	29
38	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	30
39	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	28	31
40	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	21	23
41	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	32	32
42	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	30	33
43	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	41	34
44	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	42	34
45	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	43	34
46	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	44	34
9	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	1	4
32	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	22	4
180	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	144	60
181	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	145	60
182	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	146	60
183	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	147	60
184	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	148	60
185	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	150	2
186	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	151	60
187	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	151	2
188	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	149	60
189	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	152	60
190	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	152	56
191	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	153	60
193	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	154	79
196	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	93	62
197	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	158	58
198	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	159	58
199	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	160	58
200	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	163	34
207	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	165	2
209	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	166	80
210	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	167	4
212	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	168	3
214	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	169	82
215	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	171	60
217	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	173	60
218	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	174	69
219	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	174	59
220	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	174	70
221	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	175	60
230	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	128	60
231	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	100	1
233	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	164	58
234	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	177	3
235	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	178	83
236	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	182	34
237	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	181	34
238	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	179	34
239	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	180	34
240	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	182	38
241	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	181	38
242	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	180	38
243	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	179	38
244	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	43	38
245	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	84
246	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	37
247	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	27	85
249	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	183	86
250	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	183	87
251	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	183	88
252	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	183	89
253	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	183	90
254	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	183	91
255	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	184	92
256	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	184	93
257	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	185	37
258	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	1	185	94
216	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	172	38
248	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	183	53
\.


--
-- TOC entry 3522 (class 0 OID 22714)
-- Dependencies: 236
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.submissions (id, name, "nameNormal", description, "contentUrl", "thumbnailUrl", "approvedAt", "createdAt", "updatedAt", "userId", "deletedAt") FROM stdin;
181	Honeywell Sets New Record For Quantum Computing Performance	honeywell sets new record for quantum computing performance		https://www.honeywell.com/us/en/news/2021/03/honeywell-sets-new-record-for-quantum-computing-performance	https://www.honeywell.com/content/dam/honeywellbt/en/images/content-images/news/article-in-story-images/Image2QV512.jpg	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
2	Hartree-Fock on a superconducting qubit quantum computer	hartree-fock on a superconducting qubit quantum computer	As the search continues for useful applications of noisy intermediate scale quantum devices, variational simulations of fermionic systems remain one of the most promising directions. Here, we perform a series of quantum simulations of chemistry the largest of which involved a dozen qubits, 78 two-qubit gates, and 114 one-qubit gates. We model the binding energy of H6, H8, H10 and H12 chains as well as the isomerization of diazene. We also demonstrate error-mitigation strategies based on N-representability which dramatically improve the effective fidelity of our experiments. Our parameterized ansatz circuits realize the Givens rotation approach to non-interacting fermion evolution, which we variationally optimize to prepare the Hartree-Fock wavefunction. This ubiquitous algorithmic primitive corresponds to a rotation of the orbital basis and is required by many proposals for correlated simulations of molecules and Hubbard models. Because non-interacting fermion evolutions are classically tractable to simulate, yet still generate highly entangled states over the computational basis, we use these experiments to benchmark the performance of our hardware while establishing a foundation for scaling up more complex correlated quantum simulations of chemistry.	https://arxiv.org/abs/2004.04174	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
3	Quantum Approximate Optimization of Non-Planar Graph Problems on a Planar Superconducting Processor	quantum approximate optimization of non-planar graph problems on a planar superconducting processor	We demonstrate the application of the Google Sycamore superconducting qubit quantum processor to combinatorial optimization problems with the quantum approximate optimization algorithm (QAOA). Like past QAOA experiments, we study performance for problems defined on the (planar) connectivity graph of our hardware; however, we also apply the QAOA to the Sherrington-Kirkpatrick model and MaxCut, both high dimensional graph problems for which the QAOA requires significant compilation. Experimental scans of the QAOA energy landscape show good agreement with theory across even the largest instances studied (23 qubits) and we are able to perform variational optimization successfully. For problems defined on our hardware graph we obtain an approximation ratio that is independent of problem size and observe, for the first time, that performance increases with circuit depth. For problems requiring compilation, performance decreases with problem size but still provides an advantage over random guessing for circuits involving several thousand gates. This behavior highlights the challenge of using near-term quantum computers to optimize problems on graphs differing from hardware connectivity. As these graphs are more representative of real world instances, our results advocate for more emphasis on such problems in the developing tradition of using the QAOA as a holistic, device-level benchmark of quantum processors.	https://arxiv.org/abs/2004.04197	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
4	A variational eigenvalue solver on a quantum processor	a variational eigenvalue solver on a quantum processor	Quantum computers promise to efficiently solve important problems that are intractable on a conventional computer. For quantum systems, where the dimension of the problem space grows exponentially, finding the eigenvalues of certain operators is one such intractable problem and remains a fundamental challenge. The quantum phase estimation algorithm can efficiently find the eigenvalue of a given eigenvector but requires fully coherent evolution. We present an alternative approach that greatly reduces the requirements for coherent evolution and we combine this method with a new approach to state preparation based on ansätze and classical optimization. We have implemented the algorithm by combining a small-scale photonic quantum processor with a conventional computer. We experimentally demonstrate the feasibility of this approach with an example from quantum chemistry: calculating the ground state molecular energy for He-H+, to within chemical accuracy. The proposed approach, by drastically reducing the coherence time requirements, enhances the potential of the quantum resources available today and in the near future.	https://arxiv.org/abs/1304.3061	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
5	Extending Probabilistic Error Cancellation	extending probabilistic error cancellation	We propose a general framework for quantum error mitigation that combines and generalizes two techniques: probabilistic error cancellation (PEC) and zero-noise extrapolation (ZNE). Similarly to PEC, the proposed method represents ideal operations as linear combinations of noisy operations that are implementable on hardware. However, instead of assuming a fixed level of hardware noise, we extend the set of implementable operations by noise scaling. By construction, this method encompasses both PEC and ZNE as particular cases and allows us to investigate a larger set of hybrid techniques. For example, gate extrapolation can be used to implement PEC without requiring knowledge of the device's noise model, e.g., avoiding gate set tomography. Alternatively, probabilistic error reduction can be used to estimate expectation values at intermediate virtual noise strengths (below the hardware level), obtaining partially mitigated results at a lower sampling cost. Moreover, multiple results obtained with different noise reduction factors can be further post-processed with ZNE to better approximate the zero-noise limit.	https://arxiv.org/abs/1304.3061	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
170	Scalable measures of magic for quantum computers	scalable measures of magic for quantum computers	Magic characterizes the degree of non-stabilizerness of quantum states. It is a crucial resource for quantum computing and a necessary condition for quantum advantage. However, quantifying magic beyond a few qubits has been a major challenge. Here, we introduce Bell magic to efficiently measure magic for any number of qubits. Our method can be easily implemented in experiments together with a cost-free error mitigation scheme. We experimentally demonstrate the transition of classically simulable stabilizer states into intractable quantum states on the IonQ quantum computer. For applications, Bell magic distinguishes stabilizer and magical states with a low measurement cost. Further, variational quantum algorithms can maximize the magic of quantum states via the shift-rule. Our results pave the way to benchmark the non-classical power of quantum computers, quantum simulators and quantum many-body systems.	https://arxiv.org/abs/2204.10061	https://i.ibb.co/QH5cyJc/FQ8l-Rj1-WUAEw-MT1.jpg	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
6	Analyzing the Performance of Variational Quantum Factoring on a Superconducting Quantum Processor	analyzing the performance of variational quantum factoring on a superconducting quantum processor	In the near-term, hybrid quantum-classical algorithms hold great potential for outperforming classical approaches. Understanding how these two computing paradigms work in tandem is critical for identifying areas where such hybrid algorithms could provide a quantum advantage. In this work, we study a QAOA-based quantum optimization algorithm by implementing the Variational Quantum Factoring (VQF) algorithm. We execute experimental demonstrations using a superconducting quantum processor and investigate the trade-off between quantum resources (number of qubits and circuit depth) and the probability that a given biprime is successfully factored. In our experiments, the integers 1099551473989, 3127, and 6557 are factored with 3, 4, and 5 qubits, respectively, using a QAOA ansatz with up to 8 layers and we are able to identify the optimal number of circuit layers for a given instance to maximize success probability. Furthermore, we demonstrate the impact of different noise sources on the performance of QAOA and reveal the coherent error caused by the residual ZZ-coupling between qubits as a dominant source of error in the superconducting quantum processor.	https://arxiv.org/abs/2012.07825	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
7	Fundamental limitations of quantum error mitigation	fundamental limitations of quantum error mitigation	The inevitable accumulation of errors in near-future quantum devices represents a key obstacle in delivering practical quantum advantage. This motivated the development of various quantum error-mitigation protocols, each representing a method to extract useful computational output by combining measurement data from multiple samplings of the available imperfect quantum device. What are the ultimate performance limits universally imposed on such protocols? Here, we derive a fundamental bound on the sampling overhead that applies to a general class of error-mitigation protocols, assuming only the laws of quantum mechanics. We use it to show that (1) the sampling overhead to mitigate local depolarizing noise for layered circuits -- such as the ones used for variational quantum algorithms -- must scale exponentially with circuit depth, and (2) the optimality of probabilistic error cancellation method among all strategies in mitigating a certain class of noise. We discuss how our unified framework and general bounds can be employed to benchmark and compare various present methods of error mitigation and identify situations where present error-mitigation methods have the greatest potential for improvement.	https://arxiv.org/abs/2109.04457	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
8	High-fidelity adiabatic quantum computation using the intrinsic Hamiltonian of a spin system: Application to the experimental factorization of 291311	high-fidelity adiabatic quantum computation using the intrinsic hamiltonian of a spin system: application to the experimental factorization of 291311	In previous implementations of adiabatic quantum algorithms using spin systems, the average Hamiltonian method with Trotter's formula was conventionally adopted to generate an effective instantaneous Hamiltonian that simulates an adiabatic passage. However, this approach had issues with the precision of the effective Hamiltonian and with the adiabaticity of the evolution. In order to address these, we here propose and experimentally demonstrate a novel scheme for adiabatic quantum computation by using the intrinsic Hamiltonian of a realistic spin system to represent the problem Hamiltonian while adiabatically driving the system by an extrinsic Hamiltonian directly induced by electromagnetic pulses. In comparison to the conventional method, we observed two advantages of our approach: improved ease of implementation and higher fidelity. As a showcase example of our approach, we experimentally factor 291311, which is larger than any other quantum factorization known.	https://arxiv.org/abs/1706.08061	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
9	Prime factorization using quantum annealing and computational algebraic geometry	prime factorization using quantum annealing and computational algebraic geometry	We investigate prime factorization from two perspectives: quantum annealing and computational algebraic geometry, specifically Gröbner bases. We present a novel scalable algorithm which combines the two approaches and leads to the factorization of all bi-primes up to just over 200000, the largest number factored to date using a quantum processor.	https://arxiv.org/abs/1604.05796	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
182	Achieving Quantum Volume 128 on the Honeywell Quantum Computer	achieving quantum volume 128 on the honeywell quantum computer		https://www.honeywell.com/us/en/news/2020/09/achieving-quantum-volume-128-on-the-honeywell-quantum-computer	https://www.honeywell.com/content/dam/honeywellbt/en/images/content-images/news/article-in-story-images/hon-ISQuantumFigure2.1.jpg	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
80	Probabilistic error cancellation with sparse Pauli-Lindblad models on noisy quantum processors	probabilistic error cancellation with sparse pauli-lindblad models on noisy quantum processors	Error-mitigation techniques can enable access to accurate estimates of physical observables that are otherwise biased by noise in pre-fault-tolerant quantum computers. One particularly general error-mitigation technique is probabilistic error cancellation (PEC), which effectively inverts a well-characterized noise channel to produce noise-free estimates of observables. Experimental realizations of this technique, however, have been impeded by the challenge of learning correlated noise in large quantum circuits. In this work, we present a practical protocol for learning a sparse noise model that scales to large quantum devices and is efficient to learn and invert. These advances enable us to demonstrate PEC on a superconducting quantum processor with crosstalk errors, thereby revealing a path to error-mitigated quantum computation with noise-free observables at larger circuit volumes.	https://arxiv.org/abs/2201.09866	\N	2022-02-08 19:14:53.875428-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
171	Simulation and performance analysis of quantum error correction with a rotated surface code under a realistic noise model	simulation and performance analysis of quantum error correction with a rotated surface code under a realistic noise model	The demonstration of quantum error correction (QEC) is one of the most important milestones in the realization of fully-fledged quantum computers. Toward this, QEC experiments using the surface codes have recently been actively conducted. However, it has not yet been realized to protect logical quantum information beyond the physical coherence time. In this work, we performed a full simulation of QEC for the rotated surface codes with a code distance 5, which employs 49 qubits and is within reach of the current state-of-the-art quantum computers. In particular, we evaluate the logical error probability in a realistic noise model that incorporates not only stochastic Pauli errors but also coherent errors due to a systematic control error or unintended interactions. While a straightforward simulation of 49 qubits is not tractable within a reasonable computational time, we reduced the number of qubits required to 26 qubits by delaying the syndrome measurement in simulation. This and a fast quantum computer simulator, Qulacs, implemented on GPU allows us to simulate full QEC with an arbitrary local noise within reasonable simulation time. Based on the numerical results, we also construct and verify an effective model to incorporate the effect of the coherent error into a stochastic noise model. This allows us to understand what the effect coherent error has on the logical error probability on a large scale without full simulation based on the detailed full simulation of a small scale. The present simulation framework and effective model, which can handle arbitrary local noise, will play a vital role in clarifying the physical parameters that future experimental QEC should target.	https://arxiv.org/abs/2204.11404	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
11	Hardware-efficient Variational Quantum Eigensolver for Small Molecules and Quantum Magnets	hardware-efficient variational quantum eigensolver for small molecules and quantum magnets	Quantum computers can be used to address molecular structure, materials science and condensed matter physics problems, which currently stretch the limits of existing high-performance computing resources. Finding exact numerical solutions to these interacting fermion problems has exponential cost, while Monte Carlo methods are plagued by the fermionic sign problem. These limitations of classical computational methods have made even few-atom molecular structures problems of practical interest for medium-sized quantum computers. Yet, thus far experimental implementations have been restricted to molecules involving only Period I elements. Here, we demonstrate the experimental optimization of up to six-qubit Hamiltonian problems with over a hundred Pauli terms, determining the ground state energy for molecules of increasing size, up to BeH2. This is enabled by a hardware-efficient variational quantum eigensolver with trial states specifically tailored to the available interactions in our quantum processor, combined with a compact encoding of fermionic Hamiltonians and a robust stochastic optimization routine. We further demonstrate the flexibility of our approach by applying the technique to a problem of quantum magnetism. Across all studied problems, we find agreement between experiment and numerical simulations with a noisy model of the device. These results help elucidate the requirements for scaling the method to larger systems, and aim at bridging the gap between problems at the forefront of high-performance computing and their implementation on quantum hardware.	https://arxiv.org/abs/1704.05018	https://media.arxiv-vanity.com/render-output/5539476/x2.png	2021-11-04 20:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
86	Demonstration of multi-qubit entanglement and algorithms on a programmable neutral atom quantum computer	demonstration of multi-qubit entanglement and algorithms on a programmable neutral atom quantum computer	Gate model quantum computers promise to solve currently intractable computational problems if they can be operated at scale with long coherence times and high fidelity logic. Neutral atom hyperfine qubits provide inherent scalability due to their identical characteristics, long coherence times, and ability to be trapped in dense multi-dimensional arrays\\cite{Saffman2010}. Combined with the strong entangling interactions provided by Rydberg states\\cite{Jaksch2000,Gaetan2009,Urban2009}, all the necessary characteristics for quantum computation are available. Here we demonstrate several quantum algorithms on a programmable gate model neutral atom quantum computer in an architecture based on individual addressing of single atoms with tightly focused optical beams scanned across a two-dimensional array of qubits. Preparation of entangled Greenberger-Horne-Zeilinger (GHZ) states\\cite{Greenberger1989} with up to 6 qubits, quantum phase estimation for a chemistry problem\\cite{Aspuru-Guzik2005}, and the Quantum Approximate Optimization Algorithm (QAOA)\\cite{Farhi2014} for the MaxCut graph problem are demonstrated. These results highlight the emergent capability of neutral atom qubit arrays for universal, programmable quantum computation, as well as preparation of non-classical states of use for quantum enhanced sensing.	https://arxiv.org/abs/2112.14589	\N	2022-02-15 15:05:02.796315-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
12	Scale, Quality, and Speed: three key attributes to measure the performance of near-term quantum computers	scale, quality, and speed: three key attributes to measure the performance of near-term quantum computers	Defining the right metrics to properly represent the performance of a quantum computer is critical to both users and developers of a computing system. In this white paper, we identify three key attributes for quantum computing performance: quality, speed, and scale. Quality and scale are measured by quantum volume and number of qubits, respectively. We propose a speed benchmark, using an update to the quantum volume experiments that allows the measurement of Circuit Layer Operations Per Second (CLOPS) and identify how both classical and quantum components play a role in improving performance. We prescribe a procedure for measuring CLOPS and use it to characterize the performance of some IBM Quantum systems.	https://arxiv.org/abs/2110.14108	https://i.ibb.co/RbZx4Y6/clops.png	2021-11-04 20:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
15	Hartree-Fock on a superconducting quantum computer	hartree-fock on a superconducting quantum computer	As the search continues for useful applications of noisy intermediate scale quantum devices, variational simulations of fermionic systems remain one of the most promising directions. Here, we perform a series of quantum simulations of chemistry the largest of which involved a dozen qubits, 78 two-qubit gates, and 114 one-qubit gates. We model the binding energy of H6, H8, H10 and H12 chains as well as the isomerization of diazene. We also demonstrate error-mitigation strategies based on N-representability which dramatically improve the effective fidelity of our experiments. Our parameterized ansatz circuits realize the Givens rotation approach to non-interacting fermion evolution, which we variationally optimize to prepare the Hartree-Fock wavefunction. This ubiquitous algorithmic primitive corresponds to a rotation of the orbital basis and is required by many proposals for correlated simulations of molecules and Hubbard models. Because non-interacting fermion evolutions are classically tractable to simulate, yet still generate highly entangled states over the computational basis, we use these experiments to benchmark the performance of our hardware while establishing a foundation for scaling up more complex correlated quantum simulations of chemistry.	https://arxiv.org/abs/2004.04174	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
22	PyQrack	pyqrack	The open source vm6502q/qrack library and its associated plugins and projects under the vm6502q organization header comprise a framework for full-stack quantum computing development, via high performance and fundamentally optimized simulation. The intent of "Qrack" is to provide maximum performance for the simulation of an ideal, virtually error-free quantum computer, across the broadest possible set of hardware and operating systems.	https://github.com/vm6502q/pyqrack	https://avatars.githubusercontent.com/u/37188146	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
14	Application-Oriented Performance Benchmarks for Quantum Computing	application-oriented performance benchmarks for quantum computing	In this work we introduce an open source suite of quantum application-oriented performance benchmarks that is designed to measure the effectiveness of quantum computing hardware at executing quantum applications. These benchmarks probe a quantum computer’s performance on various algorithms and small applications as the problem size is varied, by mapping out the fidelity of the results as a function of circuit width and depth using the framework of volumetric benchmarking. In addition to estimating the fidelity of results generated by quantum execution, the suite is designed to benchmark certain aspects of the execution pipeline in order to provide end-users with a practical measure of both the quality of and the time to solution. Our methodology is constructed to anticipate advances in quantum computing hardware that are likely to emerge in the next five years. This benchmarking suite is designed to be readily accessible to a broad audience of users and provides benchmarks that correspond to many well-known quantum computing algorithms.	https://arxiv.org/abs/2110.03137	\N	2021-11-04 20:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
70	Averaged circuit eigenvalue sampling	averaged circuit eigenvalue sampling	We introduce ACES, a method for scalable noise metrology of quantum circuits that stands for Averaged Circuit Eigenvalue Sampling. It simultaneously estimates the individual error rates of all the gates in collections of quantum circuits, and can even account for space and time correlations between these gates. ACES strictly generalizes randomized benchmarking (RB), interleaved RB, simultaneous RB, and several other related techniques. However, ACES provides much more information and provably works under strictly weaker assumptions than these techniques. Finally, ACES is extremely scalable: we demonstrate with numerical simulations that it simultaneously and precisely estimates all the Pauli error rates on every gate and measurement in a 100 qubit quantum device using fewer than 20 relatively shallow Clifford circuits and an experimentally feasible number of samples. By learning the detailed gate errors for large quantum devices, ACES opens new possibilities for error mitigation, bespoke quantum error correcting codes and decoders, customized compilers, and more.	https://arxiv.org/abs/2108.05803	\N	2022-02-03 10:54:10.138742-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
26	A Verified Optimizer for Quantum Circuits	a verified optimizer for quantum circuits	We present VOQC, the first fully verified optimizer for quantum circuits, written using the Coq proof assistant. Quantum circuits are expressed as programs in a simple, low-level language called SQIR, a simple quantum intermediate representation, which is deeply embedded in Coq. Optimizations and other transformations are expressed as Coq functions, which are proved correct with respect to a semantics of SQIR programs. SQIR uses a semantics of matrices of complex numbers, which is the standard for quantum computation, but treats matrices symbolically in order to reason about programs that use an arbitrary number of quantum bits. SQIR's careful design and our provided automation make it possible to write and verify a broad range of optimizations in VOQC, including full-circuit transformations from cutting-edge optimizers.\n\nPaper available at: https://arxiv.org/abs/1912.02250\nCode available at: https://github.com/inQWIRE/SQIR	https://arxiv.org/abs/1912.02250	https://i.ibb.co/K5dSdtS/sqir-logo.png	2021-12-15 15:00:00-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
21	vm6502q/qrack	vm6502q/qrack	The open source vm6502q/qrack library and its associated plugins and projects under the vm6502q organization header comprise a framework for full-stack quantum computing development, via high performance and fundamentally optimized simulation. The intent of "Qrack" is to provide maximum performance for the simulation of an ideal, virtually error-free quantum computer, across the broadest possible set of hardware and operating systems.	https://github.com/vm6502q/qrack	https://avatars.githubusercontent.com/u/37188146	2021-11-23 06:00:00-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
71	Quantum State Preparation with Optimal Circuit Depth: Implementations and Applications	quantum state preparation with optimal circuit depth: implementations and applications	Quantum state preparation is an important subroutine for quantum computing. We show that any n-qubit quantum state can be prepared with a Θ(n)-depth circuit using only single- and two-qubit gates, although with a cost of an exponential amount of ancillary qubits. On the other hand, for sparse quantum states with d⩾2 non-zero entries, we can reduce the circuit depth to Θ(log(nd)) with O(ndlogd) ancillary qubits. The algorithm for sparse states is exponentially faster than best-known results and the number of ancillary qubits is nearly optimal and only increases polynomially with the system size. We discuss applications of the results in different quantum computing tasks, such as Hamiltonian simulation, solving linear systems of equations, and realizing quantum random access memories, and find cases with exponential reductions of the circuit depth for all these three tasks. In particular, using our algorithm, we find a family of linear system solving problems enjoying exponential speedups, even compared to the best-known quantum and classical dequantization algorithms.	https://arxiv.org/abs/2201.11495	https://i.ibb.co/hfdjNXy/Screen-Shot-2022-02-03-at-3-39-17-PM.png	2022-02-07 12:41:05.460827-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
88	Quantifying Quantum Speedups: Improved Classical Simulation From Tighter Magic Monotones	quantifying quantum speedups: improved classical simulation from tighter magic monotones	Consumption of magic states promotes the stabilizer model of computation to universal quantum computation. Here, we propose three different classical algorithms for simulating such universal quantum circuits, and characterize them by establishing precise connections with a family of magic monotones. Our first simulator introduces a new class of quasiprobability distributions and connects its runtime to a generalized notion of negativity. We prove that this algorithm has significantly improved exponential scaling compared to all prior quasiprobability simulators for qubits. Our second simulator is a new variant of the stabilizer-rank simulation algorithm, extended to work with mixed states and with significantly improved runtime bounds. Our third simulator trades precision for speed by discarding negative quasiprobabilities. We connect each algorithm's performance to a corresponding magic monotone and, by comprehensively characterizing the monotones, we obtain a precise understanding of the simulation runtime and error bounds. Our analysis reveals a deep connection between all three seemingly unrelated simulation techniques and their associated monotones. For tensor products of single-qubit states, we prove that our monotones are all equal to each other, multiplicative and efficiently computable, allowing us to make clear-cut comparisons of the simulators' performance scaling. Furthermore, our monotones establish several asymptotic and non-asymptotic bounds on state interconversion and distillation rates. Beyond the theory of magic states, our classical simulators can be adapted to other resource theories under certain axioms, which we demonstrate through an explicit application to the theory of quantum coherence.	https://arxiv.org/abs/2002.06181	https://upload.wikimedia.org/wikipedia/commons/1/1a/Hadamard_gate.svg	2022-02-15 15:05:02.796315-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
29	Benchmarking Characterization Methods for Noisy Quantum Circuits	benchmarking characterization methods for noisy quantum circuits	Effective methods for characterizing the noise in quantum computing devices are essential for programming and debugging circuit performance. Existing approaches vary in the information obtained as well as the amount of quantum and classical resources required, with more information generally requiring more resources. Here we benchmark the characterization methods of gate set tomography, Pauli channel noise reconstruction, and empirical direct characterization for developing models that describe noisy quantum circuit performance on a 27-qubit superconducting transmon device. We evaluate these models by comparing the accuracy of noisy circuit simulations with the corresponding experimental observations. We find that the agreement of noise model to experiment does not correlate with the information gained by characterization and that the underlying circuit strongly influences the best choice of characterization approach. Empirical direct characterization scales best of the methods we tested and produced the most accurate characterizations across our benchmarks.	https://arxiv.org/abs/2201.02243	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
180	Quantinuum Announces Quantum Volume 4096 Achievement	quantinuum announces quantum volume 4096 achievement		https://www.quantinuum.com/pressrelease/quantinuum-announces-quantum-volume-4096-achievement	https://assets.website-files.com/618162742f4c7c00fb1fea5a/625743944e4f16287425015b_jxK3LpB0j-CzsjKmDKmf1mMRQqlHNkcjKl2IfRcc7_V2HsBP-Apx_qUs5Uwvx5b5Vp5RkZkaqYKe-8XbBorgmYoawnl9p6ZWwzPQt0xOcWjoxQyQnhgexQ46rndfQdvhL8tQE2hl.png	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
176	Test Submission Kass	test submission kass		https://google.com	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2022-06-13 00:00:00-04
72	Quantum simulation of dissipative collective effects on noisy quantum computers	quantum simulation of dissipative collective effects on noisy quantum computers	Dissipative collective effects are ubiquitous in quantum physics, and their relevance ranges from the study of entanglement in biological systems to noise mitigation in quantum computers. Here, we put forward the first fully quantum simulation of dissipative collective phenomena on a real quantum computer. The quantum simulation is based on the recently introduced multipartite collision model, which reproduces the action of a dissipative common environment by means of repeated interactions between the system and some ancillary qubits. First, we theoretically study the accuracy of this algorithm on near-term quantum computers with noisy gates, and we derive some rigorous error bounds which depend on the timestep of the collision model and on the gate errors. These bounds can be employed to estimate the necessary resources for the efficient quantum simulation of the collective dynamics. Then, we implement the algorithm on some IBM quantum computers to simulate superradiance and subradiance between a pair of qubits. Our experimental results successfully display the emergence of collective effects in the quantum simulation. Finally, we analyze the noise properties of the gates we employed in the algorithm by means of full process tomography. Using the state-of-the-art tools for noise analysis in quantum computers, we obtain the values of the average gate fidelity, unitarity and diamond error, and we establish a connection between them and the accuracy of the experimentally simulated state. Although the scaling of the error as a function of the number of gates is favorable, we observe that reaching the threshold for quantum fault tolerant computation is still orders of magnitude away.	https://arxiv.org/abs/2201.11597	https://i.ibb.co/NZ5WHnV/Screen-Shot-2022-02-03-at-3-58-21-PM.png	2022-02-07 12:41:05.460827-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
89	Quantum Search on Noisy Intermediate-Scale Quantum Devices	quantum search on noisy intermediate-scale quantum devices	The Quantum search algorithm (also known as Grover’s algorithm) lays the foundation of many\nother quantum algorithms. It demonstrates an advantage (for unstructured search) over the classical\nalgorithm. Although it is very simple, its implementation is limited on the noisy intermediate-scale\nquantum (NISQ) processors. The limitation is due to the circuit depth, rather than the number of\nqubits. For the first time, we present detailed and completed benchmarks of the five-qubit quantum\nsearch algorithm on different quantum processors, including IBMQ, IonQ and Honeywell quantum\ndevices. Besides Grover’s algorithm, we also present the implementations of a recently proposed\noptimized quantum search algorithm [Phys. Rev. A 101, 032346 (2020)]. Noisy simulations are\nalso applied to interpret the results. We report the highest success probability of the five-qubit\nsearch algorithm compared to previous works. Our study shows that different quantum processors,\nwith different levels of errors, have different optimal ways to realize the quantum search algorithms.\nThe original Grover’s algorithm might not be the best choice. To maximize the power of NISQ\ncomputers, designing error-aware algorithms is necessary.	https://arxiv.org/pdf/2202.00122.pdf	\N	2022-02-15 15:05:02.796315-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
16	Implementation of Grover’s quantum search algorithm in a scalable system	implementation of grover’s quantum search algorithm in a scalable system	We report the implementation of Grover’s quantum search algorithm in the scalable system of trapped atomic ion quantum bits. Any one of four possible states of a two-qubit memory is marked, and following a single query of the search space, the marked element is successfully recovered with an average probability of 60(2)%. This exceeds the performance of any possible classical search algorithm, which can only succeed with a maximum average probability of 50%.	https://journals.aps.org/pra/abstract/10.1103/PhysRevA.72.050306	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
17	Implementation of a quantum algorithm to solve Bernstein-Vazirani's parity problem without entanglement on an ensemble quantum computer	implementation of a quantum algorithm to solve bernstein-vazirani's parity problem without entanglement on an ensemble quantum computer	Bernstein and Varizani have given the first quantum algorithm to solve parity problem in which a strong violation of the classical imformation theoritic bound comes about. In this paper, we refine this algorithm with fewer resource and implement a two qubits algorithm in a single query on an ensemble quantum computer for the first time.	https://arxiv.org/abs/quant-ph/0012114	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
25	Randomized compiling for scalable quantum computing on a noisy superconducting quantum processor	randomized compiling for scalable quantum computing on a noisy superconducting quantum processor	The successful implementation of algorithms on quantum processors relies on the accurate control of quantum bits (qubits) to perform logic gate operations. In this era of noisy intermediate-scale quantum (NISQ) computing, systematic miscalibrations, drift, and crosstalk in the control of qubits can lead to a coherent form of error which has no classical analog. Coherent errors severely limit the performance of quantum algorithms in an unpredictable manner, and mitigating their impact is necessary for realizing reliable quantum computations. Moreover, the average error rates measured by randomized benchmarking and related protocols are not sensitive to the full impact of coherent errors, and therefore do not reliably predict the global performance of quantum algorithms, leaving us unprepared to validate the accuracy of future large-scale quantum computations. Randomized compiling is a protocol designed to overcome these performance limitations by converting coherent errors into stochastic noise, dramatically reducing unpredictable errors in quantum algorithms and enabling accurate predictions of algorithmic performance from error rates measured via cycle benchmarking. In this work, we demonstrate significant performance gains under randomized compiling for the four-qubit quantum Fourier transform algorithm and for random circuits of variable depth on a superconducting quantum processor. Additionally, we accurately predict algorithm performance using experimentally-measured error rates. Our results demonstrate that randomized compiling can be utilized to leverage and predict the capabilities of modern-day noisy quantum processors, paving the way forward for scalable quantum computing.	https://arxiv.org/abs/2010.00215	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
28	Practical Quantum K-Means Clustering: Performance Analysis and Applications in Energy Grid Classification	practical quantum k-means clustering: performance analysis and applications in energy grid classification	In this work, we aim to solve a practical use-case of unsupervised clustering which has applications in predictive maintenance in the energy operations sector using quantum computers. Using only cloud access to quantum computers, we complete a thorough performance analysis of what some current quantum computing systems are capable of for practical applications involving non-trivial mid-to-high dimensional datasets. We first benchmark how well distance estimation can be performed using two different metrics based on the swap-test, using both angle and amplitude data embedding. Next, for the clustering performance analysis, we generate sets of synthetic data with varying cluster variance and compare simulation to physical hardware using the two metrics. From the results of this performance analysis, we propose a general, competitive, and parallelized version of quantum k-means clustering to avoid some pitfalls discovered due to noisy hardware and apply the approach to a real energy grid clustering scenario. Using real-world German electricity grid data, we show that the new approach improves the balanced accuracy of the standard quantum k-means clustering by 67.8% with respect to the labeling of the classical algorithm.	https://arxiv.org/abs/2112.08506	https://play-lh.googleusercontent.com/Je_VJNVZ_6QF3xg4V9BOcIuxUgBLKqcDdJ90-KEGQGKXV5Gn2grXkgxYQh5vdGv9Au4	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
30	Evaluating NISQ Devices with Quadratic Nonresidues	evaluating nisq devices with quadratic nonresidues	Comparing the relative quality of NISQ devices is difficult. Algorithms showing a quantum advantage are often tailored precisely to what a particular NISQ does well. We present a new algorithm for evaluating NISQs using quadratic nonresidues. We prove quantum computers can find quadratic nonresidues in deterministic polynomial time, whereas the classical version of this problem remains unsolved after hundreds of years. Using a restrictive computational rule set for finding quadratic nonresidues, we can compare the NISQ success rate with what is possible for a classical computer to accomplish under the same rules. A success rate greater than 75% provides evidence of quantum advantage. We present the results of current NISQ devices running this test.	https://arxiv.org/abs/2110.09483	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
33	Evaluating NISQ Devices with Quadratic Nonresidues by Thomas Draper	evaluating nisq devices with quadratic nonresidues by thomas draper	Comparing the relative quality of NISQ devices is difficult. Algorithms showing a quantum advantage are often tailored precisely to what a particular NISQ does well. We present a new algorithm for evaluating NISQs using quadratic nonresidues. We prove quantum computers can find quadratic nonresidues in deterministic polynomial time, whereas the classical version of this problem remains unsolved after hundreds of years. Using a restrictive computational rule set for finding quadratic nonresidues, we can compare the NISQ success rate with what is possible for a classical computer to accomplish under the same rules. A success rate greater than 75% provides evidence of quantum advantage. We present the results of current NISQ devices running this test.	https://arxiv.org/abs/2110.09483	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
90	Rigetti processor announcement	rigetti processor announcement	CLOPS and fidelity data for Rigetti's Aspen-11 and Aspen M-1 chips	https://medium.com/rigetti/optimizing-full-stack-throughput-and-fidelity-with-rigettis-aspen-m-459ee5b2873f	https://miro.medium.com/max/1400/1*QrnSaUbBhKqxG8acAU6QAA.png	2022-02-15 15:05:02.796315-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
32	Parent Hamiltonian as a benchmark problem for variational quantum eigensolvers	parent hamiltonian as a benchmark problem for variational quantum eigensolvers	Variational quantum eigensolver (VQE), which attracts attention as a promising application of noisy intermediate-scale quantum devices, finds a ground state of a given Hamiltonian by variationally optimizing the parameters of quantum circuits called ansatz. Since the difficulty of the optimization depends on the complexity of the problem Hamiltonian and the structure of the ansatz, it has been difficult to analyze the performance of optimizers for the VQE systematically. To resolve this problem, we propose a technique to construct a benchmark problem whose ground state is guaranteed to be achievable with a given ansatz by using the idea of parent Hamiltonian of low-depth parameterized quantum circuits. We compare the convergence of several optimizers by varying the distance of the initial parameters from the solution and find that the converged energies showed a threshold-like behavior depending on the distance. This work provides a systematic way to analyze optimizers for VQE and contribute to the design of ansatz and its initial parameters.	https://arxiv.org/abs/2109.11759	https://i.ibb.co/19Z0fK3/Screen-Shot-2022-01-12-at-6-43-23-PM.png	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
74	Entanglement and control of single nuclear spins in isotopically engineered silicon carbide	entanglement and control of single nuclear spins in isotopically engineered silicon carbide	Nuclear spins in the solid state are both a cause of decoherence and a valuable resource for spin qubits. In this work, we demonstrate control of isolated 29Si nuclear spins in silicon carbide (SiC) to create an entangled state between an optically active divacancy spin and a strongly coupled nuclear register. We then show how isotopic engineering of SiC unlocks control of single weakly coupled nuclear spins and present an ab initio method to predict the optimal isotopic fraction which maximizes the number of usable nuclear memories. We bolster these results by reporting high-fidelity electron spin control (F=99.984(1)%), alongside extended coherence times (T2=2.3 ms, T2DD>14.5 ms), and a >40 fold increase in dephasing time (T2*) from isotopic purification. Overall, this work underlines the importance of controlling the nuclear environment in solid-state systems and provides milestone demonstrations that link single photon emitters with nuclear memories in an industrially scalable material.	https://arxiv.org/abs/2005.07602	\N	2022-02-07 12:41:05.460827-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
47	Benchmarking quantum tomography	benchmarking quantum tomography	Quantum state tomography (QST) is the task of reconstructing the full description of a quantum state from experimental measurements. In the most general case, with an increase in the size of a quantum systems, the necessary data for QST scales exponentially. Therefore QST is a challenging task both experimentally and while post-processing the data. Several methods have been proposed to solve the QST problem for larger quantum states and benchmarking them could provide valuable insights on the requirements for QST in NISQ devices.	https://link.springer.com/article/10.1007%2Fs11128-021-03285-9	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
75	Isolated electron spins in silicon carbide with millisecond-coherence times	isolated electron spins in silicon carbide with millisecond-coherence times	The elimination of defects from SiC has facilitated its move to the forefront of the optoelectronics and power-electronics industries. Nonetheless, because the electronic states of SiC defects can have sharp optical and spin transitions, they are increasingly recognized as a valuable resource for quantum-information and nanoscale-sensing applications. Here, we show that individual electron spin states in highly purified monocrystalline 4H-SiC can be isolated and coherently controlled. Bound to neutral divacancy defects, these states exhibit exceptionally long ensemble Hahn-echo spin coherence, exceeding 1 ms. Coherent control of single spins in a material amenable to advanced growth and microfabrication techniques is an exciting route to wafer-scale quantum technologies.\n\nAlso in https://www.nature.com/articles/nmat4144	https://arxiv.org/abs/1406.7325	\N	2022-02-07 12:41:05.460827-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
87	Assessing the quality of near-term photonic quantum devices	assessing the quality of near-term photonic quantum devices	For near-term quantum devices, an important challenge is to develop efficient methods to certify that noise levels are low enough to allow potentially useful applications to be carried out. We present such a method tailored to photonic quantum devices consisting of single photon sources coupled to linear optical circuits coupled to photon detectors. It uses the output statistics of BosonSampling experiments with input size n (n input photons in the ideal case). We propose a series of benchmark tests targetting two main sources of noise, namely photon loss and distinguishability. Our method results in a single-number metric, the Photonic Quality Factor, defined as the largest number of input photons for which the output statistics pass all tests. We provide strong evidence that passing all tests implies that our experiments are not efficiently classically simulable, by showing how several existing classical algorithms for efficiently simulating noisy BosonSampling fail the tests. Finally we show that BosonSampling experiments with average photon loss rate per mode scaling as o(1) and average fidelity of (1−o(1n6))2 between any two single photon states is sufficient to keep passing our tests. Unsurprisingly, our results highlight that scaling in a manner that avoids efficient classical simulability will at some point necessarily require error correction and mitigation.	https://arxiv.org/abs/2202.04735	\N	2022-02-15 15:05:02.796315-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
76	Polytype control of spin qubits in silicon carbide	polytype control of spin qubits in silicon carbide	Crystal defects can confine isolated electronic spins and are promising candidates for solid-state quantum information. Alongside research focusing on nitrogen-vacancy centres in diamond, an alternative strategy seeks to identify new spin systems with an expanded set of technological capabilities, a materials-driven approach that could ultimately lead to ‘designer’ spins with tailored properties. Here we show that the 4H, 6H and 3C polytypes of SiC all host coherent and optically addressable defect spin states, including states in all three with room-temperature quantum coherence. The prevalence of this spin coherence shows that crystal polymorphism can be a degree of freedom for engineering spin qubits. Long spin coherence times allow us to use double electron–electron resonance to measure magnetic dipole interactions between spin ensembles in inequivalent lattice sites of the same crystal. Together with the distinct optical and spin transition energies of such inequivalent states, these interactions provide a route to dipole-coupled networks of separately addressable spins.	https://www.nature.com/articles/ncomms2854	\N	2022-02-07 12:41:05.460827-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
67	Scalable quantum simulation of molecular energies	scalable quantum simulation of molecular energies	We report the first electronic structure calculation performed on a quantum computer without exponentially costly precompilation. We use a programmable array of superconducting qubits to compute the energy surface of molecular hydrogen using two distinct quantum algorithms. First, we experimentally execute the unitary coupled cluster method using the variational quantum eigensolver. Our efficient implementation predicts the correct dissociation energy to within chemical accuracy of the numerically exact result. Second, we experimentally demonstrate the canonical quantum algorithm for chemistry, which consists of Trotterization and quantum phase estimation. We compare the experimental performance of these approaches to show clear evidence that the variational quantum eigensolver is robust to certain errors. This error tolerance inspires hope that variational quantum simulations of classically intractable molecules may be viable in the near future.	https://arxiv.org/abs/1512.06860	\N	2022-02-02 16:29:32.636629-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
52	Improved approximation algorithms for maximum cut and satisfiability problems using semidefinite programming	improved approximation algorithms for maximum cut and satisfiability problems using semidefinite programming	We present randomized approximation algorithms for the maximum cut (MAX CUT) and maximum 2-satisfiability (MAX 2SAT) problems that always deliver solutions of expected value at least .87856 times the optimal value. These algorithms use a simple and elegant technique that randomly rounds the solution to a nonlinear programming relaxation. This relaxation can be interpreted both as a semidefinite program and as an eigenvalue minimization problem. The best previously known approximation algorithms for these problems had perfc~rmance guarantees of ~ for MAX CUT and ~ for MAX 2SAT. Slight extensions of our analysis lead to a .79607-approximation algorithm for the maximum directed cut problem (MAX DICUT) and a .758-approximation algorithm for MAX SAT, where the best previously known approximation algorithms had performance guarantees of ~ and ~, respectively. Our algorithm gives the first substantial progress in approximating MAX CUT in nearly twenty years and represents the first use of semidefinite programming in the design of approximation algorithms.	https://klein.mit.edu/~goemans/PAPERS/maxcut-jacm.pdf	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
41	Demonstration of quantum volume 64 on a superconducting quantum computing system	demonstration of quantum volume 64 on a superconducting quantum computing system	We improve the quality of quantum circuits on superconducting quantum computing systems, as measured by the quantum volume, with a combination of dynamical decoupling, compiler optimizations, shorter two-qubit gates, and excited state promoted readout. This result shows that the path to larger quantum volume systems requires the simultaneous increase of coherence, control gate fidelities, measurement fidelities, and smarter software which takes into account hardware details, thereby demonstrating the need to continue to co-design the software and hardware stack for the foreseeable future.	https://arxiv.org/abs/2008.08571	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
42	Validating quantum computers using randomized model circuits	validating quantum computers using randomized model circuits	We introduce a single-number metric, quantum volume, that can be measured using a concrete protocol on near-term quantum computers of modest size (n≲50), and measure it on several state-of-the-art transmon devices, finding values as high as 16. The quantum volume is linked to system error rates, and is empirically reduced by uncontrolled interactions within the system. It quantifies the largest random circuit of equal width and depth that the computer successfully implements. Quantum computing systems with high-fidelity operations, high connectivity, large calibrated gate sets, and circuit rewriting toolchains are expected to have higher quantum volumes. The quantum volume is a pragmatic way to measure and compare progress toward improved system-wide gate error rates for near-term quantum computation and error-correction experiments.	https://arxiv.org/abs/1811.12926	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
43	Demonstration of the trapped-ion quantum-CCD computer architecture	demonstration of the trapped-ion quantum-ccd computer architecture	The trapped-ion QCCD (quantum charge-coupled device) architecture proposal lays out a blueprint for a universal quantum computer. The design begins with electrodes patterned on a two-dimensional surface configured to trap multiple arrays of ions (or ion crystals). Communication within the ion crystal network allows for the machine to be scaled while keeping the number of ions in each crystal to a small number, thereby preserving the low error rates demonstrated in trapped-ion experiments. By proposing to communicate quantum information by moving the ions through space to interact with other distant ions, the architecture creates a quantum computer endowed with full-connectivity. However, engineering this fully-connected computer introduces a host of difficulties that have precluded the architecture from being fully realized in the twenty years since its proposal. Using a Honeywell cryogenic surface trap, we report on the integration of all necessary ingredients of the QCCD architecture into a programmable trapped-ion quantum computer. Using four and six qubit circuits, the system level performance of the processor is quantified by the fidelity of a teleported CNOT gate utilizing mid-circuit measurement and a quantum volume measurement of 26=64. By demonstrating that the low error rates achievable in small ion crystals can be successfully integrated with a scalable trap design, parallel optical delivery, and fast ion transport, the QCCD architecture is shown to be a viable path toward large quantum computers. Atomic ions provide perfectly identical, high-fidelity qubits. Our work shows that the QCCD architecture built around these qubits will provide high performance quantum computers, likely enabling important near-term demonstrations such as quantum error correction and quantum advantage.	https://arxiv.org/abs/2003.01293	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
44	A quantum-classical cloud platform optimized for variational hybrid algorithms	a quantum-classical cloud platform optimized for variational hybrid algorithms	In order to support near-term applications of quantum computing, a new compute paradigm has emerged--the quantum-classical cloud--in which quantum computers (QPUs) work in tandem with classical computers (CPUs) via a shared cloud infrastructure. In this work, we enumerate the architectural requirements of a quantum-classical cloud platform, and present a framework for benchmarking its runtime performance. In addition, we walk through two platform-level enhancements, parametric compilation and active qubit reset, that specifically optimize a quantum-classical architecture to support variational hybrid algorithms (VHAs), the most promising applications of near-term quantum hardware. Finally, we show that integrating these two features into the Rigetti Quantum Cloud Services (QCS) platform results in considerable improvements to the latencies that govern algorithm runtime.	https://arxiv.org/abs/2001.04449	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
45	Reducing unitary and spectator errors in cross resonance with optimized rotary echoes	reducing unitary and spectator errors in cross resonance with optimized rotary echoes	We present an improvement to the cross resonance gate realized with the addition of resonant, target rotary pulses. These pulses, applied directly to the target qubit, are simultaneous to and in phase with the echoed cross resonance pulses. Using specialized Hamiltonian error amplifying tomography, we confirm a reduction of error terms with target rotary -- directly translating to improved two-qubit gate fidelity. Beyond improvement in the control-target subspace, the target rotary reduces entanglement between target and target spectators caused by residual quantum interactions. We further characterize multi-qubit performance improvement enabled by target rotary pulsing using unitarity benchmarking and quantum volume measurements, achieving a new record quantum volume for a superconducting qubit system. Published in PRX Quantum (https://journals.aps.org/prxquantum/abstract/10.1103/PRXQuantum.1.020318)	https://arxiv.org/abs/2007.02925	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
184	Preparing Arbitrary Continuous Functions in Quantum Registers With Logarithmic Complexity	preparing arbitrary continuous functions in quantum registers with logarithmic complexity	Quantum computers will be able solve important problems with significant polynomial and exponential speedups over their classical counterparts, for instance in option pricing in finance, and in real-space molecular chemistry simulations. However, key applications can only achieve their potential speedup if their inputs are prepared efficiently. We effectively solve the important problem of efficiently preparing quantum states following arbitrary continuous (as well as more general) functions with complexity logarithmic in the desired resolution, and with rigorous error bounds. This is enabled by the development of a fundamental subroutine based off of the simulation of rank-1 projectors. Combined with diverse techniques from quantum information processing, this subroutine enables us to present a broad set of tools for solving practical tasks, such as state preparation, numerical integration of Lipschitz continuous functions, and superior sampling from probability density functions. As a result, our work has significant implications in a wide range of applications, for instance in financial forecasting, and in quantum simulation.	https://arxiv.org/abs/2205.00519	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
46	Re-examining the quantum volume test: Ideal distributions, compiler optimizations, confidence intervals, and scalable resource estimations	re-examining the quantum volume test: ideal distributions, compiler optimizations, confidence intervals, and scalable resource estimations	The quantum volume test is a full-system benchmark for quantum computers that is sensitive to qubit number, fidelity, connectivity, and other quantities believed to be important in building useful devices. The test was designed to produce a single-number measure of a quantum computer's general capability, but a complete understanding of its limitations and operational meaning is still missing. We explore the quantum volume test to better understand its design aspects, sensitivity to errors, passing criteria, and what passing implies about a quantum computer. We elucidate some transient behaviors the test exhibits for small qubit number including the ideal measurement output distributions and the efficacy of common compiler optimizations. We then present an efficient algorithm for estimating the expected heavy output probability under different error models and compiler optimization options, which predicts performance goals for future systems. Additionally, we explore the original confidence interval construction and show that it underachieves the desired coverage level for single shot experiments and overachieves for more typical number of shots. We propose a new confidence interval construction that reaches the specified coverage for typical number of shots and is more efficient in the number of circuits needed to pass the test. We demonstrate these savings with a QV=210 experimental dataset collected from Honeywell System Model H1. Finally, we discuss what the quantum volume test implies about a quantum computer's practical or operational abilities especially in terms of quantum error correction.	https://arxiv.org/abs/2110.14808	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
128	Error mitigation increases the effective quantum volume of quantum computers	error mitigation increases the effective quantum volume of quantum computers	Quantum volume is a single-number metric which, loosely speaking, reports the number of usable qubits on a quantum computer. While improvements to the underlying hardware are a direct means of increasing quantum volume, the metric is "full-stack" and has also been increased by improvements to software, notably compilers. We extend this latter direction by demonstrating that error mitigation, a type of indirect compilation, increases the effective quantum volume of several quantum computers. Importantly, this increase occurs while taking the same number of overall samples. We encourage the adoption of quantum volume as a benchmark for assessing the performance of error mitigation techniques.	https://arxiv.org/abs/2203.05489	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
48	Best-practice aspects of quantum-computer calculations: A case study of hydrogen molecule	best-practice aspects of quantum-computer calculations: a case study of hydrogen molecule	Quantum computers are reaching one crucial milestone after another. Motivated by their progress in quantum chemistry, we have performed an extensive series of simulations of quantum-computer runs that were aimed at inspecting best-practice aspects of these calculations. In order to compare the performance of different set-ups, the ground-state energy of hydrogen molecule has been chosen as a benchmark for which the exact solution exists in literature. Applying variational quantum eigensolver (VQE) to a qubit Hamiltonian obtained by the Bravyi-Kitaev transformation we have analyzed the impact of various computational technicalities. These include (i) the choice of optimization methods, (ii) the architecture of quantum circuits, as well as (iii) different types of noise when simulating real quantum processors. On these we eventually performed a series of experimental runs as a complement to our simulations. The SPSA and COBYLA optimization methods have clearly outperformed the Nelder-Mead and Powell methods. The results obtained when using the Ry variational form were better than those obtained when the RyRz form was used. The choice of an optimum {entangling layer} was sensitively interlinked with the choice of the optimization method. The circular {entangling layer} has been found to worsen the performance of the COBYLA method while the full {entangling layer} improved it. All four optimization methods sometimes lead to an energy that corresponds to an excited state rather than the ground state. We also show that a similarity analysis of measured probabilities can provide a useful insight.	https://arxiv.org/abs/2112.01208	https://i.ibb.co/bbD9YJN/h2-energy.png	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
51	Beyond Product State Approximations for a Quantum Analogue of Max Cut	beyond product state approximations for a quantum analogue of max cut	We consider a computational problem where the goal is to approximate the maximum eigenvalue of a two-local Hamiltonian that describes Heisenberg interactions between qubits located at the vertices of a graph. Previous work has shed light on this problem's approximability by product states. For any instance of this problem the maximum energy attained by a product state is lower bounded by the Max Cut of the graph and upper bounded by the standard Goemans-Williamson semidefinite programming relaxation of it. Gharibian and Parekh described an efficient classical approximation algorithm for this problem which outputs a product state with energy at least 0.498 times the maximum eigenvalue in the worst case, and observe that there exist instances where the best product state has energy 1/2 of optimal. We investigate approximation algorithms with performance exceeding this limitation which are based on optimizing over tensor products of few-qubit states and shallow quantum circuits. We provide an efficient classical algorithm which achieves an approximation ratio of at least 0.53 in the worst case. We also show that for any instance defined by a 3- or 4-regular graph, there is an efficiently computable shallow quantum circuit that prepares a state with energy larger than the best product state (larger even than its semidefinite programming relaxation).	https://arxiv.org/abs/2003.14394	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
73	Five-second coherence of a single spin with single-shot readout in silicon carbide	five-second coherence of a single spin with single-shot readout in silicon carbide	An outstanding hurdle for defect spin qubits in silicon carbide (SiC) is single-shot readout - a deterministic measurement of the quantum state. Here, we demonstrate single-shot readout of single defects in SiC via spin-to-charge conversion, whereby the defect's spin state is mapped onto a long-lived charge state. With this technique, we achieve over 80% readout fidelity without pre- or post-selection, resulting in a high signal-to-noise ratio (SNR) that enables us to measure long spin coherence times. Combined with pulsed dynamical decoupling sequences in an isotopically purified host material, we report single spin T2 > 5s, over two orders of magnitude greater than previously reported in this system. The mapping of these coherent spin states onto single charges unlocks both single-shot readout for scalable quantum nodes and opportunities for electrical readout via integration with semiconductor devices.	https://arxiv.org/abs/2110.01590	https://i.ibb.co/CvFpysG/Screen-Shot-2022-02-04-at-18-22-00.png	2022-02-07 12:41:05.460827-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
177	F-VQE for MaxCut	f-vqe for maxcut	Current gate-based quantum computers have the potential to provide a computational advantage if algorithms use quantum hardware efficiently. To make combinatorial optimization more efficient, we introduce the filtering variational quantum eigensolver which utilizes filtering operators to achieve faster and more reliable convergence to the optimal solution. Additionally we explore the use of causal cones to reduce the number of qubits required on a quantum computer. Using random weighted MaxCut problems, we numerically analyze our methods and show that they perform better than the original VQE algorithm and the quantum approximate optimization algorithm. We also demonstrate the experimental feasibility of our algorithms on a Quantinuum trapped-ion quantum processor powered by Honeywell.	https://iopscience.iop.org/article/10.1088/2058-9565/ac3e54	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
77	A lower bound on the space overhead of fault-tolerant quantum computation	a lower bound on the space overhead of fault-tolerant quantum computation	The threshold theorem is a fundamental result in the theory of fault-tolerant quantum computation stating that arbitrarily long quantum computations can be performed with a polylogarithmic overhead provided the noise level is below a constant level. A recent work by Fawzi, Grospellier and Leverrier (FOCS 2018) building on a result by Gottesman (QIC 2013) has shown that the space overhead can be asymptotically reduced to a constant independent of the circuit provided we only consider circuits with a length bounded by a polynomial in the width. In this work, using a minimal model for quantum fault tolerance, we establish a general lower bound on the space overhead required to achieve fault tolerance.\nFor any non-unitary qubit channel  and any quantum fault tolerance schemes against i.i.d. noise modeled by , we prove a lower bound of max{Q()−1n,αlogT} on the number of physical qubits, for circuits of length T and width n. Here, Q() denotes the quantum capacity of  and α>0 is a constant only depending on the channel . In our model, we allow for qubits to be replaced by fresh ones during the execution of the circuit and we allow classical computation to be free and perfect. This improves upon results that assumed classical computations to be also affected by noise, and that sometimes did not allow for fresh qubits to be added. Along the way, we prove an exponential upper bound on the maximal length of fault-tolerant quantum computation with amplitude damping noise resolving a conjecture by Ben-Or, Gottesman, and Hassidim (2013).	https://arxiv.org/abs/2202.00119	\N	2022-02-08 19:14:53.875428-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
53	Precision tomography of a three-qubit donor quantum processor in silicon	precision tomography of a three-qubit donor quantum processor in silicon	Nuclear spins were among the first physical platforms to be considered for quantum information processing, because of their exceptional quantum coherence and atomic-scale footprint. However, their full potential for quantum computing has not yet been realized, due to the lack of methods to link nuclear qubits within a scalable device combined with multi-qubit operations with sufficient fidelity to sustain fault-tolerant quantum computation. Here we demonstrate universal quantum logic operations using a pair of ion-implanted 31P nuclei in a silicon nanoelectronic device. A nuclear two-qubit controlled-Z gate is obtained by imparting a geometric phase to a shared electron spin, and used to prepare entangled Bell states with fidelities up to 94.2(2.7)%. The quantum operations are precisely characterised using gate set tomography (GST), yielding one-qubit gate fidelities up to 99.93(3)%, two-qubit gate fidelity of 99.21(14)% and two-qubit preparation/measurement fidelities of 98.95(4)%. These three metrics indicate that nuclear spins in silicon are approaching the performance demanded in fault-tolerant quantum processors. We then demonstrate entanglement between the two nuclei and the shared electron by producing a Greenberger-Horne-Zeilinger three-qubit state with 92.5(1.0)% fidelity. Since electron spin qubits in semiconductors can be further coupled to other electrons or physically shuttled across different locations, these results establish a viable route for scalable quantum information processing using nuclear spins.	https://arxiv.org/abs/2106.03082	\N	2022-01-24 16:11:23.624273-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
56	Fast universal quantum control above the fault-tolerance threshold in silicon	fast universal quantum control above the fault-tolerance threshold in silicon	Fault-tolerant quantum computers which can solve hard problems rely on quantum error correction. One of the most promising error correction codes is the surface code, which requires universal gate fidelities exceeding the error correction threshold of 99 per cent. Among many qubit platforms, only superconducting circuits, trapped ions, and nitrogen-vacancy centers in diamond have delivered those requirements. Electron spin qubits in silicon are particularly promising for a large-scale quantum computer due to their nanofabrication capability, but the two-qubit gate fidelity has been limited to 98 per cent due to the slow operation.Here we demonstrate a two-qubit gate fidelity of 99.5 per cent, along with single-qubit gate fidelities of 99.8 per cent, in silicon spin qubits by fast electrical control using a micromagnet-induced gradient field and a tunable two-qubit coupling. We identify the condition of qubit rotation speed and coupling strength where we robustly achieve high-fidelity gates. We realize Deutsch-Jozsa and Grover search algorithms with high success rates using our universal gate set. Our results demonstrate the universal gate fidelity beyond the fault-tolerance threshold and pave the way for scalable silicon quantum computers.	https://arxiv.org/abs/2108.02626	\N	2022-01-24 16:11:23.624273-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
78	Bias-tailored quantum LDPC codes	bias-tailored quantum ldpc codes	Bias-tailoring allows quantum error correction codes to exploit qubit noise asymmetry. Recently, it was shown that a modified form of the surface code, the XZZX code, exhibits considerably improved performance under biased noise. In this work, we demonstrate that quantum low density parity check codes can be similarly bias-tailored. We introduce a bias-tailored lifted product code construction that provides the framework to expand bias-tailoring methods beyond the family of 2D topological codes. We present examples of bias-tailored lifted product codes based on classical quasi-cyclic codes and numerically assess their performance using a belief propagation plus ordered statistics decoder. Our Monte Carlo simulations, performed under asymmetric noise, show that bias-tailored codes achieve several orders of magnitude improvement in their error suppression relative to depolarising noise.	https://arxiv.org/abs/2202.01702	\N	2022-02-08 19:14:53.875428-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
55	Shadow process tomography of quantum channels	shadow process tomography of quantum channels	Quantum process tomography is a critical capability for building quantum computers, enabling quantum networks, and understanding quantum sensors. Like quantum state tomography, the process tomography of an arbitrary quantum channel requires a number of measurements that scales exponentially in the number of quantum bits affected. However, the recent field of shadow tomography, applied to quantum states, has demonstrated the ability to extract key information about a state with only polynomially many measurements. In this work, we apply the concepts of shadow state tomography to the challenge of characterizing quantum processes. We make use of the Choi isomorphism to directly apply rigorous bounds from shadow state tomography to shadow process tomography, and we find additional bounds on the number of measurements that are unique to process tomography. Our results, which include algorithms for implementing shadow process tomography, enable new techniques including evaluation of channel concatenation and the application of channels to shadows of quantum states. This provides a dramatic improvement for understanding large-scale quantum systems.	https://arxiv.org/pdf/2110.03629.pdf	https://i.ibb.co/km4YY5Y/Screenshot-2022-01-20-184814.png	2022-01-24 16:11:23.624273-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
54	Error Mitigation for Deep Quantum Optimization Circuits by Leveraging Problem Symmetries	error mitigation for deep quantum optimization circuits by leveraging problem symmetries	High error rates and limited fidelity of quantum gates in near-term quantum devices are the central obstacles to successful execution of the Quantum Approximate Optimization Algorithm (QAOA). In this paper we introduce an application-specific approach for mitigating the errors in QAOA evolution by leveraging the symmetries present in the classical objective function to be optimized. Specifically, the QAOA state is projected into the symmetry-restricted subspace, with projection being performed either at the end of the circuit or throughout the evolution. Our approach improves the fidelity of the QAOA state, thereby increasing both the accuracy of the sample estimate of the QAOA objective and the probability of sampling the binary string corresponding to that objective value. We demonstrate the efficacy of the proposed methods on QAOA applied to the MaxCut problem, although our methods are general and apply to any objective function with symmetries, as well as to the generalization of QAOA with alternative mixers. We experimentally verify the proposed methods on an IBM Quantum processor, utilizing up to 5 qubits. When leveraging a global bitflip symmetry, our approach leads to a 23% average improvement in quantum state fidelity.	https://arxiv.org/pdf/2106.04410.pdf	https://i.ibb.co/fpw8pF5/Screenshot-2022-01-20-183827.png	2022-01-24 16:11:23.624273-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
79	Efficiently improving the performance of noisy quantum computers	efficiently improving the performance of noisy quantum computers	Using near-term quantum computers to achieve a quantum advantage requires efficient strategies to improve the performance of the noisy quantum devices presently available. We develop and experimentally validate two efficient error mitigation protocols named "Noiseless Output Extrapolation" and "Pauli Error Cancellation" that can drastically enhance the performance of quantum circuits composed of noisy cycles of gates. By combining popular mitigation strategies such as probabilistic error cancellation and noise amplification with efficient noise reconstruction methods, our protocols can mitigate a wide range of noise processes that do not satisfy the assumptions underlying existing mitigation protocols, including non-local and gate-dependent processes. We test our protocols on a four-qubit superconducting processor at the Advanced Quantum Testbed. We observe significant improvements in the performance of both structured and random circuits, with up to 86% improvement in variation distance over the unmitigated outputs. Our experiments demonstrate the effectiveness of our protocols, as well as their practicality for current hardware platforms.	https://arxiv.org/abs/2201.10672	\N	2022-02-08 19:14:53.875428-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
60	Quantum logic with spin qubits crossing the surface code threshold	quantum logic with spin qubits crossing the surface code threshold	High-fidelity control of quantum bits is paramount for the reliable execution of quantum algorithms and for achieving fault tolerance—the ability to correct errors faster than they occur1. The central requirement for fault tolerance is expressed in terms of an error threshold. Whereas the actual threshold depends on many details, a common target is the approximately 1% error threshold of the well-known surface code2,3. Reaching two-qubit gate fidelities above 99% has been a long-standing major goal for semiconductor spin qubits. These qubits are promising for scaling, as they can leverage advanced semiconductor technology4. Here we report a spin-based quantum processor in silicon with single-qubit and two-qubit gate fidelities, all of which are above 99.5%, extracted from gate-set tomography. The average single-qubit gate fidelities remain above 99% when including crosstalk and idling errors on the neighbouring qubit. Using this high-fidelity gate set, we execute the demanding task of calculating molecular ground-state energies using a variational quantum eigensolver algorithm5. Having surpassed the 99% barrier for the two-qubit gate fidelity, semiconductor qubits are well positioned on the path to fault tolerance and to possible applications in the era of noisy intermediate-scale quantum devices.	https://www.nature.com/articles/s41586-021-04273-w	\N	2022-01-27 15:57:32.949098-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
61	Fast universal quantum gate above the fault-tolerance threshold in silicon	fast universal quantum gate above the fault-tolerance threshold in silicon	Fault-tolerant quantum computers that can solve hard problems rely on quantum error correction1. One of the most promising error correction codes is the surface code2, which requires universal gate fidelities exceeding an error correction threshold of 99 per cent3. Among the many qubit platforms, only superconducting circuits4, trapped ions5 and nitrogen-vacancy centres in diamond6 have delivered this requirement. Electron spin qubits in silicon7,8,9,10,11,12,13,14,15 are particularly promising for a large-scale quantum computer owing to their nanofabrication capability, but the two-qubit gate fidelity has been limited to 98 per cent owing to the slow operation16. Here we demonstrate a two-qubit gate fidelity of 99.5 per cent, along with single-qubit gate fidelities of 99.8 per cent, in silicon spin qubits by fast electrical control using a micromagnet-induced gradient field and a tunable two-qubit coupling. We identify the qubit rotation speed and coupling strength where we robustly achieve high-fidelity gates. We realize Deutsch–Jozsa and Grover search algorithms with high success rates using our universal gate set. Our results demonstrate universal gate fidelity beyond the fault-tolerance threshold and may enable scalable silicon quantum computers.	https://www.nature.com/articles/s41586-021-04182-y	\N	2022-01-27 15:57:32.949098-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
57	Evaluating Generalization in Classical and Quantum Generative Models	evaluating generalization in classical and quantum generative models	Defining and accurately measuring generalization in generative models remains an ongoing challenge and a topic of active research within the machine learning community. This is in contrast to discriminative models, where there is a clear definition of generalization, i.e., the model's classification accuracy when faced with unseen data. In this work, we construct a simple and unambiguous approach to evaluate the generalization capabilities of generative models. Using the sample-based generalization metrics proposed here, any generative model, from state-of-the-art classical generative models such as GANs to quantum models such as Quantum Circuit Born Machines, can be evaluated on the same ground on a concrete well-defined framework. In contrast to other sample-based metrics for probing generalization, we leverage constrained optimization problems (e.g., cardinality constrained problems) and use these discrete datasets to define specific metrics capable of unambiguously measuring the quality of the samples and the model's generalization capabilities for generating data beyond the training set but still within the valid solution space. Additionally, our metrics can diagnose trainability issues such as mode collapse and overfitting, as we illustrate when comparing GANs to quantum-inspired models built out of tensor networks. Our simulation results show that our quantum-inspired models have up to a 68× enhancement in generating unseen unique and valid samples compared to GANs, and a ratio of 61:2 for generating samples with better quality than those observed in the training set. We foresee these metrics as valuable tools for rigorously defining practical quantum advantage in the domain of generative modeling.	https://arxiv.org/abs/2201.08770	\N	2022-01-25 11:05:06.772157-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
93	Simulating quantum circuits with ZX-calculus reduced stabiliser decompositions	simulating quantum circuits with zx-calculus reduced stabiliser decompositions	We introduce an enhanced technique for strong classical simulation of quantum circuits which combines the `sum-of-stabilisers' method with an automated simplification strategy based on the ZX-calculus. Recently it was shown that quantum circuits can be classically simulated by expressing the non-stabiliser gates in a circuit as magic state injections and decomposing them in chunks of 2-6 states at a time, obtaining sums of (efficiently-simulable) stabiliser states with many fewer terms than the naive approach. We adapt these techniques from the original setting of Clifford circuits with magic state injection to generic ZX-diagrams and show that, by interleaving this "chunked" decomposition with a ZX-calculus-based simplification strategy, we can obtain stabiliser decompositions that are many orders of magnitude smaller than existing approaches. We illustrate this technique to perform exact norm calculations (and hence strong simulation) on the outputs of random 50- and 100-qubit Clifford+T circuits with up to 70 T-gates as well as a family of hidden shift circuits previously considered by Bravyi and Gosset with over 1000 T-gates.	https://arxiv.org/abs/2109.01076	\N	2022-02-24 08:17:18.990727-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
58	Improved classical simulation of quantum circuits dominated by Clifford gates	improved classical simulation of quantum circuits dominated by clifford gates	The Gottesman-Knill theorem asserts that a quantum circuit composed of Clifford gates can be efficiently simulated on a classical computer. Here we revisit this theorem and extend it to quantum circuits composed of Clifford and T gates, where T is the single-qubit 45-degree phase shift. We assume that the circuit outputs a bit string x obtained by measuring some subset of w qubits. Two simulation tasks are considered: (1) computing the probability of a given output x, and (2) sampling x from the output probability distribution. It is shown that these tasks can be solved on a classical computer in time poly(n,m)+20.5tt3 and poly(n,m)+20.23tt3w3 respectively, where t is the number of T-gates, m is the total number of gates, and n is the number of qubits. The proposed simulation algorithms may serve as a verification tool for medium-size quantum computations that are dominated by Clifford gates. The main ingredient of both algorithms is a subroutine for approximating the norm of an n-qubit state which is given as a linear combination of χ stabilizer states. The subroutine runs in time χn3ϵ−2, where ϵ is the relative error. We also develop techniques for approximating tensor products of "magic states" by linear combinations of stabilizer states. To demonstrate the power of the new simulation methods, we performed a classical simulation of a hidden shift quantum algorithm with 40 qubits, a few hundred Clifford gates, and nearly 50 T-gates.	https://arxiv.org/abs/1601.07601	https://upload.wikimedia.org/wikipedia/commons/1/1a/Hadamard_gate.svg	2022-01-27 15:57:32.949098-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
59	Quantum error correction with silicon spin qubits	quantum error correction with silicon spin qubits	Large-scale quantum computers rely on quantum error correction to protect the fragile quantum information. Among the possible candidates of quantum computing devices, silicon-based spin qubits hold a great promise due to their compatibility to mature nanofabrication technologies for scaling up. Recent advances in silicon-based qubits have enabled the implementations of high quality one and two qubit systems. However, the demonstration of quantum error correction, which requires three or more coupled qubits and often involves a three-qubit gate, remains an open challenge. Here, we demonstrate a three-qubit phase correcting code in silicon, where an encoded three-qubit state is protected against any phase-flip error on one of the three qubits. The correction to this encoded state is performed by a three-qubit conditional rotation, which we implement by an efficient single-step resonantly driven iToffoli gate. As expected, the error correction mitigates the errors due to one qubit phase-flip as well as the intrinsic dephasing due to quasi-static phase noise. These results show a successful implementation of quantum error correction and the potential of silicon-based platform for large-scale quantum computing.	https://arxiv.org/abs/2201.08581	\N	2022-01-27 15:57:32.949098-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
62	Tailored cluster states with high threshold under biased noise	tailored cluster states with high threshold under biased noise	Fault-tolerant cluster states form the basis for scalable measurement-based quantum computation. Recently, new stabilizer codes for scalable circuit-based quantum computation have been introduced that have very high thresholds under biased noise where the qubit predominantly suffers from one type of error, e.g. dephasing. However, extending these advances in stabilizer codes to generate high-threshold cluster states for biased noise has been a challenge, as the standard method for foliating stabilizer codes to generate fault-tolerant cluster states does not preserve the noise bias. In this work, we overcome this barrier by introducing a generalization of the cluster state that allows us to foliate stabilizer codes in a bias-preserving way. As an example of our approach, we construct a foliated version of the XZZX code which we call the XZZX cluster state. We demonstrate that under a circuit-level noise model, our XZZX cluster state has a threshold more than double the usual cluster state when dephasing errors are more likely than errors which cause bit flips by a factor of O(100) or more.	https://arxiv.org/abs/2201.10566	https://i.ibb.co/Vvz4mVC/xzzx-fig1.png	2022-01-27 15:57:32.949098-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
82	QUARK: A Framework for Quantum Computing Application Benchmarking	quark: a framework for quantum computing application benchmarking	Quantum computing (QC) is anticipated to provide a speedup over classical HPC approaches for specific problems in optimization, simulation, and machine learning. With the advances in quantum computing toward practical applications, the need to analyze and compare different quantum solutions increases. While different low-level benchmarks for QC exist, these benchmarks do not provide sufficient insights into real-world application-level performance. We propose an application-centric benchmark method and the QUantum computing Application benchmaRK (QUARK) framework to foster the investigation and creation of application benchmarks for QC. This paper establishes three significant contributions: (1) it makes a case for application-level benchmarks and provides an in-depth "pen and paper" benchmark formulation of two reference problems: robot path and vehicle option optimization from the industrial domain; (2) it proposes the open-source QUARK framework for designing, implementing, executing, and analyzing benchmarks; (3) it provides multiple reference implementations for these two reference problems based on different known, and where needed, extended, classical and quantum algorithmic approaches and analyzes their performance on different types of infrastructures.	https://arxiv.org/abs/2202.03028	\N	2022-02-08 19:14:53.875428-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
126	A Quantum Approach to the Discretizable Molecular Distance Geometry Problem	a quantum approach to the discretizable molecular distance geometry problem	The Discretizable Molecular Distance Geometry Problem (DMDGP) aims to determine the three-dimensional protein structure using distance information from nuclear magnetic resonance experiments. The DMDGP has a finite number of candidate solutions and can be solved by combinatorial methods. We describe a quantum approach to the DMDGP by using Grover's algorithm with an appropriate oracle function, which is more efficient than classical methods that use brute force. We show computational results by implementing our scheme on IBM quantum computers with a small number of noisy qubits.	https://arxiv.org/abs/2112.01303	\N	2022-03-11 08:23:38.334738-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
83	SpinQ Triangulum: a commercial three-qubit desktop quantum computer	spinq triangulum: a commercial three-qubit desktop quantum computer	SpinQ Triangulum is the second generation of the desktop quantum computers designed and manufactured by SpinQ Technology. SpinQ's desktop quantum computer series, based on room temperature NMR spectrometer, provide light-weighted, cost-effective and maintenance-free quantum computing platforms that aim to provide real-device experience for quantum computing education for K-12 and college level. These platforms also feature quantum control design capabilities for studying quantum control and quantum noise. Compared with the first generation product, the two-qubit SpinQ Gemini, Triangulum features a three-qubit QPU, smaller dimensions (61 * 33 * 56 cm^3) and lighter (40 kg). Furthermore, the magnetic field is more stable and the performance of quantum control is more accurate. This paper introduces the system design of Triangulum and its new features. As an example of performing quantum computing tasks, we present the implementation of the Harrow-Hassidim-Lloyd (HHL) algorithm on Triangulum, demonstrating Triangulum's capability of undertaking complex quantum computing tasks. SpinQ will continue to develop desktop quantum computing platform with more qubits. Meanwhile, a simplified version of SpinQ Gemini, namely Gemini Mini (this https URL) , has been recently realised. Gemini Mini is much more portable (20* 35 * 26 cm^3, 14 kg) and affordable for most K-12 schools around the world.	https://arxiv.org/abs/2202.02983	\N	2022-02-08 19:14:53.875428-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
63	Clifford-deformed Surface Codes	clifford-deformed surface codes	Various realizations of Kitaev's surface code perform surprisingly well for biased Pauli noise. Attracted by these potential gains, we study the performance of Clifford-deformed surface codes (CDSCs) obtained from the surface code by the application of single-qubit Clifford operators. We first analyze CDSCs on the 3×3 square lattice and find that depending on the noise bias, their logical error rates can differ by orders of magnitude. To explain the observed behavior, we introduce the effective distance d′, which reduces to the standard distance for unbiased noise. To study CDSC performance in the thermodynamic limit, we focus on random CDSCs. Using the statistical mechanical mapping for quantum codes, we uncover a phase diagram that describes random CDSCs with 50% threshold at infinite bias. In the high-threshold region, we further demonstrate that typical code realizations at finite bias outperform the thresholds and subthreshold logical error rates of the best known translationally invariant codes.	https://arxiv.org/abs/2201.07802	https://i.ibb.co/jJr4zB8/clifford-deformed.png	2022-02-02 16:29:32.636629-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
69	Strong quantum computational advantage using a superconducting quantum processor	strong quantum computational advantage using a superconducting quantum processor	Scaling up to a large number of qubits with high-precision control is essential in the demonstrations of quantum computational advantage to exponentially outpace the classical hardware and algorithmic improvements. Here, we develop a two-dimensional programmable superconducting quantum processor, Zuchongzhi, which is composed of 66 functional qubits in a tunable coupling architecture. To characterize the performance of the whole system, we perform random quantum circuits sampling for benchmarking, up to a system size of 56 qubits and 20 cycles. The computational cost of the classical simulation of this task is estimated to be 2-3 orders of magnitude higher than the previous work on 53-qubit Sycamore processor [Nature 574, 505 (2019)]. We estimate that the sampling task finished by Zuchongzhi in about 1.2 hours will take the most powerful supercomputer at least 8 years. Our work establishes an unambiguous quantum computational advantage that is infeasible for classical computation in a reasonable amount of time. The high-precision and programmable quantum computing platform opens a new door to explore novel many-body phenomena and implement complex quantum algorithms.	https://arxiv.org/abs/2106.14734	\N	2022-02-02 16:29:32.636629-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
84	An Efficient Quantum Readout Error Mitigation for Sparse Measurement Outcomes of Near-term Quantum Devices	an efficient quantum readout error mitigation for sparse measurement outcomes of near-term quantum devices	The readout error on the near-term quantum devices is one of the dominant noise factors, which can be mitigated by classical post-processing called quantum readout error mitigation (QREM). The standard QREM method applies the inverse of noise calibration matrix to the outcome probability distribution using exponential computational resources to the system size. Hence this standard approach is not applicable to the current quantum devices with tens of qubits and more. We propose two efficient QREM methods on such devices whose computational complexity is O(ns2) for probability distributions on measuring n qubits with s shots. The main targets of the proposed methods are the sparse probability distributions where only a few states are dominant. We compare the proposed methods with several recent QREM methods on the following three cases: expectation values of GHZ state, its fidelities, and the estimation error of maximum likelihood amplitude estimation (MLAE) algorithm with modified Grover iterator. The two cases of the GHZ state are on real IBM quantum devices, while the third is by numerical simulation. The proposed methods can be applied to mitigate GHZ states up to 65 qubits on IBM Quantum devices within a few seconds to confirm the existence of a 29-qubit GHZ state with fidelity larger than 0.5. The proposed methods also succeed in the estimation of the amplitude in MLAE with the modified Grover operator where other QREM methods fail.\n\nCode available: https://github.com/BOBO1997/libs_qrem	https://arxiv.org/abs/2201.11046	\N	2022-02-08 19:14:53.875428-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
64	Quantum error correction with fractal topological codes	quantum error correction with fractal topological codes	Recently, a class of fractal surface codes (FSCs), has been constructed on fractal lattices with Hausdorff dimension 2+ϵ, which admits a fault-tolerant non-Clifford CCZ gate. We investigate the performance of such FSCs as fault-tolerant quantum memories. We prove that there exist decoding strategies with non-zero thresholds for bit-flip and phase-flip errors in the FSCs with Hausdorff dimension 2+ϵ. For the bit-flip errors, we adapt the sweep decoder, developed for string-like syndromes in the regular 3D surface code, to the FSCs by designing suitable modifications on the boundaries of the holes in the fractal lattice. Moreover, our adaptation of the sweep decoder for the FSCs maintains its self-correcting and single-shot nature. For the phase-flip errors, we employ the minimum-weight-perfect-matching (MWPM) decoder for the point-like syndromes. We report a sustainable fault-tolerant threshold (∼1.7%) under phenomenological noise for the sweep decoder and the code capacity threshold (lower bounded by 2.95%) for the MWPM decoder for a particular FSC with Hausdorff dimension DH≈2.966. The latter can be mapped to the critical point of a zero-temperature confinement-Higgs transition on the fractal lattice, which is tunable via the Hausdorff dimension.	https://arxiv.org/abs/2201.03568	https://i.ibb.co/f9PTTQJ/fractal-surface-code.png	2022-02-02 16:29:32.636629-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
65	Demonstration of fault-tolerant universal quantum gate operations	demonstration of fault-tolerant universal quantum gate operations	Quantum computers can be protected from noise by encoding the logical quantum information redundantly into multiple qubits using error correcting codes. When manipulating the logical quantum states, it is imperative that errors caused by imperfect operations do not spread uncontrollably through the quantum register. This requires that all operations on the quantum register obey a fault-tolerant circuit design which, in general, increases the complexity of the implementation. Here, we demonstrate a fault-tolerant universal set of gates on two logical qubits in a trapped-ion quantum computer. In particular, we make use of the recently introduced paradigm of flag fault tolerance, where the absence or presence of dangerous errors is heralded by usage of few ancillary 'flag' qubits. We perform a logical two-qubit CNOT-gate between two instances of the seven qubit color code, and we also fault-tolerantly prepare a logical magic state. We then realize a fault-tolerant logical T-gate by injecting the magic state via teleportation from one logical qubit onto the other. We observe the hallmark feature of fault tolerance, a superior performance compared to a non-fault-tolerant implementation. In combination with recently demonstrated repeated quantum error correction cycles these results open the door to error-corrected universal quantum computation.	https://arxiv.org/abs/2111.12654	https://i.ibb.co/9372hwv/fault-tolerant.png	2022-02-02 16:29:32.636629-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
66	Parent Hamiltonian as a benchmark problem for variational quantum eigensolver	parent hamiltonian as a benchmark problem for variational quantum eigensolver	Variational quantum eigensolver (VQE), which attracts attention as a promising application of noisy intermediate-scale quantum devices, finds a ground state of a given Hamiltonian by variationally optimizing the parameters of quantum circuits called ansatz. Since the difficulty of the optimization depends on the complexity of the problem Hamiltonian and the structure of the ansatz, it has been difficult to analyze the performance of optimizers for the VQE systematically. To resolve this problem, we propose a technique to construct a benchmark problem whose ground state is guaranteed to be achievable with a given ansatz by using the idea of parent Hamiltonian of low-depth parameterized quantum circuits. We compare the convergence of several optimizers by varying the distance of the initial parameters from the solution and find that the converged energies showed a threshold-like behavior depending on the distance. This work provides a systematic way to analyze optimizers for VQE and contribute to the design of ansatz and its initial parameters.	https://arxiv.org/abs/2109.11759	\N	2022-02-02 16:29:32.636629-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
68	Quantum chemistry calculations on a trapped-ion quantum simulator	quantum chemistry calculations on a trapped-ion quantum simulator	Quantum-classical hybrid algorithms are emerging as promising candidates for near-term practical applications of quantum information processors in a wide variety of fields ranging from chemistry to physics and materials science. We report on the experimental implementation of such an algorithm to solve a quantum chemistry problem, using a digital quantum simulator based on trapped ions. Specifically, we implement the variational quantum eigensolver algorithm to calculate the molecular ground state energies of two simple molecules and experimentally demonstrate and compare different encoding methods using up to four qubits. Furthermore, we discuss the impact of measurement noise as well as mitigation strategies and indicate the potential for adaptive implementations focused on reaching chemical accuracy, which may serve as a cross-platform benchmark for multi-qubit quantum simulators.	https://arxiv.org/abs/1803.10238	\N	2022-02-02 16:29:32.636629-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
85	Universal logic with encoded spin qubits in silicon	universal logic with encoded spin qubits in silicon	Qubits encoded in a decoherence-free subsystem and realized in exchange-coupled silicon quantum dots are promising candidates for fault-tolerant quantum computing. Benefits of this approach include excellent coherence, low control crosstalk, and configurable insensitivity to certain error sources. Key difficulties are that encoded entangling gates require a large number of control pulses and high-yielding quantum dot arrays. Here we show a device made using the single-layer etch-defined gate electrode architecture that achieves both the required functional yield needed for full control and the coherence necessary for thousands of calibrated exchange pulses to be applied. We measure an average two-qubit Clifford fidelity of 97.1±0.2% with randomized benchmarking. We also use interleaved randomized benchmarking to demonstrate the controlled-NOT gate with 96.3±0.7% fidelity, SWAP with 99.3±0.5% fidelity, and a specialized entangling gate that limits spreading of leakage with 93.8±0.7% fidelity.	https://arxiv.org/abs/2202.03605	\N	2022-02-10 13:19:07.75728-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
92	Classical simulation of quantum circuits with partial and graphical stabiliser decompositions	classical simulation of quantum circuits with partial and graphical stabiliser decompositions	Recent developments in classical simulation of quantum circuits make use of clever decompositions of chunks of magic states into sums of efficiently simulable stabiliser states. We show here how, by considering certain non-stabiliser entangled states which have more favourable decompositions, we can speed up these simulations. This is made possible by using the ZX-calculus, which allows us to easily find instances of these entangled states in the simplified diagram representing the quantum circuit to be simulated. We additionally find a new technique of partial stabiliser decompositions that allow us to trade magic states for stabiliser terms. With this technique we require only 2αt stabiliser terms, where α≈0.396, to simulate a circuit with T-count t. This matches the α found by Qassim et al., but whereas they only get this scaling in the asymptotic limit, ours applies for a circuit of any size. Our method builds upon a recently proposed scheme for simulation combining stabiliser decompositions and optimisation strategies implemented in the software QuiZX. With our techniques we manage to reliably simulate 50-qubit 1400 T-count hidden shift circuits in a couple of minutes on a consumer laptop.	https://arxiv.org/abs/2202.09202	\N	2022-02-24 08:17:18.990727-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
95	PyZX: Large Scale Automated Diagrammatic Reasoning	pyzx: large scale automated diagrammatic reasoning	The ZX-calculus is a graphical language for reasoning about ZX-diagrams, a type of tensor networks that can represent arbitrary linear maps between qubits. Using the ZX-calculus, we can intuitively reason about quantum theory, and optimise and validate quantum circuits. In this paper we introduce PyZX, an open source library for automated reasoning with large ZX-diagrams. We give a brief introduction to the ZX-calculus, then show how PyZX implements methods for circuit optimisation, equality validation, and visualisation and how it can be used in tandem with other software. We end with a set of challenges that when solved would enhance the utility of automated diagrammatic reasoning.	https://arxiv.org/abs/1904.04735	\N	2022-02-24 08:17:18.990727-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
94	Classical Simulation of Quantum Supremacy Circuits	classical simulation of quantum supremacy circuits	It is believed that random quantum circuits are difficult to simulate classically. These have been used to demonstrate quantum supremacy: the execution of a computational task on a quantum computer that is infeasible for any classical computer. The task underlying the assertion of quantum supremacy by Arute et al. (Nature, 574, 505--510 (2019)) was initially estimated to require Summit, the world's most powerful supercomputer today, approximately 10,000 years. The same task was performed on the Sycamore quantum processor in only 200 seconds.\nIn this work, we present a tensor network-based classical simulation algorithm. Using a Summit-comparable cluster, we estimate that our simulator can perform this task in less than 20 days. On moderately-sized instances, we reduce the runtime from years to minutes, running several times faster than Sycamore itself. These estimates are based on explicit simulations of parallel subtasks, and leave no room for hidden costs. The simulator's key ingredient is identifying and optimizing the "stem" of the computation: a sequence of pairwise tensor contractions that dominates the computational cost. This orders-of-magnitude reduction in classical simulation time, together with proposals for further significant improvements, indicates that achieving quantum supremacy may require a period of continuing quantum hardware developments without an unequivocal first demonstration.	https://arxiv.org/abs/2005.06787	\N	2022-02-24 08:17:18.990727-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
96	Effective Compression of Quantum Braided Circuits Aided by ZX-Calculus	effective compression of quantum braided circuits aided by zx-calculus	Mapping a quantum algorithm to any practical large-scale quantum computer will require a sequence of compilations and optimizations. At the level of fault-tolerant encoding, one likely requirement of this process is the translation into a topological circuit, for which braided circuits represent one candidate model. Given the large overhead associated with encoded circuits, it is paramount to reduce their size in terms of computation time and qubit number through circuit compression. While these optimizations have typically been performed in the language of three-dimensional diagrams, such a representation does not allow an efficient, general, and scalable approach to reduction or verification. We propose the use of the ZX-calculus as an intermediate language for braided circuit compression, demonstrating advantage by comparing results using this approach with those previously obtained for the compression of  $|A⟩$ and $|Y⟩$ state distillation circuits. We then provide a benchmark of our method against a small set of Clifford+T circuits, yielding compression percentages of  ∼77%. Our results suggest that the overheads of braided, defect-based circuits are comparable to those of their lattice-surgery counterparts, restoring the potential of this model for surface-code quantum computation.	https://arxiv.org/abs/1912.11503	\N	2022-02-24 08:17:18.990727-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
97	Reducing the number of non-Clifford gates in quantum circuits	reducing the number of non-clifford gates in quantum circuits	We present a method for reducing the number of non-Clifford quantum gates, in particularly T-gates, in a circuit, an important task for efficiently implementing fault-tolerant quantum computations. This method matches or beats previous approaches to ancillae-free T-count reduction on the majority of our benchmark circuits, in some cases yielding up to 50% improvement. Our method begins by representing the quantum circuit as a ZX-diagram, a tensor networklike structure that can be transformed and simplified according to the rules of the ZX-calculus. We then extend a recent simplification strategy with a different ingredient, phase gadgetization, which we use to propagate non-Clifford phases through a ZX-diagram to find nonlocal cancellations. Our procedure extends unmodified to arbitrary phase angles and to parameter elimination for variational circuits. Finally, our optimization is self-checking, in the sense that the simplification strategy we propose is powerful enough to independently validate equality of the input circuit and the optimized output circuit. We have implemented the routines of this paper in the open-source library pyzx.	https://arxiv.org/abs/1903.10477	\N	2022-02-24 08:17:18.990727-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
98	Simultaneous execution of quantum circuits on current and near-future NISQ systems	simultaneous execution of quantum circuits on current and near-future nisq systems	In the NISQ era, multi-programming of quantum circuits (QC) helps to improve the throughput of quantum computation. Although the crosstalk, which is a major source of noise on NISQ processors, may cause performance degradation of concurrent execution of multiple QCs, its characterization cost grows quadratically in processor size. To address these challenges, we introduce palloq (parallel allocation of QCs) for improving the performance of quantum multi-programming on NISQ processors while paying attention to the combination of QCs in parallel execution and their layout on the quantum processor, and reducing unwanted interference between QCs caused by crosstalk. We also propose a software-based crosstalk detection protocol that efficiently and successfully characterizes the hardware's suitability for multi-programming. We found a trade-off between the success rate and execution time of the multi-programming. This would be attractive not only to quantum computer service but also to users around the world who want to run algorithms of suitable scale on NISQ processors that have recently attracted great attention and are being enthusiastically investigated.	https://arxiv.org/abs/2112.07091	https://i.ibb.co/RHHN955/Screen-Shot-2022-02-24-at-9-13-17-PM.png	2022-02-25 14:36:29.424924-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
107	Neural-network states for the classical simulation of quantum computing	neural-network states for the classical simulation of quantum computing	Simulating quantum algorithms with classical resources generally requires exponential resources. However, heuristic classical approaches are often very efficient in approximately simulating special circuit structures, for example with limited entanglement, or based on one-dimensional geometries. Here we introduce a classical approach to the simulation of general quantum circuits based on neural-network quantum states (NQS) representations. Considering a set of universal quantum gates, we derive rules for exactly applying single-qubit and two-qubit Z rotations to NQS, whereas we provide a learning scheme to approximate the action of Hadamard gates. Results are shown for the Hadamard and Fourier transform of entangled initial states for systems sizes and total circuit depths exceeding what can be currently simulated with state-of-the-art brute-force techniques. The overall accuracy obtained by the neural-network states based on Restricted Boltzmann machines is satisfactory, and offers a classical route to simulating highly-entangled circuits. In the test cases considered, we find that our classical simulations are comparable to quantum simulations affected by an incoherent noise level in the hardware of about 10−3 per gate.	https://arxiv.org/abs/1808.05232	\N	2022-03-02 15:38:49.294897-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
100	Benchmark Study of Quantum Algorithms for Combinatorial Optimization: Unitary versus Dissipative	benchmark study of quantum algorithms for combinatorial optimization: unitary versus dissipative	We study the performance scaling of three quantum algorithms for combinatorial optimization: measurement-feedback coherent Ising machines (MFB-CIM), discrete adiabatic quantum computation (DAQC), and the Dürr-Hoyer algorithm for quantum minimum finding (DH-QMF) that is based on Grover's search. We use MaxCut problems as our reference for comparison, and time-to-solution (TTS) as a practical measure of performance for these optimization algorithms. We empirically observe a Θ(2n√) scaling for the median TTS for MFB-CIM, in comparison to the exponential scaling with the exponent n for DAQC and the provable ˜(2n‾‾√) scaling for DH-QMF. We conclude that these scaling complexities result in a dramatic performance advantage for MFB-CIM in comparison to the other two algorithms for solving MaxCut problems.	https://arxiv.org/abs/2105.03528	https://i.ibb.co/7bDZYC0/Screen-Shot-2022-02-24-at-9-28-22-PM.png	2022-02-25 14:36:29.424924-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
101	Scalable error mitigation for noisy quantum circuits produces competitive expectation values	scalable error mitigation for noisy quantum circuits produces competitive expectation values	Noise in existing quantum processors only enables an approximation to ideal quantum computation. However, these approximations can be vastly improved by error mitigation, for the computation of expectation values, as shown by small-scale experimental demonstrations. However, the practical scaling of these methods to larger system sizes remains unknown. Here, we demonstrate the utility of zero-noise extrapolation for relevant quantum circuits using up to 26 qubits, circuit depths of 60, and 1080 CNOT gates. We study the scaling of the method for canonical examples of product states and entangling Clifford circuits of increasing size, and extend it to the quench dynamics of 2-D Ising spin lattices with varying couplings. We show that the efficacy of the error mitigation is greatly enhanced by additional error suppression techniques and native gate decomposition that reduce the circuit time. By combining these methods, we demonstrate an accuracy in the approximate quantum simulation of the quench dynamics that surpasses the classical approximations obtained from a state-of-the-art 2-D tensor network method. These results reveal a path to a relevant quantum advantage with noisy, digital, quantum processors.	https://arxiv.org/abs/2108.09197	https://i.ibb.co/PWgFB7H/Screen-Shot-2022-02-24-at-9-30-51-PM.png	2022-02-25 14:36:29.424924-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
104	Establishing the Quantum Supremacy Frontier with a 281 Pflop/s Simulation	establishing the quantum supremacy frontier with a 281 pflop/s simulation	Noisy Intermediate-Scale Quantum (NISQ) computers are entering an era in which they can perform computational tasks beyond the capabilities of the most powerful classical computers, thereby achieving "Quantum Supremacy", a major milestone in quantum computing. NISQ Supremacy requires comparison with a state-of-the-art classical simulator. We report HPC simulations of hard random quantum circuits (RQC), which have been recently used as a benchmark for the first experimental demonstration of Quantum Supremacy, sustaining an average performance of 281 Pflop/s (true single precision) on Summit, currently the fastest supercomputer in the World. These simulations were carried out using qFlex, a tensor-network-based classical high-performance simulator of RQCs. Our results show an advantage of many orders of magnitude in energy consumption of NISQ devices over classical supercomputers. In addition, we propose a standard benchmark for NISQ computers based on qFlex.	https://arxiv.org/abs/1905.00444	\N	2022-03-02 15:38:49.294897-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
105	Hyper-optimized tensor network contraction	hyper-optimized tensor network contraction	Tensor networks represent the state-of-the-art in computational methods across many disciplines, including the classical simulation of quantum many-body systems and quantum circuits. Several applications of current interest give rise to tensor networks with irregular geometries. Finding the best possible contraction path for such networks is a central problem, with an exponential effect on computation time and memory footprint. In this work, we implement new randomized protocols that find very high quality contraction paths for arbitrary and large tensor networks. We test our methods on a variety of benchmarks, including the random quantum circuit instances recently implemented on Google quantum chips. We find that the paths obtained can be very close to optimal, and often many orders or magnitude better than the most established approaches. As different underlying geometries suit different methods, we also introduce a hyper-optimization approach, where both the method applied and its algorithmic parameters are tuned during the path finding. The increase in quality of contraction schemes found has significant practical implications for the simulation of quantum many-body systems and particularly for the benchmarking of new quantum chips. Concretely, we estimate a speed-up of over 10,000× compared to the original expectation for the classical simulation of the Sycamore `supremacy' circuits. Published as Quantum 5, 410 (2021).	https://arxiv.org/abs/2002.01935	\N	2022-03-02 15:38:49.294897-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
102	A circuit-level protocol and analysis for twist-based lattice surgery	a circuit-level protocol and analysis for twist-based lattice surgery	Lattice surgery is a measurement-based technique for performing fault-tolerant quantum computation in two dimensions. When using the surface code, the most general lattice surgery operations require lattice irregularities called twist defects. However, implementing twist-based lattice surgery may require additional resources, such as extra device connectivity, and could lower the threshold and overall performance for the surface code. Here we provide an explicit twist-based lattice surgery protocol and its requisite connectivity layout. We also provide new stabilizer measurement circuits for measuring twist defects which are compatible with our chosen gate scheduling. We undertake the first circuit-level error correction simulations during twist-based lattice surgery using a biased depolarizing noise model. Our results indicate a slight decrease in the threshold for timelike logical failures compared to lattice surgery protocols with no twist defects in the bulk. However, comfortably below threshold (i.e. with CNOT infidelities below 5×10−3), the performance degradation is mild and in fact preferable over proposed alternative twist-free schemes. Lastly, we provide an efficient scheme for measuring Y operators along boundaries of surface codes which bypasses certain steps that were required in previous schemes.	https://arxiv.org/abs/2201.05678	https://i.ibb.co/zJVyhLf/Screen-Shot-2022-02-24-at-9-33-18-PM.png	2022-02-25 14:36:29.424924-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
103	Equivalence between fermion-to-qubit mappings in two spatial dimensions	equivalence between fermion-to-qubit mappings in two spatial dimensions	We argue that all locality-preserving mappings between fermionic observables and Pauli matrices on a two-dimensional lattice can be generated from the exact bosonization in Ref. [1], whose gauge constraints project onto the subspace of the toric code with emergent fermions. Starting from the exact bosonization and applying Clifford finite-depth generalized local unitary (gLU) transformation, we can achieve all possible fermion-to-qubit mappings (up to the re-pairing of Majorana fermions). In particular, we discover a new super-compact encoding using 1.25 qubits per fermion on the square lattice, which is lower than any method in the literature. We prove the existence of fermion-to-qubit mappings with qubit-fermion ratios r=1+12k for positive integers k, where the proof utilizes the trivialness of quantum cellular automata (QCA) in two spatial dimensions. When the ratio approaches 1, the fermion-to-qubit mapping reduces to the 1d Jordan-Wigner transformation along a certain path in the two-dimensional lattice. Finally, we explicitly demonstrate that the Bravyi-Kitaev superfast simulation, the Verstraete-Cirac auxiliary method, Kitaev's exactly solved model, the Majorana loop stabilizer codes, and the compact fermion-to-qubit mapping can all be obtained from the exact bosonization.	https://arxiv.org/abs/2201.05153	https://i.ibb.co/26cY82d/Screen-Shot-2022-02-24-at-9-35-48-PM.png	2022-02-25 14:36:29.424924-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
106	Simulating the Sycamore quantum supremacy circuits	simulating the sycamore quantum supremacy circuits	We propose a general tensor network method for simulating quantum circuits. The method is massively more efficient in computing a large number of correlated bitstring amplitudes and probabilities than existing methods. As an application, we study the sampling problem of Google's Sycamore circuits, which are believed to be beyond the reach of classical supercomputers and have been used to demonstrate quantum supremacy. Using our method, employing a small computational cluster containing 60 graphical processing units (GPUs), we have generated one million correlated bitstrings with some entries fixed, from the Sycamore circuit with 53 qubits and 20 cycles, with linear cross-entropy benchmark (XEB) fidelity equals 0.739, which is much higher than those in Google's quantum supremacy experiments.	https://arxiv.org/abs/2103.03074	\N	2022-03-02 15:38:49.294897-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
99	Comparison of Cloud-Based Ion Trap and Superconducting Quantum Computer Architectures	comparison of cloud-based ion trap and superconducting quantum computer architectures	Quantum computing represents a radical departure from conventional approaches to information processing, offering the potential for solving problems that can never be approached classically. While large scale quantum computer hardware is still in development, several quantum computing systems have recently become available as commercial cloud services. We compare the performance of these systems on several simple quantum circuits and algorithms, and examine component performance in the context of each system's architecture.	https://arxiv.org/abs/2102.00371	https://i.ibb.co/Tr3yVNB/Screen-Shot-2022-02-24-at-9-18-47-PM.png	2022-02-25 14:36:29.424924-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
108	Quantum Computer Benchmarking via Quantum Algorithms	quantum computer benchmarking via quantum algorithms	We present a framework that utilizes quantum algorithms, an architecture aware quantum noise model and an ideal simulator to benchmark quantum computers. The benchmark metrics highlight the difference between the quantum computer evolution and the simulated noisy and ideal quantum evolutions. We utilize our framework for benchmarking three IBMQ systems. The use of multiple algorithms, including continuous-time ones, as benchmarks stresses the computers in different ways highlighting their behaviour for a diverse set of circuits. The complexity of each quantum circuit affects the efficiency of each quantum computer, with increasing circuit size resulting in more noisy behaviour. Furthermore, the use of both a continuous-time quantum algorithm and the decomposition of its Hamiltonian also allows extracting valuable comparisons regarding the efficiency of the two methods on quantum systems. The results show that our benchmarks provide sufficient and well-rounded information regarding the performance of each quantum computer.	https://arxiv.org/abs/2112.09457v1	https://i.ibb.co/my5MSKt/Screen-Shot-2022-03-03-at-7-54-22-AM.png	2022-03-03 22:37:58.730969-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
109	A Structured Method for Compilation of QAOA Circuits in Quantum Computing	a structured method for compilation of qaoa circuits in quantum computing	The Quantum Approximate Optimization Algorithm(QAOA) is one of the highly advocated variational algorithms for problem optimization, such as MAXCUT problem. It is a type of parameterized quantum classical combined algorithm feasible on the current era of Noisy Intermediate Scale Quantum(NISQ) computing. Like all other quantum algorithms, a QAOA circuit has to be converted to a hardware compliant circuit with some additional SWAP gates inserted, which is called the qubit mapping process. QAOA has a special kind of unit block called CPHASE. Commuting CPHASE blocks can be scheduled in any order, which grants more freedom to the quantum program compilation process in the scope of qubit mapping. Due to the decoherence of qubit, the number of SWAP gates inserted and the depth of the converted circuit needs to be as small as possible. After analyzing tremendous SWAP insertion and gate reordering combinations, we discovered a simple yet effective pattern of gates scheduling called CommuTativity Aware Graph(CTAG). This specific pattern can be utilized to schedule any QAOA circuit while greatly reducing the gate count and circuit depth. Our CTAG based method yields circuits with depth in the bound of O(2N), as long as there is line embedding in the given architecture with length of N. Comparing our CTAG based method to the state of art QAOA compilation solution, which is a heuristic approach using the commutativity feature, we achieve up to 90% reduction in circuit depth and 75% reduction in gate count in linear architecture for input graphs with up to 120 vertices. Even more speedup can be achieved, if the input graph has more vertices.	https://arxiv.org/abs/2112.06143v1	https://i.ibb.co/5vBkDgp/Screen-Shot-2022-03-03-at-8-12-45-AM.png	2022-03-03 22:37:58.730969-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
110	Quantum Circuit Transformations with a Multi-Level Intermediate Representation Compiler	quantum circuit transformations with a multi-level intermediate representation compiler	Quantum computing promises remarkable approaches for processing information, but new tools are needed to compile program representations into the physical instructions required by a quantum computer. Here we present a novel adaptation of the multi-level intermediate representation (MLIR) integrated into a quantum compiler that may be used for checking program execution. We first present how MLIR enables quantum circuit transformations for efficient execution on quantum computing devices and then give an example of compiler transformations based on so-called mirror circuits. We demonstrate that mirror circuits inserted during compilation may test hardware performance by assessing quantum circuit accuracy on several superconducting and ion trap hardware platforms. Our results validate MLIR as an efficient and effective method for collecting hardware-dependent diagnostics through automated transformations of quantum circuits.	https://arxiv.org/abs/2112.10677v1	https://i.ibb.co/TPh4MZd/Screen-Shot-2022-03-03-at-9-11-26-AM.png	2022-03-03 22:37:58.730969-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
111	TensorLy-Quantum: Quantum Machine Learning with Tensor Methods	tensorly-quantum: quantum machine learning with tensor methods	Simulation is essential for developing quantum hardware and algorithms. However, simulating quantum circuits on classical hardware is challenging due to the exponential scaling of quantum state space. While factorized tensors can greatly reduce this overhead, tensor network-based simulators are relatively few and often lack crucial functionalities. To address this deficiency, we created TensorLy-Quantum, a Python library for quantum circuit simulation that adopts the PyTorch API. Our library leverages the optimized tensor methods of the existing TensorLy ecosystem to represent, simulate, and manipulate large-scale quantum circuits. Through compact tensor representations and efficient operations, TensorLy-Quantum can scale to hundreds of qubits on a single GPU and thousands of qubits on multiple GPUs. TensorLy-Quantum is open-source and accessible at this https URL	https://arxiv.org/abs/2112.10239v1	https://i.ibb.co/kXLf8M7/Screen-Shot-2022-03-03-at-9-22-21-AM.png	2022-03-03 22:37:58.730969-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
31	Benchmarking Characterization Methods for Noisy QC	benchmarking characterization methods for noisy qc	Effective methods for characterizing the noise in quantum computing devices are essential for programming and debugging circuit performance. Existing approaches vary in the information obtained as well as the amount of quantum and classical resources required, with more information generally requiring more resources. Here we benchmark the characterization methods of gate set tomography, Pauli channel noise reconstruction, and empirical direct characterization for developing models that describe noisy quantum circuit performance on a 27-qubit superconducting transmon device. We evaluate these models by comparing the accuracy of noisy circuit simulations with the corresponding experimental observations. We find that the agreement of noise model to experiment does not correlate with the information gained by characterization and that the underlying circuit strongly influences the best choice of characterization approach. Empirical direct characterization scales best of the methods we tested and produced the most accurate characterizations across our benchmarks.	https://arxiv.org/abs/2201.02243	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2022-06-13 00:00:00-04
112	Scalable randomized benchmarking of quantum computers using mirror circuits	scalable randomized benchmarking of quantum computers using mirror circuits	The performance of quantum gates is often assessed using some form of randomized benchmarking. However, the existing methods become infeasible for more than approximately five qubits. Here we show how to use a simple and customizable class of circuits -- randomized mirror circuits -- to perform scalable, robust, and flexible randomized benchmarking of Clifford gates. We show that this technique approximately estimates the infidelity of an average many-qubit logic layer, and we use simulations of up to 225 qubits with physically realistic error rates in the range 0.1%-1% to demonstrate its scalability. We then use experiments on up to 16 qubits to demonstrate that our technique can reveal and quantify crosstalk errors in many-qubit circuits.	https://arxiv.org/abs/2112.09853v1	https://i.ibb.co/JsQGR6C/Screen-Shot-2022-03-03-at-9-28-37-AM.png	2022-03-03 22:37:58.730969-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
113	NetKet 3: Machine Learning Toolbox for Many-Body Quantum Systems	netket 3: machine learning toolbox for many-body quantum systems	We introduce version 3 of NetKet, the machine learning toolbox for many-body quantum physics. NetKet is built around neural-network quantum states and provides efficient algorithms for their evaluation and optimization. This new version is built on top of JAX, a differentiable programming and accelerated linear algebra framework for the Python programming language. The most significant new feature is the possibility to define arbitrary neural network ansätze in pure Python code using the concise notation of machine-learning frameworks, which allows for just-in-time compilation as well as the implicit generation of gradients thanks to automatic differentiation. NetKet 3 also comes with support for GPU and TPU accelerators, advanced support for discrete symmetry groups, chunking to scale up to thousands of degrees of freedom, drivers for quantum dynamics applications, and improved modularity, allowing users to use only parts of the toolbox as a foundation for their own code.	https://arxiv.org/abs/2112.10526v1	https://i.ibb.co/88QRnCZ/Screen-Shot-2022-03-03-at-11-20-21-AM.png	2022-03-03 22:37:58.730969-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
114	Optimized compiler for Distributed Quantum Computing	optimized compiler for distributed quantum computing	Practical distributed quantum computing requires the development of efficient compilers, able to make quantum circuits compatible with some given hardware constraints. This problem is known to be tough, even for local computing. Here, we address it on distributed architectures. As generally assumed in this scenario, telegates represent the fundamental remote (inter-processor) operations. Each telegate consists of several tasks: i) entanglement generation and distribution, ii) local operations, and iii) classical communications. Entanglement generations and distribution is an expensive resource, as it is time-consuming and fault-prone. To mitigate its impact, we model an optimization problem that combines running-time minimization with the usage of that resource. Specifically, we provide a parametric ILP formulation, where the parameter denotes a time horizon (or time availability); the objective function count the number of used resources. To minimize the time, a binary search solves the subject ILP by iterating over the parameter. Ultimately, to enhance the solution space, we extend the formulation, by introducing a predicate that manipulates the circuit given in input and parallelizes telegates' tasks.	https://arxiv.org/abs/2112.14139v1	https://i.ibb.co/WDqwKwK/Screen-Shot-2022-03-03-at-11-21-49-AM.png	2022-03-03 22:37:58.730969-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
118	Low-overhead quantum computing with the color code	low-overhead quantum computing with the color code	Fault-tolerant quantum computation demands significant resources: large numbers of physical qubits must be checked for errors repeatedly to protect quantum data as logic gates are implemented in the presence of noise. We demonstrate that an approach based on the color code can lead to considerable reductions in the resource overheads compared with conventional methods, while remaining compatible with a two-dimensional layout. We propose a lattice surgery scheme that exploits the color code's rich structure to perform arbitrary pairs of commuting logical Pauli measurements in parallel while keeping the space cost low. Compared to lattice surgery schemes based on the surface code with the same code distance, our approach yields about a 3× improvement in the space-time overhead. Even when taking into account the color code's lower error threshold using current decoders, the overhead is reduced by 10% at a physical error rate of 10−3 and by 50% at 10−4.	https://arxiv.org/abs/2201.07806	https://i.ibb.co/gDBGSYc/Screen-Shot-2022-03-09-at-9-52-15-AM.png	2022-03-10 14:46:28.550451-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
116	Algorithms for Gibbs state preparation on noiseless and noisy random quantum circuits	algorithms for gibbs state preparation on noiseless and noisy random quantum circuits	The most promising and practical candidate to demonstrate a drastic advantage of quantum computers over classical ones is the simulation of quantum matter. Despite the advances in simulation of the time evolution, preparing thermal states of quantum many-body systems remains notoriously a difficult yet important task. The existing algorithms either require quantum phase estimation rendering them impractical for current noisy hardware, or are variational which face obstacles such as initialization, barren plateaus, and a general lack of provable convergence. We propose two quantum algorithms with provable guarantees to prepare thermal states on current noisy quantum hardware. The first algorithm requires postselection on intermediate measurements and runs on a quantum circuit with poly(n) depth, where n is the number of qubits. This algorithm requires a significantly smaller number of gates than previous such algorithms. The second algorithm is tailored to ergodic interacting systems which are a vast subset of physical Hamiltonians. This algorithm can potentially sample thermal distributions in polynomial time. In addition, both of our algorithms have free parameters that can be optimized or trained to mitigate noise and computational errors. We illustrate our algorithms by running them on the latest IBM quantum hardware and in particular simulate them for the Fermi-Hubbard model.	https://arxiv.org/abs/2112.14688	https://i.ibb.co/w49wrQV/Screen-Shot-2022-03-09-at-9-47-39-AM.png	2022-03-10 20:10:01.975544-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
124	GPS: A new TSP formulation for its generalizations type QUBO	gps: a new tsp formulation for its generalizations type qubo	We propose a new Quadratic Unconstrained Binary Optimization (QUBO) formulation of the Travelling Salesman Problem (TSP), with which we overcame the best formulation of the Vehicle Routing Problem (VRP) in terms of the minimum number of necessary variables. After, we present a detailed study of the constraints subject to the new TSP model and benchmark it with MTZ and native formulations. Finally, we tested whether the correctness of the formulation by entering it into a QUBO problem solver. The solver chosen is a D-Wave\\_2000Q6 quantum computer simulator due to the connection between Quantum Annealing and QUBO formulations.	https://arxiv.org/abs/2110.12158	\N	2022-03-10 20:10:15.970387-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
117	Testing matrix product states	testing matrix product states	Devising schemes for testing the amount of entanglement in quantum systems has played a crucial role in quantum computing and information theory. Here, we study the problem of testing whether an unknown state |ψ⟩ is a matrix product state (MPS) in the property testing model. MPS are a class of physically-relevant quantum states which arise in the study of quantum many-body systems. A quantum state |ψ1,...,n⟩ comprised of n qudits is said to be an MPS of bond dimension r if the reduced density matrix ψ1,...,k has rank r for each k∈{1,...,n}. When r=1, this corresponds to the set of product states. For larger values of r, this yields a more expressive class of quantum states, which are allowed to possess limited amounts of entanglement. In the property testing model, one is given m identical copies of |ψ⟩, and the goal is to determine whether |ψ⟩ is an MPS of bond dimension r or whether |ψ⟩ is far from all such states. For the case of product states, we study the product test, a simple two-copy test previously analyzed by Harrow and Montanaro (FOCS 2010), and a key ingredient in their proof that 𝖰𝖬𝖠(𝟤)=𝖰𝖬𝖠(k) for k≥2. We give a new and simpler analysis of the product test which achieves an optimal bound for a wide range of parameters, answering open problems of Harrow and Montanaro (FOCS 2010) and Montanaro and de Wolf (2016). For the case of r≥2, we give an efficient algorithm for testing whether |ψ⟩ is an MPS of bond dimension r using m=O(nr2) copies, independent of the dimensions of the qudits, and we show that Ω(n1/2) copies are necessary for this task. This lower bound shows that a dependence on the number of qudits n is necessary, in sharp contrast to the case of product states where a constant number of copies suffices.	https://arxiv.org/abs/2201.01824	https://i.ibb.co/KN15G8s/Screen-Shot-2022-03-09-at-9-49-48-AM.png	2022-03-10 14:46:28.550451-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
119	Quantum algorithm for calculating risk contributions in a credit portfolio	quantum algorithm for calculating risk contributions in a credit portfolio	Dissipative collective effects are ubiquitous in quantum physics, and their relevance ranges from the study of entanglement in biological systems to noise mitigation in quantum computers. Here, we put forward the first fully quantum simulation of dissipative collective phenomena on a real quantum computer. The quantum simulation is based on the recently introduced multipartite collision model, which reproduces the action of a dissipative common environment by means of repeated interactions between the system and some ancillary qubits. First, we theoretically study the accuracy of this algorithm on near-term quantum computers with noisy gates, and we derive some rigorous error bounds which depend on the timestep of the collision model and on the gate errors. These bounds can be employed to estimate the necessary resources for the efficient quantum simulation of the collective dynamics. Then, we implement the algorithm on some IBM quantum computers to simulate superradiance and subradiance between a pair of qubits. Our experimental results successfully display the emergence of collective effects in the quantum simulation. Finally, we analyze the noise properties of the gates we employed in the algorithm by means of full process tomography. Using the state-of-the-art tools for noise analysis in quantum computers, we obtain the values of the average gate fidelity, unitarity and diamond error, and we establish a connection between them and the accuracy of the experimentally simulated state. Although the scaling of the error as a function of the number of gates is favorable, we observe that reaching the threshold for quantum fault tolerant computation is still orders of magnitude away.	https://arxiv.org/abs/2201.11597	https://i.ibb.co/N1XzFb2/Screen-Shot-2022-03-09-at-10-03-48-AM.png	2022-03-10 14:46:28.550451-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
120	Constant-time one-shot testing of large-scale graph states	constant-time one-shot testing of large-scale graph states	Fault-tolerant measurement-based quantum computation (MBQC) with recent progress on quantum technologies leads to a promising scalable platform for realizing quantum computation, conducted by preparing a large-scale graph state over many qubits and performing single-qubit measurements on the state. With fault-tolerant MBQC, even if the graph-state preparation suffers from errors occurring at an unknown physical error rate, we can suppress the effect of the errors. Verifying graph states is vital to test whether we can conduct MBQC as desired even with such errors. However, problematically, existing state-of-the-art protocols for graph-state verification by fidelity estimation have required measurements on many copies of the entire graph state and hence have been prohibitively costly in terms of the number of qubits and the runtime. We here construct an efficient alternative framework for testing graph states for fault-tolerant MBQC based on the theory of property testing. Our test protocol accepts with high probability when the physical error rate is small enough to make fault-tolerant MBQC feasible and rejects when the rate is above the threshold of fault-tolerant MBQC. The novelty of our protocol is that we use only a single copy of the N-qubit graph state and single-qubit Pauli measurements only on a constant-sized subset of the qubits; thus, the protocol has a constant runtime independently of N. Furthermore, we can immediately use the rest of the graph state for fault-tolerant MBQC if the protocol accepts. These results achieve a significant advantage over prior art for graph-state verification in the number of qubits and the total runtime. Consequently, our work offers a new route to a fast and practical framework for benchmarking large-scale quantum state preparation.	https://arxiv.org/abs/2201.11127	https://i.ibb.co/gJNcSgS/Screen-Shot-2022-03-09-at-10-06-31-AM.png	2022-03-10 14:46:28.550451-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
121	Improved variational quantum eigensolver via quasi-dynamical evolution	improved variational quantum eigensolver via quasi-dynamical evolution	The variational quantum eigensolver (VQE) is a hybrid quantum-classical algorithm designed for current and near-term quantum devices. Despite its initial success, there is a lack of understanding involving several of its key aspects. There are problems with VQE that forbid a favourable scaling towards quantum advantage. In order to alleviate the problems, we propose and extensively test a quantum annealing inspired heuristic that supplements VQE. The improved VQE enables an efficient initial state preparation mechanism, in a recursive manner, for a quasi-dynamical unitary evolution. We conduct an in-depth scaling analysis of finding the ground state energies with increasing lattice sizes of the Heisenberg model, employing simulations of up to 40 qubits that manipulate the complete state vector. For the current devices, we further propose a benchmarking toolkit using a mean-field model and test it on IBM Q devices. The improved VQE avoids barren plateaus, exits local minima, and works with low-depth circuits. Realistic gate execution times estimate a longer computational time to complete the same computation on a fully functional error-free quantum computer than on a quantum computer emulator implemented on a classical computer. However, our proposal can be expected to help accurate estimations of the ground state energies beyond 50 qubits when the complete state vector can no longer be stored on a classical computer, thus enabling quantum advantage.	https://arxiv.org/abs/2202.10130	https://i.ibb.co/SNt7CCr/Screen-Shot-2022-03-09-at-10-09-38-AM.png	2022-03-10 14:46:28.550451-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
122	Quantum Neuronal Sensing of Quantum Many-Body States on a 61-Qubit Programmable Superconducting Processor	quantum neuronal sensing of quantum many-body states on a 61-qubit programmable superconducting processor	Classifying the many-body quantum states with distinct properties and phases of matter is one of the most fundamental tasks in quantum many-body physics. However, due to the exponential complexity that emerges from enormous numbers of interacting particles, classifying large-scale quantum states is often very challenging for classical approaches. Here, we propose a new approach using quantum neuronal sensing. Utilizing a 61 qubit superconducting quantum processor, we show that our scheme can efficiently classify two different types of many-body phenomena: the ergodic and localized phases of matter. The quantum neuronal process in the sensing allows us to extract the necessary information coming from the statistical characteristics of the eigenspectrum by measuring only one qubit. Our work demonstrates the feasibility and scalability of quantum neuronal sensing for near-term quantum processors and opens new avenues for exploring quantum many-body phenomena in larger-scale systems.	https://arxiv.org/abs/2201.05957	https://i.ibb.co/txC1tKn/Screen-Shot-2022-03-09-at-10-13-46-AM.png	2022-03-10 14:46:28.550451-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
123	Quantum Volume in Practice: What Users Can Expect from NISQ Devices	quantum volume in practice: what users can expect from nisq devices	Quantum volume (QV) has become the de-facto standard benchmark to quantify the capability of Noisy Intermediate-Scale Quantum (NISQ) devices. While QV values are often reported by NISQ providers for their systems, we perform our own series of QV calculations on more than 20 NISQ devices currently (2021/2022) offered by IBM Q, IonQ, Rigetti, Oxford Quantum Circuits, and Honeywell/Quantinuum. Our approach characterizes the performances that an advanced user of these NISQ devices can expect to achieve with a reasonable amount of optimization, but without white-box access to the device. In particular, we compile QV circuits to standard gate sets of the vendor using compiler optimization routines where available, and we perform experiments across different initial qubit mappings. We find that running QV tests requires very significant compilation cycles, QV values achieved in our tests typically lag behind officially reported results and also depend significantly on the classical compilation effort invested.	https://arxiv.org/abs/2203.03816	https://i.ibb.co/zJ0b7yg/Screen-Shot-2022-03-09-at-4-47-53-PM.png	2022-03-10 14:46:28.550451-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
125	An investigation of IBM Quantum Computing device performance on Combinatorial Optimisation Problems	an investigation of ibm quantum computing device performance on combinatorial optimisation problems	The exponential increase in CPU time taken to deterministically solve NP-Hard Combinatorial Optimisation Problems (COP), as the problem size scales, has resulted in a search for non-deterministic optimisation solution techniques to obtain solutions to COP efficiently. This paper juxtaposes classical and quantum optimisation algorithms' performance to solve two common COP, the Travelling Salesman Problem (TSP) and Quadratic Assignment Problem (QAP). The two classical optimisation techniques applied are Branch and Bound (BNB) and Simulated Annealing (SA), and the two quantum optimisation methods used are the Variational Quantum Eigensolver (VQE) algorithm and Quantum Approximate Optimisation Algorithm (QAOA). These algorithms are respectively executed on classical and IBM's suite of Noisy Intermediate-Scale Quantum (NISQ) computers. Our experimental results resemble and extend on previously reported results in the literature. Extensions include critically analysing, comparing and commenting on the performance of quantum optimisation computing techniques to classical techniques, with respect to computational time and additional metrics used to measure solution quality. Furthermore, a comparison of the impact of a new set of basis gates on the quantum optimisation techniques was investigated; the results did not reflect any consistent impact on results. The VQE algorithm and QAOA executed on state of the art IBM quantum devices are outperformed by classical optimisation techniques, highlighting the shortcomings of NISQ devices.	https://arxiv.org/abs/2107.03638	\N	2022-03-10 21:16:36.669427-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
127	Superconducting Circuits for Quantum Information: An Outlook	superconducting circuits for quantum information: an outlook	The performance of superconducting qubits has improved by several orders of magnitude in the past decade. These circuits benefit from the robustness of superconductivity and the Josephson effect, and at present they have not encountered any hard physical limits. However, building an error-corrected information processor with many such qubits will require solving specific architecture problems that constitute a new field of research. For the first time, physicists will have to master quantum error correction to design and operate complex active systems that are dissipative in nature, yet remain coherent indefinitely. We offer a view on some directions for the field and speculate on its future. Full pdf: https://cpb-us-w2.wpmucdn.com/campuspress.yale.edu/dist/2/3627/files/2020/11/Superconducting_Circuits_for_Quantum_Information_-_An_Outlook.pdf	https://www.science.org/doi/10.1126/science.1231930	\N	2022-03-14 13:45:36.414079-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
129	Comparative study of adaptive variational quantum eigensolvers for multi-orbital impurity models	comparative study of adaptive variational quantum eigensolvers for multi-orbital impurity models	We perform a systematic study of preparing ground states of correlated eg and t2g multi-orbital impurity models using variational quantum eigensolvers (VQEs). Both fixed and adaptive wavefunction ansätze are considered and the resulting gate depths and performance with and without quantum sampling noise are analyzed. We investigate the qubit adaptive derivative-assembled pseudo-trotter (ADAPT) VQE approach in the Hartree-Fock orbital basis, as well as the Hamiltonian variational ansatz (HVA) and an adaptive variant of it in the atomic orbital basis. An operator pool composed of pairwise commutators of the Hamiltonian terms is developed to allow a fair comparison between the adaptive and the fixed HVA ansatz. Using statevector simulations, we show that the most compact ansätze are obtained in the atomic orbital representation with symmetry-based Pauli tapering in parity encoding. We further perform adaptive VQE calculations including sampling noise, and demonstrate that high-fidelity state preparation can be achieved with the Hamiltonian commutator pool. By utilizing a doubly decomposed form of the impurity Hamiltonian and a noise resilient optimizer, we show that this approach requires only a modest number of about 212 samples per energy evaluation. We discover a dichotomy of the operator pool complexity in the presence of quantum noise, where a small pool size reduces the adaptive overhead but a larger pool size accelerates the convergence to the ground state. Finally, we measure the ground state energy of the eg model on IBM quantum hardware using the converged qubit-ADAPT ansatz, and obtain a relative error of 0.7\\% using error mitigation techniques including symmetry-filtering and zero-noise extrapolation.	https://arxiv.org/abs/2203.06745	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
130	Reducing the cost of energy estimation in the variational quantum eigensolver algorithm with robust amplitude estimation	reducing the cost of energy estimation in the variational quantum eigensolver algorithm with robust amplitude estimation	Quantum chemistry and materials is one of the most promising applications of quantum computing. Yet much work is still to be done in matching industry-relevant problems in these areas with quantum algorithms that can solve them. Most previous efforts have carried out resource estimations for quantum algorithms run on large-scale fault-tolerant architectures, which include the quantum phase estimation algorithm. In contrast, few have assessed the performance of near-term quantum algorithms, which include the variational quantum eigensolver (VQE) algorithm. Recently, a large-scale benchmark study [Gonthier et al. 2020] found evidence that the performance of the variational quantum eigensolver for a set of industry-relevant molecules may be too inefficient to be of practical use. This motivates the need for developing and assessing methods that improve the efficiency of VQE. In this work, we predict the runtime of the energy estimation subroutine of VQE when using robust amplitude estimation (RAE) to estimate Pauli expectation values. Under conservative assumptions, our resource estimation predicts that RAE can reduce the runtime over the standard estimation method in VQE by one to two orders of magnitude. Despite this improvement, we find that the runtimes are still too large to be practical. These findings motivate two complementary efforts towards quantum advantage: 1) the investigation of more efficient near-term methods for ground state energy estimation and 2) the development of problem instances that are of industrial value and classically challenging, but better suited to quantum computation.	https://arxiv.org/abs/2203.07275	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
131	Logical shadow tomography: Efficient estimation of error-mitigated observables	logical shadow tomography: efficient estimation of error-mitigated observables	We introduce a technique to estimate error-mitigated expectation values on noisy quantum computers. Our technique performs shadow tomography on a logical state to produce a memory-efficient classical reconstruction of the noisy density matrix. Using efficient classical post-processing, one can mitigate errors by projecting a general nonlinear function of the noisy density matrix into the codespace. The subspace expansion and virtual distillation can be viewed as special cases of the new framekwork. We show our method is favorable in the quantum and classical resources overhead. Relative to subspace expansion which requires O(2N) samples to estimate a logical Pauli observable with [[N,k]] error correction code, our technique requires only O(4k) samples. Relative to virtual distillation, our technique can compute powers of the density matrix without additional copies of quantum states or quantum memory. We present numerical evidence using logical states encoded with up to sixty physical qubits and show fast convergence to error-free expectation values with only 105 samples under 1% depolarizing noise.	https://arxiv.org/abs/2203.07263	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
138	Digital zero noise extrapolation for quantum error mitigation	digital zero noise extrapolation for quantum error mitigation	Zero-noise extrapolation (ZNE) is an increasingly popular technique for mitigating errors in noisy quantum computations without using additional quantum resources. We review the fundamentals of ZNE and propose several improvements to noise scaling and extrapolation, the two key components in the technique. We introduce unitary folding and parameterized noise scaling. These are digital noise scaling frameworks, i.e. one can apply them using only gate-level access common to most quantum instruction sets. We also study different extrapolation methods, including a new adaptive protocol that uses a statistical inference framework. Benchmarks of our techniques show error reductions of 18X to 24X over non-mitigated circuits and demonstrate ZNE effectiveness at larger qubit numbers than have been tested previously. In addition to presenting new results, this work is a self-contained introduction to the practical use of ZNE by quantum programmers.	https://arxiv.org/abs/2005.10921	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
132	Shadow Distillation: Quantum Error Mitigation with Classical Shadows for Near-Term Quantum Processors	shadow distillation: quantum error mitigation with classical shadows for near-term quantum processors	Mitigating errors in quantum information processing devices is especially important in the absence of fault tolerance. An effective method in suppressing state-preparation errors is using multiple copies to distill the ideal component from a noisy quantum state. Here, we use classical shadows and randomized measurements to circumvent the need for coherent access to multiple copies at an exponential cost. We study the scaling of resources using numerical simulations and find that the overhead is still favorable compared to full state tomography. We optimize measurement resources under realistic experimental constraints and apply our method to an experiment preparing Greenberger-Horne-Zeilinger (GHZ) state with trapped ions. In addition to improving stabilizer measurements, the analysis of the improved results reveals the nature of errors affecting the experiment. Hence, our results provide a directly applicable method for mitigating errors in near-term quantum computers.	https://arxiv.org/abs/2203.07309	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
133	Error mitigation for short-depth quantum circuits	error mitigation for short-depth quantum circuits	Two schemes are presented that mitigate the effect of errors and decoherence in short depth quantum circuits. The size of the circuits for which these techniques can be applied is limited by the rate at which the errors in the computation are introduced. Near-term applications of early quantum devices, such as quantum simulations, rely on accurate estimates of expectation values to become relevant. Decoherence and gate errors lead to wrong estimates of the expectation values of observables used to evaluate the noisy circuit. The two schemes we discuss are deliberately simple and don't require additional qubit resources, so to be as practically relevant in current experiments as possible. The first method, extrapolation to the zero noise limit, subsequently cancels powers of the noise perturbations by an application of Richardson's deferred approach to the limit. The second method cancels errors by resampling randomized circuits according to a quasi-probability distribution.	https://arxiv.org/abs/1612.02058	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
134	Practical Quantum Error Mitigation for Near-Future Applications	practical quantum error mitigation for near-future applications	It is vital to minimise the impact of errors for near-future quantum devices that will lack the resources for full fault tolerance. Two quantum error mitigation (QEM) techniques have been introduced recently, namely error extrapolation [Li2017,Temme2017] and quasi-probability decomposition [Temme2017]. To enable practical implementation of these ideas, here we account for the inevitable imperfections in the experimentalist's knowledge of the error model itself. We describe a protocol for systematically measuring the effect of errors so as to design efficient QEM circuits. We find that the effect of localised Markovian errors can be fully eliminated by inserting or replacing some gates with certain single-qubit Clifford gates and measurements. Finally, having introduced an exponential variant of the extrapolation method we contrast the QEM techniques using exact numerical simulation of up to 19 qubits in the context of a `SWAP test' circuit. Our optimised methods dramatically reduce the circuit's output error without increasing the qubit count or time requirements.	https://arxiv.org/abs/1712.09271	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
135	Extending the computational reach of a noisy superconducting quantum processor	extending the computational reach of a noisy superconducting quantum processor	Quantum computation, a completely different paradigm of computing, benefits from theoretically proven speed-ups for certain problems and opens up the possibility of exactly studying the properties of quantum systems. Yet, because of the inherent fragile nature of the physical computing elements, qubits, achieving quantum advantages over classical computation requires extremely low error rates for qubit operations as well as a significant overhead of physical qubits, in order to realize fault-tolerance via quantum error correction. However, recent theoretical work has shown that the accuracy of computation based off expectation values of quantum observables can be enhanced through an extrapolation of results from a collection of varying noisy experiments. Here, we demonstrate this error mitigation protocol on a superconducting quantum processor, enhancing its computational capability, with no additional hardware modifications. We apply the protocol to mitigate errors on canonical single- and two-qubit experiments and then extend its application to the variational optimization of Hamiltonians for quantum chemistry and magnetism. We effectively demonstrate that the suppression of incoherent errors helps unearth otherwise inaccessible accuracies to the variational solutions using our noisy processor. These results demonstrate that error mitigation techniques will be critical to significantly enhance the capabilities of near-term quantum computing hardware.	https://arxiv.org/abs/1805.04492	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
136	Error-Mitigated Quantum Gates Exceeding Physical Fidelities in a Trapped-Ion System	error-mitigated quantum gates exceeding physical fidelities in a trapped-ion system	Various quantum applications can be reduced to estimating expectation values, which are inevitably deviated by operational and environmental errors. Although errors can be tackled by quantum error correction, the overheads are far from being affordable for near-term technologies. To alleviate the detrimental effects of errors, quantum error mitigation techniques have been proposed, which require no additional qubit resources. Here, we benchmark the performance of a quantum error mitigation technique based on probabilistic error cancellation in a trapped-ion system. Our results clearly show that effective gate fidelities exceed physical fidelities, i.e. we surpass the break-even point of eliminating gate errors, by programming quantum circuits. The error rates are effectively reduced from (1.10±0.12)×10−3 to (1.44±5.28)×10−5 and from (0.99±0.06)×10−2 to (0.96±0.10)×10−3 for single- and two-qubit gates, respectively. Our demonstration opens up the possibility of implementing high-fidelity computations on a near-term noisy quantum device.	https://arxiv.org/abs/1905.10135	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
137	Efficient variational quantum simulator incorporating active error minimisation	efficient variational quantum simulator incorporating active error minimisation	One of the key applications for quantum computers will be the simulation of other quantum systems that arise in chemistry, materials science, etc, in order to accelerate the process of discovery. It is important to ask: Can this be achieved using near future quantum processors, of modest size and under imperfect control, or must it await the more distant era of large-scale fault-tolerant quantum computing? Here we propose a variational method involving closely integrated classical and quantum coprocessors. We presume that all operations in the quantum coprocessor are prone to error. The impact of such errors is minimised by boosting them artificially and then extrapolating to the zero-error case. In comparison to a more conventional optimised Trotterisation technique, we find that our protocol is efficient and appears to be fundamentally more robust against error accumulation.	https://arxiv.org/abs/1611.09301	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
139	Resource Efficient Zero Noise Extrapolation with Identity Insertions	resource efficient zero noise extrapolation with identity insertions	In addition to readout errors, two-qubit gate noise is the main challenge for complex quantum algorithms on noisy intermediate-scale quantum (NISQ) computers. These errors are a significant challenge for making accurate calculations for quantum chemistry, nuclear physics, high energy physics, and other emerging scientific and industrial applications. There are two proposals for mitigating two-qubit gate errors: error-correcting codes and zero-noise extrapolation. This paper focuses on the latter, studying it in detail and proposing modifications to existing approaches. In particular, we propose a random identity insertion method (RIIM) that can achieve competitive asymptotic accuracy with far fewer gates than the traditional fixed identity insertion method (FIIM). For example, correcting the leading order depolarizing gate noise requires n_CNOT+2 gates for RIIM instead of 3 n_CNOT gates for FIIM. This significant resource saving may enable more accurate results for state-of-the-art calculations on near term quantum hardware.	https://arxiv.org/abs/2003.04941	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
140	Reducing the impact of time-correlated noise on zero-noise extrapolation	reducing the impact of time-correlated noise on zero-noise extrapolation	ero-noise extrapolation is a quantum error mitigation technique that has typically been studied under the ideal approximation that the noise acting on a quantum device is not time-correlated. In this work, we investigate the feasibility and performance of zero-noise extrapolation in the presence of time-correlated noise. We show that, in contrast to white noise, time-correlated noise is harder to mitigate via zero-noise extrapolation because it is difficult to scale the noise level without also modifying its spectral distribution. This limitation is particularly strong if "local" gate-level methods are applied for noise scaling. However, we find that "global" noise scaling methods, e.g., global unitary folding, can be sufficiently reliable even in the presence of time-correlated noise. We also introduce gate Trotterization as a new noise scaling technique that may be of independent interest.	https://arxiv.org/abs/2201.11792	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
10	t|ket⟩ : A Retargetable Compiler for NISQ Devices	t|ket⟩ : a retargetable compiler for nisq devices	We present t|ket⟩, a quantum software development platform produced by Cambridge Quantum Computing Ltd. The heart of t|ket⟩ is a language-agnostic optimising compiler designed to generate code for a variety of NISQ devices, which has several features designed to minimise the influence of device error. The compiler has been extensively benchmarked and outperforms most competitors in terms of circuit optimisation and qubit routing.	https://arxiv.org/abs/2003.10611	https://avatars.githubusercontent.com/u/15688781?s=200&v=4	2021-11-14 09:35:00-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
141	VAQEM: A Variational Approach to Quantum Error Mitigation	vaqem: a variational approach to quantum error mitigation	Variational Quantum Algorithms (VQAs) are relatively robust to noise, but errors are still a significant detriment to VQAs on near-term quantum machines. It is imperative to employ error mitigation techniques to improve VQA fidelity. While existing error mitigation techniques built from theory provide substantial gains, the disconnect between theory and real machine execution limits their benefits. Thus, it is critical to optimize mitigation techniques to explicitly suit the target application as well as the noise characteristics of the target machine.\nWe propose VAQEM, which dynamically tailors existing error mitigation techniques to the actual, dynamic noisy execution characteristics of VQAs on a target quantum machine. We do so by tuning specific features of these mitigation techniques similar to the traditional rotation angle parameters - by targeting improvements towards a specific objective function which represents the VQA problem at hand. In this paper, we target two types of error mitigation techniques which are suited to idle times in quantum circuits: single qubit gate scheduling and the insertion of dynamical decoupling sequences. We gain substantial improvements to VQA objective measurements - a mean of over 3x across a variety of VQA applications, run on IBM Quantum machines.\nMore importantly, the proposed variational approach is general and can be extended to many other error mitigation techniques whose specific configurations are hard to select a priori. Integrating more mitigation techniques into the VAQEM framework can lead to potentially realizing practically useful VQA benefits on today's noisy quantum machines.	https://arxiv.org/abs/2112.05821	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
142	Probabilistic error cancellation with sparse Pauli-Lindblad models on noisy quantum processors -	probabilistic error cancellation with sparse pauli-lindblad models on noisy quantum processors -	Error-mitigation techniques can enable access to accurate estimates of physical observables that are otherwise biased by noise in pre-fault-tolerant quantum computers. One particularly general error-mitigation technique is probabilistic error cancellation (PEC), which effectively inverts a well-characterized noise channel to produce noise-free estimates of observables. Experimental realizations of this technique, however, have been impeded by the challenge of learning correlated noise in large quantum circuits. In this work, we present a practical protocol for learning a sparse noise model that scales to large quantum devices and is efficient to learn and invert. These advances enable us to demonstrate PEC on a superconducting quantum processor with crosstalk errors, thereby revealing a path to error-mitigated quantum computation with noise-free observables at larger circuit volumes.	https://arxiv.org/abs/2201.09866	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
143	Matching and maximum likelihood decoding of a multi-round subsystem quantum error correction experiment	matching and maximum likelihood decoding of a multi-round subsystem quantum error correction experiment	Quantum error correction offers a promising path for performing quantum computations with low errors. Although a fully fault-tolerant execution of a quantum algorithm remains unrealized, recent experimental developments, along with improvements in control electronics, are enabling increasingly advanced demonstrations of the necessary operations for applying quantum error correction. Here, we perform quantum error correction on superconducting qubits connected in a heavy-hexagon lattice. The full processor can encode a logical qubit with distance three and perform several rounds of fault-tolerant syndrome measurements that allow the correction of any single fault in the circuitry. Furthermore, by using dynamic circuits and classical computation as part of our syndrome extraction protocols, we can exploit real-time feedback to reduce the impact of energy relaxation error in the syndrome and flag qubits. We show that the logical error varies depending on the use of a perfect matching decoder compared to a maximum likelihood decoder. We observe a logical error per syndrome measurement round as low as ∼0.04 for the matching decoder and as low as ∼0.03 for the maximum likelihood decoder. Our results suggest that more significant improvements to decoders are likely on the horizon as quantum hardware has reached a new stage of development towards fully fault-tolerant operations.	https://arxiv.org/abs/2203.07205	\N	2022-03-18 08:13:17.280729-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
158	QSimulator.jl	qsimulator.jl	Package for simulating time dynamics of quantum systems with a focus on superconducting qubits.	https://github.com/BBN-Q/QSimulator.jl	\N	2022-04-13 12:23:12.798454-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
163	Pushing quantum performance forward with our highest Quantum Volume yet	pushing quantum performance forward with our highest quantum volume yet	IBM Quantum has once again doubled the Quantum Volume of our highest-performing processor, achieving a Quantum Volume of 256 on the Falcon r10.	https://research.ibm.com/blog/quantum-volume-256	\N	2022-04-13 12:23:12.798454-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
40	Benchmarking Characterization Methods for Noisy Q. Circuits	benchmarking characterization methods for noisy q. circuits	Effective methods for characterizing the noise in quantum computing devices are essential for programming and debugging circuit performance. Existing approaches vary in the information obtained as well as the amount of quantum and classical resources required, with more information generally requiring more resources. Here we benchmark the characterization methods of gate set tomography, Pauli channel noise reconstruction, and empirical direct characterization for developing models that describe noisy quantum circuit performance on a 27-qubit superconducting transmon device. We evaluate these models by comparing the accuracy of noisy circuit simulations with the corresponding experimental observations. We find that the agreement of noise model to experiment does not correlate with the information gained by characterization and that the underlying circuit strongly influences the best choice of characterization approach. Empirical direct characterization scales best of the methods we tested and produced the most accurate characterizations across our benchmarks.	https://arxiv.org/abs/2201.02243	\N	2022-01-14 09:38:53.846041-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2022-06-13 00:00:00-04
157	Test Submission	test submission	Test Submission for the UI/UX Research for Metriq	https://metriq.info/	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2022-06-13 00:00:00-04
148	Quantum computation with universal error mitigation on superconducting quantum processor	quantum computation with universal error mitigation on superconducting quantum processor	Medium-scale quantum devices that integrate about hundreds of physical qubits are likely to be developed in the near future. However, such devices will lack the resources for realizing quantum fault tolerance. Therefore, the main challenge of exploring the advantage of quantum computation is to minimize the impact of device and control imperfections without encoding. Quantum error mitigation is a solution satisfying the requirement. Here, we demonstrate an error mitigation protocol based on gate set tomography and quasiprobability decomposition. One- and two-qubit circuits are tested on a superconducting device, and computation errors are successfully suppressed. Because this protocol is universal for digital quantum computers and algorithms computing expected values, our results suggest that error mitigation can be an essential component of near-future quantum computation.	https://arxiv.org/abs/1812.10903	https://i.ibb.co/wNP19wG/Screen-Shot-2022-03-22-at-11-45-35-AM.png	2022-03-22 12:13:03.34044-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
144	Real-time dynamics of Plaquette Models using NISQ Hardware	real-time dynamics of plaquette models using nisq hardware	Practical quantum computing holds clear promise in addressing problems not generally tractable with classical simulation techniques, and some key physically interesting applications are those of real-time dynamics in strongly coupled lattice gauge theories. In this article, we benchmark real-time dynamics of ℤ2 and U(1) gauge invariant plaquette models using superconducting-qubit based quantum IBM Q computers. We design quantum circuits for models of increasing complexity and measure physical observables such as the return probability to the initial state, and locally conserved charges. Even though the quantum hardware suffers from decoherence, we demonstrate the use of error mitigation techniques, such as circuit folding methods implemented via the Mitiq package, and show what they can achieve within the quantum volume restrictions for the IBM Q quantum computers. Our study provides insight into the choice of quantum hardware topologies, construction of circuits, and the utility of error mitigation methods to devise large-scale quantum computation strategies for lattice gauge theories.	https://arxiv.org/abs/2109.15065	https://i.ibb.co/HdhNrM0/plaquette.png	2022-03-22 12:13:03.34044-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
145	Computationally Efficient Zero Noise Extrapolation for Quantum Gate Error Mitigation	computationally efficient zero noise extrapolation for quantum gate error mitigation	Zero noise extrapolation (ZNE) is a widely used technique for gate error mitigation on near term quantum computers because it can be implemented in software and does not require knowledge of the quantum computer noise parameters. Traditional ZNE requires a significant resource overhead in terms of quantum operations. A recent proposal using a targeted (or random) instead of fixed identity insertion method (RIIM versus FIIM) requires significantly fewer quantum gates for the same formal precision. We start by showing that RIIM can allow for ZNE to be deployed on deeper circuits than FIIM, but requires many more measurements to maintain the same statistical uncertainty. We develop two extensions to FIIM and RIIM. The List Identity Insertion Method (LIIM) allows to mitigate the error from certain CNOT gates, typically those with the largest error. Set Identity Insertion Method (SIIM) naturally interpolates between the measurement-efficient FIIM and the gate-efficient RIIM, allowing to trade off fewer CNOT gates for more measurements. Finally, we investigate a way to boost the number of measurements, namely to run ZNE in parallel, utilizing as many quantum devices as are available. We explore the performance of RIIM in a parallel setting where there is a non-trivial spread in noise across sets of qubits within or across quantum computers.	https://arxiv.org/abs/2110.13338	https://i.ibb.co/Pc1bWnx/Screen-Shot-2022-03-22-at-11-35-11-AM.png	2022-03-22 12:13:03.34044-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
146	Supervised learning with quantum enhanced feature spaces	supervised learning with quantum enhanced feature spaces	Quantum computers have the potential to help solve a range of physics and chemistry problems, but noise in quantum hardware currently limits our ability to obtain accurate results from the execution of quantum-simulation algorithms. Various methods have been proposed to mitigate the impact of noise on variational algorithms, including several that model the noise as damping expectation values of observables. In this work, we benchmark various methods, including a new method proposed here. We compare their performance in estimating the ground-state energies of several instances of the 1D mixed-field Ising model using the variational-quantum-eigensolver algorithm with up to 20 qubits on two of IBM's quantum computers. We find that several error-mitigation techniques allow us to recover energies to within 10% of the true values for circuits containing up to about 25 ansatz layers, where each layer consists of CNOT gates between all neighboring qubits and Y-rotations on all qubits.	https://arxiv.org/abs/2106.01264	https://i.ibb.co/NpSGB10/Screen-Shot-2022-03-22-at-11-37-12-AM.png	2022-03-22 12:13:03.34044-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
147	Extending quantum probabilistic error cancellation by noise scaling	extending quantum probabilistic error cancellation by noise scaling	We propose a general framework for quantum error mitigation that combines and generalizes two techniques: probabilistic error cancellation (PEC) and zero-noise extrapolation (ZNE). Similarly to PEC, the proposed method represents ideal operations as linear combinations of noisy operations that are implementable on hardware. However, instead of assuming a fixed level of hardware noise, we extend the set of implementable operations by noise scaling. By construction, this method encompasses both PEC and ZNE as particular cases and allows us to investigate a larger set of hybrid techniques. For example, gate extrapolation can be used to implement PEC without requiring knowledge of the device's noise model, e.g., avoiding gate set tomography. Alternatively, probabilistic error reduction can be used to estimate expectation values at intermediate virtual noise strengths (below the hardware level), obtaining partially mitigated results at a lower sampling cost. Moreover, multiple results obtained with different noise reduction factors can be further post-processed with ZNE to better approximate the zero-noise limit.	https://arxiv.org/abs/2108.02237	https://i.ibb.co/gSMnGyQ/Screen-Shot-2022-03-22-at-11-42-50-AM.png	2022-03-22 12:13:03.34044-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
81	Quality, Speed, and Scale: three key attributes to measure the performance of near-term quantum computers	quality, speed, and scale: three key attributes to measure the performance of near-term quantum computers	Defining the right metrics to properly represent the performance of a quantum computer is critical to both users and developers of a computing system. In this white paper, we identify three key attributes for quantum computing performance: quality, speed, and scale. Quality and scale are measured by quantum volume and number of qubits, respectively. We propose a speed benchmark, using an update to the quantum volume experiments that allows the measurement of Circuit Layer Operations Per Second (CLOPS) and identify how both classical and quantum components play a role in improving performance. We prescribe a procedure for measuring CLOPS and use it to characterize the performance of some IBM Quantum systems.	https://arxiv.org/abs/2110.14108	\N	2022-02-08 19:14:53.875428-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2022-06-13 00:00:00-04
150	Experimental error mitigation using linear rescaling for variational quantum eigensolving with up to 20 qubits	experimental error mitigation using linear rescaling for variational quantum eigensolving with up to 20 qubits	Quantum computers have the potential to help solve a range of physics and chemistry problems, but noise in quantum hardware currently limits our ability to obtain accurate results from the execution of quantum-simulation algorithms. Various methods have been proposed to mitigate the impact of noise on variational algorithms, including several that model the noise as damping expectation values of observables. In this work, we benchmark various methods, including a new method proposed here. We compare their performance in estimating the ground-state energies of several instances of the 1D mixed-field Ising model using the variational-quantum-eigensolver algorithm with up to 20 qubits on two of IBM's quantum computers. We find that several error-mitigation techniques allow us to recover energies to within 10% of the true values for circuits containing up to about 25 ansatz layers, where each layer consists of CNOT gates between all neighboring qubits and Y-rotations on all qubits.	https://arxiv.org/abs/2106.01264	\N	2022-03-22 12:13:03.34044-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
149	Autonomous Quantum Error Correction in a Four-Photon Kerr Parametric Oscillator	autonomous quantum error correction in a four-photon kerr parametric oscillator	Autonomous quantum error correction has gained considerable attention to avoid complicated measurements and feedback. Despite its simplicity compared with the conventional measurementbased quantum error correction, it is still a far from practical technique because of significant hardware overhead. We propose an autonomous quantum error correction scheme for a rotational symmetric bosonic code in a four-photon Kerr parametric oscillator. Our scheme is the simplest possible error correction scheme that can surpass the break-even point—it requires only a single continuous microwave tone. We also introduce an unconditional reset scheme that requires one more continuous microwave tone in addition to that for the error correction. The key properties underlying this simplicity are protected quasienergy states of a four-photon Kerr parametric oscillator and the degeneracy in its quasienergy level structure. These properties eliminate the need for state-bystate correction in the Fock basis. Our schemes greatly reduce the complexity of autonomous quantum error correction and thus may accelerate the use of the bosonic code for practical quantum computation.	https://arxiv.org/pdf/2203.09234.pdf	https://i.ibb.co/zNcxTVv/Screenshot-2022-03-22-090620.png	2022-03-22 12:13:03.34044-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
151	Error mitigation with Clifford quantum-circuit data	error mitigation with clifford quantum-circuit data	Achieving near-term quantum advantage will require accurate estimation of quantum observables despite significant hardware noise. For this purpose, we propose a novel, scalable error-mitigation method that applies to gate-based quantum computers. The method generates training data {Xnoisyi,Xexacti} via quantum circuits composed largely of Clifford gates, which can be efficiently simulated classically, where Xnoisyi and Xexacti are noisy and noiseless observables respectively. Fitting a linear ansatz to this data then allows for the prediction of noise-free observables for arbitrary circuits. We analyze the performance of our method versus the number of qubits, circuit depth, and number of non-Clifford gates. We obtain an order-of-magnitude error reduction for a ground-state energy problem on 16 qubits in an IBMQ quantum computer and on a 64-qubit noisy simulator.	https://arxiv.org/abs/2005.10189	\N	2022-04-01 08:43:49.849163-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
152	Extending the lifetime of a quantum bit with error correction in superconducting circuits	extending the lifetime of a quantum bit with error correction in superconducting circuits	The remarkable discovery of Quantum Error Correction (QEC), which can overcome the errors experienced by a bit of quantum information (qubit), was a critical advance that gives hope for eventually realizing practical quantum computers. In principle, a system that implements QEC can actually pass a "break-even" point and preserve quantum information for longer than the lifetime of its constituent parts. Reaching the break-even point, however, has thus far remained an outstanding and challenging goal. Several previous works have demonstrated elements of QEC in NMR, ions, nitrogen vacancy (NV) centers, photons, and superconducting transmons. However, these works primarily illustrate the signatures or scaling properties of QEC codes rather than test the capacity of the system to extend the lifetime of quantum information over time. Here we demonstrate a QEC system that reaches the break-even point by suppressing the natural errors due to energy loss for a qubit logically encoded in superpositions of coherent states, or cat states of a superconducting resonator. Moreover, the experiment implements a full QEC protocol by using real-time feedback to encode, monitor naturally occurring errors, decode, and correct. As measured by full process tomography, the enhanced lifetime of the encoded information is 320 microseconds without any post-selection. This is 20 times greater than that of the system's transmon, over twice as long as an uncorrected logical encoding, and 10% longer than the highest quality element of the system (the resonator's 0, 1 Fock states). Our results illustrate the power of novel, hardware efficient qubit encodings over traditional QEC schemes. Furthermore, they advance the field of experimental error correction from confirming the basic concepts to exploring the metrics that drive system performance and the challenges in implementing a fault-tolerant system.	https://arxiv.org/abs/1602.04768	\N	2022-04-01 08:43:49.849163-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
153	Demonstration of quantum error correction and universal gate set on a binomial bosonic logical qubit	demonstration of quantum error correction and universal gate set on a binomial bosonic logical qubit	Logical qubit encoding and quantum error correction (QEC) have been experimentally demonstrated in various physical systems with multiple physical qubits, however, logical operations are challenging due to the necessary nonlocal operations. Alternatively, logical qubits with bosonic-mode-encoding are of particular interest because their QEC protection is hardware efficient, but gate operations on QEC protected logical qubits remain elusive. Here, we experimentally demonstrate full control on a single logical qubit with a binomial bosonic code, including encoding, decoding, repetitive QEC, and high-fidelity (97.0% process fidelity on average) universal quantum gate set on the logical qubit. The protected logical qubit has shown 2.8 times longer lifetime than the uncorrected one. A Ramsey experiment on a protected logical qubit is demonstrated for the first time with two times longer coherence than the unprotected one. Our experiment represents an important step towards fault-tolerant quantum computation based on bosonic encoding.	https://arxiv.org/abs/1805.09072	\N	2022-04-01 08:43:49.849163-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
154	Distributed quantum error correction for chip-level catastrophic errors	distributed quantum error correction for chip-level catastrophic errors	Quantum error correction holds the key to scaling up quantum computers. Cosmic ray events severely impact the operation of a quantum computer by causing chip-level catastrophic errors, essentially erasing the information encoded in a chip. Here, we present a distributed error correction scheme to combat the devastating effect of such events by introducing an additional layer of quantum erasure error correcting code across separate chips. We show that our scheme is fault tolerant against chip-level catastrophic errors and discuss its experimental implementation using superconducting qubits with microwave links. Our analysis shows that in state-of-the-art experiments, it is possible to suppress the rate of these errors from 1 per 10 seconds to less than 1 per month.	https://arxiv.org/abs/2203.16488	\N	2022-04-01 08:43:49.849163-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
18	Mitiq: A software package for error mitigation on noisy quantum computers	mitiq: a software package for error mitigation on noisy quantum computers	We introduce Mitiq, a Python package for error mitigation on noisy quantum computers. Error mitigation techniques can reduce the impact of noise on near-term quantum computers with minimal overhead in quantum resources by relying on a mixture of quantum sampling and classical post-processing techniques. Mitiq is an extensible toolkit of different error mitigation methods, including zero-noise extrapolation, probabilistic error cancellation, and Clifford data regression. The library is designed to be compatible with generic backends and interfaces with different quantum software frameworks. We describe Mitiq using code snippets to demonstrate usage and discuss features and contribution guidelines. We present several examples demonstrating error mitigation on IBM and Rigetti superconducting quantum processors as well as on noisy simulators.	https://arxiv.org/abs/2009.04417	https://raw.githubusercontent.com/unitaryfund/mitiq/master/docs/source/img/mitiq-logo-padded.png	2021-12-22 14:48:45.208235-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
165	Ground state preparation and energy estimation on early fault-tolerant quantum computers via quantum eigenvalue transformation of unitary matrices	ground state preparation and energy estimation on early fault-tolerant quantum computers via quantum eigenvalue transformation of unitary matrices	Under suitable assumptions, the algorithms in [Lin, Tong, Quantum 2020] can estimate the ground state energy and prepare the ground state of a quantum Hamiltonian with near-optimal query complexities. However, this is based on a block encoding input model of the Hamiltonian, whose implementation is known to require a large resource overhead. We develop a tool called quantum eigenvalue transformation of unitary matrices with real polynomials (QET-U), which uses a controlled Hamiltonian evolution as the input model, a single ancilla qubit and no multi-qubit control operations, and is thus suitable for early fault-tolerant quantum devices. This leads to a simple quantum algorithm that outperforms all previous algorithms with a comparable circuit structure for estimating the ground state energy. For a class of quantum spin Hamiltonians, we propose a new method that exploits certain anti-commutation relations and further removes the need of implementing the controlled Hamiltonian evolution. Coupled with Trotter based approximation of the Hamiltonian evolution, the resulting algorithm can be very suitable for early fault-tolerant quantum devices. We demonstrate the performance of the algorithm using IBM Qiskit for the transverse field Ising model. If we are further allowed to use multi-qubit Toffoli gates, we can then implement amplitude amplification and a new binary amplitude estimation algorithm, which increases the circuit depth but decreases the total query complexity. The resulting algorithm saturates the near-optimal complexity for ground state preparation and energy estimating using a constant number of ancilla qubits (no more than 3).	https://arxiv.org/abs/2204.05955	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
159	SimulaQron - A simulator for developing quantum internet software	simulaqron - a simulator for developing quantum internet software	We introduce a simulator for a quantum internet with the specific goal to support software development. A quantum internet consists of local quantum processors, which are interconnected by quantum communication channels that enable the transmission of qubits between the different processors. While many simulators exist for local quantum processors, there is presently no simulator for a quantum internet tailored towards software development. Quantum internet protocols require both classical as well as quantum information to be exchanged between the network nodes, next to the execution of gates and measurements on a local quantum processor. This requires quantum internet software to integrate classical communication programming practises with novel quantum ones.\nSimulaQron is built to enable application development and explore software engineering practises for a quantum internet. SimulaQron can be run on one or more classical computers to simulate local quantum processors, which are transparently connected in the background to enable the transmission of qubits or the generation of entanglement between remote processors. Application software can access the simulated local quantum processors to execute local quantum instructions and measurements, but also to transmit qubits to remote nodes in the network. SimulaQron features a modular design that performs a distributed simulation based on any existing simulation of a quantum computer capable of integrating with Python. Programming libraries for Python and C are provided to facilitate application development.	https://arxiv.org/abs/1712.08032	\N	2022-04-13 12:23:12.798454-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
160	QuNetSim: A Software Framework for Quantum Networks	qunetsim: a software framework for quantum networks	As quantum internet technologies develop, the need for simulation software and education for quantum internet rises. QuNetSim aims to fill this need. QuNetSim is a Python software framework that can be used to simulate quantum networks up to the network layer. The goal of QuNetSim is to make it easier to investigate and test quantum networking protocols over various quantum network configurations and parameters. The framework incorporates many known quantum network protocols so that users can quickly build simulations and beginners can easily learn to implement their own quantum networking protocols.	https://arxiv.org/abs/2003.06397	\N	2022-04-13 12:23:12.798454-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
173	Volumetric Benchmarking of Error Mitigation with Qermit	volumetric benchmarking of error mitigation with qermit	The detrimental effect of noise accumulates as quantum computers grow in size. In the case where devices are too small or noisy to perform error correction, error mitigation may be used. Error mitigation does not increase the fidelity of quantum states, but instead aims to reduce the approximation error in quantities of concern, such as expectation values of observables. However, it is as yet unclear which circuit types, and devices of which characteristics, benefit most from the use of error mitigation. Here we develop a methodology to assess the performance of quantum error mitigation techniques. Our benchmarks are volumetric in design, and are performed on different superconducting hardware devices. Extensive classical simulations are also used for comparison. We use these benchmarks to identify disconnects between the predicted and practical performance of error mitigation protocols, and to identify the situations in which their use is beneficial. To perform these experiments, and for the benefit of the wider community, we introduce Qermit - an open source python package for quantum error mitigation. Qermit supports a wide range of error mitigation methods, is easily extensible and has a modular graph-based software design that facilitates composition of error mitigation protocols and subroutines.	https://arxiv.org/abs/2204.09725	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
161	Quantum Supremacy Is Both Closer and Farther than It Appears	quantum supremacy is both closer and farther than it appears	As quantum computers improve in the number of qubits and fidelity, the question of when they surpass state-of-the-art classical computation for a well-defined computational task is attracting much attention. The leading candidate task for this milestone entails sampling from the output distribution defined by a random quantum circuit. We develop a massively-parallel simulation tool Rollright that does not require inter-process communication (IPC) or proprietary hardware. We also develop two ways to trade circuit fidelity for computational speedups, so as to match the fidelity of a given quantum computer --- a task previously thought impossible. We report massive speedups for the sampling task over prior software from Microsoft, IBM, Alibaba and Google, as well as supercomputer and GPU-based simulations. By using publicly available Google Cloud Computing, we price such simulations and enable comparisons by total cost across hardware platforms. We simulate approximate sampling from the output of a circuit with 7x8 qubits and depth 1+40+1 by producing one million bitstring probabilities with fidelity 0.5%, at an estimated cost of $35184. The simulation costs scale linearly with fidelity, and using this scaling we estimate that extending circuit depth to 1+48+1 increases costs to one million dollars. Scaling the simulation to 10M bitstring probabilities needed for sampling 1M bitstrings helps comparing simulation to quantum computers. We describe refinements in benchmarks that slow down leading simulators, halving the circuit depth that can be simulated within the same time.	https://arxiv.org/abs/1807.10749	\N	2022-04-13 12:23:12.798454-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
162	What Limits the Simulation of Quantum Computers?	what limits the simulation of quantum computers?	An ultimate goal of quantum computing is to perform calculations beyond the reach of any classical computer. It is therefore imperative that useful quantum computers be very difficult to simulate classically, otherwise classical computers could be used for the applications envisioned for the quantum ones. Perfect quantum computers are unarguably exponentially difficult to simulate: the classical resources required grow exponentially with the number of qubits N or the depth D of the circuit. This difficulty has triggered recent experiments on deep, random circuits that aim to demonstrate that quantum devices may already perform tasks beyond the reach of classical computing. These real quantum computing devices, however, suffer from many sources of decoherence and imprecision which limit the degree of entanglement that can actually be reached to a fraction of its theoretical maximum. They are characterized by an exponentially decaying fidelity F∼(1−ε)ND with an error rate ε per operation as small as ≈1% for current devices with several dozen qubits or even smaller for smaller devices. In this work, we provide new insight on the computing capabilities of real quantum computers by demonstrating that they can be simulated at a tiny fraction of the cost that would be needed for a perfect quantum computer. Our algorithms compress the representations of quantum wave functions using matrix product states, which are able to capture states with low to moderate entanglement very accurately. This compression introduces a finite error rate ε so that the algorithms closely mimic the behavior of real quantum computing devices. The computing time of our algorithm increases only linearly with N and D in sharp contrast with exact simulation algorithms. We illustrate our algorithms with simulations of random circuits for qubits connected in both one- and two-dimensional lattices. We find that ε can be decreased at a polynomial cost in computing power down to a minimum error ε∞. Getting below ε∞ requires computing resources that increase exponentially with ε∞/ε. For a two-dimensional array of N=54 qubits and a circuit with control-Z gates, error rates better than state-of-the-art devices can be obtained on a laptop in a few hours. For more complex gates such as a swap gate followed by a controlled rotation, the error rate increases by a factor 3 for similar computing time. Our results suggest that, despite the high fidelity reached by quantum devices, only a tiny fraction (∼10−8) of the system Hilbert space is actually being exploited.	https://journals.aps.org/prx/abstract/10.1103/PhysRevX.10.041038	\N	2022-04-13 12:23:12.798454-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
164	A flexible high-performance simulator for verifying and benchmarking quantum circuits implemented on real hardware	a flexible high-performance simulator for verifying and benchmarking quantum circuits implemented on real hardware	Here we present qFlex, a flexible tensor network based quantum circuit simulator. qFlex can compute both exact amplitudes, essential for the verification of the quantum hardware, as well as low fidelity amplitudes, in order to mimic sampling from Noisy Intermediate-Scale Quantum (NISQ) devices. In this work, we focus on random quantum circuits (RQCs) in the range of sizes expected for supremacy experiments. Fidelity f simulations are performed at a cost that is 1/f lower than perfect fidelity ones. We also present a technique to eliminate the overhead introduced by rejection sampling in most tensor network approaches. We benchmark the simulation of square lattices and Google’s Bristlecone QPU. Our analysis is supported by extensive simulations on NASA HPC clusters Pleiades and Electra. For our most computationally demanding simulation, the two clusters combined reached a peak of 20 PFLOPS (single precision), i.e., 64% of their maximum achievable performance, which represents the largest numerical computation in terms of sustained FLOPs and number of nodes utilized ever run on NASA HPC clusters. Finally, we introduce a novel multithreaded, cache-efficient tensor index permutation algorithm of general application.	https://arxiv.org/pdf/1811.09599.pdf	https://i.ibb.co/wJLbY8D/Screenshot-2022-04-13-083923.png	2022-04-13 12:23:12.798454-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
166	Improving the efficiency of learning-based error mitigation	improving the efficiency of learning-based error mitigation	Error mitigation will play an important role in practical applications of near-term noisy quantum computers. Current error mitigation methods typically concentrate on correction quality at the expense of frugality (as measured by the number of additional calls to quantum hardware). To fill the need for highly accurate, yet inexpensive techniques, we introduce an error mitigation scheme that builds on Clifford data regression (CDR). The scheme improves the frugality by carefully choosing the training data and exploiting the symmetries of the problem. We test our approach by correcting long range correlators of the ground state of XY Hamiltonian on IBM Toronto quantum computer. We find that our method is an order of magnitude cheaper while maintaining the same accuracy as the original CDR approach. The efficiency gain enables us to obtain a factor of 10 improvement on the unmitigated results with the total budget as small as 2x10^5 shots.	https://arxiv.org/abs/2204.07109	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
172	asdfasdf	asdfasdf	asdfasdf	https://arxiv.org/abs/2110.09483	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2022-06-13 00:00:00-04
167	A Formally Certified End-to-End Implementation of Shor's Factorization Algorithm	a formally certified end-to-end implementation of shor's factorization algorithm	Quantum computing technology may soon deliver revolutionary improvements in algorithmic performance, but these are only useful if computed answers are correct. While hardware-level decoherence errors have garnered significant attention, a less recognized obstacle to correctness is that of human programming errors -- "bugs". Techniques familiar to most programmers from the classical domain for avoiding, discovering, and diagnosing bugs do not easily transfer, at scale, to the quantum domain because of its unique characteristics. To address this problem, we have been working to adapt formal methods to quantum programming. With such methods, a programmer writes a mathematical specification alongside their program, and semi-automatically proves the program correct with respect to it. The proof's validity is automatically confirmed -- certified -- by a "proof assistant". Formal methods have successfully yielded high-assurance classical software artifacts, and the underlying technology has produced certified proofs of major mathematical theorems. As a demonstration of the feasibility of applying formal methods to quantum programming, we present the first formally certified end-to-end implementation of Shor's prime factorization algorithm, developed as part of a novel framework for applying the certified approach to general applications. By leveraging our framework, one can significantly reduce the effects of human errors and obtain a high-assurance implementation of large-scale quantum applications in a principled way.	https://arxiv.org/abs/2204.07112	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
168	Performance Evaluation and Acceleration of the QTensor Quantum Circuit Simulator on GPUs	performance evaluation and acceleration of the qtensor quantum circuit simulator on gpus	This work studies the porting and optimization of the tensor network simulator QTensor on GPUs, with the ultimate goal of simulating quantum circuits efficiently at scale on large GPU supercomputers. We implement NumPy, PyTorch, and CuPy backends and benchmark the codes to find the optimal allocation of tensor simulations to either a CPU or a GPU. We also present a dynamic mixed backend to achieve optimal performance. To demonstrate the performance, we simulate QAOA circuits for computing the MaxCut energy expectation. Our method achieves 176× speedup on a GPU over the NumPy baseline on a CPU for the benchmarked QAOA circuits to solve MaxCut problem on a 3-regular graph of size 30 with depth p=4.	https://arxiv.org/abs/2204.06045	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
178	F-VQE solves an industrial job-shop scheduling problem	f-vqe solves an industrial job-shop scheduling problem	Combinatorial optimization models a vast range of industrial processes aiming at improving their efficiency. In general, solving this type of problem exactly is computationally intractable. Therefore, practitioners rely on heuristic solution approaches. Variational quantum algorithms are optimization heuristics that can be demonstrated with available quantum hardware. In this case study, we apply four variational quantum heuristics running on IBM’s superconducting quantum processors to the job shop scheduling problem. Our problem optimizes a steel manufacturing process. A comparison on 5 qubits shows that the recent filtering variational quantum eigensolver (F-VQE) converges faster and samples the global optimum more frequently than the quantum approximate optimization algorithm (QAOA), the standard variational quantum eigensolver (VQE), and variational quantum imaginary time evolution (VarQITE). Furthermore, F-VQE readily solves problem sizes of up to 23 qubits on hardware without error mitigation post processing.	https://epjquantumtechnology.springeropen.com/articles/10.1140/epjqt/s40507-022-00123-4	https://media.springernature.com/lw685/springer-static/image/art%3A10.1140%2Fepjqt%2Fs40507-022-00123-4/MediaObjects/40507_2022_123_Fig5_HTML.png?as=webp	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
169	Quantum annealing for hard 2-SAT problems : Distribution and scaling of minimum energy gap and success probability	quantum annealing for hard 2-sat problems : distribution and scaling of minimum energy gap and success probability	In recent years, quantum annealing has gained the status of being a promising candidate for solving various optimization problems. Using a set of hard 2-satisfiabilty (2-SAT) problems, consisting of upto 18-variables problems, we analyze the scaling complexity of the quantum annealing algorithm and study the distributions of the minimum energy gap and the success probability. We extend the analysis of the standard quantum annealing Hamiltonian by introducing an additional term, the trigger Hamiltonian, which can be of two types : ferromagnetic and antiferromagnetic. We use these trigger Hamiltonians to study their influence on the success probability for solving the selected 2-SAT problems. We found that although the scaling of the run-time is exponential for the standard and modified quantum annealing Hamiltonians, the scaling constant in case of adding the trigger Hamiltonians can be significantly smaller. Furthermore, certain choices for the trigger Hamiltonian and annealing times can result in a better scaling than that for simulated annealing. Lastly, we also use the quantum annealers of D-Wave Systems Inc. to study their performance in solving the 2-SAT problems and compare it with the simulation results.	https://arxiv.org/abs/2202.00118v1	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
185	Efficient parallelization of tensor network contraction for simulating quantum computation	efficient parallelization of tensor network contraction for simulating quantum computation	We develop an algorithmic framework for contracting tensor networks and demonstrate its power by classically simulating quantum computation of sizes previously deemed out of reach. Our main contribution, index slicing, is a method that efficiently parallelizes the contraction by breaking it down into much smaller and identically structured subtasks, which can then be executed in parallel without dependencies. We benchmark our algorithm on a class of random quantum circuits, achieving greater than 105 times acceleration over the original estimate of the simulation cost. We then demonstrate applications of the simulation framework for aiding the development of quantum algorithms and quantum error correction. As tensor networks are widely used in computational science, our simulation framework may find further applications.	https://www.nature.com/articles/s43588-021-00119-7	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
91	Quantum Optimization of Maximum Independent Set using Rydberg Atom Arrays	quantum optimization of maximum independent set using rydberg atom arrays	Realizing quantum speedup for practically relevant, computationally hard problems is a central challenge in quantum information science. Using Rydberg atom arrays with up to 289 qubits in two spatial dimensions, we experimentally investigate quantum algorithms for solving the Maximum Independent Set problem. We use a hardware-efficient encoding associated with Rydberg blockade, realize closed-loop optimization to test several variational algorithms, and subsequently apply them to systematically explore a class of graphs with programmable connectivity. We find the problem hardness is controlled by the solution degeneracy and number of local minima, and experimentally benchmark the quantum algorithm's performance against classical simulated annealing. On the hardest graphs, we observe a superlinear quantum speedup in finding exact solutions in the deep circuit regime and analyze its origins.	https://arxiv.org/abs/2202.09372	https://i.ibb.co/9TxB5WZ/maxcut-rydberg.png	2022-02-22 11:16:31.998699-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
1	Benchmarking quantum co-processors in an application-centric, hardware-agnostic and scalable way	benchmarking quantum co-processors in an application-centric, hardware-agnostic and scalable way	Existing protocols for benchmarking current quantum co-processors fail to meet the usual standards for assessing the performance of High-Performance-Computing platforms. After a synthetic review of these protocols -- whether at the gate, circuit or application level -- we introduce a new benchmark, dubbed Atos Q-score (TM), that is application-centric, hardware-agnostic and scalable to quantum advantage processor sizes and beyond. The Q-score measures the maximum number of qubits that can be used effectively to solve the MaxCut combinatorial optimization problem with the Quantum Approximate Optimization Algorithm. We give a robust definition of the notion of effective performance by introducing an improved approximation ratio based on the scaling of random and optimal algorithms. We illustrate the behavior of Q-score using perfect and noisy simulations of quantum processors. Finally, we provide an open-source implementation of Q-score that makes it easy to compute the Q-score of any quantum hardware.	https://arxiv.org/abs/2102.12973	\N	2021-10-07 00:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
13	Shor’s quantum factoring algorithm on a photonic chip	shor’s quantum factoring algorithm on a photonic chip	Shor’s quantum factoring algorithm finds the prime factors of a large number exponentially faster than any other known method a task that lies at the heart of modern information security, particularly on the internet. This algorithm requires a quantum computer a device which harnesses the ‘massive parellism’ afforded by quantum superposition and entanglement of quantum bits (or qubits). We report the demonstration of a compiled version of Shor’s algorithm on an integrated waveguide silica-on-silicon chip that guides four single-photon qubits through the computation to factor 15.	https://arxiv.org/abs/0911.1242	\N	2021-11-04 20:00:00-04	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
49	Benchmarking Adaptive Variational Quantum Eigensolvers	benchmarking adaptive variational quantum eigensolvers	By design, the variational quantum eigensolver (VQE) strives to recover the lowest-energy eigenvalue of a given Hamiltonian by preparing quantum states guided by the variational principle. In practice, the prepared quantum state is indirectly assessed by the value of the associated energy. Novel adaptive derivative-assembled pseudo-trotter (ADAPT) ansatz approaches and recent formal advances now establish a clear connection between the theory of quantum chemistry and the quantum state ansatz used to solve the electronic structure problem. Here we benchmark the accuracy of VQE and ADAPT-VQE to calculate the electronic ground states and potential energy curves for a few selected diatomic molecules, namely H2, NaH, and KH. Using numerical simulation, we find both methods provide good estimates of the energy and ground state, but only ADAPT-VQE proves to be robust to particularities in optimization methods. Another relevant finding is that gradientbased optimization is overall more economical and delivers superior performance than analogous simulations carried out with gradient-free optimizers. The results also identify small errors in the prepared state fidelity which show an increasing trend with molecular size.	https://arxiv.org/abs/2011.01279	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2022-06-13 00:00:00-04
27	ThereminQ	thereminq	ThereminQ orchestrates a suite of best-of-class tools designed to control, extend and visualize data emanating from Quantum circuits using Qrack, ELK, Tipsy and Jupyter on CUDA and OpenCL accelerators	https://github.com/twobombs/thereminq	https://i.ibb.co/XphBC72/leon.gif	2021-12-22 14:48:45.208235-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
115	20-Mode Universal Quantum Photonic Processor	20-mode universal quantum photonic processor	Integrated photonics is an essential technology for optical quantum computing. Universal, phase-stable, reconfigurable multimode interferometers (quantum photonic processors) enable manipulation of photonic quantum states and are one of the main components of photonic quantum computers in various architectures. In this paper, we report the realization of the largest quantum photonic processor to date. The processor enables arbitrary unitary transformations on its 20 input modes with a fidelity of (FHaar=97.4%, FPerm=99.5%), an average optical loss of 2.9 dB/mode, and high-visibility quantum interference (VHOM=98%). The processor is realized in Si3N4 waveguides.	https://arxiv.org/abs/2203.01801	\N	2022-03-03 23:06:16.686998-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
179	Demonstrating Benefits of Quantum Upgradable Design Strategy: System Model H1-2 First to Prove 2,048 Quantum Volume	demonstrating benefits of quantum upgradable design strategy: system model h1-2 first to prove 2,048 quantum volume		https://www.quantinuum.com/pressrelease/demonstrating-benefits-of-quantum-upgradable-design-strategy-system-model-h1-2-first-to-prove-2-048-quantum-volume	https://assets.website-files.com/618162742f4c7c00fb1fea5a/61cbbc66c68d2ceedca6c334_HYWir7gHWM4ZoOc-sftQxLlwAwNv3ue6LF21085jg4NxXTICdAk6pjRncjmb1Fak-GZk1a1v5TwvjjQ8QOj5GGfRbdHokobKB0ZBLmA7WC_Y94J2nZK_JdrrFMXzb_8EoqCObc3p.png	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
174	Efficient quantum algorithm for solving travelling salesman problem: An IBM quantum experience	efficient quantum algorithm for solving travelling salesman problem: an ibm quantum experience	The famous Travelling Salesman Problem (TSP) is an important category of optimization problems that is mostly encountered in various areas of science and engineering. Studying optimization problems motivates to develop advanced techniques more suited to contemporary practical problems. Among those, especially the NP hard problems provide an apt platform to demonstrate supremacy of quantum over classical technologies in terms of resources and time. TSP is one such NP hard problem in combinatorial optimization which takes exponential time order for solving by brute force method. Here we propose a quantum algorithm to solve the travelling salesman problem using phase estimation technique. We approach the problem by encoding the given distances between the cities as phases. We construct unitary operators whose eigenvectors are the computational basis states and eigenvalues are various combinations of these phases. Then we apply phase estimation algorithm to certain eigenstates which give us all the total distances possible for all the routes. After obtaining the distances we can search through this information using the quantum search algorithm for finding the minimum to find the least possible distance as well the route taken. This provides us a quadratic speedup over the classical brute force method for a large number of cities. In this paper, we illustrate an example of the travelling salesman problem by taking four cities and present the results by simulating the codes in the IBM's quantum simulator.	https://arxiv.org/abs/1805.10928	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
175	Experimental demonstration of continuous quantum error correction	experimental demonstration of continuous quantum error correction	The storage and processing of quantum information are susceptible to external noise, resulting in computational errors. A powerful method to suppress these effects is quantum error correction. Typically, quantum error correction is executed in discrete rounds, using entangling gates and projective measurement on ancillary qubits to complete each round of error correction. Here we use direct parity measurements to implement a continuous quantum bit-flip correction code in a resource-efficient manner, eliminating entangling gates, ancillary qubits, and their associated errors. An FPGA controller actively corrects errors as they are detected, achieving an average bit-flip detection efficiency of up to 91%. Furthermore, the protocol increases the relaxation time of the protected logical qubit by a factor of 2.7 over the relaxation times of the bare comprising qubits. Our results showcase resource-efficient stabilizer measurements in a multi-qubit architecture and demonstrate how continuous error correction codes can address challenges in realizing a fault-tolerant system.	https://www.nature.com/articles/s41467-022-29906-0	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
50	Almost optimal classical approximation algorithms for a quantum generalization of Max-Cut	almost optimal classical approximation algorithms for a quantum generalization of max-cut	Approximation algorithms for constraint satisfaction problems (CSPs) are a central direction of study in theoretical computer science. In this work, we study classical product state approximation algorithms for a physically motivated quantum generalization of Max-Cut, known as the quantum Heisenberg model. This model is notoriously difficult to solve exactly, even on bipartite graphs, in stark contrast to the classical setting of Max-Cut. Here we show, for any interaction graph, how to classically and efficiently obtain approximation ratios 0.649 (anti-ferromagnetic XY model) and 0.498 (anti-ferromagnetic Heisenberg XYZ model). These are almost optimal; we show that the best possible ratios achievable by a product state for these models is 2/3 and 1/2, respectively.	https://arxiv.org/abs/1909.08846	\N	2022-01-18 10:14:58.675848-05	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
183	Towards near-term quantum simulation of materials	towards near-term quantum simulation of materials	Simulation of materials is one of the most promising applications of quantum computers. On near-term hardware the crucial constraint on these simulations is circuit depth. Many quantum simulation algorithms rely on a layer of unitary evolutions generated by each term in a Hamiltonian. This appears in time-dynamics as a single Trotter step, and in variational quantum eigensolvers under the Hamiltonian variational ansatz as a single ansatz layer. We present a new quantum algorithm design for materials modelling where the depth of a layer is independent of the system size. This design takes advantage of the locality of materials in the Wannier basis and employs a tailored fermionic encoding that preserves locality. We analyse the circuit costs of this approach and present a compiler that transforms density functional theory data into quantum circuit instructions -- connecting the physics of the material to the simulation circuit. The compiler automatically optimises circuits at multiple levels, from the base gate level to optimisations derived from the physics of the specific target material. We present numerical results for materials spanning a wide structural and technological range. Our results demonstrate a reduction of many orders of magnitude in circuit depth over standard prior methods that do not consider the structure of the Hamiltonian. For example our results improve resource requirements for Strontium Vanadate (SrVO3) from 864 to 180 qubits for a 3×3×3 lattice, and the circuit depth of a single Trotter or variational layer from 7.5×108 to depth 730. Although this is still beyond current hardware, our results show that materials simulation may be feasible on quantum computers without necessarily requiring scalable, fault-tolerant quantum computers, provided quantum algorithm design incorporates understanding of the materials and applications.	https://arxiv.org/abs/2205.15256	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N
\.


--
-- TOC entry 3524 (class 0 OID 22720)
-- Dependencies: 238
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.tags (id, name, "createdAt", "updatedAt", "userId") FROM stdin;
54	hardware-efficient benchmark	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
57	quantum state preparation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
63	fault tolerance	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
64	quantum error correction	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
66	clops	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
67	benchmarking	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
68	optimization	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
69	applications	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
70	education	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
71	desktop device	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
72	decoherence-free subsystem	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
73	silicon quantum dot	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
74	silicon	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
75	randomized benchmarking	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
76	two-qubit gate	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
77	neutral-atom quantum processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
79	maxcut	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
80	photonic quality factor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
81	simulation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
82	noisy simulation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
83	simulated annealing	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
84	zx-calculus	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
85	simulator	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
86	quizx	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
87	open-source software	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
89	quantum supremacy	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
90	pyzx	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
94	superconducting	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
99	quantum walk	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
100	quantum search	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
104	distributed computing	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
105	optical	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
106	photonic	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
107	integrated photonics	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
110	gibbs state	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
34	clustering	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
55	averaged circuit eigenvalue sampling	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
58	quantum circuit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
42	near-clifford circuit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
88	tensor network	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
46	spin qubit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
108	multimode interferometer	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
143	ion trap	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
144	ionq	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
145	magic	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
147	quadratic nonresidue	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
148	product state approximation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
149	generative adversarial network	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
150	classification	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
112	matrix product state	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
136	plaquette model	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
114	quantum unconstrained binary optimization	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
111	quantum merlin arthur	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
130	digital zero-noise extrapolation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
119	quadratic assignment problem	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
120	discretizable molecular distance geometry problem	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
134	variational quantum error mitigation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
151	tensor network born machines	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
140	clifford data regression	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
152	Quantinuum	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
153	quantinuum system model h1-2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
154	honeywell system model h1-1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
155	materials	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
3	error mitigation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
4	probabilistic error cancellation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
5	zero-noise extrapolation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
7	integer factoring	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
8	variational	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
11	annealing	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
12	compiler	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
13	circuit optimization	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
14	qubit routing	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
15	integer factorization	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
17	hardware-efficient	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
18	molecules	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
20	ibm	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
21	shor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
22	photonic chip	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
23	bristol	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
24	single-photon	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
26	energy	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
27	chemistry	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
28	google	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
29	superconducting qubit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
30	grover	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
31	ion	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
32	bernstein-vazirani	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
33	formal methods	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
38	quantum volume	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
43	classical simulation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
44	t-gate	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
47	silicon-based quantum processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
50	xzzx	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
51	surface code	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
52	error correction	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
53	ground-state	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
98	quantum algorithm	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
109	quantum photonic processor	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
96	neural network	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
102	mirror circuit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
35	quantum machine learning	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
45	magic state	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
9	nuclear magnetic resonance	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
95	high performance computing	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
103	graphics processing unit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
16	variational quantum algorithm	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
1	quantum approximate optimization algorithm	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
62	silicon carbide	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
6	noise-extended probabilistic error correction	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
60	noisy intermediate-scale quantum	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
97	schmidt decomposition	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
65	low-density parity-check codes	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
48	measurement based quantum computing	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
2	variational quantum eigensolver	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
59	multipartite collision model	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
93	state preparation and measurement	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
25	silica-on-silicon chip	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
78	greenberger–horne–zeilinger state	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
113	honeywell	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
115	travelling salesman problem	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
117	d-wave	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
118	ibm qiskit	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
121	grover's search	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
122	t1	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
123	t2	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
128	experimental	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
131	identity insertion	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
132	time-correlated noise	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
133	variational error mitigation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
135	lattice gauge theories	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
137	quantum internet	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
138	python	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
139	quantum eigenvalue transformation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
141	k-sat	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
142	2-sat	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1
\.


--
-- TOC entry 3526 (class 0 OID 22726)
-- Dependencies: 240
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.tasks (id, name, "fullName", description, "createdAt", "updatedAt", "userId", "taskId", "isHideChart") FROM stdin;
46	Pauli gates	Pauli gates	This is a task limited to the application of Pauli gates.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
48	Error estimation	Error estimation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2	f
56	Hardware	Hardware	Characterization of quantum hardware	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N	t
59	Applications	Applications	Full-stack application of quantum technologies to meaningful problems	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N	t
1	MAXCUT	Maximum cut	For a graph, a maximum cut is a cut whose size is at least the size of any other cut. That is, it is a partition of the graph's vertices into two complementary sets S and T, such that the number of edges between the set S and the set T is as large as possible. The problem of finding a maximum cut in a graph is known as the Max-Cut Problem.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
2	Ground state energy	Ground state energy	The ground state of a quantum-mechanical system is its lowest-energy state; the energy of the ground state is known as the zero-point energy of the system. An excited state is any state with energy greater than the ground state. In quantum field theory, the ground state is usually called the vacuum state or the vacuum.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
4	Integer factoring	Integer factoring	Factoring of integers via any quantum computational method, such as Shor's algorithm, NMR, or variational methods	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
23	Search	Search	Search for an element in a collection/database.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
24	Determine unknown bitstring	Determine unknown bitstring	Given the ability to make queries to a function $f_a(x) = a \\cdot x$ where $a$ is a fixed but unknown bitstring, determine $a$ by making queries to $f_a$.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
25	ex1_226.qasm	t|ket⟩ benchmark circuit ex1_226.qasm	This is the ex1_226.qasm benchmark circuit used in "t|ket⟩ : A Retargetable Compiler for NISQ Devices."	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	57	f
28	adder_8	adder_8	Performance on the adder_8.qasm program, available at https://github.com/inQWIRE/VOQC-benchmarks/blob/main/Arithmetic_and_Toffoli/adder_8.qasm	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	57	f
29	Clustering	Quantum clustering		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
31	Distance estimation	Distance estimation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
37	Sycamore	Sycamore circuits	These are circuits argued to establish the success of a quantum computer at a task that is fundamentally intractable for a classical computer, per "Quantum supremacy using a programmable superconducting processor," at https://www.nature.com/articles/s41586-019-1666-5.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
39	Classification	Classification	The problem of identifying which of a set of categories (sub-populations) an observation (or observations) belongs to.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
49	QSP	Quantum state preparation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
40	Near-Clifford simulation	Near-Clifford simulation	Near-Clifford classical simulation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	58	f
36	3-qubit GHZ state	3-qubit GHZ state		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	35	f
53	2-qubit Clifford gate fidelity	2-qubit Clifford gate fidelity	Two-qubit Clifford gate fidelity	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	38	f
55	MAXCUT: 4	Maximum cut: 4	MAXCUT for 4 node graphs	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	1	f
50	Coherence time (T2)	Coherence time (T2)	In seconds	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
51	Single-qubit relaxation time (T1)	Single-qubit relaxation time (T1)	Single-Qubit Relaxation time (T1)	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
54	PQF	Photonic quality factor	Photonic Quality Factor, defined as the largest number of input photons for which the output statistics pass five tests (one for photon loss, and four for distinguishability). Introduced in https://arxiv.org/abs/2202.04735.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
21	CLOPS	Circuit layer operations per second	Benchmark details defined in: https://arxiv.org/abs/2110.14108	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
30	Swap test	Swap test		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
33	QNR	Evaluating quadratic nonresidues	If there is no integer 0<x<p such that\n\nx^2=q (mod p),\n\ni.e., if the congruence has no solution, then q is said to be a quadratic nonresidue (mod p). If the congruence does have a solution, then q is said to be a quadratic residue (mod p).	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
57	Compilation	Compilers	Characterization of quantum computer compilers	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N	t
38	2-qubit gate fidelity	2-qubit gate fidelity		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
35	GHZ State	Greenberger-Horne-Zeilinger state	The task of creating a Greenberger-Horne-Zeilinger (GHZ) state on hardware. This is a quantum state with three or more qubits with non-classical properties.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
52	3-qubit HHL	3-qubit HHL	Implementation of the three-qubit Harrow-Hassidim-Lloyd (HHL) algorithm.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
58	Simulation	Simulators	Tasks specific to quantum computer simulator characterization	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N	t
60	Error correction and mitigation	Error correction and mitigation	Characterizing the performance of error correction and mitigation techniques	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	\N	t
82	2-SAT	2-SAT		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	81	f
83	JSP	Job-shop Scheduling Problem	NP-hard combinatorial optimisation problem relevant in industry	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
62	T-gate counts optimization	T-gate counts optimization	T-gate counts optimization	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	57	f
65	test_qft_cosmology (Qrack)	QFT w/ random 1qb initialization and measurement	This is a (complex value, in-place) quantum Fourier transform. Because many cases of the QFT are "trivial" for Qrack, like when starting from the permutation basis |0> eigenstate, (or when starting from any permutation basis eigenstate,) the problem is initialized and concluded in such a way as to make it hard enough to represent general QFT performance for Qrack. Defined in the Qrack benchmark suite as "test_qft_cosmology", the QFT is preceded by uniformly random single qubit 3-parameter unitary gates across the full register width, and the test concludes with a measurement across the full register width.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	64	f
66	Haar-random	Haar-random matrix state preparation	Haar-random unitary preparation maximizes random uniformity over the volume element of the state space, (ex.: of available processor states or operations).	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
67	Permutation	Permutation state preparation	The task is to prepare a measurement permutation basis eigenstate, (commonly Pauli Z basis eigenstates for all logical qubits, by convention).	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
42	Quantum advantage	Quantum advantage		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
61	XEB fidelity	Cross-entropy benchmarking (XEB) fidelity	Cross-Entropy Benchmarking (XEB) fidelity.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
47	Random circuit sampling	Random circuit sampling		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
3	MAXCUT: 3-regular	Maximum Cut: 3-regular	Unweighted MAXCUT on randomly generated 3-regular graphs of a given number of nodes	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	1	f
22	CLOPS-qiskit-runtime	CLOPS using the qiskit runtime	Measure the CLOPS information on a CPU using the qiskit runtime. Different devices or other low level compilers could be used, but this task uses the qiskit runtime environment.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	21	f
26	ex1_226.qasm (Aspen)	t|ket⟩ benchmark circuit ex1_226.qasm on Aspen architecture	This is the ex1_226.qasm benchmark circuit used in "t|ket⟩ : A Retargetable Compiler for NISQ Devices," compiled specifically for the Aspen hardware architecture.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	25	f
27	ex1_226.qasm (Rochester)	t|ket⟩ benchmark circuit ex1_226.qasm on Rochester architecture	This is the ex1_226.qasm benchmark circuit used in "t|ket⟩ : A Retargetable Compiler for NISQ Devices," compiled specifically for the Rochester hardware architecture.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	25	f
32	Parent Hamiltonian	Ground state energy calculation of a parent Hamiltonian		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2	f
45	CCZ memory	CCZ fault-tolerant memory	A fault-tolerant memory based upon a CCZ gate	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	60	f
44	Pauli noise mitigation	Pauli biased noise mitigation	Pauli biased noise mitigation.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	60	f
43	XZZX	XZZX surface code	XZZX surface code.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	60	f
79	Cosmic ray error correction	Cosmic ray error correction	Using quantum error correction to protect against cosmic ray induced errors	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	60	f
80	XY Hamiltonian ground state energy	XY Hamiltonian ground state energy		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	2	f
81	k-SAT	k-SAT		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
84	TNN_d	TNN_d	TNN_d	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	58	f
85	QFT-Cosmos	QFT-Cosmos	QFT-Cosmos - Qrack's QFT vacuum sim	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	64	f
86	Solid-state materials simulation	Solid-state materials simulation	Simulation of a solid-state chemical material	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
87	GaAs simulation	GaAs simulation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	86	f
88	H3S simulation	H3S simulation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	86	f
89	Li2CuO2 simulation	Li2CuO2 simulation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	86	f
90	Si simulation	Si simulation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	86	f
91	SrVO3 simulation	SrVO3 simulation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	86	f
92	Log-normal distribution preparation	Log-normal distribution preparation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
93	Slater function preparation	Slater function preparation		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
94	Sycamore (depth 20)	Sycamore (depth 20)		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	37	f
63	Quantum circuit simulation	Quantum circuit simulation	Quantum Circuit Simulation	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	58	f
64	QFT	Quantum Fourier transform	In quantum computing, the quantum Fourier transform (QFT) is a linear transformation on quantum bits, and is the quantum analogue of the discrete Fourier transform. The quantum Fourier transform is a part of many quantum algorithms, notably Shor's algorithm for factoring and computing the discrete logarithm, the quantum phase estimation algorithm for estimating the eigenvalues of a unitary operator, and algorithms for the hidden subgroup problem. The quantum Fourier transform was discovered by Don Coppersmith.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
68	Distributed quantum computing	Distributed quantum computing	Distributed Quantum Computing	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	57	f
34	Quantum volume	Quantum volume	Quantum volume (QV) is a benchmark for quantum computing hardware. It expresses the maximum size (quantum circuit depth $n$ times number of qubits $n$) of square quantum circuits that can be implemented successfully by a quantum computer. Here the plotted value is $n$, also called log2(QV), since QV is given by $2^n$.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
69	TSP	Travelling salesman problem	The travelling salesman problem (also called the travelling salesperson problem or TSP) asks the following question: "Given a list of cities and the distances between each pair of cities, what is the shortest possible route that visits each city exactly once and returns to the origin city?" It is an NP-hard problem in combinatorial optimization, important in theoretical computer science and operations research.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
70	TSP-4	Travelling salesman problem (4 cities)		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	69	f
71	TSP-6	Travelling salesman problem (6 cities)		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	69	f
72	TSP-8	Travelling salesman problem (8 cities)		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	69	f
73	TSP-10	Travelling salesman problem (10 cities)		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	69	f
74	TSP-12	Travelling salesman problem (12 cities)		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	69	f
75	DMDGP	Discretizable Molecular Distance Geometry Problem (DMDGP)		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	23	f
76	Cavity relaxation time	Cavity relaxation time	Cavity relaxation time.	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	56	f
77	Heavy-hexagon code	Heavy-hexagon code	Used in "Matching and maximum likelihood decoding of a multi-round subsystem quantum error correction experiment," https://arxiv.org/abs/2203.07205	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	60	f
78	Plaquette dynamics	Plaquette dynamics		2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	1	59	f
\.


--
-- TOC entry 3528 (class 0 OID 22733)
-- Dependencies: 242
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.users (id, username, "usernameNormal", "passwordHash", email, "clientToken", "recoveryToken", "clientTokenCreated", "recoveryTokenExpiration", "createdAt", "updatedAt", "deletedAt", affiliation) FROM stdin;
1	Sysadmin	sysadmin	$2b$10$NhdGwcUjqQLQN1mWeNwtaOodReoVie5RtP1jeH9Oq09x5G58X0Lzm	dan@unitary.fund	\N	\N	\N	\N	2022-06-13 00:00:00-04	2022-06-13 00:00:00-04	\N	
\.


--
-- TOC entry 3552 (class 0 OID 0)
-- Dependencies: 211
-- Name: dataTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."dataTypes_id_seq"', 8, true);


--
-- TOC entry 3553 (class 0 OID 0)
-- Dependencies: 213
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.likes_id_seq', 72, true);


--
-- TOC entry 3554 (class 0 OID 0)
-- Dependencies: 215
-- Name: methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.methods_id_seq', 154, true);


--
-- TOC entry 3555 (class 0 OID 0)
-- Dependencies: 217
-- Name: moderationReports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."moderationReports_id_seq"', 1, false);


--
-- TOC entry 3556 (class 0 OID 0)
-- Dependencies: 219
-- Name: platformDataTypeValues_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."platformDataTypeValues_id_seq"', 44, true);


--
-- TOC entry 3557 (class 0 OID 0)
-- Dependencies: 221
-- Name: platformDataTypes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."platformDataTypes_id_seq"', 13, true);


--
-- TOC entry 3558 (class 0 OID 0)
-- Dependencies: 223
-- Name: platforms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.platforms_id_seq', 84, true);


--
-- TOC entry 3559 (class 0 OID 0)
-- Dependencies: 225
-- Name: resultPlatformRefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."resultPlatformRefs_id_seq"', 2, true);


--
-- TOC entry 3560 (class 0 OID 0)
-- Dependencies: 227
-- Name: results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.results_id_seq', 302, true);


--
-- TOC entry 3561 (class 0 OID 0)
-- Dependencies: 229
-- Name: submissionMethodRefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."submissionMethodRefs_id_seq"', 310, true);


--
-- TOC entry 3562 (class 0 OID 0)
-- Dependencies: 231
-- Name: submissionPlatformRefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."submissionPlatformRefs_id_seq"', 144, true);


--
-- TOC entry 3563 (class 0 OID 0)
-- Dependencies: 233
-- Name: submissionTagRefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."submissionTagRefs_id_seq"', 364, true);


--
-- TOC entry 3564 (class 0 OID 0)
-- Dependencies: 235
-- Name: submissionTaskRefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."submissionTaskRefs_id_seq"', 258, true);


--
-- TOC entry 3565 (class 0 OID 0)
-- Dependencies: 237
-- Name: submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.submissions_id_seq', 185, true);


--
-- TOC entry 3566 (class 0 OID 0)
-- Dependencies: 239
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.tags_id_seq', 155, true);


--
-- TOC entry 3567 (class 0 OID 0)
-- Dependencies: 241
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.tasks_id_seq', 94, true);


--
-- TOC entry 3568 (class 0 OID 0)
-- Dependencies: 243
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.users_id_seq', 36, true);


--
-- TOC entry 3274 (class 2606 OID 22758)
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- TOC entry 3276 (class 2606 OID 22760)
-- Name: dataTypes dataTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."dataTypes"
    ADD CONSTRAINT "dataTypes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3278 (class 2606 OID 22762)
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- TOC entry 3280 (class 2606 OID 22764)
-- Name: likes likes_submissionId_userId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_submissionId_userId_unique" UNIQUE ("userId", "submissionId");


--
-- TOC entry 3282 (class 2606 OID 22766)
-- Name: methods methods_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT methods_pkey PRIMARY KEY (id);


--
-- TOC entry 3285 (class 2606 OID 22768)
-- Name: moderationReports moderationReports_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_pkey" PRIMARY KEY (id);


--
-- TOC entry 3287 (class 2606 OID 22770)
-- Name: platformDataTypeValues platformDataTypeValues_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues"
    ADD CONSTRAINT "platformDataTypeValues_pkey" PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 22772)
-- Name: platformDataTypes platformDataTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypes"
    ADD CONSTRAINT "platformDataTypes_pkey" PRIMARY KEY (id);


--
-- TOC entry 3291 (class 2606 OID 22774)
-- Name: platforms platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_pkey PRIMARY KEY (id);


--
-- TOC entry 3293 (class 2606 OID 22776)
-- Name: resultPlatformRefs resultPlatformRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs"
    ADD CONSTRAINT "resultPlatformRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 22778)
-- Name: results results_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);


--
-- TOC entry 3298 (class 2606 OID 22780)
-- Name: submissionMethodRefs submissionMethodRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 22782)
-- Name: submissionMethodRefs submissionMethodRefs_submissionId_methodId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_submissionId_methodId_unique" UNIQUE ("submissionId", "methodId", "deletedAt");


--
-- TOC entry 3302 (class 2606 OID 22784)
-- Name: submissionPlatformRefs submissionPlatformRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs"
    ADD CONSTRAINT "submissionPlatformRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 22786)
-- Name: submissionTagRefs submissionTagRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 22788)
-- Name: submissionTagRefs submissionTagRefs_submissionId_tagId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_submissionId_tagId_unique" UNIQUE ("submissionId", "tagId", "deletedAt");


--
-- TOC entry 3308 (class 2606 OID 22790)
-- Name: submissionTaskRefs submissionTaskRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 3310 (class 2606 OID 22792)
-- Name: submissionTaskRefs submissionTaskRefs_submissionId_taskId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_submissionId_taskId_unique" UNIQUE ("submissionId", "taskId", "deletedAt");


--
-- TOC entry 3312 (class 2606 OID 22794)
-- Name: submissions submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3314 (class 2606 OID 22796)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 3317 (class 2606 OID 22798)
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- TOC entry 3319 (class 2606 OID 22800)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 1259 OID 22801)
-- Name: fki_moderationReports_submissionId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_moderationReports_submissionId_fkey" ON public."moderationReports" USING btree ("submissionId");


--
-- TOC entry 3294 (class 1259 OID 22802)
-- Name: fki_results_submissionTaskRefId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_results_submissionTaskRefId_fkey" ON public.results USING btree ("submissionTaskRefId");


--
-- TOC entry 3315 (class 1259 OID 22803)
-- Name: fki_tasks_tasksId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_tasks_tasksId_fkey" ON public.tasks USING btree ("taskId");


--
-- TOC entry 3320 (class 2606 OID 22804)
-- Name: likes likes_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3321 (class 2606 OID 22809)
-- Name: likes likes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3322 (class 2606 OID 22814)
-- Name: methods methods_methodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT "methods_methodId_fkey" FOREIGN KEY ("methodId") REFERENCES public.methods(id);


--
-- TOC entry 3323 (class 2606 OID 22819)
-- Name: methods methods_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT "methods_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3324 (class 2606 OID 22824)
-- Name: moderationReports moderationReports_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3325 (class 2606 OID 22829)
-- Name: moderationReports moderationReports_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3326 (class 2606 OID 22834)
-- Name: platformDataTypeValues platformDataTypeValues_platformDataTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues"
    ADD CONSTRAINT "platformDataTypeValues_platformDataTypeId_fkey" FOREIGN KEY ("platformDataTypeId") REFERENCES public."platformDataTypes"(id);


--
-- TOC entry 3327 (class 2606 OID 22839)
-- Name: platformDataTypeValues platformDataTypeValues_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues"
    ADD CONSTRAINT "platformDataTypeValues_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- TOC entry 3328 (class 2606 OID 22844)
-- Name: platformDataTypeValues platformDataTypeValues_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues"
    ADD CONSTRAINT "platformDataTypeValues_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3329 (class 2606 OID 22849)
-- Name: platformDataTypes platformDataTypes_dataTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypes"
    ADD CONSTRAINT "platformDataTypes_dataTypeId_fkey" FOREIGN KEY ("dataTypeId") REFERENCES public."dataTypes"(id);


--
-- TOC entry 3330 (class 2606 OID 22854)
-- Name: platformDataTypes platformDataTypes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypes"
    ADD CONSTRAINT "platformDataTypes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3331 (class 2606 OID 22859)
-- Name: platforms platforms_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT "platforms_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- TOC entry 3332 (class 2606 OID 22864)
-- Name: platforms platforms_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT "platforms_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3333 (class 2606 OID 22869)
-- Name: resultPlatformRefs resultPlatformRefs_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs"
    ADD CONSTRAINT "resultPlatformRefs_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- TOC entry 3334 (class 2606 OID 22874)
-- Name: resultPlatformRefs resultPlatformRefs_resultId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs"
    ADD CONSTRAINT "resultPlatformRefs_resultId_fkey" FOREIGN KEY ("resultId") REFERENCES public.results(id);


--
-- TOC entry 3335 (class 2606 OID 22879)
-- Name: resultPlatformRefs resultPlatformRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs"
    ADD CONSTRAINT "resultPlatformRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3336 (class 2606 OID 22884)
-- Name: results results_submissionMethodRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionMethodRefId_fkey" FOREIGN KEY ("submissionMethodRefId") REFERENCES public."submissionMethodRefs"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3337 (class 2606 OID 22889)
-- Name: results results_submissionPlatformRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionPlatformRefId_fkey" FOREIGN KEY ("submissionPlatformRefId") REFERENCES public."submissionPlatformRefs"(id);


--
-- TOC entry 3338 (class 2606 OID 22894)
-- Name: results results_submissionTaskRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionTaskRefId_fkey" FOREIGN KEY ("submissionTaskRefId") REFERENCES public."submissionTaskRefs"(id);


--
-- TOC entry 3339 (class 2606 OID 22899)
-- Name: results results_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3340 (class 2606 OID 22904)
-- Name: submissionMethodRefs submissionMethodRefs_methodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_methodId_fkey" FOREIGN KEY ("methodId") REFERENCES public.methods(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3341 (class 2606 OID 22909)
-- Name: submissionMethodRefs submissionMethodRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3342 (class 2606 OID 22914)
-- Name: submissionMethodRefs submissionMethodRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3343 (class 2606 OID 22919)
-- Name: submissionPlatformRefs submissionPlatformRefs_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs"
    ADD CONSTRAINT "submissionPlatformRefs_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- TOC entry 3344 (class 2606 OID 22924)
-- Name: submissionPlatformRefs submissionPlatformRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs"
    ADD CONSTRAINT "submissionPlatformRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id);


--
-- TOC entry 3345 (class 2606 OID 22929)
-- Name: submissionPlatformRefs submissionPlatformRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs"
    ADD CONSTRAINT "submissionPlatformRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- TOC entry 3346 (class 2606 OID 22934)
-- Name: submissionTagRefs submissionTagRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3347 (class 2606 OID 22939)
-- Name: submissionTagRefs submissionTagRefs_tagId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public.tags(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3348 (class 2606 OID 22944)
-- Name: submissionTagRefs submissionTagRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3349 (class 2606 OID 22949)
-- Name: submissionTaskRefs submissionTaskRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3350 (class 2606 OID 22954)
-- Name: submissionTaskRefs submissionTaskRefs_taskId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3351 (class 2606 OID 22959)
-- Name: submissionTaskRefs submissionTaskRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3352 (class 2606 OID 22964)
-- Name: submissions submissions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT "submissions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3353 (class 2606 OID 22969)
-- Name: tags tags_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT "tags_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 3354 (class 2606 OID 22974)
-- Name: tasks tasks_tasksId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_tasksId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id);


--
-- TOC entry 3355 (class 2606 OID 22979)
-- Name: tasks tasks_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2022-06-13 15:11:41 EDT

--
-- PostgreSQL database dump complete
--

