--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Ubuntu 13.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.4 (Ubuntu 13.4-1.pgdg20.04+1)

-- Started on 2021-09-24 15:58:23 EDT

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
-- TOC entry 203 (class 1259 OID 16430)
-- Name: Methods; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."Methods" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    "userId" uuid NOT NULL,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL,
    "createdAt" date NOT NULL,
    "updatedAt" date NOT NULL
);


ALTER TABLE public."Methods" OWNER TO metriq;

--
-- TOC entry 208 (class 1259 OID 16515)
-- Name: Results; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."Results" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    "submissionMethodRefId" uuid NOT NULL,
    "submissionTaskRefId" uuid NOT NULL,
    "isHigherBetter" boolean NOT NULL,
    "metricName" text NOT NULL,
    "metricValue" text NOT NULL,
    "userId" uuid NOT NULL,
    "createdAt" date NOT NULL,
    "deletedAt" date,
    "updatedAt" date NOT NULL
);


ALTER TABLE public."Results" OWNER TO metriq;

--
-- TOC entry 205 (class 1259 OID 16448)
-- Name: SubmissionMethodRefs; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."SubmissionMethodRefs" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    "userId" uuid NOT NULL,
    "submissionId" uuid NOT NULL,
    "methodId" uuid NOT NULL,
    "createdAt" date NOT NULL,
    "deletedAt" date,
    "updatedAt" date NOT NULL
);


ALTER TABLE public."SubmissionMethodRefs" OWNER TO metriq;

--
-- TOC entry 207 (class 1259 OID 16477)
-- Name: SubmissionTagRefs; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."SubmissionTagRefs" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    "userId" uuid NOT NULL,
    "submissionId" uuid NOT NULL,
    "tagId" uuid NOT NULL,
    "deletedAt" date,
    "createdAt" date NOT NULL,
    "updatedAt" date NOT NULL
);


ALTER TABLE public."SubmissionTagRefs" OWNER TO metriq;

--
-- TOC entry 206 (class 1259 OID 16471)
-- Name: SubmissionTaskRefs; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."SubmissionTaskRefs" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    "userId" uuid NOT NULL,
    "submissionId" uuid NOT NULL,
    "taskId" uuid NOT NULL,
    "deletedAt" date,
    "createdAt" date NOT NULL,
    "updatedAt" date NOT NULL
);


ALTER TABLE public."SubmissionTaskRefs" OWNER TO metriq;

--
-- TOC entry 201 (class 1259 OID 16400)
-- Name: Submissions; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."Submissions" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    "userId" uuid NOT NULL,
    name text NOT NULL,
    "nameNormal" text NOT NULL,
    description text NOT NULL,
    "createdAt" date NOT NULL,
    "contentUrl" text NOT NULL,
    "thumbnailUrl" text NOT NULL,
    "approvedAt" date,
    "deletedAt" date,
    "updatedAt" date NOT NULL
);


ALTER TABLE public."Submissions" OWNER TO metriq;

--
-- TOC entry 202 (class 1259 OID 16421)
-- Name: Tags; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."Tags" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    name text NOT NULL,
    "userId" uuid NOT NULL,
    "createdAt" date NOT NULL,
    "updatedAt" date NOT NULL
);


ALTER TABLE public."Tags" OWNER TO metriq;

--
-- TOC entry 204 (class 1259 OID 16438)
-- Name: Tasks; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."Tasks" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    "userId" uuid NOT NULL,
    name text NOT NULL,
    "fullName" text NOT NULL,
    description text NOT NULL,
    "createdAt" date NOT NULL,
    "updatedAt" date NOT NULL
);


ALTER TABLE public."Tasks" OWNER TO metriq;

--
-- TOC entry 200 (class 1259 OID 16386)
-- Name: Users; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."Users" (
    id uuid DEFAULT gen_random_uuid() NOT NULL,
    username text NOT NULL,
    "passwordHash" text NOT NULL,
    email text NOT NULL,
    "clientToken" text,
    "recoveryToken" text,
    "createdAt" date NOT NULL,
    "clientTokenCreated" date,
    "deletedAt" date,
    "recoveryTokenExpiration" date,
    "usernameNormal" text NOT NULL
);


