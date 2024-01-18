--
-- PostgreSQL database dump
--

-- Dumped from database version 13.13
-- Dumped by pg_dump version 13.13

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
-- Name: SequelizeMeta; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."SequelizeMeta" (
    name character varying(255) NOT NULL
);


ALTER TABLE public."SequelizeMeta" OWNER TO metriq;

--
-- Name: architectures; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.architectures (
    id integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.architectures OWNER TO metriq;

--
-- Name: architectures_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.architectures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.architectures_id_seq OWNER TO metriq;

--
-- Name: architectures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.architectures_id_seq OWNED BY public.architectures.id;


--
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
-- Name: dataTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."dataTypes_id_seq" OWNED BY public."dataTypes".id;


--
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
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- Name: methodSubscriptions; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."methodSubscriptions" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "methodId" integer NOT NULL,
    "notifiedAt" timestamp with time zone
);


ALTER TABLE public."methodSubscriptions" OWNER TO metriq;

--
-- Name: methodSubscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."methodSubscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."methodSubscriptions_id_seq" OWNER TO metriq;

--
-- Name: methodSubscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."methodSubscriptions_id_seq" OWNED BY public."methodSubscriptions".id;


--
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
-- Name: methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.methods_id_seq OWNED BY public.methods.id;


--
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
-- Name: moderationReports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."moderationReports_id_seq" OWNED BY public."moderationReports".id;


--
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
-- Name: platformDataTypeValues_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."platformDataTypeValues_id_seq" OWNED BY public."platformDataTypeValues".id;


--
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
-- Name: platformDataTypes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."platformDataTypes_id_seq" OWNED BY public."platformDataTypes".id;


--
-- Name: platformSubscriptions; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."platformSubscriptions" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "platformId" integer NOT NULL,
    "notifiedAt" timestamp with time zone
);


ALTER TABLE public."platformSubscriptions" OWNER TO metriq;

--
-- Name: platformSubscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."platformSubscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."platformSubscriptions_id_seq" OWNER TO metriq;

--
-- Name: platformSubscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."platformSubscriptions_id_seq" OWNED BY public."platformSubscriptions".id;


--
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
    "platformId" integer,
    "providerId" integer DEFAULT 17 NOT NULL,
    "architectureId" integer DEFAULT 7 NOT NULL
);


ALTER TABLE public.platforms OWNER TO metriq;

--
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
-- Name: platforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.platforms_id_seq OWNED BY public.platforms.id;


--
-- Name: providers; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.providers (
    id integer NOT NULL,
    "createdAt" timestamp with time zone,
    "updatedAt" timestamp with time zone,
    "deletedAt" timestamp with time zone,
    "userId" integer NOT NULL,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.providers OWNER TO metriq;

--
-- Name: providers_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.providers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.providers_id_seq OWNER TO metriq;

--
-- Name: providers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.providers_id_seq OWNED BY public.providers.id;


--
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
-- Name: resultPlatformRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."resultPlatformRefs_id_seq" OWNED BY public."resultPlatformRefs".id;


--
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
    "submissionPlatformRefId" integer,
    "qubitCount" integer,
    "circuitDepth" integer,
    shots integer
);


ALTER TABLE public.results OWNER TO metriq;

--
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
-- Name: results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.results_id_seq OWNED BY public.results.id;


--
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
-- Name: submissionMethodRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionMethodRefs_id_seq" OWNED BY public."submissionMethodRefs".id;


--
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
-- Name: submissionPlatformRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionPlatformRefs_id_seq" OWNED BY public."submissionPlatformRefs".id;


--
-- Name: submissionSubscriptions; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."submissionSubscriptions" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "submissionId" integer NOT NULL,
    "notifiedAt" timestamp with time zone
);


ALTER TABLE public."submissionSubscriptions" OWNER TO metriq;

--
-- Name: submissionSubscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."submissionSubscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."submissionSubscriptions_id_seq" OWNER TO metriq;

--
-- Name: submissionSubscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionSubscriptions_id_seq" OWNED BY public."submissionSubscriptions".id;


--
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
-- Name: submissionTagRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionTagRefs_id_seq" OWNED BY public."submissionTagRefs".id;


--
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
-- Name: submissionTaskRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionTaskRefs_id_seq" OWNED BY public."submissionTaskRefs".id;


--
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
    "deletedAt" timestamp with time zone,
    "publishedAt" timestamp with time zone,
    "codeUrl" text,
    "supplementUrl" text
);


ALTER TABLE public.submissions OWNER TO metriq;

--
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
-- Name: submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.submissions_id_seq OWNED BY public.submissions.id;


