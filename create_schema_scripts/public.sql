--
-- PostgreSQL database dump
--

-- Dumped from database version 13.4 (Ubuntu 13.4-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.4 (Ubuntu 13.4-1.pgdg20.04+1)

-- Started on 2021-09-23 16:13:17 EDT

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
-- Name: tbMethod; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbMethod" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "SubmittingUser" uuid NOT NULL,
    "Name" text NOT NULL,
    "FullName" text NOT NULL,
    "Description" text NOT NULL,
    "SubmittedDate" date NOT NULL
);


ALTER TABLE public."tbMethod" OWNER TO metriq;

--
-- TOC entry 205 (class 1259 OID 16448)
-- Name: tbRef_Submission_Method; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbRef_Submission_Method" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "SubmittingUser" uuid NOT NULL,
    "Submission" uuid NOT NULL,
    "Method" uuid NOT NULL,
    "SubmittedDate" date NOT NULL,
    "DeletedDate" date
);


ALTER TABLE public."tbRef_Submission_Method" OWNER TO metriq;

--
-- TOC entry 207 (class 1259 OID 16477)
-- Name: tbRef_Submission_Tag; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbRef_Submission_Tag" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "SubmittingUser" uuid NOT NULL,
    "Submission" uuid NOT NULL,
    "Tag" uuid NOT NULL,
    "DeletedDate" date,
    "SubmittedDate" date NOT NULL
);


ALTER TABLE public."tbRef_Submission_Tag" OWNER TO metriq;

--
-- TOC entry 206 (class 1259 OID 16471)
-- Name: tbRef_Submission_Task; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbRef_Submission_Task" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "SubmittingUser" uuid NOT NULL,
    "Submission" uuid NOT NULL,
    "Task" uuid NOT NULL,
    "DeletedDate" date,
    "SubmittedDate" date NOT NULL
);


ALTER TABLE public."tbRef_Submission_Task" OWNER TO metriq;

--
-- TOC entry 208 (class 1259 OID 16515)
-- Name: tbResult; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbResult" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "RefSubmissionMethod" uuid NOT NULL,
    "RefSubmissionTask" uuid NOT NULL,
    "IsHigherBetter" boolean NOT NULL,
    "MetricName" text NOT NULL,
    "MetricValue" text NOT NULL,
    "SubmittingUser" uuid NOT NULL,
    "SubmittedDate" date NOT NULL,
    "DeletedDate" date
);


ALTER TABLE public."tbResult" OWNER TO metriq;

--
-- TOC entry 201 (class 1259 OID 16400)
-- Name: tbSubmission; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbSubmission" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "SubmittingUser" uuid NOT NULL,
    "Name" text NOT NULL,
    "NameNormal" text NOT NULL,
    "Description" text NOT NULL,
    "SubmittedDate" date NOT NULL,
    "ContentUrl" text NOT NULL,
    "ThumbnailUrl" text NOT NULL,
    "ApprovedDate" date,
    "DeletedDate" date
);


ALTER TABLE public."tbSubmission" OWNER TO metriq;

--
-- TOC entry 202 (class 1259 OID 16421)
-- Name: tbTag; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbTag" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Name" text NOT NULL,
    "SubmittingUser" uuid NOT NULL,
    "SubmittedDate" date NOT NULL
);


ALTER TABLE public."tbTag" OWNER TO metriq;

--
-- TOC entry 204 (class 1259 OID 16438)
-- Name: tbTask; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbTask" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "SubmittingUser" uuid NOT NULL,
    "Name" text NOT NULL,
    "FullName" text NOT NULL,
    "Description" text NOT NULL,
    "SubmittedDate" date NOT NULL
);


ALTER TABLE public."tbTask" OWNER TO metriq;

--
-- TOC entry 200 (class 1259 OID 16386)
-- Name: tbUser; Type: TABLE; Schema: public; Owner: metriq
--

CREATE TABLE public."tbUser" (
    "Uuid" uuid DEFAULT gen_random_uuid() NOT NULL,
    "Username" text NOT NULL,
    "PasswordHash" text NOT NULL,
    "Email" text NOT NULL,
    "ClientToken" text,
    "RecoveryToken" text,
    "DateJoined" date NOT NULL,
    "ClientTokenCreated" date,
    "DeletedDate" date,
    "RecoveryTokenExpiration" date,
    "UsernameNormal" text NOT NULL
);