ALTER TABLE public."Users" OWNER TO metriq;

--
-- TOC entry 2914 (class 2606 OID 16437)
-- Name: Methods Methods_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Methods"
    ADD CONSTRAINT "Methods_pkey" PRIMARY KEY (id);


--
-- TOC entry 2930 (class 2606 OID 16523)
-- Name: Results Results_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Results"
    ADD CONSTRAINT "Results_pkey" PRIMARY KEY (id);


--
-- TOC entry 2918 (class 2606 OID 16453)
-- Name: SubmissionMethodRefs SubmissionMethodRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionMethodRefs"
    ADD CONSTRAINT "SubmissionMethodRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2920 (class 2606 OID 16547)
-- Name: SubmissionMethodRefs SubmissionMethodRefs_submissionId_methodId_deletedAt_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionMethodRefs"
    ADD CONSTRAINT "SubmissionMethodRefs_submissionId_methodId_deletedAt_unique" UNIQUE ("submissionId", "methodId", "deletedAt");


--
-- TOC entry 2926 (class 2606 OID 16540)
-- Name: SubmissionTagRefs SubmissionTagRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTagRefs"
    ADD CONSTRAINT "SubmissionTagRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2928 (class 2606 OID 16549)
-- Name: SubmissionTagRefs SubmissionTagRefs_submissionId_tagId_deletedAt_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTagRefs"
    ADD CONSTRAINT "SubmissionTagRefs_submissionId_tagId_deletedAt_unique" UNIQUE ("submissionId", "tagId", "deletedAt");


--
-- TOC entry 2922 (class 2606 OID 16476)
-- Name: SubmissionTaskRefs SubmissionTaskRefs_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTaskRefs"
    ADD CONSTRAINT "SubmissionTaskRefs_pkey" PRIMARY KEY (id);


--
-- TOC entry 2924 (class 2606 OID 16551)
-- Name: SubmissionTaskRefs SubmissionTaskRefs_submissionId_taskId_deletedAt_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTaskRefs"
    ADD CONSTRAINT "SubmissionTaskRefs_submissionId_taskId_deletedAt_unique" UNIQUE ("submissionId", "taskId", "deletedAt");


--
-- TOC entry 2908 (class 2606 OID 16409)
-- Name: Submissions Submissions_nameNormal_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "Submissions_nameNormal_unique" UNIQUE ("nameNormal");


--
-- TOC entry 2910 (class 2606 OID 16404)
-- Name: Submissions Submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "Submissions_pkey" PRIMARY KEY (id);


--
-- TOC entry 2912 (class 2606 OID 16429)
-- Name: Tags Tags_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_pkey" PRIMARY KEY (id);


--
-- TOC entry 2916 (class 2606 OID 16443)
-- Name: Tasks Tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Tasks"
    ADD CONSTRAINT "Tasks_pkey" PRIMARY KEY (id);


--
-- TOC entry 2902 (class 2606 OID 16397)
-- Name: Users Users_email_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_unique" UNIQUE (email);


--
-- TOC entry 2904 (class 2606 OID 16395)
-- Name: Users Users_nameNormal_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_nameNormal_unique" UNIQUE ("usernameNormal");


--
-- TOC entry 2906 (class 2606 OID 16393)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- TOC entry 2943 (class 2606 OID 16529)
-- Name: Results Results_submissionMethodRef_SubmissionMethodRefs_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Results"
    ADD CONSTRAINT "Results_submissionMethodRef_SubmissionMethodRefs_id_fk" FOREIGN KEY ("submissionMethodRefId") REFERENCES public."SubmissionMethodRefs"(id);


--
-- TOC entry 2944 (class 2606 OID 16524)
-- Name: Results Results_submissionTaskRef_SubmissionTaskRefs_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Results"
    ADD CONSTRAINT "Results_submissionTaskRef_SubmissionTaskRefs_id_fk" FOREIGN KEY ("submissionTaskRefId") REFERENCES public."SubmissionTaskRefs"(id);