--
-- Name: tagSubscriptions; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tagSubscriptions" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "tagId" integer NOT NULL,
    "notifiedAt" timestamp with time zone
);


ALTER TABLE public."tagSubscriptions" OWNER TO metriq;

--
-- Name: tagSubscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."tagSubscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."tagSubscriptions_id_seq" OWNER TO metriq;

--
-- Name: tagSubscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."tagSubscriptions_id_seq" OWNED BY public."tagSubscriptions".id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.tags (
    id integer NOT NULL,
    name text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL,
    "nameNormal" text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.tags OWNER TO metriq;

--
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
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: taskSubscriptions; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."taskSubscriptions" (
    id integer NOT NULL,
    "updatedAt" timestamp with time zone,
    "createdAt" timestamp with time zone,
    "userId" integer NOT NULL,
    "taskId" integer NOT NULL,
    "notifiedAt" timestamp with time zone
);


ALTER TABLE public."taskSubscriptions" OWNER TO metriq;

--
-- Name: taskSubscriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public."taskSubscriptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."taskSubscriptions_id_seq" OWNER TO metriq;

--
-- Name: taskSubscriptions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."taskSubscriptions_id_seq" OWNED BY public."taskSubscriptions".id;


--
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
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
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
    affiliation text DEFAULT ''::text NOT NULL,
    name text DEFAULT ''::text NOT NULL,
    "isSubscribedToNewSubmissions" boolean DEFAULT false NOT NULL,
    "twitterHandle" text DEFAULT ''::text NOT NULL
);


ALTER TABLE public.users OWNER TO metriq;

--
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
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: architectures id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.architectures ALTER COLUMN id SET DEFAULT nextval('public.architectures_id_seq'::regclass);


--
-- Name: dataTypes id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."dataTypes" ALTER COLUMN id SET DEFAULT nextval('public."dataTypes_id_seq"'::regclass);


--
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- Name: methodSubscriptions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."methodSubscriptions" ALTER COLUMN id SET DEFAULT nextval('public."methodSubscriptions_id_seq"'::regclass);


--
-- Name: methods id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods ALTER COLUMN id SET DEFAULT nextval('public.methods_id_seq'::regclass);


--
-- Name: moderationReports id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports" ALTER COLUMN id SET DEFAULT nextval('public."moderationReports_id_seq"'::regclass);


--
-- Name: platformDataTypeValues id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues" ALTER COLUMN id SET DEFAULT nextval('public."platformDataTypeValues_id_seq"'::regclass);


--
-- Name: platformDataTypes id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypes" ALTER COLUMN id SET DEFAULT nextval('public."platformDataTypes_id_seq"'::regclass);


--
-- Name: platformSubscriptions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformSubscriptions" ALTER COLUMN id SET DEFAULT nextval('public."platformSubscriptions_id_seq"'::regclass);


--
-- Name: platforms id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms ALTER COLUMN id SET DEFAULT nextval('public.platforms_id_seq'::regclass);


--
-- Name: providers id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.providers ALTER COLUMN id SET DEFAULT nextval('public.providers_id_seq'::regclass);


--
-- Name: resultPlatformRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs" ALTER COLUMN id SET DEFAULT nextval('public."resultPlatformRefs_id_seq"'::regclass);


--
-- Name: results id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results ALTER COLUMN id SET DEFAULT nextval('public.results_id_seq'::regclass);


--
-- Name: submissionMethodRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionMethodRefs_id_seq"'::regclass);


--
-- Name: submissionPlatformRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionPlatformRefs_id_seq"'::regclass);


--
-- Name: submissionSubscriptions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionSubscriptions" ALTER COLUMN id SET DEFAULT nextval('public."submissionSubscriptions_id_seq"'::regclass);


--
-- Name: submissionTagRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionTagRefs_id_seq"'::regclass);


--
-- Name: submissionTaskRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionTaskRefs_id_seq"'::regclass);


--
-- Name: submissions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions ALTER COLUMN id SET DEFAULT nextval('public.submissions_id_seq'::regclass);


--
-- Name: tagSubscriptions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tagSubscriptions" ALTER COLUMN id SET DEFAULT nextval('public."tagSubscriptions_id_seq"'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Name: taskSubscriptions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."taskSubscriptions" ALTER COLUMN id SET DEFAULT nextval('public."taskSubscriptions_id_seq"'::regclass);


--
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: SequelizeMeta SequelizeMeta_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SequelizeMeta"
    ADD CONSTRAINT "SequelizeMeta_pkey" PRIMARY KEY (name);