ALTER TABLE public."tbUser" OWNER TO metriq;

--
-- TOC entry 2914 (class 2606 OID 16437)
-- Name: tbMethod tbMethod_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbMethod"
    ADD CONSTRAINT "tbMethod_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2918 (class 2606 OID 16453)
-- Name: tbRef_Submission_Method tbRef_Submission_Method_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Method"
    ADD CONSTRAINT "tbRef_Submission_Method_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2920 (class 2606 OID 16547)
-- Name: tbRef_Submission_Method tbRef_Submission_Method_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Method"
    ADD CONSTRAINT "tbRef_Submission_Method_unique" UNIQUE ("Submission", "Method", "DeletedDate");


--
-- TOC entry 2926 (class 2606 OID 16540)
-- Name: tbRef_Submission_Tag tbRef_Submission_Tag_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Tag"
    ADD CONSTRAINT "tbRef_Submission_Tag_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2928 (class 2606 OID 16549)
-- Name: tbRef_Submission_Tag tbRef_Submission_Tag_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Tag"
    ADD CONSTRAINT "tbRef_Submission_Tag_unique" UNIQUE ("Submission", "Tag", "DeletedDate");


--
-- TOC entry 2922 (class 2606 OID 16476)
-- Name: tbRef_Submission_Task tbRef_Submission_Task_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Task"
    ADD CONSTRAINT "tbRef_Submission_Task_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2924 (class 2606 OID 16551)
-- Name: tbRef_Submission_Task tbRef_Submission_Task_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Task"
    ADD CONSTRAINT "tbRef_Submission_Task_unique" UNIQUE ("Submission", "Task", "DeletedDate");


--
-- TOC entry 2930 (class 2606 OID 16523)
-- Name: tbResult tbResult_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbResult"
    ADD CONSTRAINT "tbResult_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2908 (class 2606 OID 16409)
-- Name: tbSubmission tbSubmission_NameNormal_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbSubmission"
    ADD CONSTRAINT "tbSubmission_NameNormal_unique" UNIQUE ("NameNormal");


--
-- TOC entry 2910 (class 2606 OID 16404)
-- Name: tbSubmission tbSubmission_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbSubmission"
    ADD CONSTRAINT "tbSubmission_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2912 (class 2606 OID 16429)
-- Name: tbTag tbTag_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbTag"
    ADD CONSTRAINT "tbTag_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2916 (class 2606 OID 16443)
-- Name: tbTask tbTask_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbTask"
    ADD CONSTRAINT "tbTask_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2902 (class 2606 OID 16397)
-- Name: tbUser tbUser_Email_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbUser"
    ADD CONSTRAINT "tbUser_Email_unique" UNIQUE ("Email");


--
-- TOC entry 2904 (class 2606 OID 16395)
-- Name: tbUser tbUser_UserNameNormal_unique; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbUser"
    ADD CONSTRAINT "tbUser_UserNameNormal_unique" UNIQUE ("UsernameNormal");


--
-- TOC entry 2906 (class 2606 OID 16393)
-- Name: tbUser tbUser_pkey; Type: CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbUser"
    ADD CONSTRAINT "tbUser_pkey" PRIMARY KEY ("Uuid");


--
-- TOC entry 2934 (class 2606 OID 16459)
-- Name: tbRef_Submission_Method tbRef_Submission_Method_Method_tbMethod_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Method"
    ADD CONSTRAINT "tbRef_Submission_Method_Method_tbMethod_Uuid_fk" FOREIGN KEY ("Method") REFERENCES public."tbMethod"("Uuid");


--
-- TOC entry 2935 (class 2606 OID 16454)
-- Name: tbRef_Submission_Method tbRef_Submission_Method_Submission_tbSubmission_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Method"
    ADD CONSTRAINT "tbRef_Submission_Method_Submission_tbSubmission_Uuid_fk" FOREIGN KEY ("Submission") REFERENCES public."tbSubmission"("Uuid");


--
-- TOC entry 2933 (class 2606 OID 16464)
-- Name: tbRef_Submission_Method tbRef_Submission_Method_SubmittingUser_tbUser_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Method"
    ADD CONSTRAINT "tbRef_Submission_Method_SubmittingUser_tbUser_Uuid_fk" FOREIGN KEY ("SubmittingUser") REFERENCES public."tbUser"("Uuid");


