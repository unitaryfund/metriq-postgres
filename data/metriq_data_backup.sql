--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Ubuntu 13.4-4.pgdg20.04+1)
-- Dumped by pg_dump version 14.0 (Ubuntu 14.0-1.pgdg20.04+1)

-- Started on 2021-10-07 17:58:42 EDT

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
-- TOC entry 200 (class 1259 OID 26816)
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
-- TOC entry 201 (class 1259 OID 26819)
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
-- TOC entry 3130 (class 0 OID 0)
-- Dependencies: 201
-- Name: likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.likes_id_seq OWNED BY public.likes.id;


--
-- TOC entry 202 (class 1259 OID 26821)
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
-- TOC entry 203 (class 1259 OID 26827)
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
-- TOC entry 3131 (class 0 OID 0)
-- Dependencies: 203
-- Name: methods_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.methods_id_seq OWNED BY public.methods.id;


--
-- TOC entry 204 (class 1259 OID 26829)
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
    "evaluatedAt" date
);


ALTER TABLE public.results OWNER TO metriq;

--
-- TOC entry 205 (class 1259 OID 26835)
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
-- TOC entry 3132 (class 0 OID 0)
-- Dependencies: 205
-- Name: results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.results_id_seq OWNED BY public.results.id;


--
-- TOC entry 206 (class 1259 OID 26837)
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
-- TOC entry 207 (class 1259 OID 26840)
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
-- TOC entry 3133 (class 0 OID 0)
-- Dependencies: 207
-- Name: submissionMethodRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionMethodRefs_id_seq" OWNED BY public."submissionMethodRefs".id;


--
-- TOC entry 208 (class 1259 OID 26842)
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
-- TOC entry 209 (class 1259 OID 26845)
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
-- TOC entry 3134 (class 0 OID 0)
-- Dependencies: 209
-- Name: submissionTagRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionTagRefs_id_seq" OWNED BY public."submissionTagRefs".id;


--
-- TOC entry 210 (class 1259 OID 26847)
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
-- TOC entry 211 (class 1259 OID 26850)
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
-- TOC entry 3135 (class 0 OID 0)
-- Dependencies: 211
-- Name: submissionTaskRefs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public."submissionTaskRefs_id_seq" OWNED BY public."submissionTaskRefs".id;


--
-- TOC entry 212 (class 1259 OID 26852)
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
    "userId" integer NOT NULL
);


ALTER TABLE public.submissions OWNER TO metriq;

--
-- TOC entry 213 (class 1259 OID 26858)
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
-- TOC entry 3136 (class 0 OID 0)
-- Dependencies: 213
-- Name: submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.submissions_id_seq OWNED BY public.submissions.id;


--
-- TOC entry 214 (class 1259 OID 26860)
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
-- TOC entry 215 (class 1259 OID 26866)
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
-- TOC entry 3137 (class 0 OID 0)
-- Dependencies: 215
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- TOC entry 216 (class 1259 OID 26868)
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
-- TOC entry 217 (class 1259 OID 26874)
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
-- TOC entry 3138 (class 0 OID 0)
-- Dependencies: 217
-- Name: tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.tasks_id_seq OWNED BY public.tasks.id;


--
-- TOC entry 218 (class 1259 OID 26876)
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
-- TOC entry 219 (class 1259 OID 26882)
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
-- TOC entry 3139 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: metriq
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 2916 (class 2604 OID 26884)
-- Name: likes id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes ALTER COLUMN id SET DEFAULT nextval('public.likes_id_seq'::regclass);


--
-- TOC entry 2917 (class 2604 OID 26885)
-- Name: methods id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods ALTER COLUMN id SET DEFAULT nextval('public.methods_id_seq'::regclass);


--
-- TOC entry 2918 (class 2604 OID 26886)
-- Name: results id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results ALTER COLUMN id SET DEFAULT nextval('public.results_id_seq'::regclass);


--
-- TOC entry 2919 (class 2604 OID 26887)
-- Name: submissionMethodRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionMethodRefs_id_seq"'::regclass);


--
-- TOC entry 2920 (class 2604 OID 26888)
-- Name: submissionTagRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionTagRefs_id_seq"'::regclass);