--
-- Name: architectures architectures_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.architectures
    ADD CONSTRAINT architectures_pkey PRIMARY KEY (id);


--
-- Name: dataTypes dataTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."dataTypes"
    ADD CONSTRAINT "dataTypes_pkey" PRIMARY KEY (id);


--
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- Name: likes likes_submissionId_userId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_submissionId_userId_unique" UNIQUE ("userId", "submissionId");


--
-- Name: methodSubscriptions methodSubscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."methodSubscriptions"
    ADD CONSTRAINT "methodSubscriptions_pkey" PRIMARY KEY (id);


--
-- Name: methods methods_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT methods_pkey PRIMARY KEY (id);


--
-- Name: moderationReports moderationReports_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_pkey" PRIMARY KEY (id);


--
-- Name: platformDataTypeValues platformDataTypeValues_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues"
    ADD CONSTRAINT "platformDataTypeValues_pkey" PRIMARY KEY (id);


--
-- Name: platformDataTypes platformDataTypes_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypes"
    ADD CONSTRAINT "platformDataTypes_pkey" PRIMARY KEY (id);


--
-- Name: platformSubscriptions platformSubscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformSubscriptions"
    ADD CONSTRAINT "platformSubscriptions_pkey" PRIMARY KEY (id);


--
-- Name: platforms platforms_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT platforms_pkey PRIMARY KEY (id);


--
-- Name: providers providers_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT providers_pkey PRIMARY KEY (id);


--
-- Name: resultPlatformRefs resultPlatformRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs"
    ADD CONSTRAINT "resultPlatformRefs_pkey" PRIMARY KEY (id);


--
-- Name: results results_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);


--
-- Name: submissionMethodRefs submissionMethodRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_pkey" PRIMARY KEY (id);


--
-- Name: submissionMethodRefs submissionMethodRefs_submissionId_methodId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_submissionId_methodId_unique" UNIQUE ("submissionId", "methodId", "deletedAt");


--
-- Name: submissionPlatformRefs submissionPlatformRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs"
    ADD CONSTRAINT "submissionPlatformRefs_pkey" PRIMARY KEY (id);


--
-- Name: submissionSubscriptions submissionSubscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionSubscriptions"
    ADD CONSTRAINT "submissionSubscriptions_pkey" PRIMARY KEY (id);


--
-- Name: submissionTagRefs submissionTagRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_pkey" PRIMARY KEY (id);


--
-- Name: submissionTagRefs submissionTagRefs_submissionId_tagId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_submissionId_tagId_unique" UNIQUE ("submissionId", "tagId", "deletedAt");


--
-- Name: submissionTaskRefs submissionTaskRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_pkey" PRIMARY KEY (id);


--
-- Name: submissionTaskRefs submissionTaskRefs_submissionId_taskId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_submissionId_taskId_unique" UNIQUE ("submissionId", "taskId", "deletedAt");


--
-- Name: submissions submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (id);


--
-- Name: tagSubscriptions tagSubscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tagSubscriptions"
    ADD CONSTRAINT "tagSubscriptions_pkey" PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: taskSubscriptions taskSubscriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."taskSubscriptions"
    ADD CONSTRAINT "taskSubscriptions_pkey" PRIMARY KEY (id);


--
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: fki_moderationReports_submissionId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_moderationReports_submissionId_fkey" ON public."moderationReports" USING btree ("submissionId");


--
-- Name: fki_results_submissionTaskRefId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_results_submissionTaskRefId_fkey" ON public.results USING btree ("submissionTaskRefId");


--
-- Name: fki_tasks_tasksId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_tasks_tasksId_fkey" ON public.tasks USING btree ("taskId");


--
-- Name: architectures architectures_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.architectures
    ADD CONSTRAINT "architectures_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: likes likes_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: likes likes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: methodSubscriptions methodSubscriptions_methodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."methodSubscriptions"
    ADD CONSTRAINT "methodSubscriptions_methodId_fkey" FOREIGN KEY ("methodId") REFERENCES public.methods(id);


--
-- Name: methodSubscriptions methodSubscriptions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."methodSubscriptions"
    ADD CONSTRAINT "methodSubscriptions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: methods methods_methodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT "methods_methodId_fkey" FOREIGN KEY ("methodId") REFERENCES public.methods(id);


--
-- Name: methods methods_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT "methods_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: moderationReports moderationReports_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: moderationReports moderationReports_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: platformDataTypeValues platformDataTypeValues_platformDataTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues"
    ADD CONSTRAINT "platformDataTypeValues_platformDataTypeId_fkey" FOREIGN KEY ("platformDataTypeId") REFERENCES public."platformDataTypes"(id);


