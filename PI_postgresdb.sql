PGDMP  1                    |            pi_data    17.2    17.2 
    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    16388    pi_data    DATABASE     }   CREATE DATABASE pi_data WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Croatian_Croatia.1252';
    DROP DATABASE pi_data;
                     postgres    false            �            1259    16401    users    TABLE     ]  CREATE TABLE public.users (
    id bigint NOT NULL,
    username character varying(255) NOT NULL,
    passwordhash character varying(255) NOT NULL,
    passwordsalt character varying(255) NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    email character varying(255),
    phonenumber character varying(255)
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16400    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public               postgres    false    218            "           2606    16427    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218            $           2606    16447    users users_phonenumber_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phonenumber_key UNIQUE (phonenumber);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_phonenumber_key;
       public                 postgres    false    218            &           2606    16416    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218            (           2606    16449    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public                 postgres    false    218           