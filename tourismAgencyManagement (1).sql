PGDMP  4                    |            travelagency    16.2    16.2 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16447    travelagency    DATABASE     �   CREATE DATABASE travelagency WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE travelagency;
                postgres    false            �            1259    16448    hotel    TABLE     L  CREATE TABLE public.hotel (
    hotel_id integer NOT NULL,
    hotel_name text NOT NULL,
    hotel_city text NOT NULL,
    hotel_region text NOT NULL,
    hotel_fulladress text NOT NULL,
    hotel_email text NOT NULL,
    hotel_phone text NOT NULL,
    hotel_star text NOT NULL,
    hotel_free_parking boolean NOT NULL,
    hotel_free_wifi boolean NOT NULL,
    hotel_swimming_pool boolean NOT NULL,
    hotel_fitness_center boolean NOT NULL,
    hotel_concierge boolean NOT NULL,
    hotel_spa boolean NOT NULL,
    hotel_room_services boolean NOT NULL,
    hotel_pansion_type text[]
);
    DROP TABLE public.hotel;
       public         heap    postgres    false            �            1259    16453    hotel_hotel_id_seq    SEQUENCE     �   ALTER TABLE public.hotel ALTER COLUMN hotel_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.hotel_hotel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    16454    pansion    TABLE     a   CREATE TABLE public.pansion (
    pansion_id integer NOT NULL,
    pansion_type text NOT NULL
);
    DROP TABLE public.pansion;
       public         heap    postgres    false            �            1259    16459    pansion_pansion_id_seq    SEQUENCE     �   ALTER TABLE public.pansion ALTER COLUMN pansion_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pansion_pansion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    16460    reservation    TABLE     P  CREATE TABLE public.reservation (
    reservation_id integer NOT NULL,
    reservation_hotel_id integer NOT NULL,
    reservation_room_id integer NOT NULL,
    reservation_guest_fullname text NOT NULL,
    reservation_guest_id text NOT NULL,
    reservation_guest_mpno text NOT NULL,
    reservation_guest_email text NOT NULL,
    reservation_checkin_date date NOT NULL,
    reservation_checkout_date date NOT NULL,
    reservation_child_count integer NOT NULL,
    reservation_adult_count integer NOT NULL,
    reservation_total_price integer NOT NULL,
    reservation_date date NOT NULL
);
    DROP TABLE public.reservation;
       public         heap    postgres    false            �            1259    16465    reservation_reservation_id_seq    SEQUENCE     �   ALTER TABLE public.reservation ALTER COLUMN reservation_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.reservation_reservation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    16466    room    TABLE     k  CREATE TABLE public.room (
    room_id integer NOT NULL,
    room_hotel_id integer NOT NULL,
    room_season_id integer NOT NULL,
    room_type text NOT NULL,
    room_number text NOT NULL,
    room_capacity integer NOT NULL,
    room_adult_price integer NOT NULL,
    room_child_price integer NOT NULL,
    room_stock_quantity integer NOT NULL,
    room_bed_count integer NOT NULL,
    room_square_meters integer NOT NULL,
    room_has_tv boolean NOT NULL,
    room_has_mini_bar boolean NOT NULL,
    room_has_gaming_console boolean NOT NULL,
    room_has_safe_box boolean NOT NULL,
    room_has_projector boolean NOT NULL,
    room_pansion_type text NOT NULL,
    room_reservation_id integer,
    room_season_name text NOT NULL,
    room_hotel_name text NOT NULL,
    room_hotel_city text NOT NULL,
    room_season_start date NOT NULL,
    room_season_end date NOT NULL
);
    DROP TABLE public.room;
       public         heap    postgres    false            �            1259    16471    room_room_id_seq    SEQUENCE     �   ALTER TABLE public.room ALTER COLUMN room_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.room_room_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    16472    season    TABLE     �   CREATE TABLE public.season (
    season_id integer NOT NULL,
    season_hotel_id integer NOT NULL,
    season_start_date date NOT NULL,
    season_end_date date NOT NULL,
    season_name text NOT NULL,
    season_hotel_name text NOT NULL
);
    DROP TABLE public.season;
       public         heap    postgres    false            �            1259    16477    season_season_id_seq    SEQUENCE     �   ALTER TABLE public.season ALTER COLUMN season_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.season_season_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    16478    users    TABLE     �   CREATE TABLE public.users (
    user_id bigint NOT NULL,
    user_name text NOT NULL,
    user_pass text NOT NULL,
    user_perm text NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16483    user_user_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN user_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.user_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225                      0    16448    hotel 
   TABLE DATA             COPY public.hotel (hotel_id, hotel_name, hotel_city, hotel_region, hotel_fulladress, hotel_email, hotel_phone, hotel_star, hotel_free_parking, hotel_free_wifi, hotel_swimming_pool, hotel_fitness_center, hotel_concierge, hotel_spa, hotel_room_services, hotel_pansion_type) FROM stdin;
    public          postgres    false    215   �/                 0    16454    pansion 
   TABLE DATA           ;   COPY public.pansion (pansion_id, pansion_type) FROM stdin;
    public          postgres    false    217   {2       
          0    16460    reservation 
   TABLE DATA           U  COPY public.reservation (reservation_id, reservation_hotel_id, reservation_room_id, reservation_guest_fullname, reservation_guest_id, reservation_guest_mpno, reservation_guest_email, reservation_checkin_date, reservation_checkout_date, reservation_child_count, reservation_adult_count, reservation_total_price, reservation_date) FROM stdin;
    public          postgres    false    219   �2                 0    16466    room 
   TABLE DATA           �  COPY public.room (room_id, room_hotel_id, room_season_id, room_type, room_number, room_capacity, room_adult_price, room_child_price, room_stock_quantity, room_bed_count, room_square_meters, room_has_tv, room_has_mini_bar, room_has_gaming_console, room_has_safe_box, room_has_projector, room_pansion_type, room_reservation_id, room_season_name, room_hotel_name, room_hotel_city, room_season_start, room_season_end) FROM stdin;
    public          postgres    false    221   l3                 0    16472    season 
   TABLE DATA           �   COPY public.season (season_id, season_hotel_id, season_start_date, season_end_date, season_name, season_hotel_name) FROM stdin;
    public          postgres    false    223   �4                 0    16478    users 
   TABLE DATA           I   COPY public.users (user_id, user_name, user_pass, user_perm) FROM stdin;
    public          postgres    false    225   �5                  0    0    hotel_hotel_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.hotel_hotel_id_seq', 13, true);
          public          postgres    false    216                       0    0    pansion_pansion_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.pansion_pansion_id_seq', 7, true);
          public          postgres    false    218                       0    0    reservation_reservation_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.reservation_reservation_id_seq', 2, true);
          public          postgres    false    220                       0    0    room_room_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.room_room_id_seq', 8, true);
          public          postgres    false    222                       0    0    season_season_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.season_season_id_seq', 9, true);
          public          postgres    false    224                       0    0    user_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_user_id_seq', 14, true);
          public          postgres    false    226            j           2606    16485    hotel hotel_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.hotel
    ADD CONSTRAINT hotel_pkey PRIMARY KEY (hotel_id);
 :   ALTER TABLE ONLY public.hotel DROP CONSTRAINT hotel_pkey;
       public            postgres    false    215            l           2606    16487    pansion pansion_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.pansion
    ADD CONSTRAINT pansion_pkey PRIMARY KEY (pansion_id);
 >   ALTER TABLE ONLY public.pansion DROP CONSTRAINT pansion_pkey;
       public            postgres    false    217            n           2606    16489    reservation reservation_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.reservation
    ADD CONSTRAINT reservation_pkey PRIMARY KEY (reservation_guest_id, reservation_guest_mpno, reservation_guest_email);
 F   ALTER TABLE ONLY public.reservation DROP CONSTRAINT reservation_pkey;
       public            postgres    false    219    219    219            p           2606    16491    room room_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.room
    ADD CONSTRAINT room_pkey PRIMARY KEY (room_id);
 8   ALTER TABLE ONLY public.room DROP CONSTRAINT room_pkey;
       public            postgres    false    221            r           2606    16493    season season_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.season
    ADD CONSTRAINT season_pkey PRIMARY KEY (season_id);
 <   ALTER TABLE ONLY public.season DROP CONSTRAINT season_pkey;
       public            postgres    false    223            t           2606    16499    users unique_user_name 
   CONSTRAINT     V   ALTER TABLE ONLY public.users
    ADD CONSTRAINT unique_user_name UNIQUE (user_name);
 @   ALTER TABLE ONLY public.users DROP CONSTRAINT unique_user_name;
       public            postgres    false    225            v           2606    16495    users user_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.users
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 9   ALTER TABLE ONLY public.users DROP CONSTRAINT user_pkey;
       public            postgres    false    225               �  x��T]o�0}��
�O��V	� �H�X�`T�v���b͵+ہU������v�$:�CH��=����so>k*sr�,���ȝ��aFeA���nH.����>z����\��J/��L�Ç�����$��s̍ {��yv#��$�|"3Q�eg�:!,5<gd���f��s�yN!�2�������G�S��0���+i��.�]�=�ЏkJq��Ct"�f���rI�*�0H��0Rȉ�
z��<p���J��hB�lQ%�z~�e��%{.���_\bH�
_�`V3ja��1j�q�)Q��JKN!���A��d�#GP��	dÆe��u�=�(h��������Z%pE�Jir��#��.��J����YQf�q�5���#5
�֎*\p�e�m���V�O֭�R���!��[WJ*Q�I�(��]-N��m�Ff-
O�W.s�UU���~�Q�v�����hTP�,�R.^|V�`�R�ޯ��gN0�B����eI�'�5���d�7�5d"����F�D.7�_��t�d���G&�����q)_F�������>������"�R2So>����fa��ut�ǿ^A#$.��`u����O�-�zy\cU���mp,�Ax�Գ�b<2_���-�x��~�,?袊����������R@*�b8	i�'���'��7���݉W%IE��<흍K!p�p�ȧ�9�r��LJ �o�N�IC	�         p   x�3��))JTp�����K�)-�,K�2�D�s:��($�(8�&f�%�p�p����(8�'�p�rz$�A9f�A���
�y9�\�H�\+��d��K��������� �})�      
   a   x�3�4B�Ң��<�ʔ���"NCS3 �073�4053773�0���L+sHL���K���4202�50�50�3M989M� *h�kd����� iw6         V  x����j�0��O��/�q�6v^�8Wh�P�x�i�`��6n��{�%U�T*�C��/�9(0�0��i2��P��!BD]4'0��S	T$֫b_�	��y�Nf0��^����d��)�0d!�Az��� �D�*u�����ZK&�2�*�:СE�:@$Acݠ�+�E���8[\G�3�[�g)�:�K@�>��F�!P�_;-�����\o$��w�;�ؖE"��?�*m.��ߎ��D����y��3xȓ��Q;?ߵ�u_\��2��{�Ζy\�goű2_~�6[S���0ު�ؔ��9[̾�5��m�X�EOѺ��Gky�y�/����         �   x�}ϱ
�0����)��&M+��j!i-..����8��R�
�v�ở;x�Mr���XLc��u��aT�'G����g4ep�N�����[���5i�wc@1��x�3��ڽlP���Ac>��~����e|Z�wR�Y�PX@�~�΄7�f�O*k�A���W�         #   x�34�LL��̃��.��~\��� ���qqq ̯�     