--
-- TOC entry 2921 (class 2604 OID 26889)
-- Name: submissionTaskRefs id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs" ALTER COLUMN id SET DEFAULT nextval('public."submissionTaskRefs_id_seq"'::regclass);


--
-- TOC entry 2922 (class 2604 OID 26890)
-- Name: submissions id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions ALTER COLUMN id SET DEFAULT nextval('public.submissions_id_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 26891)
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- TOC entry 2924 (class 2604 OID 26892)
-- Name: tasks id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks ALTER COLUMN id SET DEFAULT nextval('public.tasks_id_seq'::regclass);


--
-- TOC entry 2925 (class 2604 OID 26893)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 3105 (class 0 OID 26816)
-- Dependencies: 200
-- Data for Name: likes; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.likes (id, "createdAt", "updatedAt", "userId", "submissionId") FROM stdin;
\.


--
-- TOC entry 3107 (class 0 OID 26821)
-- Dependencies: 202
-- Data for Name: methods; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.methods (id, name, "fullName", description, "createdAt", "updatedAt", "userId") FROM stdin;
1	QAOA	Quantum approximate optimization algorithm	QAOA (Quantum Approximate Optimization Algorithm) introduced by Farhi et al. is a quantum algorithm that attempts to solve combinatorial optimization problems involve finding an optimal object out of a finite set of objects. It is a variational algorithm that uses a unitary U(β,γ) characterized by the parameters (β,γ) to prepare a quantum state |ψ(β,γ)⟩. The goal of the algorithm is to find optimal parameter values for (β,γ) such that the quantum state |ψ(β,γ)⟩ encodes the solution to the problem.	2021-10-07 17:25:14.129-04	2021-10-07 17:25:14.129-04	1
2	VQE	Variational quantum eigensolver	The Variational-Quantum-Eigensolver (VQE) iis a quantum/classical hybrid algorithm that can be used to find eigenvalues of a (often large) matrix H. When this algorithm is used in quantum simulations, H is typically the Hamiltonian of some system. In this hybrid algorithm a quantum subroutine is run inside of a classical optimization loop.	2021-10-07 17:40:33.928-04	2021-10-07 17:40:33.928-04	1
3	VQF	Variational quantum factoring	QAOA-based quantum optimization algorithm for integer factoring	2021-10-07 17:49:53.192-04	2021-10-07 17:49:53.192-04	1
4	NMR	Nuclear magnetic resonance	Nuclear magnetic resonance (NMR) is a physical phenomenon in which nuclei in a strong constant magnetic field are perturbed by a weak oscillating magnetic field (in the near field) and respond by producing an electromagnetic signal with a frequency characteristic of the magnetic field at the nucleus. 	2021-10-07 17:54:34.079-04	2021-10-07 17:54:34.079-04	1
5	QA	Quantum annealing	Quantum annealing (QA) is a metaheuristic for finding the global minimum of a given objective function over a given set of candidate solutions (candidate states), by a process using quantum fluctuations (in other words, a meta-procedure for finding a procedure that finds an absolute minimum size/length/cost/distance from within a possibly very large, but nonetheless finite set of possible solutions using quantum fluctuation-based computation instead of classical computation). 	2021-10-07 17:56:52.098-04	2021-10-07 17:56:52.098-04	1
\.


--
-- TOC entry 3109 (class 0 OID 26829)
-- Dependencies: 204
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.results (id, "isHigherBetter", "metricName", "metricValue", "createdAt", "updatedAt", "deletedAt", "userId", "submissionMethodRefId", "submissionTaskRefId", "evaluatedAt") FROM stdin;
1	t	Qubits	22	2021-10-07 17:41:15.262-04	2021-10-07 17:41:15.262-04	\N	1	2	2	2020-04-08
2	t	Approximation ratio	0.2	2021-10-07 17:45:38.411-04	2021-10-07 17:45:38.411-04	\N	1	3	3	2020-04-08
3	t	Factorized integer	3127	2021-10-07 17:50:52.965-04	2021-10-07 17:50:52.965-04	\N	1	5	5	2020-12-14
4	t	Factorized integer	6557	2021-10-07 17:51:19.006-04	2021-10-07 17:51:19.006-04	\N	1	5	5	2020-12-14
5	t	Factorized integer	1099551473989	2021-10-07 17:51:58.021-04	2021-10-07 17:51:58.021-04	\N	1	5	5	2020-12-14
6	t	Factorized integer	291311	2021-10-07 17:55:17.91-04	2021-10-07 17:55:17.91-04	\N	1	6	6	2017-06-25
7	t	Factorized integer	200000	2021-10-07 17:57:35.735-04	2021-10-07 17:57:35.735-04	\N	1	7	7	2016-04-20
\.


--
-- TOC entry 3111 (class 0 OID 26837)
-- Dependencies: 206
-- Data for Name: submissionMethodRefs; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."submissionMethodRefs" (id, "createdAt", "updatedAt", "deletedAt", "userId", "submissionId", "methodId") FROM stdin;
1	2021-10-07 17:25:14.151-04	2021-10-07 17:25:14.151-04	\N	1	1	1
2	2021-10-07 17:40:33.95-04	2021-10-07 17:40:33.95-04	\N	1	2	2
3	2021-10-07 17:43:01.543-04	2021-10-07 17:43:01.543-04	\N	1	3	1
4	2021-10-07 17:46:43.373-04	2021-10-07 17:46:43.373-04	\N	1	4	2
5	2021-10-07 17:49:53.206-04	2021-10-07 17:49:53.206-04	\N	1	6	3
6	2021-10-07 17:54:34.092-04	2021-10-07 17:54:34.092-04	\N	1	8	4
7	2021-10-07 17:56:52.115-04	2021-10-07 17:56:52.115-04	\N	1	9	5
\.


--
-- TOC entry 3113 (class 0 OID 26842)
-- Dependencies: 208
-- Data for Name: submissionTagRefs; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."submissionTagRefs" (id, "createdAt", "updatedAt", "deletedAt", "userId", "submissionId", "tagId") FROM stdin;
1	2021-10-07 17:23:30.51-04	2021-10-07 17:23:30.51-04	\N	1	1	1
2	2021-10-07 17:39:25.781-04	2021-10-07 17:39:25.781-04	\N	1	2	2
3	2021-10-07 17:46:24.831-04	2021-10-07 17:46:24.831-04	\N	1	4	2
4	2021-10-07 17:47:39.048-04	2021-10-07 17:47:39.048-04	\N	1	5	3
5	2021-10-07 17:47:39.053-04	2021-10-07 17:47:39.053-04	\N	1	5	4
6	2021-10-07 17:47:39.059-04	2021-10-07 17:47:39.059-04	\N	1	5	5
7	2021-10-07 17:47:39.064-04	2021-10-07 17:47:39.064-04	\N	1	5	6
8	2021-10-07 17:48:37.497-04	2021-10-07 17:48:37.497-04	\N	1	6	7
9	2021-10-07 17:48:37.501-04	2021-10-07 17:48:37.501-04	\N	1	6	1
10	2021-10-07 17:53:13.015-04	2021-10-07 17:53:13.015-04	\N	1	7	8
11	2021-10-07 17:53:59.234-04	2021-10-07 17:53:59.234-04	\N	1	8	9
12	2021-10-07 17:53:59.241-04	2021-10-07 17:53:59.241-04	\N	1	8	10
13	2021-10-07 17:56:21.691-04	2021-10-07 17:56:21.691-04	\N	1	9	11
\.


--
-- TOC entry 3115 (class 0 OID 26847)
-- Dependencies: 210
-- Data for Name: submissionTaskRefs; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public."submissionTaskRefs" (id, "createdAt", "updatedAt", "deletedAt", "userId", "submissionId", "taskId") FROM stdin;
1	2021-10-07 17:24:31.467-04	2021-10-07 17:24:31.467-04	\N	1	1	1
2	2021-10-07 17:40:07.792-04	2021-10-07 17:40:07.792-04	\N	1	2	2
3	2021-10-07 17:42:51.902-04	2021-10-07 17:42:51.902-04	\N	1	3	3
4	2021-10-07 17:46:38.742-04	2021-10-07 17:46:38.742-04	\N	1	4	2
5	2021-10-07 17:49:29.363-04	2021-10-07 17:49:29.363-04	\N	1	6	4
6	2021-10-07 17:54:11.944-04	2021-10-07 17:54:11.944-04	\N	1	8	4
7	2021-10-07 17:56:34.829-04	2021-10-07 17:56:34.829-04	\N	1	9	4
\.


--
-- TOC entry 3117 (class 0 OID 26852)
-- Dependencies: 212
-- Data for Name: submissions; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.submissions (id, name, "nameNormal", description, "contentUrl", "thumbnailUrl", "approvedAt", "createdAt", "updatedAt", "userId") FROM stdin;
1	Benchmarking quantum co-processors in an application-centric, hardware-agnostic and scalable way	benchmarking quantum co-processors in an application-centric, hardware-agnostic and scalable way	Existing protocols for benchmarking current quantum co-processors fail to meet the usual standards for assessing the performance of High-Performance-Computing platforms. After a synthetic review of these protocols -- whether at the gate, circuit or application level -- we introduce a new benchmark, dubbed Atos Q-score (TM), that is application-centric, hardware-agnostic and scalable to quantum advantage processor sizes and beyond. The Q-score measures the maximum number of qubits that can be used effectively to solve the MaxCut combinatorial optimization problem with the Quantum Approximate Optimization Algorithm. We give a robust definition of the notion of effective performance by introducing an improved approximation ratio based on the scaling of random and optimal algorithms. We illustrate the behavior of Q-score using perfect and noisy simulations of quantum processors. Finally, we provide an open-source implementation of Q-score that makes it easy to compute the Q-score of any quantum hardware.	https://arxiv.org/abs/2102.12973	\N	2021-10-07 00:00:00-04	2021-10-07 17:23:30.482-04	2021-10-07 17:23:30.482-04	1
2	Hartree-Fock on a superconducting qubit quantum computer	hartree-fock on a superconducting qubit quantum computer	As the search continues for useful applications of noisy intermediate scale quantum devices, variational simulations of fermionic systems remain one of the most promising directions. Here, we perform a series of quantum simulations of chemistry the largest of which involved a dozen qubits, 78 two-qubit gates, and 114 one-qubit gates. We model the binding energy of H6, H8, H10 and H12 chains as well as the isomerization of diazene. We also demonstrate error-mitigation strategies based on N-representability which dramatically improve the effective fidelity of our experiments. Our parameterized ansatz circuits realize the Givens rotation approach to non-interacting fermion evolution, which we variationally optimize to prepare the Hartree-Fock wavefunction. This ubiquitous algorithmic primitive corresponds to a rotation of the orbital basis and is required by many proposals for correlated simulations of molecules and Hubbard models. Because non-interacting fermion evolutions are classically tractable to simulate, yet still generate highly entangled states over the computational basis, we use these experiments to benchmark the performance of our hardware while establishing a foundation for scaling up more complex correlated quantum simulations of chemistry.	https://arxiv.org/abs/2004.04174	\N	2021-10-07 00:00:00-04	2021-10-07 17:39:25.751-04	2021-10-07 17:39:25.751-04	1
3	Quantum Approximate Optimization of Non-Planar Graph Problems on a Planar Superconducting Processor	quantum approximate optimization of non-planar graph problems on a planar superconducting processor	We demonstrate the application of the Google Sycamore superconducting qubit quantum processor to combinatorial optimization problems with the quantum approximate optimization algorithm (QAOA). Like past QAOA experiments, we study performance for problems defined on the (planar) connectivity graph of our hardware; however, we also apply the QAOA to the Sherrington-Kirkpatrick model and MaxCut, both high dimensional graph problems for which the QAOA requires significant compilation. Experimental scans of the QAOA energy landscape show good agreement with theory across even the largest instances studied (23 qubits) and we are able to perform variational optimization successfully. For problems defined on our hardware graph we obtain an approximation ratio that is independent of problem size and observe, for the first time, that performance increases with circuit depth. For problems requiring compilation, performance decreases with problem size but still provides an advantage over random guessing for circuits involving several thousand gates. This behavior highlights the challenge of using near-term quantum computers to optimize problems on graphs differing from hardware connectivity. As these graphs are more representative of real world instances, our results advocate for more emphasis on such problems in the developing tradition of using the QAOA as a holistic, device-level benchmark of quantum processors.	https://arxiv.org/abs/2004.04197	\N	2021-10-07 00:00:00-04	2021-10-07 17:42:00.259-04	2021-10-07 17:42:00.259-04	1
4	A variational eigenvalue solver on a quantum processor	a variational eigenvalue solver on a quantum processor	Quantum computers promise to efficiently solve important problems that are intractable on a conventional computer. For quantum systems, where the dimension of the problem space grows exponentially, finding the eigenvalues of certain operators is one such intractable problem and remains a fundamental challenge. The quantum phase estimation algorithm can efficiently find the eigenvalue of a given eigenvector but requires fully coherent evolution. We present an alternative approach that greatly reduces the requirements for coherent evolution and we combine this method with a new approach to state preparation based on ansätze and classical optimization. We have implemented the algorithm by combining a small-scale photonic quantum processor with a conventional computer. We experimentally demonstrate the feasibility of this approach with an example from quantum chemistry: calculating the ground state molecular energy for He-H+, to within chemical accuracy. The proposed approach, by drastically reducing the coherence time requirements, enhances the potential of the quantum resources available today and in the near future.	https://arxiv.org/abs/1304.3061	\N	2021-10-07 00:00:00-04	2021-10-07 17:46:24.822-04	2021-10-07 17:46:24.822-04	1
5	Extending Probabilistic Error Cancellation	extending probabilistic error cancellation	We propose a general framework for quantum error mitigation that combines and generalizes two techniques: probabilistic error cancellation (PEC) and zero-noise extrapolation (ZNE). Similarly to PEC, the proposed method represents ideal operations as linear combinations of noisy operations that are implementable on hardware. However, instead of assuming a fixed level of hardware noise, we extend the set of implementable operations by noise scaling. By construction, this method encompasses both PEC and ZNE as particular cases and allows us to investigate a larger set of hybrid techniques. For example, gate extrapolation can be used to implement PEC without requiring knowledge of the device's noise model, e.g., avoiding gate set tomography. Alternatively, probabilistic error reduction can be used to estimate expectation values at intermediate virtual noise strengths (below the hardware level), obtaining partially mitigated results at a lower sampling cost. Moreover, multiple results obtained with different noise reduction factors can be further post-processed with ZNE to better approximate the zero-noise limit.	https://arxiv.org/abs/1304.3061	\N	2021-10-07 00:00:00-04	2021-10-07 17:47:39.035-04	2021-10-07 17:47:39.035-04	1
6	Analyzing the Performance of Variational Quantum Factoring on a Superconducting Quantum Processor	analyzing the performance of variational quantum factoring on a superconducting quantum processor	In the near-term, hybrid quantum-classical algorithms hold great potential for outperforming classical approaches. Understanding how these two computing paradigms work in tandem is critical for identifying areas where such hybrid algorithms could provide a quantum advantage. In this work, we study a QAOA-based quantum optimization algorithm by implementing the Variational Quantum Factoring (VQF) algorithm. We execute experimental demonstrations using a superconducting quantum processor and investigate the trade-off between quantum resources (number of qubits and circuit depth) and the probability that a given biprime is successfully factored. In our experiments, the integers 1099551473989, 3127, and 6557 are factored with 3, 4, and 5 qubits, respectively, using a QAOA ansatz with up to 8 layers and we are able to identify the optimal number of circuit layers for a given instance to maximize success probability. Furthermore, we demonstrate the impact of different noise sources on the performance of QAOA and reveal the coherent error caused by the residual ZZ-coupling between qubits as a dominant source of error in the superconducting quantum processor.	https://arxiv.org/abs/2012.07825	\N	2021-10-07 00:00:00-04	2021-10-07 17:48:37.485-04	2021-10-07 17:48:37.485-04	1
7	Fundamental limitations of quantum error mitigation	fundamental limitations of quantum error mitigation	The inevitable accumulation of errors in near-future quantum devices represents a key obstacle in delivering practical quantum advantage. This motivated the development of various quantum error-mitigation protocols, each representing a method to extract useful computational output by combining measurement data from multiple samplings of the available imperfect quantum device. What are the ultimate performance limits universally imposed on such protocols? Here, we derive a fundamental bound on the sampling overhead that applies to a general class of error-mitigation protocols, assuming only the laws of quantum mechanics. We use it to show that (1) the sampling overhead to mitigate local depolarizing noise for layered circuits -- such as the ones used for variational quantum algorithms -- must scale exponentially with circuit depth, and (2) the optimality of probabilistic error cancellation method among all strategies in mitigating a certain class of noise. We discuss how our unified framework and general bounds can be employed to benchmark and compare various present methods of error mitigation and identify situations where present error-mitigation methods have the greatest potential for improvement.	https://arxiv.org/abs/2109.04457	\N	2021-10-07 00:00:00-04	2021-10-07 17:53:13.003-04	2021-10-07 17:53:13.003-04	1
8	High-fidelity adiabatic quantum computation using the intrinsic Hamiltonian of a spin system: Application to the experimental factorization of 291311	high-fidelity adiabatic quantum computation using the intrinsic hamiltonian of a spin system: application to the experimental factorization of 291311	In previous implementations of adiabatic quantum algorithms using spin systems, the average Hamiltonian method with Trotter's formula was conventionally adopted to generate an effective instantaneous Hamiltonian that simulates an adiabatic passage. However, this approach had issues with the precision of the effective Hamiltonian and with the adiabaticity of the evolution. In order to address these, we here propose and experimentally demonstrate a novel scheme for adiabatic quantum computation by using the intrinsic Hamiltonian of a realistic spin system to represent the problem Hamiltonian while adiabatically driving the system by an extrinsic Hamiltonian directly induced by electromagnetic pulses. In comparison to the conventional method, we observed two advantages of our approach: improved ease of implementation and higher fidelity. As a showcase example of our approach, we experimentally factor 291311, which is larger than any other quantum factorization known.	https://arxiv.org/abs/1706.08061	\N	2021-10-07 00:00:00-04	2021-10-07 17:53:59.221-04	2021-10-07 17:53:59.221-04	1
9	Prime factorization using quantum annealing and computational algebraic geometry	prime factorization using quantum annealing and computational algebraic geometry	We investigate prime factorization from two perspectives: quantum annealing and computational algebraic geometry, specifically Gröbner bases. We present a novel scalable algorithm which combines the two approaches and leads to the factorization of all bi-primes up to just over 200000, the largest number factored to date using a quantum processor.	https://arxiv.org/abs/1604.05796	\N	2021-10-07 00:00:00-04	2021-10-07 17:56:21.677-04	2021-10-07 17:56:21.677-04	1
\.


--
-- TOC entry 3119 (class 0 OID 26860)
-- Dependencies: 214
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.tags (id, name, "createdAt", "updatedAt", "userId") FROM stdin;
1	qaoa	2021-10-07 17:23:30.496-04	2021-10-07 17:23:30.496-04	1
2	vqe	2021-10-07 17:39:25.768-04	2021-10-07 17:39:25.768-04	1
3	error mitigation	2021-10-07 17:47:39.042-04	2021-10-07 17:47:39.042-04	1
4	probabilistic error cancellation	2021-10-07 17:47:39.051-04	2021-10-07 17:47:39.051-04	1
5	zero-noise extrapolation	2021-10-07 17:47:39.056-04	2021-10-07 17:47:39.056-04	1
6	nepec	2021-10-07 17:47:39.062-04	2021-10-07 17:47:39.062-04	1
7	integer factoring	2021-10-07 17:48:37.492-04	2021-10-07 17:48:37.492-04	1
8	variational	2021-10-07 17:53:13.009-04	2021-10-07 17:53:13.009-04	1
9	nmr	2021-10-07 17:53:59.227-04	2021-10-07 17:53:59.227-04	1
10	integer factorizatioin	2021-10-07 17:53:59.238-04	2021-10-07 17:53:59.238-04	1
11	annealing	2021-10-07 17:56:21.684-04	2021-10-07 17:56:21.684-04	1
\.


--
-- TOC entry 3121 (class 0 OID 26868)
-- Dependencies: 216
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.tasks (id, name, "fullName", description, "createdAt", "updatedAt", "userId", "taskId") FROM stdin;
1	MAXCUT	Maximum cut	For a graph, a maximum cut is a cut whose size is at least the size of any other cut. That is, it is a partition of the graph's vertices into two complementary sets S and T, such that the number of edges between the set S and the set T is as large as possible. The problem of finding a maximum cut in a graph is known as the Max-Cut Problem.	2021-10-07 17:24:31.44-04	2021-10-07 17:24:31.44-04	1	\N
2	Ground state energy	Ground state energy	The ground state of a quantum-mechanical system is its lowest-energy state; the energy of the ground state is known as the zero-point energy of the system. An excited state is any state with energy greater than the ground state. In quantum field theory, the ground state is usually called the vacuum state or the vacuum.	2021-10-07 17:40:07.765-04	2021-10-07 17:40:07.765-04	1	\N
3	MAXCUT: 3-regular	Maximum Cut: 3-regular	Unweighted MAXCUT on randomly generated 3-regular graphs of a given number of nodes	2021-10-07 17:42:51.882-04	2021-10-07 17:42:51.882-04	1	\N
4	Integer factoring	Integer factoring	Factoring of integers via any quantum computational method, such as Shor's algorithm, NMR, or variational methods	2021-10-07 17:49:29.348-04	2021-10-07 17:49:29.348-04	1	\N
\.


--
-- TOC entry 3123 (class 0 OID 26876)
-- Dependencies: 218
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: metriq
--

COPY public.users (id, username, "usernameNormal", "passwordHash", email, "clientToken", "recoveryToken", "clientTokenCreated", "recoveryTokenExpiration", "createdAt", "updatedAt", "deletedAt") FROM stdin;
1	Sysadmin	sysadmin	$2b$10$daqvMbB2KQNqToZTy45eze/53Klj1SVsfxUq6hMYqh.h2gKcG/EIm	dan@unitary.fund	\N	\N	\N	\N	2021-10-07 17:22:57.212-04	2021-10-07 17:22:57.212-04	\N
\.


--
-- TOC entry 3140 (class 0 OID 0)
-- Dependencies: 201
-- Name: likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.likes_id_seq', 1, false);


--
-- TOC entry 3141 (class 0 OID 0)
-- Dependencies: 203
-- Name: methods_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.methods_id_seq', 5, true);


--
-- TOC entry 3142 (class 0 OID 0)
-- Dependencies: 205
-- Name: results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.results_id_seq', 7, true);


--
-- TOC entry 3143 (class 0 OID 0)
-- Dependencies: 207
-- Name: submissionMethodRefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."submissionMethodRefs_id_seq"', 7, true);


--
-- TOC entry 3144 (class 0 OID 0)
-- Dependencies: 209
-- Name: submissionTagRefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."submissionTagRefs_id_seq"', 13, true);


--
-- TOC entry 3145 (class 0 OID 0)
-- Dependencies: 211
-- Name: submissionTaskRefs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public."submissionTaskRefs_id_seq"', 7, true);


--
-- TOC entry 3146 (class 0 OID 0)
-- Dependencies: 213
-- Name: submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.submissions_id_seq', 9, true);


--
-- TOC entry 3147 (class 0 OID 0)
-- Dependencies: 215
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.tags_id_seq', 11, true);


--
-- TOC entry 3148 (class 0 OID 0)
-- Dependencies: 217
-- Name: tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.tasks_id_seq', 4, true);


--
-- TOC entry 3149 (class 0 OID 0)
-- Dependencies: 219
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: metriq
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- TOC entry 2927 (class 2606 OID 26895)
-- Name: likes likes_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);


