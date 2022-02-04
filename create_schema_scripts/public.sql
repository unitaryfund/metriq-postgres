--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5 (Ubuntu 13.5-2.pgdg20.04+1)
-- Dumped by pg_dump version 14.1 (Ubuntu 14.1-2.pgdg20.04+1)

-- Started on 2022-02-03 15:08:54 EST

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
-- TOC entry 200 (class 1259 OID 30615)
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
-- TOC entry 201 (class 1259 OID 30618)
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
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 201
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- TOC entry 202 (class 1259 OID 30620)
-- Name: methods; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.methods (
    id integer NOT NULL,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer NOT NULL
);


ALTER TABLE public.methods OWNER TO metriq;

--
-- TOC entry 203 (class 1259 OID 30626)
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
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 203
-- Name: methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.methods_id_seq OWNED BY public.methods.id;


--
-- TOC entry 204 (class 1259 OID 30628)
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
-- TOC entry 205 (class 1259 OID 30634)
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
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 205
-- Name: moderationReports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."moderationReports_id_seq" OWNED BY public."moderationReports".id;


--
-- TOC entry 206 (class 1259 OID 30636)
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
    notes text NOT NULL
);


ALTER TABLE public.results OWNER TO metriq;

--
-- TOC entry 207 (class 1259 OID 30642)
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
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 207
-- Name: results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.results_id_seq OWNED BY public.results.id;


--
-- TOC entry 208 (class 1259 OID 30644)
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
-- TOC entry 209 (class 1259 OID 30647)
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
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 209
-- Name: submissionMethodRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionMethodRefs_id_seq" OWNED BY public."submissionMethodRefs".id;


--
-- TOC entry 210 (class 1259 OID 30649)
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
-- TOC entry 211 (class 1259 OID 30652)
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
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 211
-- Name: submissionTagRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionTagRefs_id_seq" OWNED BY public."submissionTagRefs".id;


--
-- TOC entry 212 (class 1259 OID 30654)
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
-- TOC entry 213 (class 1259 OID 30657)
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
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 213
-- Name: submissionTaskRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionTaskRefs_id_seq" OWNED BY public."submissionTaskRefs".id;


--
-- TOC entry 214 (class 1259 OID 30659)
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
    "topicId" integer NOT NULL
);


ALTER TABLE public.submissions OWNER TO metriq;

--
-- TOC entry 215 (class 1259 OID 30665)
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
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 215
-- Name: submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.submissions_id_seq OWNED BY public.submissions.id;


--
-- TOC entry 216 (class 1259 OID 30667)
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
-- TOC entry 217 (class 1259 OID 30673)
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
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 217
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- TOC entry 218 (class 1259 OID 30675)
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
    "taskId" integer
);


ALTER TABLE public.tasks OWNER TO metriq;

--
-- TOC entry 219 (class 1259 OID 30681)
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
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 219
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- TOC entry 222 (class 1259 OID 30844)
-- Name: topics_id_seq; Type: SEQUENCE; Schema: public; Owner: metriq
--

CREATE SEQUENCE public.topics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;


ALTER TABLE public.topics_id_seq OWNER TO metriq;

--
-- TOC entry 223 (class 1259 OID 30846)
-- Name: topics; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public.topics (
    id integer DEFAULT nextval('public.topics_id_seq'::regclass) NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    name text NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.topics OWNER TO metriq;

--
-- TOC entry 220 (class 1259 OID 30683)
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
    "deletedAt" timestamp with time zone
);


ALTER TABLE public.users OWNER TO metriq;

--
-- TOC entry 221 (class 1259 OID 30689)
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
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2930 (class 2604 OID 30691)
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- TOC entry 2931 (class 2604 OID 30692)
-- Name: methods id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods ALTER COLUMN id SET DEFAULT nextval('public.methods_id_seq'::regclass);


--
-- TOC entry 2932 (class 2604 OID 30693)
-- Name: moderationReports id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports" ALTER COLUMN id SET DEFAULT nextval('public."moderationReports_id_seq"'::regclass);


--
-- TOC entry 2933 (class 2604 OID 30694)
-- Name: results id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results ALTER COLUMN id SET DEFAULT nextval('public.results_id_seq'::regclass);


--
-- TOC entry 2934 (class 2604 OID 30695)
-- Name: submissionMethodRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionMethodRefs_id_seq"'::regclass);


--
-- TOC entry 2935 (class 2604 OID 30696)
-- Name: submissionTagRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionTagRefs_id_seq"'::regclass);


--
-- TOC entry 2936 (class 2604 OID 30697)
-- Name: submissionTaskRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionTaskRefs_id_seq"'::regclass);


--
-- TOC entry 2937 (class 2604 OID 30698)
-- Name: submissions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions ALTER COLUMN id SET DEFAULT nextval('public.submissions_id_seq'::regclass);


