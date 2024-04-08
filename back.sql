PGDMP         *                |            Merops    11.21    11.21 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    16714    Merops    DATABASE     �   CREATE DATABASE "Merops" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "Merops";
             postgres    false                        2615    754845    myschema    SCHEMA        CREATE SCHEMA myschema;
    DROP SCHEMA myschema;
             postgres    false                        2615    756828    test    SCHEMA        CREATE SCHEMA test;
    DROP SCHEMA test;
             postgres    false            �            1259    220959 
   ageRatings    TABLE     �   CREATE TABLE public."ageRatings" (
    id integer NOT NULL,
    age integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
     DROP TABLE public."ageRatings";
       public         postgres    false            �            1259    220957    ageRatings_id_seq    SEQUENCE     �   CREATE SEQUENCE public."ageRatings_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."ageRatings_id_seq";
       public       postgres    false    211            �           0    0    ageRatings_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."ageRatings_id_seq" OWNED BY public."ageRatings".id;
            public       postgres    false    210            �            1259    756902    controllers    TABLE     �   CREATE TABLE public.controllers (
    id integer NOT NULL,
    "creatorId" integer NOT NULL,
    "controllerId" integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.controllers;
       public         postgres    false            �            1259    756900    controllers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.controllers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.controllers_id_seq;
       public       postgres    false    231            �           0    0    controllers_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.controllers_id_seq OWNED BY public.controllers.id;
            public       postgres    false    230            �            1259    756667    entranceOptionPrices    TABLE       CREATE TABLE public."entranceOptionPrices" (
    id integer NOT NULL,
    price integer,
    "seatsLeft" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "eventId" integer,
    "entranceOptionId" integer
);
 *   DROP TABLE public."entranceOptionPrices";
       public         postgres    false            �            1259    756665    entranceOptionPrices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."entranceOptionPrices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."entranceOptionPrices_id_seq";
       public       postgres    false    217            �           0    0    entranceOptionPrices_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public."entranceOptionPrices_id_seq" OWNED BY public."entranceOptionPrices".id;
            public       postgres    false    216            �            1259    756716    entranceOptions    TABLE     �   CREATE TABLE public."entranceOptions" (
    id integer NOT NULL,
    name character varying(255),
    "totalSeats" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "entranceId" integer
);
 %   DROP TABLE public."entranceOptions";
       public         postgres    false            �            1259    756714    entranceOptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."entranceOptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."entranceOptions_id_seq";
       public       postgres    false    223            �           0    0    entranceOptions_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."entranceOptions_id_seq" OWNED BY public."entranceOptions".id;
            public       postgres    false    222            �            1259    756798 	   entrances    TABLE       CREATE TABLE public.entrances (
    id integer NOT NULL,
    address character varying(255),
    name character varying(255),
    "totalSeats" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.entrances;
       public         postgres    false            �            1259    756796    entrances_id_seq    SEQUENCE     �   CREATE SEQUENCE public.entrances_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.entrances_id_seq;
       public       postgres    false    227            �           0    0    entrances_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.entrances_id_seq OWNED BY public.entrances.id;
            public       postgres    false    226            �            1259    220947    events    TABLE     �  CREATE TABLE public.events (
    id integer NOT NULL,
    title character varying(255),
    description text,
    "dateTime" timestamp with time zone,
    img character varying(255) NOT NULL,
    "Status" character varying(255) DEFAULT 'ACTIVE'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "ageRatingId" integer,
    "typeId" integer,
    "entranceId" integer,
    "hallId" integer,
    "userId" integer
);
    DROP TABLE public.events;
       public         postgres    false            �            1259    220945    events_id_seq    SEQUENCE     �   CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.events_id_seq;
       public       postgres    false    209            �           0    0    events_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.events_id_seq OWNED BY public.events.id;
            public       postgres    false    208            �            1259    756698    hallOptionPrices    TABLE     �   CREATE TABLE public."hallOptionPrices" (
    id integer NOT NULL,
    price integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "eventId" integer,
    "hallOptionId" integer
);
 &   DROP TABLE public."hallOptionPrices";
       public         postgres    false            �            1259    756696    hallOptionPrices_id_seq    SEQUENCE     �   CREATE SEQUENCE public."hallOptionPrices_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."hallOptionPrices_id_seq";
       public       postgres    false    221            �           0    0    hallOptionPrices_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."hallOptionPrices_id_seq" OWNED BY public."hallOptionPrices".id;
            public       postgres    false    220            �            1259    756685    hallOptions    TABLE     @  CREATE TABLE public."hallOptions" (
    id integer NOT NULL,
    name character varying(255),
    "rowStart" integer,
    "rowFinish" integer,
    "seatStart" integer,
    "seatFinish" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "hallId" integer
);
 !   DROP TABLE public."hallOptions";
       public         postgres    false            �            1259    756683    hallOptions_id_seq    SEQUENCE     �   CREATE SEQUENCE public."hallOptions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public."hallOptions_id_seq";
       public       postgres    false    219            �           0    0    hallOptions_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public."hallOptions_id_seq" OWNED BY public."hallOptions".id;
            public       postgres    false    218            �            1259    754848    hallPassages    TABLE     �   CREATE TABLE public."hallPassages" (
    id integer NOT NULL,
    "afterRow" integer,
    "afterSeat" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "hallId" integer
);
 "   DROP TABLE public."hallPassages";
       public         postgres    false            �            1259    754846    hallPassages_id_seq    SEQUENCE     �   CREATE SEQUENCE public."hallPassages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."hallPassages_id_seq";
       public       postgres    false    215            �           0    0    hallPassages_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public."hallPassages_id_seq" OWNED BY public."hallPassages".id;
            public       postgres    false    214            �            1259    756814    halls    TABLE     2  CREATE TABLE public.halls (
    id integer NOT NULL,
    address character varying(255),
    name character varying(255),
    "numberRows" integer,
    "numberSeatsInRow" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.halls;
       public         postgres    false            �            1259    756812    halls_id_seq    SEQUENCE     �   CREATE SEQUENCE public.halls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.halls_id_seq;
       public       postgres    false    229            �           0    0    halls_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.halls_id_seq OWNED BY public.halls.id;
            public       postgres    false    228            �            1259    220922    links    TABLE     	  CREATE TABLE public.links (
    id integer NOT NULL,
    "isActivated" boolean DEFAULT false,
    "activationLink" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.links;
       public         postgres    false            �            1259    220920    links_id_seq    SEQUENCE     �   CREATE SEQUENCE public.links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.links_id_seq;
       public       postgres    false    205            �           0    0    links_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.links_id_seq OWNED BY public.links.id;
            public       postgres    false    204            �            1259    220931    orders    TABLE     �   CREATE TABLE public.orders (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.orders;
       public         postgres    false            �            1259    220929    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public       postgres    false    207            �           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
            public       postgres    false    206            �            1259    756732    tickets    TABLE     m  CREATE TABLE public.tickets (
    id integer NOT NULL,
    number integer,
    "row" integer,
    seat integer,
    status boolean DEFAULT true,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "orderId" integer,
    "entranceOptionPriceId" integer,
    "hallOptionPriceId" integer,
    "eventId" integer
);
    DROP TABLE public.tickets;
       public         postgres    false            �            1259    756730    tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tickets_id_seq;
       public       postgres    false    225            �           0    0    tickets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;
            public       postgres    false    224            �            1259    220906    tokens    TABLE     �   CREATE TABLE public.tokens (
    id integer NOT NULL,
    "refreshToken" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
    DROP TABLE public.tokens;
       public         postgres    false            �            1259    220904    tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tokens_id_seq;
       public       postgres    false    201            �           0    0    tokens_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tokens_id_seq OWNED BY public.tokens.id;
            public       postgres    false    200            �            1259    220967    types    TABLE     �   CREATE TABLE public.types (
    id integer NOT NULL,
    name character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.types;
       public         postgres    false            �            1259    220965    types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.types_id_seq;
       public       postgres    false    213            �           0    0    types_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;
            public       postgres    false    212            �            1259    220914    updatePasswords    TABLE     �   CREATE TABLE public."updatePasswords" (
    id integer NOT NULL,
    code integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "userId" integer
);
 %   DROP TABLE public."updatePasswords";
       public         postgres    false            �            1259    220912    updatePasswords_id_seq    SEQUENCE     �   CREATE SEQUENCE public."updatePasswords_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public."updatePasswords_id_seq";
       public       postgres    false    203            �           0    0    updatePasswords_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."updatePasswords_id_seq" OWNED BY public."updatePasswords".id;
            public       postgres    false    202            �            1259    73873    users    TABLE       CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(255),
    password character varying(255),
    name character varying(255),
    surname character varying(255),
    birthday date,
    role character varying(255) DEFAULT 'USER'::character varying,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public.users;
       public         postgres    false            �            1259    73871    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    199            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    198            �
           2604    220962    ageRatings id    DEFAULT     r   ALTER TABLE ONLY public."ageRatings" ALTER COLUMN id SET DEFAULT nextval('public."ageRatings_id_seq"'::regclass);
 >   ALTER TABLE public."ageRatings" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            �
           2604    756905    controllers id    DEFAULT     p   ALTER TABLE ONLY public.controllers ALTER COLUMN id SET DEFAULT nextval('public.controllers_id_seq'::regclass);
 =   ALTER TABLE public.controllers ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    230    231            �
           2604    756670    entranceOptionPrices id    DEFAULT     �   ALTER TABLE ONLY public."entranceOptionPrices" ALTER COLUMN id SET DEFAULT nextval('public."entranceOptionPrices_id_seq"'::regclass);
 H   ALTER TABLE public."entranceOptionPrices" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            �
           2604    756719    entranceOptions id    DEFAULT     |   ALTER TABLE ONLY public."entranceOptions" ALTER COLUMN id SET DEFAULT nextval('public."entranceOptions_id_seq"'::regclass);
 C   ALTER TABLE public."entranceOptions" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223            �
           2604    756801    entrances id    DEFAULT     l   ALTER TABLE ONLY public.entrances ALTER COLUMN id SET DEFAULT nextval('public.entrances_id_seq'::regclass);
 ;   ALTER TABLE public.entrances ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    227    227            �
           2604    220950 	   events id    DEFAULT     f   ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);
 8   ALTER TABLE public.events ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            �
           2604    756701    hallOptionPrices id    DEFAULT     ~   ALTER TABLE ONLY public."hallOptionPrices" ALTER COLUMN id SET DEFAULT nextval('public."hallOptionPrices_id_seq"'::regclass);
 D   ALTER TABLE public."hallOptionPrices" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            �
           2604    756688    hallOptions id    DEFAULT     t   ALTER TABLE ONLY public."hallOptions" ALTER COLUMN id SET DEFAULT nextval('public."hallOptions_id_seq"'::regclass);
 ?   ALTER TABLE public."hallOptions" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            �
           2604    754851    hallPassages id    DEFAULT     v   ALTER TABLE ONLY public."hallPassages" ALTER COLUMN id SET DEFAULT nextval('public."hallPassages_id_seq"'::regclass);
 @   ALTER TABLE public."hallPassages" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    214    215            �
           2604    756817    halls id    DEFAULT     d   ALTER TABLE ONLY public.halls ALTER COLUMN id SET DEFAULT nextval('public.halls_id_seq'::regclass);
 7   ALTER TABLE public.halls ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    229    229            �
           2604    220925    links id    DEFAULT     d   ALTER TABLE ONLY public.links ALTER COLUMN id SET DEFAULT nextval('public.links_id_seq'::regclass);
 7   ALTER TABLE public.links ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204    205            �
           2604    220934 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    207    207            �
           2604    756735 
   tickets id    DEFAULT     h   ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);
 9   ALTER TABLE public.tickets ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    225    225            �
           2604    220909 	   tokens id    DEFAULT     f   ALTER TABLE ONLY public.tokens ALTER COLUMN id SET DEFAULT nextval('public.tokens_id_seq'::regclass);
 8   ALTER TABLE public.tokens ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200    201            �
           2604    220970    types id    DEFAULT     d   ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);
 7   ALTER TABLE public.types ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            �
           2604    220917    updatePasswords id    DEFAULT     |   ALTER TABLE ONLY public."updatePasswords" ALTER COLUMN id SET DEFAULT nextval('public."updatePasswords_id_seq"'::regclass);
 C   ALTER TABLE public."updatePasswords" ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202    203            �
           2604    73876    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �          0    220959 
   ageRatings 
   TABLE DATA               I   COPY public."ageRatings" (id, age, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    211   %J      �          0    756902    controllers 
   TABLE DATA               `   COPY public.controllers (id, "creatorId", "controllerId", "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    231   zJ      �          0    756667    entranceOptionPrices 
   TABLE DATA               �   COPY public."entranceOptionPrices" (id, price, "seatsLeft", "createdAt", "updatedAt", "eventId", "entranceOptionId") FROM stdin;
    public       postgres    false    217   �J      �          0    756716    entranceOptions 
   TABLE DATA               k   COPY public."entranceOptions" (id, name, "totalSeats", "createdAt", "updatedAt", "entranceId") FROM stdin;
    public       postgres    false    223   K      �          0    756798 	   entrances 
   TABLE DATA               h   COPY public.entrances (id, address, name, "totalSeats", "createdAt", "updatedAt", "userId") FROM stdin;
    public       postgres    false    227   �L      �          0    220947    events 
   TABLE DATA               �   COPY public.events (id, title, description, "dateTime", img, "Status", "createdAt", "updatedAt", "ageRatingId", "typeId", "entranceId", "hallId", "userId") FROM stdin;
    public       postgres    false    209   sN      �          0    756698    hallOptionPrices 
   TABLE DATA               l   COPY public."hallOptionPrices" (id, price, "createdAt", "updatedAt", "eventId", "hallOptionId") FROM stdin;
    public       postgres    false    221   �W      �          0    756685    hallOptions 
   TABLE DATA               �   COPY public."hallOptions" (id, name, "rowStart", "rowFinish", "seatStart", "seatFinish", "createdAt", "updatedAt", "hallId") FROM stdin;
    public       postgres    false    219   &X      �          0    754848    hallPassages 
   TABLE DATA               i   COPY public."hallPassages" (id, "afterRow", "afterSeat", "createdAt", "updatedAt", "hallId") FROM stdin;
    public       postgres    false    215   �X      �          0    756814    halls 
   TABLE DATA               x   COPY public.halls (id, address, name, "numberRows", "numberSeatsInRow", "createdAt", "updatedAt", "userId") FROM stdin;
    public       postgres    false    229   �X      �          0    220922    links 
   TABLE DATA               h   COPY public.links (id, "isActivated", "activationLink", "createdAt", "updatedAt", "userId") FROM stdin;
    public       postgres    false    205   �X      �          0    220931    orders 
   TABLE DATA               H   COPY public.orders (id, "createdAt", "updatedAt", "userId") FROM stdin;
    public       postgres    false    207   [      �          0    756732    tickets 
   TABLE DATA               �   COPY public.tickets (id, number, "row", seat, status, "createdAt", "updatedAt", "orderId", "entranceOptionPriceId", "hallOptionPriceId", "eventId") FROM stdin;
    public       postgres    false    225   �_      �          0    220906    tokens 
   TABLE DATA               X   COPY public.tokens (id, "refreshToken", "createdAt", "updatedAt", "userId") FROM stdin;
    public       postgres    false    201   Qa      �          0    220967    types 
   TABLE DATA               C   COPY public.types (id, name, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    213   na      �          0    220914    updatePasswords 
   TABLE DATA               Y   COPY public."updatePasswords" (id, code, "createdAt", "updatedAt", "userId") FROM stdin;
    public       postgres    false    203   %b      �          0    73873    users 
   TABLE DATA               m   COPY public.users (id, email, password, name, surname, birthday, role, "createdAt", "updatedAt") FROM stdin;
    public       postgres    false    199   �b      �           0    0    ageRatings_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."ageRatings_id_seq"', 5, true);
            public       postgres    false    210            �           0    0    controllers_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.controllers_id_seq', 34, true);
            public       postgres    false    230            �           0    0    entranceOptionPrices_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."entranceOptionPrices_id_seq"', 1, true);
            public       postgres    false    216            �           0    0    entranceOptions_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."entranceOptions_id_seq"', 74, true);
            public       postgres    false    222            �           0    0    entrances_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.entrances_id_seq', 70, true);
            public       postgres    false    226            �           0    0    events_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.events_id_seq', 11, true);
            public       postgres    false    208            �           0    0    hallOptionPrices_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."hallOptionPrices_id_seq"', 2, true);
            public       postgres    false    220            �           0    0    hallOptions_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."hallOptions_id_seq"', 2, true);
            public       postgres    false    218            �           0    0    hallPassages_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."hallPassages_id_seq"', 1, false);
            public       postgres    false    214            �           0    0    halls_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.halls_id_seq', 1, false);
            public       postgres    false    228            �           0    0    links_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.links_id_seq', 14, true);
            public       postgres    false    204            �           0    0    orders_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.orders_id_seq', 329, true);
            public       postgres    false    206            �           0    0    tickets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tickets_id_seq', 37, true);
            public       postgres    false    224            �           0    0    tokens_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tokens_id_seq', 76, true);
            public       postgres    false    200                        0    0    types_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.types_id_seq', 14, true);
            public       postgres    false    212                       0    0    updatePasswords_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."updatePasswords_id_seq"', 5, true);
            public       postgres    false    202                       0    0    users_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.users_id_seq', 151, true);
            public       postgres    false    198                       2606    220964    ageRatings ageRatings_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public."ageRatings"
    ADD CONSTRAINT "ageRatings_pkey" PRIMARY KEY (id);
 H   ALTER TABLE ONLY public."ageRatings" DROP CONSTRAINT "ageRatings_pkey";
       public         postgres    false    211            -           2606    756907    controllers controllers_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.controllers
    ADD CONSTRAINT controllers_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.controllers DROP CONSTRAINT controllers_pkey;
       public         postgres    false    231                       2606    756672 .   entranceOptionPrices entranceOptionPrices_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public."entranceOptionPrices"
    ADD CONSTRAINT "entranceOptionPrices_pkey" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public."entranceOptionPrices" DROP CONSTRAINT "entranceOptionPrices_pkey";
       public         postgres    false    217            %           2606    756721 $   entranceOptions entranceOptions_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."entranceOptions"
    ADD CONSTRAINT "entranceOptions_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."entranceOptions" DROP CONSTRAINT "entranceOptions_pkey";
       public         postgres    false    223            )           2606    756806    entrances entrances_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.entrances
    ADD CONSTRAINT entrances_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.entrances DROP CONSTRAINT entrances_pkey;
       public         postgres    false    227                       2606    220956    events events_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.events DROP CONSTRAINT events_pkey;
       public         postgres    false    209            #           2606    756703 &   hallOptionPrices hallOptionPrices_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."hallOptionPrices"
    ADD CONSTRAINT "hallOptionPrices_pkey" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public."hallOptionPrices" DROP CONSTRAINT "hallOptionPrices_pkey";
       public         postgres    false    221            !           2606    756690    hallOptions hallOptions_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."hallOptions"
    ADD CONSTRAINT "hallOptions_pkey" PRIMARY KEY (id);
 J   ALTER TABLE ONLY public."hallOptions" DROP CONSTRAINT "hallOptions_pkey";
       public         postgres    false    219                       2606    754853    hallPassages hallPassages_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."hallPassages"
    ADD CONSTRAINT "hallPassages_pkey" PRIMARY KEY (id);
 L   ALTER TABLE ONLY public."hallPassages" DROP CONSTRAINT "hallPassages_pkey";
       public         postgres    false    215            +           2606    756822    halls halls_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.halls
    ADD CONSTRAINT halls_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.halls DROP CONSTRAINT halls_pkey;
       public         postgres    false    229                       2606    220928    links links_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.links
    ADD CONSTRAINT links_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.links DROP CONSTRAINT links_pkey;
       public         postgres    false    205                       2606    220936    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public         postgres    false    207            '           2606    756738    tickets tickets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_pkey;
       public         postgres    false    225                       2606    220911    tokens tokens_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tokens DROP CONSTRAINT tokens_pkey;
       public         postgres    false    201                       2606    220972    types types_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.types DROP CONSTRAINT types_pkey;
       public         postgres    false    213                       2606    220919 $   updatePasswords updatePasswords_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public."updatePasswords"
    ADD CONSTRAINT "updatePasswords_pkey" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."updatePasswords" DROP CONSTRAINT "updatePasswords_pkey";
       public         postgres    false    203            �
           2606    753431    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public         postgres    false    199            �
           2606    753677    users users_email_key1 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key1 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key1;
       public         postgres    false    199            �
           2606    754313    users users_email_key10 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key10 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key10;
       public         postgres    false    199            �
           2606    753953    users users_email_key100 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key100 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key100;
       public         postgres    false    199                       2606    754115    users users_email_key101 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key101 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key101;
       public         postgres    false    199                       2606    753955    users users_email_key102 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key102 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key102;
       public         postgres    false    199                       2606    753381    users users_email_key103 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key103 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key103;
       public         postgres    false    199                       2606    754541    users users_email_key104 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key104 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key104;
       public         postgres    false    199            	           2606    754465    users users_email_key105 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key105 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key105;
       public         postgres    false    199                       2606    753807    users users_email_key106 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key106 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key106;
       public         postgres    false    199                       2606    753935    users users_email_key107 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key107 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key107;
       public         postgres    false    199                       2606    753467    users users_email_key108 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key108 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key108;
       public         postgres    false    199                       2606    754403    users users_email_key109 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key109 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key109;
       public         postgres    false    199                       2606    753891    users users_email_key11 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key11 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key11;
       public         postgres    false    199                       2606    754391    users users_email_key110 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key110 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key110;
       public         postgres    false    199                       2606    754337    users users_email_key111 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key111 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key111;
       public         postgres    false    199                       2606    754525    users users_email_key112 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key112 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key112;
       public         postgres    false    199                       2606    753887    users users_email_key113 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key113 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key113;
       public         postgres    false    199                       2606    754409    users users_email_key114 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key114 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key114;
       public         postgres    false    199                       2606    753161    users users_email_key115 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key115 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key115;
       public         postgres    false    199            !           2606    754455    users users_email_key116 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key116 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key116;
       public         postgres    false    199            #           2606    754167    users users_email_key117 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key117 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key117;
       public         postgres    false    199            %           2606    753191    users users_email_key118 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key118 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key118;
       public         postgres    false    199            '           2606    754243    users users_email_key119 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key119 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key119;
       public         postgres    false    199            )           2606    754153    users users_email_key12 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key12 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key12;
       public         postgres    false    199            +           2606    754641    users users_email_key120 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key120 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key120;
       public         postgres    false    199            -           2606    753971    users users_email_key121 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key121 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key121;
       public         postgres    false    199            /           2606    753345    users users_email_key122 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key122 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key122;
       public         postgres    false    199            1           2606    754299    users users_email_key123 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key123 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key123;
       public         postgres    false    199            3           2606    753797    users users_email_key124 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key124 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key124;
       public         postgres    false    199            5           2606    753197    users users_email_key125 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key125 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key125;
       public         postgres    false    199            7           2606    754155    users users_email_key126 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key126 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key126;
       public         postgres    false    199            9           2606    753769    users users_email_key127 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key127 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key127;
       public         postgres    false    199            ;           2606    754219    users users_email_key128 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key128 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key128;
       public         postgres    false    199            =           2606    753591    users users_email_key129 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key129 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key129;
       public         postgres    false    199            ?           2606    754151    users users_email_key13 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key13 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key13;
       public         postgres    false    199            A           2606    753949    users users_email_key130 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key130 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key130;
       public         postgres    false    199            C           2606    753157    users users_email_key131 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key131 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key131;
       public         postgres    false    199            E           2606    754539    users users_email_key132 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key132 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key132;
       public         postgres    false    199            G           2606    753721    users users_email_key133 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key133 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key133;
       public         postgres    false    199            I           2606    753433    users users_email_key134 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key134 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key134;
       public         postgres    false    199            K           2606    754551    users users_email_key135 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key135 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key135;
       public         postgres    false    199            M           2606    754423    users users_email_key136 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key136 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key136;
       public         postgres    false    199            O           2606    754435    users users_email_key137 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key137 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key137;
       public         postgres    false    199            Q           2606    753563    users users_email_key138 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key138 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key138;
       public         postgres    false    199            S           2606    754335    users users_email_key139 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key139 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key139;
       public         postgres    false    199            U           2606    753633    users users_email_key14 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key14 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key14;
       public         postgres    false    199            W           2606    753605    users users_email_key140 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key140 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key140;
       public         postgres    false    199            Y           2606    753367    users users_email_key141 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key141 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key141;
       public         postgres    false    199            [           2606    754073    users users_email_key142 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key142 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key142;
       public         postgres    false    199            ]           2606    753295    users users_email_key143 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key143 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key143;
       public         postgres    false    199            _           2606    753215    users users_email_key144 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key144 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key144;
       public         postgres    false    199            a           2606    754085    users users_email_key145 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key145 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key145;
       public         postgres    false    199            c           2606    753225    users users_email_key146 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key146 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key146;
       public         postgres    false    199            e           2606    754097    users users_email_key147 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key147 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key147;
       public         postgres    false    199            g           2606    753333    users users_email_key148 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key148 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key148;
       public         postgres    false    199            i           2606    753857    users users_email_key149 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key149 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key149;
       public         postgres    false    199            k           2606    754495    users users_email_key15 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key15 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key15;
       public         postgres    false    199            m           2606    754271    users users_email_key150 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key150 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key150;
       public         postgres    false    199            o           2606    753579    users users_email_key151 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key151 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key151;
       public         postgres    false    199            q           2606    753413    users users_email_key152 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key152 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key152;
       public         postgres    false    199            s           2606    753243    users users_email_key153 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key153 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key153;
       public         postgres    false    199            u           2606    754309    users users_email_key154 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key154 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key154;
       public         postgres    false    199            w           2606    753741    users users_email_key155 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key155 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key155;
       public         postgres    false    199            y           2606    753201    users users_email_key156 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key156 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key156;
       public         postgres    false    199            {           2606    753977    users users_email_key157 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key157 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key157;
       public         postgres    false    199            }           2606    753859    users users_email_key158 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key158 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key158;
       public         postgres    false    199                       2606    753737    users users_email_key159 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key159 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key159;
       public         postgres    false    199            �           2606    753317    users users_email_key16 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key16 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key16;
       public         postgres    false    199            �           2606    753705    users users_email_key160 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key160 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key160;
       public         postgres    false    199            �           2606    753871    users users_email_key161 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key161 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key161;
       public         postgres    false    199            �           2606    754005    users users_email_key162 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key162 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key162;
       public         postgres    false    199            �           2606    753713    users users_email_key163 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key163 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key163;
       public         postgres    false    199            �           2606    754485    users users_email_key164 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key164 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key164;
       public         postgres    false    199            �           2606    753249    users users_email_key165 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key165 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key165;
       public         postgres    false    199            �           2606    753927    users users_email_key166 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key166 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key166;
       public         postgres    false    199            �           2606    754343    users users_email_key167 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key167 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key167;
       public         postgres    false    199            �           2606    754421    users users_email_key168 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key168 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key168;
       public         postgres    false    199            �           2606    753567    users users_email_key169 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key169 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key169;
       public         postgres    false    199            �           2606    754447    users users_email_key17 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key17 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key17;
       public         postgres    false    199            �           2606    754089    users users_email_key170 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key170 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key170;
       public         postgres    false    199            �           2606    753483    users users_email_key171 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key171 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key171;
       public         postgres    false    199            �           2606    753899    users users_email_key172 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key172 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key172;
       public         postgres    false    199            �           2606    754431    users users_email_key173 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key173 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key173;
       public         postgres    false    199            �           2606    753405    users users_email_key174 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key174 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key174;
       public         postgres    false    199            �           2606    753917    users users_email_key175 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key175 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key175;
       public         postgres    false    199            �           2606    753821    users users_email_key176 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key176 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key176;
       public         postgres    false    199            �           2606    753685    users users_email_key177 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key177 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key177;
       public         postgres    false    199            �           2606    754625    users users_email_key178 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key178 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key178;
       public         postgres    false    199            �           2606    754149    users users_email_key179 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key179 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key179;
       public         postgres    false    199            �           2606    754111    users users_email_key18 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key18 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key18;
       public         postgres    false    199            �           2606    753925    users users_email_key180 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key180 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key180;
       public         postgres    false    199            �           2606    753985    users users_email_key181 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key181 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key181;
       public         postgres    false    199            �           2606    753195    users users_email_key182 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key182 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key182;
       public         postgres    false    199            �           2606    754103    users users_email_key183 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key183 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key183;
       public         postgres    false    199            �           2606    753875    users users_email_key184 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key184 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key184;
       public         postgres    false    199            �           2606    753747    users users_email_key185 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key185 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key185;
       public         postgres    false    199            �           2606    753869    users users_email_key186 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key186 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key186;
       public         postgres    false    199            �           2606    754119    users users_email_key187 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key187 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key187;
       public         postgres    false    199            �           2606    754425    users users_email_key188 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key188 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key188;
       public         postgres    false    199            �           2606    753933    users users_email_key189 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key189 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key189;
       public         postgres    false    199            �           2606    753989    users users_email_key19 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key19 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key19;
       public         postgres    false    199            �           2606    753657    users users_email_key190 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key190 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key190;
       public         postgres    false    199            �           2606    753545    users users_email_key191 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key191 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key191;
       public         postgres    false    199            �           2606    753979    users users_email_key192 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key192 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key192;
       public         postgres    false    199            �           2606    754515    users users_email_key193 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key193 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key193;
       public         postgres    false    199            �           2606    754385    users users_email_key194 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key194 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key194;
       public         postgres    false    199            �           2606    753931    users users_email_key195 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key195 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key195;
       public         postgres    false    199            �           2606    753151    users users_email_key196 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key196 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key196;
       public         postgres    false    199            �           2606    754611    users users_email_key197 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key197 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key197;
       public         postgres    false    199            �           2606    754067    users users_email_key198 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key198 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key198;
       public         postgres    false    199            �           2606    754657    users users_email_key199 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key199 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key199;
       public         postgres    false    199            �           2606    753907    users users_email_key2 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key2 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key2;
       public         postgres    false    199            �           2606    753489    users users_email_key20 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key20 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key20;
       public         postgres    false    199            �           2606    753987    users users_email_key200 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key200 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key200;
       public         postgres    false    199            �           2606    754327    users users_email_key201 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key201 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key201;
       public         postgres    false    199            �           2606    754095    users users_email_key202 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key202 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key202;
       public         postgres    false    199            �           2606    753329    users users_email_key203 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key203 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key203;
       public         postgres    false    199            �           2606    753867    users users_email_key204 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key204 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key204;
       public         postgres    false    199            �           2606    753311    users users_email_key205 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key205 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key205;
       public         postgres    false    199            �           2606    754389    users users_email_key206 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key206 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key206;
       public         postgres    false    199            �           2606    754363    users users_email_key207 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key207 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key207;
       public         postgres    false    199            �           2606    753171    users users_email_key208 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key208 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key208;
       public         postgres    false    199            �           2606    754547    users users_email_key209 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key209 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key209;
       public         postgres    false    199            �           2606    753435    users users_email_key21 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key21 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key21;
       public         postgres    false    199            �           2606    754615    users users_email_key210 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key210 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key210;
       public         postgres    false    199            �           2606    753611    users users_email_key211 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key211 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key211;
       public         postgres    false    199            �           2606    754341    users users_email_key212 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key212 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key212;
       public         postgres    false    199            �           2606    754291    users users_email_key213 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key213 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key213;
       public         postgres    false    199            �           2606    753623    users users_email_key214 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key214 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key214;
       public         postgres    false    199            �           2606    754241    users users_email_key215 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key215 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key215;
       public         postgres    false    199            �           2606    754531    users users_email_key216 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key216 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key216;
       public         postgres    false    199                       2606    754083    users users_email_key217 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key217 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key217;
       public         postgres    false    199                       2606    754293    users users_email_key218 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key218 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key218;
       public         postgres    false    199                       2606    753449    users users_email_key219 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key219 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key219;
       public         postgres    false    199                       2606    753565    users users_email_key22 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key22 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key22;
       public         postgres    false    199            	           2606    754049    users users_email_key220 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key220 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key220;
       public         postgres    false    199                       2606    753573    users users_email_key221 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key221 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key221;
       public         postgres    false    199                       2606    754405    users users_email_key222 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key222 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key222;
       public         postgres    false    199                       2606    753815    users users_email_key223 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key223 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key223;
       public         postgres    false    199                       2606    754575    users users_email_key224 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key224 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key224;
       public         postgres    false    199                       2606    754053    users users_email_key225 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key225 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key225;
       public         postgres    false    199                       2606    754123    users users_email_key226 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key226 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key226;
       public         postgres    false    199                       2606    754417    users users_email_key227 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key227 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key227;
       public         postgres    false    199                       2606    754325    users users_email_key228 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key228 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key228;
       public         postgres    false    199                       2606    753607    users users_email_key229 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key229 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key229;
       public         postgres    false    199                       2606    754035    users users_email_key23 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key23 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key23;
       public         postgres    false    199                       2606    753781    users users_email_key230 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key230 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key230;
       public         postgres    false    199            !           2606    754041    users users_email_key231 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key231 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key231;
       public         postgres    false    199            #           2606    753365    users users_email_key232 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key232 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key232;
       public         postgres    false    199            %           2606    753581    users users_email_key233 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key233 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key233;
       public         postgres    false    199            '           2606    753905    users users_email_key234 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key234 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key234;
       public         postgres    false    199            )           2606    753141    users users_email_key235 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key235 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key235;
       public         postgres    false    199            +           2606    753861    users users_email_key236 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key236 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key236;
       public         postgres    false    199            -           2606    754565    users users_email_key237 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key237 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key237;
       public         postgres    false    199            /           2606    753757    users users_email_key238 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key238 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key238;
       public         postgres    false    199            1           2606    754215    users users_email_key239 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key239 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key239;
       public         postgres    false    199            3           2606    753947    users users_email_key24 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key24 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key24;
       public         postgres    false    199            5           2606    753505    users users_email_key240 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key240 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key240;
       public         postgres    false    199            7           2606    753629    users users_email_key241 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key241 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key241;
       public         postgres    false    199            9           2606    754377    users users_email_key242 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key242 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key242;
       public         postgres    false    199            ;           2606    753893    users users_email_key243 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key243 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key243;
       public         postgres    false    199            =           2606    754101    users users_email_key244 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key244 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key244;
       public         postgres    false    199            ?           2606    754239    users users_email_key245 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key245 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key245;
       public         postgres    false    199            A           2606    754037    users users_email_key246 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key246 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key246;
       public         postgres    false    199            C           2606    753551    users users_email_key247 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key247 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key247;
       public         postgres    false    199            E           2606    753651    users users_email_key248 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key248 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key248;
       public         postgres    false    199            G           2606    753637    users users_email_key249 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key249 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key249;
       public         postgres    false    199            I           2606    753185    users users_email_key25 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key25 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key25;
       public         postgres    false    199            K           2606    754161    users users_email_key250 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key250 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key250;
       public         postgres    false    199            M           2606    753783    users users_email_key251 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key251 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key251;
       public         postgres    false    199            O           2606    753325    users users_email_key252 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key252 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key252;
       public         postgres    false    199            Q           2606    754029    users users_email_key253 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key253 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key253;
       public         postgres    false    199            S           2606    753257    users users_email_key254 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key254 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key254;
       public         postgres    false    199            U           2606    753527    users users_email_key255 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key255 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key255;
       public         postgres    false    199            W           2606    754469    users users_email_key256 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key256 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key256;
       public         postgres    false    199            Y           2606    754147    users users_email_key257 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key257 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key257;
       public         postgres    false    199            [           2606    753733    users users_email_key258 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key258 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key258;
       public         postgres    false    199            ]           2606    754627    users users_email_key259 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key259 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key259;
       public         postgres    false    199            _           2606    753571    users users_email_key26 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key26 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key26;
       public         postgres    false    199            a           2606    753427    users users_email_key260 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key260 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key260;
       public         postgres    false    199            c           2606    754445    users users_email_key261 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key261 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key261;
       public         postgres    false    199            e           2606    753885    users users_email_key262 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key262 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key262;
       public         postgres    false    199            g           2606    753775    users users_email_key263 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key263 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key263;
       public         postgres    false    199            i           2606    753787    users users_email_key264 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key264 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key264;
       public         postgres    false    199            k           2606    754201    users users_email_key265 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key265 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key265;
       public         postgres    false    199            m           2606    753945    users users_email_key266 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key266 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key266;
       public         postgres    false    199            o           2606    754351    users users_email_key267 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key267 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key267;
       public         postgres    false    199            q           2606    753305    users users_email_key268 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key268 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key268;
       public         postgres    false    199            s           2606    754399    users users_email_key269 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key269 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key269;
       public         postgres    false    199            u           2606    754497    users users_email_key27 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key27 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key27;
       public         postgres    false    199            w           2606    753409    users users_email_key270 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key270 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key270;
       public         postgres    false    199            y           2606    754109    users users_email_key271 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key271 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key271;
       public         postgres    false    199            {           2606    753699    users users_email_key272 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key272 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key272;
       public         postgres    false    199            }           2606    753407    users users_email_key273 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key273 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key273;
       public         postgres    false    199                       2606    754623    users users_email_key274 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key274 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key274;
       public         postgres    false    199            �           2606    754025    users users_email_key275 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key275 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key275;
       public         postgres    false    199            �           2606    753709    users users_email_key276 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key276 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key276;
       public         postgres    false    199            �           2606    753437    users users_email_key277 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key277 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key277;
       public         postgres    false    199            �           2606    754081    users users_email_key278 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key278 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key278;
       public         postgres    false    199            �           2606    753829    users users_email_key279 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key279 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key279;
       public         postgres    false    199            �           2606    753695    users users_email_key28 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key28 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key28;
       public         postgres    false    199            �           2606    753209    users users_email_key280 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key280 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key280;
       public         postgres    false    199            �           2606    754443    users users_email_key281 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key281 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key281;
       public         postgres    false    199            �           2606    754529    users users_email_key282 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key282 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key282;
       public         postgres    false    199            �           2606    753961    users users_email_key283 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key283 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key283;
       public         postgres    false    199            �           2606    753621    users users_email_key284 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key284 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key284;
       public         postgres    false    199            �           2606    753585    users users_email_key285 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key285 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key285;
       public         postgres    false    199            �           2606    754519    users users_email_key286 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key286 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key286;
       public         postgres    false    199            �           2606    754401    users users_email_key287 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key287 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key287;
       public         postgres    false    199            �           2606    754433    users users_email_key288 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key288 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key288;
       public         postgres    false    199            �           2606    753127    users users_email_key289 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key289 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key289;
       public         postgres    false    199            �           2606    753865    users users_email_key29 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key29 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key29;
       public         postgres    false    199            �           2606    753635    users users_email_key290 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key290 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key290;
       public         postgres    false    199            �           2606    753123    users users_email_key291 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key291 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key291;
       public         postgres    false    199            �           2606    754163    users users_email_key292 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key292 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key292;
       public         postgres    false    199            �           2606    753129    users users_email_key293 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key293 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key293;
       public         postgres    false    199            �           2606    753247    users users_email_key294 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key294 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key294;
       public         postgres    false    199            �           2606    753513    users users_email_key295 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key295 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key295;
       public         postgres    false    199            �           2606    753315    users users_email_key296 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key296 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key296;
       public         postgres    false    199            �           2606    754023    users users_email_key297 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key297 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key297;
       public         postgres    false    199            �           2606    754281    users users_email_key298 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key298 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key298;
       public         postgres    false    199            �           2606    754189    users users_email_key299 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key299 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key299;
       public         postgres    false    199            �           2606    754411    users users_email_key3 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key3 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key3;
       public         postgres    false    199            �           2606    753703    users users_email_key30 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key30 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key30;
       public         postgres    false    199            �           2606    753993    users users_email_key300 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key300 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key300;
       public         postgres    false    199            �           2606    754237    users users_email_key301 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key301 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key301;
       public         postgres    false    199            �           2606    753617    users users_email_key302 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key302 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key302;
       public         postgres    false    199            �           2606    753227    users users_email_key303 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key303 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key303;
       public         postgres    false    199            �           2606    753745    users users_email_key304 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key304 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key304;
       public         postgres    false    199            �           2606    753421    users users_email_key305 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key305 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key305;
       public         postgres    false    199            �           2606    753507    users users_email_key306 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key306 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key306;
       public         postgres    false    199            �           2606    753937    users users_email_key307 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key307 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key307;
       public         postgres    false    199            �           2606    754471    users users_email_key308 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key308 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key308;
       public         postgres    false    199            �           2606    753443    users users_email_key309 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key309 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key309;
       public         postgres    false    199            �           2606    753767    users users_email_key31 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key31 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key31;
       public         postgres    false    199            �           2606    754449    users users_email_key310 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key310 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key310;
       public         postgres    false    199            �           2606    754283    users users_email_key311 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key311 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key311;
       public         postgres    false    199            �           2606    754087    users users_email_key312 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key312 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key312;
       public         postgres    false    199            �           2606    753485    users users_email_key313 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key313 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key313;
       public         postgres    false    199            �           2606    753843    users users_email_key314 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key314 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key314;
       public         postgres    false    199            �           2606    753991    users users_email_key315 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key315 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key315;
       public         postgres    false    199            �           2606    754665    users users_email_key316 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key316 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key316;
       public         postgres    false    199            �           2606    754629    users users_email_key317 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key317 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key317;
       public         postgres    false    199            �           2606    754021    users users_email_key318 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key318 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key318;
       public         postgres    false    199            �           2606    753509    users users_email_key319 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key319 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key319;
       public         postgres    false    199            �           2606    753785    users users_email_key32 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key32 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key32;
       public         postgres    false    199            �           2606    753569    users users_email_key320 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key320 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key320;
       public         postgres    false    199            �           2606    754055    users users_email_key321 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key321 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key321;
       public         postgres    false    199            �           2606    754169    users users_email_key322 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key322 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key322;
       public         postgres    false    199            �           2606    754079    users users_email_key323 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key323 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key323;
       public         postgres    false    199            �           2606    754207    users users_email_key324 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key324 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key324;
       public         postgres    false    199            �           2606    754191    users users_email_key325 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key325 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key325;
       public         postgres    false    199            �           2606    753663    users users_email_key326 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key326 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key326;
       public         postgres    false    199            �           2606    754463    users users_email_key327 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key327 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key327;
       public         postgres    false    199            �           2606    754475    users users_email_key328 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key328 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key328;
       public         postgres    false    199            �           2606    753519    users users_email_key329 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key329 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key329;
       public         postgres    false    199            �           2606    753589    users users_email_key33 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key33 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key33;
       public         postgres    false    199            �           2606    753503    users users_email_key330 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key330 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key330;
       public         postgres    false    199            �           2606    753627    users users_email_key331 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key331 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key331;
       public         postgres    false    199                       2606    753669    users users_email_key332 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key332 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key332;
       public         postgres    false    199                       2606    753167    users users_email_key333 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key333 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key333;
       public         postgres    false    199                       2606    754353    users users_email_key334 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key334 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key334;
       public         postgres    false    199                       2606    753471    users users_email_key335 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key335 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key335;
       public         postgres    false    199            	           2606    754633    users users_email_key336 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key336 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key336;
       public         postgres    false    199                       2606    754451    users users_email_key337 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key337 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key337;
       public         postgres    false    199                       2606    753765    users users_email_key338 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key338 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key338;
       public         postgres    false    199                       2606    754419    users users_email_key339 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key339 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key339;
       public         postgres    false    199                       2606    753237    users users_email_key34 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key34 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key34;
       public         postgres    false    199                       2606    753533    users users_email_key340 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key340 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key340;
       public         postgres    false    199                       2606    753213    users users_email_key341 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key341 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key341;
       public         postgres    false    199                       2606    754639    users users_email_key342 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key342 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key342;
       public         postgres    false    199                       2606    753499    users users_email_key343 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key343 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key343;
       public         postgres    false    199                       2606    753173    users users_email_key344 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key344 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key344;
       public         postgres    false    199                       2606    754253    users users_email_key345 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key345 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key345;
       public         postgres    false    199                       2606    753253    users users_email_key346 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key346 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key346;
       public         postgres    false    199            !           2606    754121    users users_email_key347 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key347 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key347;
       public         postgres    false    199            #           2606    753903    users users_email_key348 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key348 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key348;
       public         postgres    false    199            %           2606    753143    users users_email_key349 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key349 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key349;
       public         postgres    false    199            '           2606    753683    users users_email_key35 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key35 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key35;
       public         postgres    false    199            )           2606    754501    users users_email_key350 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key350 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key350;
       public         postgres    false    199            +           2606    754229    users users_email_key351 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key351 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key351;
       public         postgres    false    199            -           2606    754493    users users_email_key352 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key352 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key352;
       public         postgres    false    199            /           2606    753667    users users_email_key353 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key353 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key353;
       public         postgres    false    199            1           2606    753773    users users_email_key354 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key354 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key354;
       public         postgres    false    199            3           2606    753457    users users_email_key355 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key355 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key355;
       public         postgres    false    199            5           2606    753597    users users_email_key356 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key356 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key356;
       public         postgres    false    199            7           2606    753199    users users_email_key357 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key357 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key357;
       public         postgres    false    199            9           2606    753759    users users_email_key358 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key358 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key358;
       public         postgres    false    199            ;           2606    753187    users users_email_key359 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key359 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key359;
       public         postgres    false    199            =           2606    754555    users users_email_key36 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key36 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key36;
       public         postgres    false    199            ?           2606    753959    users users_email_key360 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key360 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key360;
       public         postgres    false    199            A           2606    754295    users users_email_key361 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key361 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key361;
       public         postgres    false    199            C           2606    753817    users users_email_key362 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key362 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key362;
       public         postgres    false    199            E           2606    753307    users users_email_key363 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key363 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key363;
       public         postgres    false    199            G           2606    754511    users users_email_key364 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key364 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key364;
       public         postgres    false    199            I           2606    753615    users users_email_key365 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key365 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key365;
       public         postgres    false    199            K           2606    753791    users users_email_key366 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key366 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key366;
       public         postgres    false    199            M           2606    753553    users users_email_key367 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key367 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key367;
       public         postgres    false    199            O           2606    754557    users users_email_key368 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key368 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key368;
       public         postgres    false    199            Q           2606    753477    users users_email_key369 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key369 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key369;
       public         postgres    false    199            S           2606    754315    users users_email_key37 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key37 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key37;
       public         postgres    false    199            U           2606    753349    users users_email_key370 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key370 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key370;
       public         postgres    false    199            W           2606    754467    users users_email_key371 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key371 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key371;
       public         postgres    false    199            Y           2606    753531    users users_email_key372 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key372 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key372;
       public         postgres    false    199            [           2606    753511    users users_email_key373 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key373 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key373;
       public         postgres    false    199            ]           2606    754637    users users_email_key374 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key374 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key374;
       public         postgres    false    199            _           2606    753379    users users_email_key375 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key375 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key375;
       public         postgres    false    199            a           2606    753559    users users_email_key376 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key376 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key376;
       public         postgres    false    199            c           2606    753799    users users_email_key377 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key377 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key377;
       public         postgres    false    199            e           2606    753963    users users_email_key378 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key378 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key378;
       public         postgres    false    199            g           2606    754043    users users_email_key379 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key379 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key379;
       public         postgres    false    199            i           2606    754387    users users_email_key38 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key38 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key38;
       public         postgres    false    199            k           2606    753479    users users_email_key380 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key380 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key380;
       public         postgres    false    199            m           2606    753353    users users_email_key381 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key381 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key381;
       public         postgres    false    199            o           2606    753547    users users_email_key382 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key382 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key382;
       public         postgres    false    199            q           2606    753153    users users_email_key383 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key383 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key383;
       public         postgres    false    199            s           2606    754357    users users_email_key384 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key384 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key384;
       public         postgres    false    199            u           2606    753133    users users_email_key385 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key385 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key385;
       public         postgres    false    199            w           2606    754543    users users_email_key386 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key386 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key386;
       public         postgres    false    199            y           2606    753803    users users_email_key387 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key387 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key387;
       public         postgres    false    199            {           2606    753327    users users_email_key388 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key388 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key388;
       public         postgres    false    199            }           2606    753313    users users_email_key389 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key389 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key389;
       public         postgres    false    199                       2606    754559    users users_email_key39 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key39 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key39;
       public         postgres    false    199            �           2606    754297    users users_email_key390 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key390 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key390;
       public         postgres    false    199            �           2606    754011    users users_email_key391 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key391 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key391;
       public         postgres    false    199            �           2606    753827    users users_email_key392 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key392 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key392;
       public         postgres    false    199            �           2606    754585    users users_email_key393 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key393 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key393;
       public         postgres    false    199            �           2606    754383    users users_email_key394 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key394 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key394;
       public         postgres    false    199            �           2606    754317    users users_email_key395 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key395 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key395;
       public         postgres    false    199            �           2606    754077    users users_email_key396 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key396 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key396;
       public         postgres    false    199            �           2606    753395    users users_email_key397 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key397 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key397;
       public         postgres    false    199            �           2606    753895    users users_email_key398 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key398 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key398;
       public         postgres    false    199            �           2606    753731    users users_email_key399 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key399 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key399;
       public         postgres    false    199            �           2606    753263    users users_email_key4 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key4 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key4;
       public         postgres    false    199            �           2606    753853    users users_email_key40 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key40 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key40;
       public         postgres    false    199            �           2606    754009    users users_email_key400 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key400 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key400;
       public         postgres    false    199            �           2606    754211    users users_email_key401 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key401 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key401;
       public         postgres    false    199            �           2606    753301    users users_email_key402 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key402 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key402;
       public         postgres    false    199            �           2606    754131    users users_email_key403 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key403 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key403;
       public         postgres    false    199            �           2606    753601    users users_email_key404 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key404 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key404;
       public         postgres    false    199            �           2606    754257    users users_email_key405 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key405 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key405;
       public         postgres    false    199            �           2606    754065    users users_email_key406 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key406 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key406;
       public         postgres    false    199            �           2606    754245    users users_email_key407 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key407 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key407;
       public         postgres    false    199            �           2606    753277    users users_email_key408 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key408 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key408;
       public         postgres    false    199            �           2606    753163    users users_email_key409 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key409 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key409;
       public         postgres    false    199            �           2606    754619    users users_email_key41 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key41 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key41;
       public         postgres    false    199            �           2606    753481    users users_email_key410 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key410 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key410;
       public         postgres    false    199            �           2606    753529    users users_email_key411 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key411 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key411;
       public         postgres    false    199            �           2606    754521    users users_email_key412 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key412 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key412;
       public         postgres    false    199            �           2606    753645    users users_email_key413 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key413 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key413;
       public         postgres    false    199            �           2606    754059    users users_email_key414 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key414 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key414;
       public         postgres    false    199            �           2606    753375    users users_email_key415 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key415 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key415;
       public         postgres    false    199            �           2606    754157    users users_email_key416 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key416 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key416;
       public         postgres    false    199            �           2606    753425    users users_email_key417 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key417 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key417;
       public         postgres    false    199            �           2606    753965    users users_email_key418 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key418 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key418;
       public         postgres    false    199            �           2606    753749    users users_email_key419 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key419 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key419;
       public         postgres    false    199            �           2606    753373    users users_email_key42 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key42 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key42;
       public         postgres    false    199            �           2606    754185    users users_email_key420 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key420 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key420;
       public         postgres    false    199            �           2606    753729    users users_email_key421 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key421 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key421;
       public         postgres    false    199            �           2606    753609    users users_email_key422 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key422 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key422;
       public         postgres    false    199            �           2606    754247    users users_email_key423 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key423 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key423;
       public         postgres    false    199            �           2606    754355    users users_email_key424 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key424 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key424;
       public         postgres    false    199            �           2606    754287    users users_email_key425 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key425 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key425;
       public         postgres    false    199            �           2606    754179    users users_email_key426 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key426 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key426;
       public         postgres    false    199            �           2606    754587    users users_email_key427 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key427 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key427;
       public         postgres    false    199            �           2606    754063    users users_email_key428 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key428 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key428;
       public         postgres    false    199            �           2606    753603    users users_email_key429 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key429 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key429;
       public         postgres    false    199            �           2606    753849    users users_email_key43 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key43 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key43;
       public         postgres    false    199            �           2606    753241    users users_email_key430 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key430 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key430;
       public         postgres    false    199            �           2606    753649    users users_email_key431 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key431 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key431;
       public         postgres    false    199            �           2606    753691    users users_email_key432 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key432 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key432;
       public         postgres    false    199            �           2606    754235    users users_email_key433 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key433 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key433;
       public         postgres    false    199            �           2606    753711    users users_email_key434 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key434 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key434;
       public         postgres    false    199            �           2606    753689    users users_email_key435 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key435 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key435;
       public         postgres    false    199            �           2606    753727    users users_email_key436 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key436 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key436;
       public         postgres    false    199            �           2606    753175    users users_email_key437 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key437 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key437;
       public         postgres    false    199            �           2606    753595    users users_email_key438 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key438 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key438;
       public         postgres    false    199            �           2606    754647    users users_email_key439 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key439 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key439;
       public         postgres    false    199            �           2606    753179    users users_email_key44 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key44 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key44;
       public         postgres    false    199            �           2606    754365    users users_email_key440 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key440 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key440;
       public         postgres    false    199            �           2606    753863    users users_email_key441 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key441 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key441;
       public         postgres    false    199            �           2606    754599    users users_email_key442 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key442 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key442;
       public         postgres    false    199            �           2606    754535    users users_email_key443 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key443 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key443;
       public         postgres    false    199            �           2606    754019    users users_email_key444 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key444 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key444;
       public         postgres    false    199            �           2606    754017    users users_email_key445 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key445 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key445;
       public         postgres    false    199            �           2606    754045    users users_email_key446 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key446 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key446;
       public         postgres    false    199            �           2606    753761    users users_email_key447 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key447 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key447;
       public         postgres    false    199                       2606    754429    users users_email_key448 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key448 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key448;
       public         postgres    false    199                       2606    754597    users users_email_key449 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key449 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key449;
       public         postgres    false    199                       2606    753613    users users_email_key45 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key45 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key45;
       public         postgres    false    199                       2606    754613    users users_email_key450 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key450 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key450;
       public         postgres    false    199            	           2606    753841    users users_email_key451 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key451 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key451;
       public         postgres    false    199                       2606    753137    users users_email_key452 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key452 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key452;
       public         postgres    false    199                       2606    754569    users users_email_key453 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key453 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key453;
       public         postgres    false    199                       2606    753145    users users_email_key454 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key454 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key454;
       public         postgres    false    199                       2606    754381    users users_email_key455 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key455 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key455;
       public         postgres    false    199                       2606    753913    users users_email_key456 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key456 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key456;
       public         postgres    false    199                       2606    753995    users users_email_key457 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key457 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key457;
       public         postgres    false    199                       2606    754227    users users_email_key458 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key458 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key458;
       public         postgres    false    199                       2606    754513    users users_email_key459 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key459 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key459;
       public         postgres    false    199                       2606    754545    users users_email_key46 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key46 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key46;
       public         postgres    false    199                       2606    753717    users users_email_key460 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key460 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key460;
       public         postgres    false    199                       2606    753393    users users_email_key461 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key461 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key461;
       public         postgres    false    199            !           2606    754027    users users_email_key462 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key462 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key462;
       public         postgres    false    199            #           2606    753439    users users_email_key463 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key463 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key463;
       public         postgres    false    199            %           2606    754177    users users_email_key464 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key464 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key464;
       public         postgres    false    199            '           2606    754039    users users_email_key465 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key465 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key465;
       public         postgres    false    199            )           2606    754047    users users_email_key466 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key466 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key466;
       public         postgres    false    199            +           2606    753441    users users_email_key467 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key467 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key467;
       public         postgres    false    199            -           2606    754225    users users_email_key468 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key468 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key468;
       public         postgres    false    199            /           2606    753845    users users_email_key469 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key469 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key469;
       public         postgres    false    199            1           2606    754505    users users_email_key47 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key47 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key47;
       public         postgres    false    199            3           2606    753811    users users_email_key470 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key470 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key470;
       public         postgres    false    199            5           2606    754329    users users_email_key471 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key471 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key471;
       public         postgres    false    199            7           2606    754133    users users_email_key472 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key472 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key472;
       public         postgres    false    199            9           2606    754661    users users_email_key473 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key473 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key473;
       public         postgres    false    199            ;           2606    753561    users users_email_key474 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key474 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key474;
       public         postgres    false    199            =           2606    753541    users users_email_key475 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key475 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key475;
       public         postgres    false    199            ?           2606    753661    users users_email_key476 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key476 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key476;
       public         postgres    false    199            A           2606    753919    users users_email_key477 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key477 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key477;
       public         postgres    false    199            C           2606    753659    users users_email_key478 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key478 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key478;
       public         postgres    false    199            E           2606    754165    users users_email_key479 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key479 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key479;
       public         postgres    false    199            G           2606    754183    users users_email_key48 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key48 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key48;
       public         postgres    false    199            I           2606    754453    users users_email_key480 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key480 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key480;
       public         postgres    false    199            K           2606    754233    users users_email_key481 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key481 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key481;
       public         postgres    false    199            M           2606    754573    users users_email_key482 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key482 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key482;
       public         postgres    false    199            O           2606    754503    users users_email_key483 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key483 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key483;
       public         postgres    false    199            Q           2606    753537    users users_email_key484 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key484 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key484;
       public         postgres    false    199            S           2606    754137    users users_email_key485 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key485 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key485;
       public         postgres    false    199            U           2606    754091    users users_email_key486 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key486 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key486;
       public         postgres    false    199            W           2606    754459    users users_email_key487 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key487 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key487;
       public         postgres    false    199            Y           2606    753261    users users_email_key488 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key488 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key488;
       public         postgres    false    199            [           2606    753641    users users_email_key489 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key489 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key489;
       public         postgres    false    199            ]           2606    753851    users users_email_key49 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key49 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key49;
       public         postgres    false    199            _           2606    754537    users users_email_key490 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key490 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key490;
       public         postgres    false    199            a           2606    753583    users users_email_key491 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key491 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key491;
       public         postgres    false    199            c           2606    754631    users users_email_key492 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key492 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key492;
       public         postgres    false    199            e           2606    754307    users users_email_key493 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key493 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key493;
       public         postgres    false    199            g           2606    753293    users users_email_key494 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key494 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key494;
       public         postgres    false    199            i           2606    753377    users users_email_key495 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key495 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key495;
       public         postgres    false    199            k           2606    753671    users users_email_key496 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key496 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key496;
       public         postgres    false    199            m           2606    753155    users users_email_key497 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key497 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key497;
       public         postgres    false    199            o           2606    753835    users users_email_key498 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key498 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key498;
       public         postgres    false    199            q           2606    753447    users users_email_key499 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key499 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key499;
       public         postgres    false    199            s           2606    754635    users users_email_key5 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key5 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key5;
       public         postgres    false    199            u           2606    753465    users users_email_key50 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key50 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key50;
       public         postgres    false    199            w           2606    753453    users users_email_key500 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key500 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key500;
       public         postgres    false    199            y           2606    754533    users users_email_key501 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key501 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key501;
       public         postgres    false    199            {           2606    754203    users users_email_key502 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key502 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key502;
       public         postgres    false    199            }           2606    754057    users users_email_key503 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key503 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key503;
       public         postgres    false    199                       2606    754143    users users_email_key504 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key504 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key504;
       public         postgres    false    199            �           2606    753291    users users_email_key505 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key505 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key505;
       public         postgres    false    199            �           2606    753391    users users_email_key506 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key506 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key506;
       public         postgres    false    199            �           2606    753813    users users_email_key507 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key507 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key507;
       public         postgres    false    199            �           2606    753543    users users_email_key508 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key508 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key508;
       public         postgres    false    199            �           2606    753259    users users_email_key509 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key509 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key509;
       public         postgres    false    199            �           2606    753339    users users_email_key51 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key51 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key51;
       public         postgres    false    199            �           2606    753831    users users_email_key510 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key510 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key510;
       public         postgres    false    199            �           2606    753269    users users_email_key511 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key511 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key511;
       public         postgres    false    199            �           2606    753423    users users_email_key512 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key512 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key512;
       public         postgres    false    199            �           2606    753593    users users_email_key513 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key513 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key513;
       public         postgres    false    199            �           2606    753331    users users_email_key514 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key514 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key514;
       public         postgres    false    199            �           2606    754509    users users_email_key515 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key515 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key515;
       public         postgres    false    199            �           2606    753231    users users_email_key516 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key516 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key516;
       public         postgres    false    199            �           2606    753205    users users_email_key517 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key517 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key517;
       public         postgres    false    199            �           2606    754375    users users_email_key518 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key518 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key518;
       public         postgres    false    199            �           2606    753535    users users_email_key519 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key519 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key519;
       public         postgres    false    199            �           2606    753941    users users_email_key52 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key52 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key52;
       public         postgres    false    199            �           2606    753771    users users_email_key520 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key520 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key520;
       public         postgres    false    199            �           2606    753557    users users_email_key521 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key521 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key521;
       public         postgres    false    199            �           2606    754369    users users_email_key522 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key522 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key522;
       public         postgres    false    199            �           2606    753719    users users_email_key523 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key523 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key523;
       public         postgres    false    199            �           2606    753337    users users_email_key524 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key524 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key524;
       public         postgres    false    199            �           2606    753877    users users_email_key525 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key525 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key525;
       public         postgres    false    199            �           2606    754397    users users_email_key526 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key526 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key526;
       public         postgres    false    199            �           2606    753909    users users_email_key527 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key527 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key527;
       public         postgres    false    199            �           2606    754589    users users_email_key528 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key528 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key528;
       public         postgres    false    199            �           2606    753847    users users_email_key529 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key529 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key529;
       public         postgres    false    199            �           2606    753473    users users_email_key53 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key53 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key53;
       public         postgres    false    199            �           2606    754483    users users_email_key530 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key530 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key530;
       public         postgres    false    199            �           2606    754277    users users_email_key531 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key531 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key531;
       public         postgres    false    199            �           2606    753429    users users_email_key532 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key532 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key532;
       public         postgres    false    199            �           2606    753881    users users_email_key533 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key533 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key533;
       public         postgres    false    199            �           2606    753723    users users_email_key534 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key534 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key534;
       public         postgres    false    199            �           2606    753401    users users_email_key535 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key535 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key535;
       public         postgres    false    199            �           2606    754171    users users_email_key536 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key536 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key536;
       public         postgres    false    199            �           2606    754653    users users_email_key537 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key537 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key537;
       public         postgres    false    199            �           2606    754601    users users_email_key538 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key538 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key538;
       public         postgres    false    199            �           2606    753451    users users_email_key539 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key539 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key539;
       public         postgres    false    199            �           2606    754199    users users_email_key54 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key54 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key54;
       public         postgres    false    199            �           2606    753743    users users_email_key540 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key540 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key540;
       public         postgres    false    199            �           2606    753999    users users_email_key541 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key541 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key541;
       public         postgres    false    199            �           2606    753455    users users_email_key542 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key542 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key542;
       public         postgres    false    199            �           2606    753675    users users_email_key543 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key543 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key543;
       public         postgres    false    199            �           2606    753901    users users_email_key544 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key544 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key544;
       public         postgres    false    199            �           2606    754127    users users_email_key545 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key545 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key545;
       public         postgres    false    199            �           2606    754439    users users_email_key546 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key546 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key546;
       public         postgres    false    199            �           2606    754609    users users_email_key547 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key547 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key547;
       public         postgres    false    199            �           2606    754093    users users_email_key548 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key548 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key548;
       public         postgres    false    199            �           2606    754491    users users_email_key549 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key549 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key549;
       public         postgres    false    199            �           2606    753131    users users_email_key55 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key55 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key55;
       public         postgres    false    199            �           2606    753687    users users_email_key550 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key550 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key550;
       public         postgres    false    199            �           2606    753357    users users_email_key551 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key551 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key551;
       public         postgres    false    199            �           2606    754031    users users_email_key552 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key552 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key552;
       public         postgres    false    199            �           2606    753303    users users_email_key553 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key553 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key553;
       public         postgres    false    199            �           2606    754319    users users_email_key554 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key554 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key554;
       public         postgres    false    199            �           2606    753289    users users_email_key555 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key555 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key555;
       public         postgres    false    199            �           2606    754279    users users_email_key556 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key556 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key556;
       public         postgres    false    199            �           2606    753355    users users_email_key557 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key557 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key557;
       public         postgres    false    199            �           2606    753125    users users_email_key558 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key558 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key558;
       public         postgres    false    199            �           2606    754013    users users_email_key559 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key559 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key559;
       public         postgres    false    199            �           2606    754395    users users_email_key56 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key56 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key56;
       public         postgres    false    199            �           2606    753939    users users_email_key560 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key560 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key560;
       public         postgres    false    199            �           2606    753389    users users_email_key561 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key561 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key561;
       public         postgres    false    199            �           2606    753693    users users_email_key562 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key562 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key562;
       public         postgres    false    199                       2606    753265    users users_email_key563 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key563 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key563;
       public         postgres    false    199                       2606    753135    users users_email_key564 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key564 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key564;
       public         postgres    false    199                       2606    754359    users users_email_key565 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key565 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key565;
       public         postgres    false    199                       2606    754269    users users_email_key566 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key566 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key566;
       public         postgres    false    199            	           2606    753399    users users_email_key567 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key567 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key567;
       public         postgres    false    199                       2606    753223    users users_email_key568 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key568 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key568;
       public         postgres    false    199                       2606    754571    users users_email_key569 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key569 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key569;
       public         postgres    false    199                       2606    754033    users users_email_key57 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key57 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key57;
       public         postgres    false    199                       2606    754285    users users_email_key570 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key570 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key570;
       public         postgres    false    199                       2606    753839    users users_email_key571 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key571 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key571;
       public         postgres    false    199                       2606    754649    users users_email_key572 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key572 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key572;
       public         postgres    false    199                       2606    753639    users users_email_key573 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key573 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key573;
       public         postgres    false    199                       2606    754663    users users_email_key574 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key574 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key574;
       public         postgres    false    199                       2606    754595    users users_email_key575 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key575 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key575;
       public         postgres    false    199                       2606    753351    users users_email_key576 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key576 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key576;
       public         postgres    false    199                       2606    754141    users users_email_key577 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key577 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key577;
       public         postgres    false    199            !           2606    753883    users users_email_key578 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key578 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key578;
       public         postgres    false    199            #           2606    753283    users users_email_key579 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key579 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key579;
       public         postgres    false    199            %           2606    754593    users users_email_key58 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key58 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key58;
       public         postgres    false    199            '           2606    754301    users users_email_key580 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key580 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key580;
       public         postgres    false    199            )           2606    753777    users users_email_key581 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key581 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key581;
       public         postgres    false    199            +           2606    754187    users users_email_key582 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key582 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key582;
       public         postgres    false    199            -           2606    753525    users users_email_key583 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key583 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key583;
       public         postgres    false    199            /           2606    753805    users users_email_key584 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key584 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key584;
       public         postgres    false    199            1           2606    753369    users users_email_key585 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key585 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key585;
       public         postgres    false    199            3           2606    754461    users users_email_key586 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key586 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key586;
       public         postgres    false    199            5           2606    753679    users users_email_key587 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key587 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key587;
       public         postgres    false    199            7           2606    754367    users users_email_key588 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key588 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key588;
       public         postgres    false    199            9           2606    753665    users users_email_key589 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key589 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key589;
       public         postgres    false    199            ;           2606    754331    users users_email_key59 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key59 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key59;
       public         postgres    false    199            =           2606    754205    users users_email_key590 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key590 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key590;
       public         postgres    false    199            ?           2606    753463    users users_email_key591 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key591 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key591;
       public         postgres    false    199            A           2606    753795    users users_email_key592 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key592 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key592;
       public         postgres    false    199            C           2606    753555    users users_email_key593 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key593 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key593;
       public         postgres    false    199            E           2606    753825    users users_email_key594 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key594 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key594;
       public         postgres    false    199            G           2606    753951    users users_email_key595 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key595 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key595;
       public         postgres    false    199            I           2606    754339    users users_email_key596 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key596 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key596;
       public         postgres    false    199            K           2606    753147    users users_email_key597 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key597 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key597;
       public         postgres    false    199            M           2606    753299    users users_email_key598 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key598 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key598;
       public         postgres    false    199            O           2606    753117    users users_email_key599 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key599 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key599;
       public         postgres    false    199            Q           2606    754181    users users_email_key6 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key6 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key6;
       public         postgres    false    199            S           2606    753419    users users_email_key60 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key60 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key60;
       public         postgres    false    199            U           2606    754015    users users_email_key600 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key600 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key600;
       public         postgres    false    199            W           2606    753297    users users_email_key601 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key601 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key601;
       public         postgres    false    199            Y           2606    754251    users users_email_key602 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key602 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key602;
       public         postgres    false    199            [           2606    753487    users users_email_key603 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key603 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key603;
       public         postgres    false    199            ]           2606    754651    users users_email_key604 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key604 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key604;
       public         postgres    false    199            _           2606    753229    users users_email_key605 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key605 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key605;
       public         postgres    false    199            a           2606    753515    users users_email_key606 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key606 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key606;
       public         postgres    false    199            c           2606    753383    users users_email_key607 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key607 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key607;
       public         postgres    false    199            e           2606    753889    users users_email_key608 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key608 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key608;
       public         postgres    false    199            g           2606    753321    users users_email_key609 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key609 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key609;
       public         postgres    false    199            i           2606    753969    users users_email_key61 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key61 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key61;
       public         postgres    false    199            k           2606    754567    users users_email_key610 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key610 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key610;
       public         postgres    false    199            m           2606    754473    users users_email_key611 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key611 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key611;
       public         postgres    false    199            o           2606    753193    users users_email_key612 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key612 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key612;
       public         postgres    false    199            q           2606    753119    users users_email_key613 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key613 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key613;
       public         postgres    false    199            s           2606    753911    users users_email_key614 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key614 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key614;
       public         postgres    false    199            u           2606    754197    users users_email_key615 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key615 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key615;
       public         postgres    false    199            w           2606    753273    users users_email_key616 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key616 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key616;
       public         postgres    false    199            y           2606    754135    users users_email_key617 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key617 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key617;
       public         postgres    false    199            {           2606    754591    users users_email_key618 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key618 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key618;
       public         postgres    false    199            }           2606    754007    users users_email_key619 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key619 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key619;
       public         postgres    false    199                       2606    753549    users users_email_key62 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key62 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key62;
       public         postgres    false    199            �           2606    754407    users users_email_key620 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key620 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key620;
       public         postgres    false    199            �           2606    753497    users users_email_key621 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key621 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key621;
       public         postgres    false    199            �           2606    754479    users users_email_key622 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key622 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key622;
       public         postgres    false    199            �           2606    753411    users users_email_key623 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key623 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key623;
       public         postgres    false    199            �           2606    754321    users users_email_key624 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key624 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key624;
       public         postgres    false    199            �           2606    753577    users users_email_key625 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key625 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key625;
       public         postgres    false    199            �           2606    753967    users users_email_key626 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key626 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key626;
       public         postgres    false    199            �           2606    753475    users users_email_key627 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key627 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key627;
       public         postgres    false    199            �           2606    753491    users users_email_key628 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key628 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key628;
       public         postgres    false    199            �           2606    754255    users users_email_key629 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key629 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key629;
       public         postgres    false    199            �           2606    754579    users users_email_key63 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key63 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key63;
       public         postgres    false    199            �           2606    754195    users users_email_key630 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key630 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key630;
       public         postgres    false    199            �           2606    753873    users users_email_key631 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key631 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key631;
       public         postgres    false    199            �           2606    753833    users users_email_key632 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key632 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key632;
       public         postgres    false    199            �           2606    754549    users users_email_key633 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key633 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key633;
       public         postgres    false    199            �           2606    753793    users users_email_key634 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key634 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key634;
       public         postgres    false    199            �           2606    754311    users users_email_key635 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key635 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key635;
       public         postgres    false    199            �           2606    753823    users users_email_key636 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key636 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key636;
       public         postgres    false    199            �           2606    754561    users users_email_key637 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key637 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key637;
       public         postgres    false    199            �           2606    754481    users users_email_key638 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key638 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key638;
       public         postgres    false    199            �           2606    754379    users users_email_key639 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key639 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key639;
       public         postgres    false    199            �           2606    754659    users users_email_key64 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key64 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key64;
       public         postgres    false    199            �           2606    753271    users users_email_key640 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key640 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key640;
       public         postgres    false    199            �           2606    754263    users users_email_key641 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key641 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key641;
       public         postgres    false    199            �           2606    753347    users users_email_key642 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key642 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key642;
       public         postgres    false    199            �           2606    754193    users users_email_key643 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key643 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key643;
       public         postgres    false    199            �           2606    754129    users users_email_key644 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key644 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key644;
       public         postgres    false    199            �           2606    753625    users users_email_key645 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key645 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key645;
       public         postgres    false    199            �           2606    754581    users users_email_key646 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key646 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key646;
       public         postgres    false    199            �           2606    754349    users users_email_key647 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key647 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key647;
       public         postgres    false    199            �           2606    754173    users users_email_key648 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key648 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key648;
       public         postgres    false    199            �           2606    753923    users users_email_key649 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key649 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key649;
       public         postgres    false    199            �           2606    753643    users users_email_key65 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key65 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key65;
       public         postgres    false    199            �           2606    753309    users users_email_key650 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key650 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key650;
       public         postgres    false    199            �           2606    754577    users users_email_key651 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key651 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key651;
       public         postgres    false    199            �           2606    754477    users users_email_key652 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key652 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key652;
       public         postgres    false    199            �           2606    753255    users users_email_key653 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key653 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key653;
       public         postgres    false    199            �           2606    753275    users users_email_key654 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key654 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key654;
       public         postgres    false    199            �           2606    753361    users users_email_key655 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key655 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key655;
       public         postgres    false    199            �           2606    753697    users users_email_key656 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key656 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key656;
       public         postgres    false    199            �           2606    753323    users users_email_key657 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key657 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key657;
       public         postgres    false    199            �           2606    753183    users users_email_key658 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key658 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key658;
       public         postgres    false    199            �           2606    753897    users users_email_key659 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key659 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key659;
       public         postgres    false    199            �           2606    754441    users users_email_key66 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key66 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key66;
       public         postgres    false    199            �           2606    753149    users users_email_key660 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key660 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key660;
       public         postgres    false    199            �           2606    753459    users users_email_key661 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key661 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key661;
       public         postgres    false    199            �           2606    753245    users users_email_key662 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key662 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key662;
       public         postgres    false    199            �           2606    754221    users users_email_key663 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key663 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key663;
       public         postgres    false    199            �           2606    754209    users users_email_key664 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key664 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key664;
       public         postgres    false    199            �           2606    754643    users users_email_key665 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key665 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key665;
       public         postgres    false    199            �           2606    753763    users users_email_key666 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key666 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key666;
       public         postgres    false    199            �           2606    753819    users users_email_key667 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key667 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key667;
       public         postgres    false    199            �           2606    754213    users users_email_key668 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key668 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key668;
       public         postgres    false    199            �           2606    753539    users users_email_key669 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key669 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key669;
       public         postgres    false    199            �           2606    753619    users users_email_key67 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key67 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key67;
       public         postgres    false    199            �           2606    753631    users users_email_key670 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key670 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key670;
       public         postgres    false    199            �           2606    753189    users users_email_key671 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key671 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key671;
       public         postgres    false    199            �           2606    754607    users users_email_key672 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key672 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key672;
       public         postgres    false    199            �           2606    754303    users users_email_key673 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key673 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key673;
       public         postgres    false    199            �           2606    754669    users users_email_key674 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key674 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key674;
       public         postgres    false    199            �           2606    754437    users users_email_key675 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key675 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key675;
       public         postgres    false    199            �           2606    754275    users users_email_key676 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key676 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key676;
       public         postgres    false    199            �           2606    753251    users users_email_key677 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key677 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key677;
       public         postgres    false    199            �           2606    753493    users users_email_key678 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key678 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key678;
       public         postgres    false    199                       2606    753211    users users_email_key679 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key679 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key679;
       public         postgres    false    199                       2606    754489    users users_email_key68 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key68 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key68;
       public         postgres    false    199                       2606    753521    users users_email_key680 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key680 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key680;
       public         postgres    false    199                       2606    753929    users users_email_key681 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key681 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key681;
       public         postgres    false    199            	           2606    754099    users users_email_key682 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key682 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key682;
       public         postgres    false    199                       2606    754139    users users_email_key683 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key683 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key683;
       public         postgres    false    199                       2606    753501    users users_email_key684 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key684 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key684;
       public         postgres    false    199                       2606    754553    users users_email_key685 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key685 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key685;
       public         postgres    false    199                       2606    753855    users users_email_key686 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key686 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key686;
       public         postgres    false    199                       2606    754107    users users_email_key687 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key687 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key687;
       public         postgres    false    199                       2606    753403    users users_email_key688 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key688 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key688;
       public         postgres    false    199                       2606    753319    users users_email_key689 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key689 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key689;
       public         postgres    false    199                       2606    753943    users users_email_key69 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key69 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key69;
       public         postgres    false    199                       2606    753915    users users_email_key690 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key690 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key690;
       public         postgres    false    199                       2606    753363    users users_email_key691 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key691 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key691;
       public         postgres    false    199                       2606    753801    users users_email_key692 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key692 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key692;
       public         postgres    false    199            !           2606    754361    users users_email_key693 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key693 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key693;
       public         postgres    false    199            #           2606    754223    users users_email_key694 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key694 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key694;
       public         postgres    false    199            %           2606    753753    users users_email_key695 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key695 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key695;
       public         postgres    false    199            '           2606    753203    users users_email_key696 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key696 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key696;
       public         postgres    false    199            )           2606    753981    users users_email_key697 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key697 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key697;
       public         postgres    false    199            +           2606    754347    users users_email_key698 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key698 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key698;
       public         postgres    false    199            -           2606    753415    users users_email_key699 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key699 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key699;
       public         postgres    false    199            /           2606    753701    users users_email_key7 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key7 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key7;
       public         postgres    false    199            1           2606    754113    users users_email_key70 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key70 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key70;
       public         postgres    false    199            3           2606    754061    users users_email_key700 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key700 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key700;
       public         postgres    false    199            5           2606    754393    users users_email_key701 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key701 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key701;
       public         postgres    false    199            7           2606    754413    users users_email_key702 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key702 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key702;
       public         postgres    false    199            9           2606    753159    users users_email_key703 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key703 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key703;
       public         postgres    false    199            ;           2606    754071    users users_email_key704 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key704 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key704;
       public         postgres    false    199            =           2606    753287    users users_email_key705 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key705 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key705;
       public         postgres    false    199            ?           2606    754259    users users_email_key706 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key706 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key706;
       public         postgres    false    199            A           2606    753221    users users_email_key707 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key707 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key707;
       public         postgres    false    199            C           2606    753975    users users_email_key708 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key708 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key708;
       public         postgres    false    199            E           2606    753461    users users_email_key709 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key709 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key709;
       public         postgres    false    199            G           2606    753879    users users_email_key71 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key71 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key71;
       public         postgres    false    199            I           2606    754125    users users_email_key710 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key710 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key710;
       public         postgres    false    199            K           2606    754333    users users_email_key711 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key711 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key711;
       public         postgres    false    199            M           2606    754217    users users_email_key712 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key712 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key712;
       public         postgres    false    199            O           2606    753285    users users_email_key713 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key713 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key713;
       public         postgres    false    199            Q           2606    753575    users users_email_key714 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key714 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key714;
       public         postgres    false    199            S           2606    753599    users users_email_key715 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key715 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key715;
       public         postgres    false    199            U           2606    753655    users users_email_key716 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key716 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key716;
       public         postgres    false    199            W           2606    753921    users users_email_key717 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key717 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key717;
       public         postgres    false    199            Y           2606    754621    users users_email_key718 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key718 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key718;
       public         postgres    false    199            [           2606    753169    users users_email_key719 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key719 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key719;
       public         postgres    false    199            ]           2606    754105    users users_email_key72 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key72 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key72;
       public         postgres    false    199            _           2606    753751    users users_email_key720 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key720 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key720;
       public         postgres    false    199            a           2606    753469    users users_email_key721 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key721 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key721;
       public         postgres    false    199            c           2606    753371    users users_email_key722 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key722 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key722;
       public         postgres    false    199            e           2606    754499    users users_email_key723 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key723 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key723;
       public         postgres    false    199            g           2606    753233    users users_email_key724 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key724 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key724;
       public         postgres    false    199            i           2606    753653    users users_email_key725 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key725 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key725;
       public         postgres    false    199            k           2606    753397    users users_email_key726 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key726 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key726;
       public         postgres    false    199            m           2606    753973    users users_email_key727 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key727 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key727;
       public         postgres    false    199            o           2606    753837    users users_email_key728 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key728 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key728;
       public         postgres    false    199            q           2606    753165    users users_email_key729 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key729 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key729;
       public         postgres    false    199            s           2606    754145    users users_email_key73 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key73 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key73;
       public         postgres    false    199            u           2606    753387    users users_email_key730 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key730 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key730;
       public         postgres    false    199            w           2606    754231    users users_email_key731 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key731 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key731;
       public         postgres    false    199            y           2606    754117    users users_email_key732 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key732 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key732;
       public         postgres    false    199            {           2606    754345    users users_email_key733 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key733 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key733;
       public         postgres    false    199            }           2606    754487    users users_email_key734 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key734 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key734;
       public         postgres    false    199                       2606    753809    users users_email_key735 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key735 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key735;
       public         postgres    false    199            �           2606    753279    users users_email_key736 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key736 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key736;
       public         postgres    false    199            �           2606    753779    users users_email_key737 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key737 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key737;
       public         postgres    false    199            �           2606    753517    users users_email_key738 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key738 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key738;
       public         postgres    false    199            �           2606    753335    users users_email_key739 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key739 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key739;
       public         postgres    false    199            �           2606    754517    users users_email_key74 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key74 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key74;
       public         postgres    false    199            �           2606    754075    users users_email_key740 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key740 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key740;
       public         postgres    false    199            �           2606    753681    users users_email_key741 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key741 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key741;
       public         postgres    false    199            �           2606    754273    users users_email_key742 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key742 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key742;
       public         postgres    false    199            �           2606    753181    users users_email_key743 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key743 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key743;
       public         postgres    false    199            �           2606    754655    users users_email_key744 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key744 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key744;
       public         postgres    false    199            �           2606    753755    users users_email_key745 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key745 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key745;
       public         postgres    false    199            �           2606    753647    users users_email_key746 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key746 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key746;
       public         postgres    false    199            �           2606    753495    users users_email_key747 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key747 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key747;
       public         postgres    false    199            �           2606    753207    users users_email_key748 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key748 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key748;
       public         postgres    false    199            �           2606    754261    users users_email_key749 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key749 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key749;
       public         postgres    false    199            �           2606    754507    users users_email_key75 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key75 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key75;
       public         postgres    false    199            �           2606    753789    users users_email_key750 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key750 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key750;
       public         postgres    false    199            �           2606    753239    users users_email_key751 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key751 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key751;
       public         postgres    false    199            �           2606    753281    users users_email_key752 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key752 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key752;
       public         postgres    false    199            �           2606    754457    users users_email_key753 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key753 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key753;
       public         postgres    false    199            �           2606    753359    users users_email_key754 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key754 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key754;
       public         postgres    false    199            �           2606    754371    users users_email_key755 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key755 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key755;
       public         postgres    false    199            �           2606    753385    users users_email_key756 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key756 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key756;
       public         postgres    false    199            �           2606    754267    users users_email_key757 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key757 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key757;
       public         postgres    false    199            �           2606    753523    users users_email_key758 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key758 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key758;
       public         postgres    false    199            �           2606    753341    users users_email_key759 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key759 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key759;
       public         postgres    false    199            �           2606    754249    users users_email_key76 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key76 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key76;
       public         postgres    false    199            �           2606    753587    users users_email_key760 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key760 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key760;
       public         postgres    false    199            �           2606    753739    users users_email_key761 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key761 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key761;
       public         postgres    false    199            �           2606    753121    users users_email_key762 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key762 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key762;
       public         postgres    false    199            �           2606    754667    users users_email_key763 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key763 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key763;
       public         postgres    false    199            �           2606    754605    users users_email_key764 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key764 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key764;
       public         postgres    false    199            �           2606    753219    users users_email_key765 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key765 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key765;
       public         postgres    false    199            �           2606    753177    users users_email_key766 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key766 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key766;
       public         postgres    false    199            �           2606    753445    users users_email_key767 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key767 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key767;
       public         postgres    false    199            �           2606    754583    users users_email_key768 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key768 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key768;
       public         postgres    false    199            �           2606    754527    users users_email_key769 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key769 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key769;
       public         postgres    false    199            �           2606    754323    users users_email_key77 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key77 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key77;
       public         postgres    false    199            �           2606    753983    users users_email_key770 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key770 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key770;
       public         postgres    false    199            �           2606    754603    users users_email_key771 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key771 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key771;
       public         postgres    false    199            �           2606    753707    users users_email_key772 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key772 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key772;
       public         postgres    false    199            �           2606    753217    users users_email_key773 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key773 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key773;
       public         postgres    false    199            �           2606    754427    users users_email_key774 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key774 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key774;
       public         postgres    false    199            �           2606    753997    users users_email_key775 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key775 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key775;
       public         postgres    false    199            �           2606    754305    users users_email_key776 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key776 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key776;
       public         postgres    false    199            �           2606    753115    users users_email_key777 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key777 UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key777;
       public         postgres    false    199            �           2606    754003    users users_email_key78 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key78 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key78;
       public         postgres    false    199            �           2606    753417    users users_email_key79 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key79 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key79;
       public         postgres    false    199            �           2606    754001    users users_email_key8 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key8 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key8;
       public         postgres    false    199            �           2606    753235    users users_email_key80 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key80 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key80;
       public         postgres    false    199            �           2606    753267    users users_email_key81 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key81 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key81;
       public         postgres    false    199            �           2606    754617    users users_email_key82 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key82 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key82;
       public         postgres    false    199            �           2606    754051    users users_email_key83 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key83 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key83;
       public         postgres    false    199            �           2606    754523    users users_email_key84 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key84 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key84;
       public         postgres    false    199            �           2606    754645    users users_email_key85 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key85 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key85;
       public         postgres    false    199            �           2606    753957    users users_email_key86 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key86 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key86;
       public         postgres    false    199            �           2606    754563    users users_email_key87 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key87 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key87;
       public         postgres    false    199            �           2606    754415    users users_email_key88 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key88 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key88;
       public         postgres    false    199            �           2606    753735    users users_email_key89 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key89 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key89;
       public         postgres    false    199            �           2606    754265    users users_email_key9 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key9 UNIQUE (email);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key9;
       public         postgres    false    199            �           2606    753673    users users_email_key90 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key90 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key90;
       public         postgres    false    199            �           2606    754289    users users_email_key91 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key91 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key91;
       public         postgres    false    199            �           2606    753715    users users_email_key92 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key92 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key92;
       public         postgres    false    199            �           2606    754373    users users_email_key93 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key93 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key93;
       public         postgres    false    199                       2606    754159    users users_email_key94 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key94 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key94;
       public         postgres    false    199                       2606    753139    users users_email_key95 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key95 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key95;
       public         postgres    false    199                       2606    754175    users users_email_key96 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key96 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key96;
       public         postgres    false    199                       2606    753343    users users_email_key97 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key97 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key97;
       public         postgres    false    199            	           2606    754069    users users_email_key98 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key98 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key98;
       public         postgres    false    199                       2606    753725    users users_email_key99 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key99 UNIQUE (email);
 A   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key99;
       public         postgres    false    199                       2606    73882    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    199            >           2606    756913 )   controllers controllers_controllerId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.controllers
    ADD CONSTRAINT "controllers_controllerId_fkey" FOREIGN KEY ("controllerId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.controllers DROP CONSTRAINT "controllers_controllerId_fkey";
       public       postgres    false    199    231    4365            ?           2606    756908 &   controllers controllers_creatorId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.controllers
    ADD CONSTRAINT "controllers_creatorId_fkey" FOREIGN KEY ("creatorId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.controllers DROP CONSTRAINT "controllers_creatorId_fkey";
       public       postgres    false    231    4365    199            5           2606    756673 6   entranceOptionPrices entranceOptionPrices_eventId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."entranceOptionPrices"
    ADD CONSTRAINT "entranceOptionPrices_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE SET NULL;
 d   ALTER TABLE ONLY public."entranceOptionPrices" DROP CONSTRAINT "entranceOptionPrices_eventId_fkey";
       public       postgres    false    4375    209    217            <           2606    756807    entrances entrances_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrances
    ADD CONSTRAINT "entrances_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 K   ALTER TABLE ONLY public.entrances DROP CONSTRAINT "entrances_userId_fkey";
       public       postgres    false    227    4365    199            2           2606    754723    events events_ageRatingId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_ageRatingId_fkey" FOREIGN KEY ("ageRatingId") REFERENCES public."ageRatings"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.events DROP CONSTRAINT "events_ageRatingId_fkey";
       public       postgres    false    211    209    4377            3           2606    754728    events events_typeId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES public.types(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.events DROP CONSTRAINT "events_typeId_fkey";
       public       postgres    false    4379    209    213            4           2606    754743    events events_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.events
    ADD CONSTRAINT "events_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.events DROP CONSTRAINT "events_userId_fkey";
       public       postgres    false    199    4365    209            6           2606    756704 .   hallOptionPrices hallOptionPrices_eventId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."hallOptionPrices"
    ADD CONSTRAINT "hallOptionPrices_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE SET NULL;
 \   ALTER TABLE ONLY public."hallOptionPrices" DROP CONSTRAINT "hallOptionPrices_eventId_fkey";
       public       postgres    false    209    4375    221            7           2606    756709 3   hallOptionPrices hallOptionPrices_hallOptionId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."hallOptionPrices"
    ADD CONSTRAINT "hallOptionPrices_hallOptionId_fkey" FOREIGN KEY ("hallOptionId") REFERENCES public."hallOptions"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 a   ALTER TABLE ONLY public."hallOptionPrices" DROP CONSTRAINT "hallOptionPrices_hallOptionId_fkey";
       public       postgres    false    4385    221    219            =           2606    756823    halls halls_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.halls
    ADD CONSTRAINT "halls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public.halls DROP CONSTRAINT "halls_userId_fkey";
       public       postgres    false    229    199    4365            0           2606    754689    links links_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.links
    ADD CONSTRAINT "links_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 C   ALTER TABLE ONLY public.links DROP CONSTRAINT "links_userId_fkey";
       public       postgres    false    4365    205    199            1           2606    754694    orders orders_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT "orders_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.orders DROP CONSTRAINT "orders_userId_fkey";
       public       postgres    false    4365    199    207            8           2606    756744 *   tickets tickets_entranceOptionPriceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "tickets_entranceOptionPriceId_fkey" FOREIGN KEY ("entranceOptionPriceId") REFERENCES public."entranceOptionPrices"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 V   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "tickets_entranceOptionPriceId_fkey";
       public       postgres    false    225    217    4383            9           2606    756754    tickets tickets_eventId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "tickets_eventId_fkey" FOREIGN KEY ("eventId") REFERENCES public.events(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "tickets_eventId_fkey";
       public       postgres    false    4375    209    225            :           2606    756749 &   tickets tickets_hallOptionPriceId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "tickets_hallOptionPriceId_fkey" FOREIGN KEY ("hallOptionPriceId") REFERENCES public."hallOptionPrices"(id) ON UPDATE CASCADE ON DELETE SET NULL;
 R   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "tickets_hallOptionPriceId_fkey";
       public       postgres    false    4387    225    221            ;           2606    756739    tickets tickets_orderId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT "tickets_orderId_fkey" FOREIGN KEY ("orderId") REFERENCES public.orders(id) ON UPDATE CASCADE ON DELETE SET NULL;
 H   ALTER TABLE ONLY public.tickets DROP CONSTRAINT "tickets_orderId_fkey";
       public       postgres    false    4373    225    207            .           2606    754677    tokens tokens_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT "tokens_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 E   ALTER TABLE ONLY public.tokens DROP CONSTRAINT "tokens_userId_fkey";
       public       postgres    false    201    199    4365            /           2606    754682 +   updatePasswords updatePasswords_userId_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."updatePasswords"
    ADD CONSTRAINT "updatePasswords_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE SET NULL;
 Y   ALTER TABLE ONLY public."updatePasswords" DROP CONSTRAINT "updatePasswords_userId_fkey";
       public       postgres    false    4365    203    199            �   E   x�3�4��4202�54�50S04�21�26�3���60�#�e�ihF�VcNC#2��p�k�)��:c���� ��6�      �   4   x�34�47�442�4202�5��5�T00�22�20�344�60�#����� �DN      �   B   x�ɱ�0��p��9�Y����=
��4°ߩ��g���U�4�"�9���(����U�      �   �  x���A��0E��)�GmU�]U��2`�X����� �,�3$F��
΍�����q�Q�[-��_ڕ��k_��w�ގ��4�����j?�ۛ7��dB�)Ո!��
��$���gp: �&LK!��?�5��4�������\�3��'��Y&�J\QG�@���;���b�גؾ�(�5r�H��Z��ٚrE�� ��$����:U�e��yH}q���`У���t���$�U�I2(��]��AK�/&/�,�c�8��kI,�.�t�R!�B��Z���lM*搉���$�8�ٙ�,:�?+�^�e��C�y��$�+�-�XYl����$�+�-���
{i�Ggmx���O�8ߵ'��.��	m[��TZ�f()xM��뷗�v>����dV׾���vj�V���o>bM�2Ѐ�]?{��s�m_<Na�(��,�}6O��l��`�#6g���ă�      �   m  x��RKj�0]˧о���ǎt�&i(th
]�Ph�	�BHȯWݨ#���nӅ~<�{o�����'��3}6k�e��A��䒖TӖ�)����_�R�>���q���N��QpɊ���i��9��Ă�@ �A���Rb�����-�r�����C�ŧ�%��7:5G���$?º�f�T1�2�R}�JB#����f�)SsT��H[��^�+���6吸%b?�`y�A޴���m+�Z�My (c�u�˔���̺K��s{eգ@m�-�0h�Tz4�!�Es�����v,�I	t@�,���ԇ�}/�}Ȏ+mR�����CLTq��>�>��ű)�J�=��[�_!�WY�}�(�      �   X	  x��XKo�>/E%������o�� �A�J���Y��"&�#9Q��0H��, ��$�A2Zr��>�����_���{��%���%����������ǫ�7�v���t����OtO��(w�_{X�Qu�����T�5�J��[:��~�_	ݥo�������I��#\g͡O݋�_8^�M��O�qԒ~+�d�Fm���R�rBW��/~�}V���O>��W[N(���k^Xw��u��_�j���JP�/���I�� :�@�#݁��P��7BP#ab/w��E��(#��]=�2n�l��N�k�����*<�I�7dx��c/��0i�8MB�7I�7a��������f h�g���'i*�Nۓ~G��N�5[��n�}3�W��`)ӥy���$q[~[2t�H��j�8�3xq7��u �j�RQ�����A��3������$r�t��L��k�DEN.��N ����q�NAX�4B����G���t"�j�?�T�0�iÉ�Un;T?B\o�r&K� �5����c�<�����u�{^�j�ey��?�X����.>�F%^�%�;��n�e�M�0���(���8n���M���V�-�zq)����P��X�߰�������8(s9�Յ��TQ�r<�&��䧈,ʒX:���i�M7Yt�+�� n��I1�nI��|���B���m���{����uc�c��P.N&Axqț���� �W�i���+�f�I/�N�zQ�4n�]��n�s�u�٥��`�`E��ln�)�m���� A�( >��A�C�!� /��9�m��@�x�D��U�ǋ�}��~G��"��Ԋ1����@��1�I��/w,�g�
�.�=%��bQ��I�d8��1�?0o��H���m�������>�A���;�,%�
��.�C4*�qǈ<��|�ƃ��P0�0t��{��u�ps�q&~�z�h��v]�D8B���ԭw�
��A�@�S����[�Opj:K�/wU6r��8����@XG��������s���XX��	����[G��SH� ��"����-▊�৭�\�qo��+JQ�۳�>c �Q�?�T������>̞�L�E:d��=2���w� �_ܶ��co��1�g�V#��pd��H�_�GW� �c�2�̽`��$��4\^����\>�{��EaP��x�[Ǒ�*Df1
��[t̟��hݻ�߈&c��IzS<! ς��҄1f���
a�$W����o-�� ~N�X�>�u���3�H��y$�%�k̀?�"�vY����Z��w,�=��'te�с�T���TX�����#+�u�*��R�b54��&r�MM�ۧ
��[''� =>�0[Kh��PXA�;���r��F�4ylQj�����f�����.�8qQ���	�փJ�4�`�}.%|��#Tz�ݩ�!o�q��L�,�ɳLYoܟҎ'����* �S�Q���0%��3JU�J�K*�K
�Q?K��=� ���*�\��?���S
��~@u���!�����1��q�~W>�h;Nn��Ex�=%Δ�>/[�s��� m���未;���y�C�m�HEJDw�Cqg����p�o���!�x�Fֱ-o��ٱ,2$�i�0�4��|����6Ӎ��H�®����X���n������ar`�0"���3��\0�1�ؑ���]���/7���qw��쑸���.>��| >�6���6%�H��pi�-c@��V��q����q�ܱ���ܩ��GVU3����a�zh��b��ЖC+ #�	=�%���AbU0c:� �grs��#��˷�_
׍x���kJ���6��V��d���%��xħ���w��NH#F䄩ȥzk�q���С_�aR������rWu�͓V��ک�_2ӕ'�`y���oB������kV��X�\�)g��-|�ɇ;�	���2�53����+-�4hb�d�<]�le.��O�M2�/�!�^��Ct)����-�.��y��^i&�l�^��Lf
t�e����&�J�S@��s���
��'�x��8�G�-��Uʡ����ʹ�����f8��ɠQhr4c��[����=+5/��4ݙ٧<F���� �s��ۚ�g��/�i~�kO�X¼��Lw�L����!Jj����n�}�y�G*nMD�m��NA�"�o�,7s���pn�N�Ut#˙�k�(�����C��c@�^����s�|O� lF22_�*ud�{����UQv��g�r���[��t(U�ǿo~���~��{��K�Ǖo�Qġ��2�ҫ��L��-=/�˪�.9�Wv�y��8���.���3?<�W_YY�3��      �   ;   x�3�4400�4202�54�50S04�21�26�3���60�'e�i�e�iN�~C�=... b{�      �   b   x�3�0��֋�^�ra��*\l��a���<NCNS 64�4202�54�50S04�21�26�3���60�'e�e�ya��Fs�����=... -	9�      �      x������ � �      �      x������ � �      �   1  x�}�M��0��]����6�C�	zcl��GңR���<�}���+�U��٭���3
P�t��2M��� _��»�&ƿ��'}��H�m�Ўh �zE�R�I~�V���N�;�&Z��Rj�9kT\3@��%2m����j�v���'£����������AZ����~X 7./6�{������$�$8�k���(0f-yu�A=n6���;�N��ɝ�QJ�]� ��p�ʤ=k�]�!\�/Y�]��Yx��?&}���IҺEw�:2����J�F�+t� �ӵ�^p'�����������3�LA-'�2g�<ŔÔ���?�5-�e/6C�>JI�$�����w+��9]K5�»���@��7��Dx�Μ�^�}�S)��p�.�W��o���H��Q:�,�^Q6�1����CH�*���㻴U> �qS����UυX��.��ہ������K��7{G<I'�ϝ+��<��o
�\�G��ѥ���]pS�Pœt"Χ�b(�>!C����s.�ч��@�����|@<J���.���M%#      �   �  x�}�Kr�6��)�wh�y������<"�3��.+h4�����,�U���.�W���w������n5_��U��5�<L����4�zY#��&ƕWZ3���lb^y�Vg +Dy�D�W�TF0aAnY%���%#�ޭl��UR��-�,A�&�%�oD9N����"�-L��>�oD����]�YDy���?��F�g��M>�oDy�D�����5��}��TWP$A��~}�e[aL�Tf��Q���H�-~��%Vj��F�m�!Qv|�ބ��/P���B�VW���Ts��
Q��U*Bi��eW]��X�-�B�]u���M���	4�O�(��Bo�i����k���lG�(G���D�eW]��I�K!ʶ�$�HI#Y#ʶ@E�e[a������e[aLԔ�
ӈ��09���Y��֗,�ƌ�K#ʪ��[�ٽ���,6!l��٧v��Kԫ.�:�PQn6Ѯ��,��V�r7�^p�J;۳�!��&�GQ[��Q~ԗ|gb��?�9@��O������򶉉�K9�@V��6���]7J +D��D<�p�yY#ʢ���.xl�(�6@�z�@V�r{&ʩ~\�X�!��':�ӦHDy�ę�&�H�<M�����v���߳]^ҿ٣ֹr<V*"���wq"�������P���Q��-��7����e$6?�a��~�#���ZNR[ ?ё�	a"W/�m��Y�ən*�/=<[K�+t��L�]��٭��q'����*nJ�*٣3��	�����y������v#[Կн�h�\^e|��!�ل��䏈r�����9O��=���O��.���:��	4�U�ot�e������
y�F@��+���r�6�Δ��'t���+��'9��  ��7:r�@��6C�FGn6�~��K!�w}Ie����mY�:#���֊��
n(_��:�]_���ٚ���� y�D�,�2Y#���&ةJ�7�-�����"�`��W֏�r�	�����e�x��CApSz��Q~'*����Ǖ�c���-�$�eq��uzY�#w����9�9���z�Ct�i��=�ZY!��N�o��qN��_ؑ3���0�
\�x�<ZNP����$o�E<±^s�	�O�O���$x�}��	Yl�u�ڂ�V��.����nK ?�?����_N5�      �   �  x�}�M�� �u��j��l0bN0�9���B&�Ο�&*��M �$`�$���$�τ}Ey�<%W����E.^�'P5Vh�d�(>�t�1��m���݌Z)���iRc�i�e59�θ�����J������}D���ѧ�C�Ka��B�7ɶ��U�ۄ� e%��f�#ٶS���~�9"�(!���&�T�����Ak�I�}~D웸���Ś}nr0�d���}ӻ�%��I\�#ښe�]�j�V(vj�#�?3�v����7�υ��,{SfӴܛ�����nZ֛>��J�S����Ŝ���_�i5Zȑ'�6b?A��s�%���O���m�v?�CB�������t���'/��e_�oH�����"�a���l�^�9L�sm���x<~�
,      �      x������ � �      �   �   x���=
�@F��S�ˆ�	Jr[�Z,��ibei*�!�l�z�on�&�S<���<1R��.TQ#��N��ja�e���d�(���9I+��=U�0Ѝ�r?T�|���.��K0���5�x�S� �eY�9�{u>r	i�;5�M�l�%h�7թ˳9�LJ�#���      �   �   x�m��1D�I��X����EP��_���q~�7#�X�2
�E:��Hd7�_4��t�@۽jq]�v���-Eӂ��e����d�A���Xg�;�v�s"��%�G���:���S�oU�P;�Y��&��I��që�9�;�]Ҡ)v�l�2|�E�^�Q��p{=�      �   b  x��нN�P���*��s����X~��IMX�
��V�e�'l^�1NN��0����l5��D�����})DAd���v&��(�4a�`�i����i3# vu0��E_����7�v��%vzh.�fcυȈ��mt��|]���?���ut�Z�M�a��J�B@@�5j�0@#
�T: �//$t�{���'N��뇹����?ɏ|-�*vn���o�uv����5TE���p�!���Q���$�ʐ�	��K���Y-:�cf{��ĩ��>�T�գ!>��F������l�j����~B�2��_,
	S����i�O>�Tcː���=X��JU�,��� ����     