--
-- TOC entry 2929 (class 2606 OID 26897)
-- Name: likes likes_submissionId_userId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_submissionId_userId_unique" UNIQUE ("userId", "submissionId");


--
-- TOC entry 2931 (class 2606 OID 26899)
-- Name: methods methods_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT methods_pkey PRIMARY KEY (id);


--
-- TOC entry 2934 (class 2606 OID 26901)
-- Name: results results_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);


--
-- TOC entry 2936 (class 2606 OID 26903)
-- Name: submissionMethodRefs submissionMethodRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2938 (class 2606 OID 26905)
-- Name: submissionMethodRefs submissionMethodRefs_submissionId_methodId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_submissionId_methodId_unique" UNIQUE ("submissionId", "methodId", "deletedAt");


--
-- TOC entry 2940 (class 2606 OID 26907)
-- Name: submissionTagRefs submissionTagRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2942 (class 2606 OID 26909)
-- Name: submissionTagRefs submissionTagRefs_submissionId_tagId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_submissionId_tagId_unique" UNIQUE ("submissionId", "tagId", "deletedAt");


--
-- TOC entry 2944 (class 2606 OID 26911)
-- Name: submissionTaskRefs submissionTaskRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2946 (class 2606 OID 26913)
-- Name: submissionTaskRefs submissionTaskRefs_submissionId_taskId_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_submissionId_taskId_unique" UNIQUE ("submissionId", "taskId", "deletedAt");