--
-- TOC entry 2938 (class 2604 OID 30699)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 2939 (class 2604 OID 30700)
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- TOC entry 2940 (class 2604 OID 30701)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 2943 (class 2606 OID 30703)
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- TOC entry 2945 (class 2606 OID 30705)
-- Name: likes likes_submissionId_userId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_submissionId_userId_unique" UNIQUE ("userId", "submissionId");


--
-- TOC entry 2947 (class 2606 OID 30707)
-- Name: methods methods_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT methods_pkey PRIMARY KEY (id);


--
-- TOC entry 2950 (class 2606 OID 30709)
-- Name: moderationReports moderationReports_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_pkey" PRIMARY KEY (id);


--
-- TOC entry 2953 (class 2606 OID 30711)
-- Name: results results_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);


--
-- TOC entry 2955 (class 2606 OID 30713)
-- Name: submissionMethodRefs submissionMethodRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2957 (class 2606 OID 30715)
-- Name: submissionMethodRefs submissionMethodRefs_submissionId_methodId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_submissionId_methodId_unique" UNIQUE ("submissionId", "methodId", "deletedAt");


--
-- TOC entry 2959 (class 2606 OID 30717)
-- Name: submissionTagRefs submissionTagRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2961 (class 2606 OID 30719)
-- Name: submissionTagRefs submissionTagRefs_submissionId_tagId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_submissionId_tagId_unique" UNIQUE ("submissionId", "tagId", "deletedAt");


--
-- TOC entry 2963 (class 2606 OID 30721)
-- Name: submissionTaskRefs submissionTaskRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2965 (class 2606 OID 30723)
-- Name: submissionTaskRefs submissionTaskRefs_submissionId_taskId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_submissionId_taskId_unique" UNIQUE ("submissionId", "taskId", "deletedAt");


--
-- TOC entry 2967 (class 2606 OID 30725)
-- Name: submissions submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2969 (class 2606 OID 30727)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 2972 (class 2606 OID 30729)
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- TOC entry 2974 (class 2606 OID 30731)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2948 (class 1259 OID 30732)
-- Name: fki_moderationReports_submissionId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_moderationReports_submissionId_fkey" ON public."moderationReports" USING btree ("submissionId");


--
-- TOC entry 2951 (class 1259 OID 30733)
-- Name: fki_results_submissionTaskRefId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_results_submissionTaskRefId_fkey" ON public.results USING btree ("submissionTaskRefId");


--
-- TOC entry 2970 (class 1259 OID 30734)
-- Name: fki_tasks_tasksId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_tasks_tasksId_fkey" ON public.tasks USING btree ("taskId");


--
-- TOC entry 2975 (class 2606 OID 30735)
-- Name: likes likes_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2976 (class 2606 OID 30740)
-- Name: likes likes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2977 (class 2606 OID 30745)
-- Name: methods methods_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT "methods_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2978 (class 2606 OID 30750)
-- Name: moderationReports moderationReports_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2979 (class 2606 OID 30755)
-- Name: moderationReports moderationReports_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."moderationReports"
    ADD CONSTRAINT "moderationReports_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2980 (class 2606 OID 30760)
-- Name: results results_submissionMethodRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionMethodRefId_fkey" FOREIGN KEY ("submissionMethodRefId") REFERENCES public."submissionMethodRefs"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2981 (class 2606 OID 30765)
-- Name: results results_submissionTaskRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionTaskRefId_fkey" FOREIGN KEY ("submissionTaskRefId") REFERENCES public."submissionTaskRefs"(id);


--
-- TOC entry 2982 (class 2606 OID 30770)
-- Name: results results_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2983 (class 2606 OID 30775)
-- Name: submissionMethodRefs submissionMethodRefs_methodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_methodId_fkey" FOREIGN KEY ("methodId") REFERENCES public.methods(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2984 (class 2606 OID 30780)
-- Name: submissionMethodRefs submissionMethodRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2985 (class 2606 OID 30785)
-- Name: submissionMethodRefs submissionMethodRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2986 (class 2606 OID 30790)
-- Name: submissionTagRefs submissionTagRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2987 (class 2606 OID 30795)
-- Name: submissionTagRefs submissionTagRefs_tagId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public.tags(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2988 (class 2606 OID 30800)
-- Name: submissionTagRefs submissionTagRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2989 (class 2606 OID 30805)
-- Name: submissionTaskRefs submissionTaskRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2990 (class 2606 OID 30810)
-- Name: submissionTaskRefs submissionTaskRefs_taskId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2991 (class 2606 OID 30815)
-- Name: submissionTaskRefs submissionTaskRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2992 (class 2606 OID 30820)
-- Name: submissions submissions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT "submissions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2993 (class 2606 OID 30825)
-- Name: tags tags_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT "tags_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2994 (class 2606 OID 30830)
-- Name: tasks tasks_tasksId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_tasksId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id);


--
-- TOC entry 2995 (class 2606 OID 30835)
-- Name: tasks tasks_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2022-02-03 15:08:54 EST

--
-- PostgreSQL database dump complete
--