--
-- Name: platformDataTypeValues platformDataTypeValues_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues"
    ADD CONSTRAINT "platformDataTypeValues_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- Name: platformDataTypeValues platformDataTypeValues_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypeValues"
    ADD CONSTRAINT "platformDataTypeValues_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: platformDataTypes platformDataTypes_dataTypeId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypes"
    ADD CONSTRAINT "platformDataTypes_dataTypeId_fkey" FOREIGN KEY ("dataTypeId") REFERENCES public."dataTypes"(id);


--
-- Name: platformDataTypes platformDataTypes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformDataTypes"
    ADD CONSTRAINT "platformDataTypes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: platformSubscriptions platformSubscriptions_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformSubscriptions"
    ADD CONSTRAINT "platformSubscriptions_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- Name: platformSubscriptions platformSubscriptions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."platformSubscriptions"
    ADD CONSTRAINT "platformSubscriptions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: platforms platforms_architectureId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT "platforms_architectureId_fkey" FOREIGN KEY ("architectureId") REFERENCES public.architectures(id);


--
-- Name: platforms platforms_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT "platforms_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- Name: platforms platforms_providerId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT "platforms_providerId_fkey" FOREIGN KEY ("providerId") REFERENCES public.providers(id);


--
-- Name: platforms platforms_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.platforms
    ADD CONSTRAINT "platforms_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: providers providers_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.providers
    ADD CONSTRAINT "providers_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: resultPlatformRefs resultPlatformRefs_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs"
    ADD CONSTRAINT "resultPlatformRefs_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- Name: resultPlatformRefs resultPlatformRefs_resultId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs"
    ADD CONSTRAINT "resultPlatformRefs_resultId_fkey" FOREIGN KEY ("resultId") REFERENCES public.results(id);


--
-- Name: resultPlatformRefs resultPlatformRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."resultPlatformRefs"
    ADD CONSTRAINT "resultPlatformRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: results results_submissionMethodRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionMethodRefId_fkey" FOREIGN KEY ("submissionMethodRefId") REFERENCES public."submissionMethodRefs"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: results results_submissionPlatformRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionPlatformRefId_fkey" FOREIGN KEY ("submissionPlatformRefId") REFERENCES public."submissionPlatformRefs"(id);


--
-- Name: results results_submissionTaskRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionTaskRefId_fkey" FOREIGN KEY ("submissionTaskRefId") REFERENCES public."submissionTaskRefs"(id);


--
-- Name: results results_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionMethodRefs submissionMethodRefs_methodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_methodId_fkey" FOREIGN KEY ("methodId") REFERENCES public.methods(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionMethodRefs submissionMethodRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionMethodRefs submissionMethodRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionPlatformRefs submissionPlatformRefs_platformId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs"
    ADD CONSTRAINT "submissionPlatformRefs_platformId_fkey" FOREIGN KEY ("platformId") REFERENCES public.platforms(id);


--
-- Name: submissionPlatformRefs submissionPlatformRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs"
    ADD CONSTRAINT "submissionPlatformRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id);


--
-- Name: submissionPlatformRefs submissionPlatformRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionPlatformRefs"
    ADD CONSTRAINT "submissionPlatformRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: submissionSubscriptions submissionSubscriptions_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionSubscriptions"
    ADD CONSTRAINT "submissionSubscriptions_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id);


--
-- Name: submissionSubscriptions submissionSubscriptions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionSubscriptions"
    ADD CONSTRAINT "submissionSubscriptions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: submissionTagRefs submissionTagRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionTagRefs submissionTagRefs_tagId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public.tags(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionTagRefs submissionTagRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionTaskRefs submissionTaskRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionTaskRefs submissionTaskRefs_taskId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissionTaskRefs submissionTaskRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: submissions submissions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT "submissions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: tagSubscriptions tagSubscriptions_tagId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tagSubscriptions"
    ADD CONSTRAINT "tagSubscriptions_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public.tags(id);


--
-- Name: tagSubscriptions tagSubscriptions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tagSubscriptions"
    ADD CONSTRAINT "tagSubscriptions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: tags tags_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT "tags_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: taskSubscriptions taskSubscriptions_taskId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."taskSubscriptions"
    ADD CONSTRAINT "taskSubscriptions_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id);


--
-- Name: taskSubscriptions taskSubscriptions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."taskSubscriptions"
    ADD CONSTRAINT "taskSubscriptions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: tasks tasks_tasksId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_tasksId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id);


--
-- Name: tasks tasks_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