--
-- TOC entry 2948 (class 2606 OID 26915)
-- Name: submissions submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT submissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2950 (class 2606 OID 26917)
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- TOC entry 2953 (class 2606 OID 26919)
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- TOC entry 2955 (class 2606 OID 26921)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2932 (class 1259 OID 26922)
-- Name: fki_results_submissionTaskRefId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_results_submissionTaskRefId_fkey" ON public.results USING btree ("submissionTaskRefId");


--
-- TOC entry 2951 (class 1259 OID 26923)
-- Name: fki_tasks_tasksId_fkey; Type: INDEX; Schema: public; Owner: metriq
--

CREATE INDEX "fki_tasks_tasksId_fkey" ON public.tasks USING btree ("taskId");


--
-- TOC entry 2956 (class 2606 OID 26924)
-- Name: likes likes_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2957 (class 2606 OID 26929)
-- Name: likes likes_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.likes
    ADD CONSTRAINT "likes_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2958 (class 2606 OID 26934)
-- Name: methods methods_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.methods
    ADD CONSTRAINT "methods_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2959 (class 2606 OID 26939)
-- Name: results results_submissionMethodRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionMethodRefId_fkey" FOREIGN KEY ("submissionMethodRefId") REFERENCES public."submissionMethodRefs"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2960 (class 2606 OID 26944)
-- Name: results results_submissionTaskRefId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_submissionTaskRefId_fkey" FOREIGN KEY ("submissionTaskRefId") REFERENCES public."submissionTaskRefs"(id);