--
-- TOC entry 2942 (class 2606 OID 16534)
-- Name: Results Results_userId_User_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Results"
    ADD CONSTRAINT "Results_userId_User_id_fk" FOREIGN KEY ("userId") REFERENCES public."Users"(id);


--
-- TOC entry 2933 (class 2606 OID 16459)
-- Name: SubmissionMethodRefs SubmissionMethodRef_methodId_Method_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionMethodRefs"
    ADD CONSTRAINT "SubmissionMethodRef_methodId_Method_id_fk" FOREIGN KEY ("methodId") REFERENCES public."Methods"(id);


--
-- TOC entry 2934 (class 2606 OID 16454)
-- Name: SubmissionMethodRefs SubmissionMethodRefs_submissionId_Submissions_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionMethodRefs"
    ADD CONSTRAINT "SubmissionMethodRefs_submissionId_Submissions_id_fk" FOREIGN KEY ("submissionId") REFERENCES public."Submissions"(id);


--
-- TOC entry 2935 (class 2606 OID 16464)
-- Name: SubmissionMethodRefs SubmissionMethodRefs_userId_Users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionMethodRefs"
    ADD CONSTRAINT "SubmissionMethodRefs_userId_Users_id_fk" FOREIGN KEY ("userId") REFERENCES public."Users"(id);


--
-- TOC entry 2941 (class 2606 OID 16488)
-- Name: SubmissionTagRefs SubmissionTagRefs_submissionId_Submissions_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTagRefs"
    ADD CONSTRAINT "SubmissionTagRefs_submissionId_Submissions_id_fk" FOREIGN KEY ("submissionId") REFERENCES public."Submissions"(id);


--
-- TOC entry 2940 (class 2606 OID 16493)
-- Name: SubmissionTagRefs SubmissionTagRefs_tagId_Tags_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTagRefs"
    ADD CONSTRAINT "SubmissionTagRefs_tagId_Tags_id_fk" FOREIGN KEY ("tagId") REFERENCES public."Tags"(id);


--
-- TOC entry 2939 (class 2606 OID 16483)
-- Name: SubmissionTagRefs SubmissionTagRefs_userId_Users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTagRefs"
    ADD CONSTRAINT "SubmissionTagRefs_userId_Users_id_fk" FOREIGN KEY ("userId") REFERENCES public."Users"(id);


--
-- TOC entry 2938 (class 2606 OID 16505)
-- Name: SubmissionTaskRefs SubmissionTaskRefs_submissionId_Submissions_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTaskRefs"
    ADD CONSTRAINT "SubmissionTaskRefs_submissionId_Submissions_id_fk" FOREIGN KEY ("submissionId") REFERENCES public."Submissions"(id);


--
-- TOC entry 2937 (class 2606 OID 16510)
-- Name: SubmissionTaskRefs SubmissionTaskRefs_taskId_Tasks_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTaskRefs"
    ADD CONSTRAINT "SubmissionTaskRefs_taskId_Tasks_id_fk" FOREIGN KEY ("taskId") REFERENCES public."Tasks"(id);


--
-- TOC entry 2936 (class 2606 OID 16500)
-- Name: SubmissionTaskRefs SubmissionTaskRefs_userId_Users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."SubmissionTaskRefs"
    ADD CONSTRAINT "SubmissionTaskRefs_userId_Users_id_fk" FOREIGN KEY ("userId") REFERENCES public."Users"(id);


--
-- TOC entry 2931 (class 2606 OID 16552)
-- Name: Submissions Submissions_userId_Users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Submissions"
    ADD CONSTRAINT "Submissions_userId_Users_id_fk" FOREIGN KEY ("userId") REFERENCES public."Users"(id);


--
-- TOC entry 2932 (class 2606 OID 16541)
-- Name: Tags Tags_userId_Users_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."Tags"
    ADD CONSTRAINT "Tags_userId_Users_id_fk" FOREIGN KEY ("userId") REFERENCES public."Users"(id);


-- Completed on 2021-09-24 15:58:23 EDT

--
-- PostgreSQL database dump complete
--