--
-- TOC entry 2939 (class 2606 OID 16488)
-- Name: tbRef_Submission_Tag tbRef_Submission_Tag_Submission_tbSubmission_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Tag"
    ADD CONSTRAINT "tbRef_Submission_Tag_Submission_tbSubmission_Uuid_fk" FOREIGN KEY ("Submission") REFERENCES public."tbSubmission"("Uuid");


--
-- TOC entry 2940 (class 2606 OID 16483)
-- Name: tbRef_Submission_Tag tbRef_Submission_Tag_SubmittingUser_tbUser_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Tag"
    ADD CONSTRAINT "tbRef_Submission_Tag_SubmittingUser_tbUser_Uuid_fk" FOREIGN KEY ("SubmittingUser") REFERENCES public."tbUser"("Uuid");


--
-- TOC entry 2941 (class 2606 OID 16493)
-- Name: tbRef_Submission_Tag tbRef_Submission_Tag_Tag_tbTag_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Tag"
    ADD CONSTRAINT "tbRef_Submission_Tag_Tag_tbTag_Uuid_fk" FOREIGN KEY ("Tag") REFERENCES public."tbTag"("Uuid");


--
-- TOC entry 2936 (class 2606 OID 16505)
-- Name: tbRef_Submission_Task tbRef_Submission_Task_Submission_tbSubmission_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Task"
    ADD CONSTRAINT "tbRef_Submission_Task_Submission_tbSubmission_Uuid_fk" FOREIGN KEY ("Submission") REFERENCES public."tbSubmission"("Uuid");


--
-- TOC entry 2937 (class 2606 OID 16500)
-- Name: tbRef_Submission_Task tbRef_Submission_Task_SubmittingUser_tbUser_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Task"
    ADD CONSTRAINT "tbRef_Submission_Task_SubmittingUser_tbUser_Uuid_fk" FOREIGN KEY ("SubmittingUser") REFERENCES public."tbUser"("Uuid");


--
-- TOC entry 2938 (class 2606 OID 16510)
-- Name: tbRef_Submission_Task tbRef_Submission_Task_Task_tbTask_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbRef_Submission_Task"
    ADD CONSTRAINT "tbRef_Submission_Task_Task_tbTask_Uuid_fk" FOREIGN KEY ("Task") REFERENCES public."tbTask"("Uuid");


--
-- TOC entry 2942 (class 2606 OID 16529)
-- Name: tbResult tbResult_RefSubmissionMethod_tbRef_Submission_Method_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbResult"
    ADD CONSTRAINT "tbResult_RefSubmissionMethod_tbRef_Submission_Method_Uuid_fk" FOREIGN KEY ("RefSubmissionMethod") REFERENCES public."tbRef_Submission_Method"("Uuid");


--
-- TOC entry 2943 (class 2606 OID 16524)
-- Name: tbResult tbResult_RefSubmissionTask_tbRef_Submission_Task_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbResult"
    ADD CONSTRAINT "tbResult_RefSubmissionTask_tbRef_Submission_Task_Uuid_fk" FOREIGN KEY ("RefSubmissionTask") REFERENCES public."tbRef_Submission_Task"("Uuid");


--
-- TOC entry 2944 (class 2606 OID 16534)
-- Name: tbResult tbResult_SubmittingUser_tbUser_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbResult"
    ADD CONSTRAINT "tbResult_SubmittingUser_tbUser_Uuid_fk" FOREIGN KEY ("SubmittingUser") REFERENCES public."tbUser"("Uuid");


--
-- TOC entry 2931 (class 2606 OID 16410)
-- Name: tbSubmission tbSubmission_SubmittingUser_tbUser_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbSubmission"
    ADD CONSTRAINT "tbSubmission_SubmittingUser_tbUser_Uuid_fk" FOREIGN KEY ("Uuid") REFERENCES public."tbUser"("Uuid");


--
-- TOC entry 2932 (class 2606 OID 16541)
-- Name: tbTag tbTag_SubmittingUser_tbUser_Uuid_fk; Type: FK CONSTRAINT; Schema: public; Owner: metriq
--

ALTER TABLE ONLY public."tbTag"
    ADD CONSTRAINT "tbTag_SubmittingUser_tbUser_Uuid_fk" FOREIGN KEY ("SubmittingUser") REFERENCES public."tbUser"("Uuid");


-- Completed on 2021-09-23 16:13:17 EDT

--
-- PostgreSQL database dump complete
--