--
-- TOC entry 2961 (class 2606 OID 26949)
-- Name: results results_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT "results_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2962 (class 2606 OID 26954)
-- Name: submissionMethodRefs submissionMethodRefs_methodId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_methodId_fkey" FOREIGN KEY ("methodId") REFERENCES public.methods(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2963 (class 2606 OID 26959)
-- Name: submissionMethodRefs submissionMethodRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2964 (class 2606 OID 26964)
-- Name: submissionMethodRefs submissionMethodRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionMethodRefs"
    ADD CONSTRAINT "submissionMethodRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2965 (class 2606 OID 26969)
-- Name: submissionTagRefs submissionTagRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2966 (class 2606 OID 26974)
-- Name: submissionTagRefs submissionTagRefs_tagId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES public.tags(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2967 (class 2606 OID 26979)
-- Name: submissionTagRefs submissionTagRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTagRefs"
    ADD CONSTRAINT "submissionTagRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2968 (class 2606 OID 26984)
-- Name: submissionTaskRefs submissionTaskRefs_submissionId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_submissionId_fkey" FOREIGN KEY ("submissionId") REFERENCES public.submissions(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2969 (class 2606 OID 26989)
-- Name: submissionTaskRefs submissionTaskRefs_taskId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_taskId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2970 (class 2606 OID 26994)
-- Name: submissionTaskRefs submissionTaskRefs_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."submissionTaskRefs"
    ADD CONSTRAINT "submissionTaskRefs_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2971 (class 2606 OID 26999)
-- Name: submissions submissions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.submissions
    ADD CONSTRAINT "submissions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2972 (class 2606 OID 27004)
-- Name: tags tags_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT "tags_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2973 (class 2606 OID 27009)
-- Name: tasks tasks_tasksId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_tasksId_fkey" FOREIGN KEY ("taskId") REFERENCES public.tasks(id);


--
-- TOC entry 2974 (class 2606 OID 27014)
-- Name: tasks tasks_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT "tasks_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2021-10-07 17:58:43 EDT

--
-- PostgreSQL database dump complete
--

