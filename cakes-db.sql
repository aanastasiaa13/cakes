PGDMP  7                     }            cakes    14.12    16.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    49527    cakes    DATABASE     z   CREATE DATABASE cakes WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Belarus.1251';
    DROP DATABASE cakes;
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false                       0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    49540    cakes    TABLE     �   CREATE TABLE public.cakes (
    id bigint NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    price real NOT NULL,
    image_path character varying NOT NULL,
    short_description character varying
);
    DROP TABLE public.cakes;
       public         heap    postgres    false    4            �            1259    49539    cakes_id_seq    SEQUENCE     �   ALTER TABLE public.cakes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cakes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 10000000
    CACHE 1
);
            public          postgres    false    4    212            �            1259    49548    cart    TABLE     �   CREATE TABLE public.cart (
    id bigint NOT NULL,
    cake_name character varying NOT NULL,
    cake_price character varying NOT NULL,
    cake_image_path character varying NOT NULL
);
    DROP TABLE public.cart;
       public         heap    postgres    false    4            �            1259    49547    cart_id_seq    SEQUENCE     �   ALTER TABLE public.cart ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 100000
    CACHE 1
);
            public          postgres    false    214    4            �            1259    49556    orders    TABLE     �   CREATE TABLE public.orders (
    id bigint NOT NULL,
    fio character varying NOT NULL,
    cakes_name character varying NOT NULL,
    address character varying NOT NULL,
    cost real NOT NULL,
    status character varying NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false    4            �            1259    49555    orders_id_seq    SEQUENCE     �   ALTER TABLE public.orders ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 100000
    CACHE 1
);
            public          postgres    false    216    4            �            1259    49529    users    TABLE     �   CREATE TABLE public.users (
    id bigint NOT NULL,
    full_name character varying NOT NULL,
    phone character varying NOT NULL,
    password character varying NOT NULL,
    role character varying NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false    4            �            1259    49563 
   users_cart    TABLE     b   CREATE TABLE public.users_cart (
    user_id bigint NOT NULL,
    cart_item_id bigint NOT NULL
);
    DROP TABLE public.users_cart;
       public         heap    postgres    false    4            �            1259    49528    users_id_seq    SEQUENCE     �   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 100000000
    CACHE 1
);
            public          postgres    false    4    210                      0    49540    cakes 
   TABLE DATA           \   COPY public.cakes (id, name, description, price, image_path, short_description) FROM stdin;
    public          postgres    false    212   W       	          0    49548    cart 
   TABLE DATA           J   COPY public.cart (id, cake_name, cake_price, cake_image_path) FROM stdin;
    public          postgres    false    214   O(                 0    49556    orders 
   TABLE DATA           L   COPY public.orders (id, fio, cakes_name, address, cost, status) FROM stdin;
    public          postgres    false    216   <)                 0    49529    users 
   TABLE DATA           E   COPY public.users (id, full_name, phone, password, role) FROM stdin;
    public          postgres    false    210   �*                 0    49563 
   users_cart 
   TABLE DATA           ;   COPY public.users_cart (user_id, cart_item_id) FROM stdin;
    public          postgres    false    217   �+                  0    0    cakes_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cakes_id_seq', 8, true);
          public          postgres    false    211                       0    0    cart_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.cart_id_seq', 32, true);
          public          postgres    false    213                       0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 8, true);
          public          postgres    false    215                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 16, true);
          public          postgres    false    209            t           2606    49546    cakes cakes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.cakes
    ADD CONSTRAINT cakes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.cakes DROP CONSTRAINT cakes_pkey;
       public            postgres    false    212            v           2606    49552    cart cart_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT cart_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.cart DROP CONSTRAINT cart_pkey;
       public            postgres    false    214            x           2606    49562    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    216            p           2606    49538    users users_phone_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_phone_key;
       public            postgres    false    210            r           2606    49536    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    210               �	  x��Y�n�V]K_�x�*M�h�o��	�4�ci ;Y��v,�H� h4]tQ�)Ѣ(���/�K:sf.y/IɎ�.��"�cfΜ93����g��8�� �y6������4��}/��$��z��{�"K��r��{o��5��eQ6��b�l���Qțt<z��x�cz{��
ڂ���3��X�o�=��>�%:��&�lN;�i]/���95g���X�T^�����}��fp����3���N�	�8�"x#��� U��sBZ���f��~�����#<M�4�����sj�G�t/����~#ٝ��?cv�Y�;�89���͢,�'��Đ�1�C�/��U�2�hI����\�՞�ë���_��?z��p�����Ǜ/?���z���t�a+{w>V.��q��ys^hE0?���� �����`��ҍ������<n�o$E/T5E�P�_ Ò,��'��6�W%S�\�nHG�u����G{GK2�^����_1Θ�w�A�C2 �N�qi.ǋ�u@ǼF�;����q��T���&�#��1q�N<BfO���=��� ����_(��-S
Ƭ�#�!e�*��U:)�F'd�.l���9H����)m#�#�r�����������*�"�"���� F 5o�v��B��1��۰$�=@�[��/��,�n��޽[O��[��X��5�j�d���1%�3��$I�p�"��.]f��l�f3�À��;�a�޾٢���Ub�V�I�V}��dn��� c����j�6�N
���t]`z�Xq�(�wi��l7�t����aM��?�ShI�%2( �%�0�V$.����"��&��ȵ��3K���.���|y�^'�ΨZh2�I3��Z_"��Xv�@.
���SiZ�vsE��x֋� iƳr�B	p؜�[�O�77��$���4���"C�c�"iA��oO�� �r'|mT��*�I>����G�lFA~G{,8!�2�&F�C�Pt<-��2�|��-rg$�j�v����V�$A�Ӽ�p�jzwe�&�� ^[�Hu�P"����G vT����*��3�|~k��Y)��߫��'�VT$}��J���TZԤ�ӿ�[�hK2�1p�rRE���|Ve�w�����:)����c\�� ��V.$l�z���EK��p��v��H�N�~��W��#AR�k2	�ɸu�v�O�>[�.d�2B(� ��P�F�Ss��\�����K��7&�6�č��}����e�U��>w�_�3�*U�����ty܀���x7���ns3�3�#8~�4�Y�
��@{$,FלI��x�Y��$��R����CMp�
}��Ho@iԩ�VhsVJ/�d�C����C���Irh�#z� �e(u�l��,�D%�8��cI����l(�cu�Q��*�QI�2���d�r��b�����Jo���Oʖ�p�2	J�_U8_��a�x[!OD��&	GEB��*�7�3��v�.R�5��N�S�`\�95*��0��w詑s�z�g�H$� χ�ϲ�Oem��]�s��EQ�$�X�����l):`���f˟9�Vm��
�B�(o��ls_^t����E"[���VG�!O����,�D��J�`�}�}
&[��Dy����"��З����PE�<�m�d@������XIs��MCʲ�]j(̑S온,����A�B��)G0L4%�9]�3�lR�2���]�����f�:��m�sc��	�΁F-l�
.�jb�?M�11u��9�b�y�̴bPd<gP7��=�O�0�H�UǦO��=�~^0����SE��H<�����v[�w)��F����m�Y8�����Oʙ�4�����@�'�n57W���10z��~�	Ms�בb_��|��ӗ�x��-�a��JI �n˷�͵�#��j^�s"��{��~���j��2���˦�UE"���Ȓ���#�rc0w��i�?����e#^��j^��K�^�)�<^��D���|�]�ADiK�7P��"Z3�=43�zg��޺S#��mkd�V� o��QJ2�؅��wT�`�円�cM�2ָٴ�a�7�ͮy�U����4���ȃ���qF����a�Q�,�o���&����A�
V ���4�w'����֨�4E2�sʢ ��e<V��;w���>���ΨT���^�`�۟�Q�3�����i,� ��h*�+����?遛���]Q����C��璷y�B_��_[j�vcQc���ܼZg�>�GTF&|�WI��t��֎Jj��~�PHie���m�8n������J��π����J?]�q��1~���[>�r�#�p)n`�Uh"y|�og0��տ��nW����^���Y���2�������ˣH��PkF�Bc�T�9��'\a����p&Y����>�� ���I��|�]{\�ɺc�F��n�^��n��(      	   �   x���M
�0�uz���6M[�.n��R��(�ԭ ��+��o��ˍ���u#�MV���6���أ�7���VTj���۸�Ps(�wT:T2�2'�8;=��7�O�I�eɴ1�b�ɰ}�Ьғ��2���(�'oܢ�6s��9I{$-H�'逤C�&5�몭q����j��O>��m3繆N7k�o,p@�D=:�X����a�1����A��eY4�>�         T  x���MJ�P��/�x(���A�A'�đ#��
�TH��X�� �bc�-��#ϻm�XQ'!����$0��)JT��:��Y�rap�B�0c�1]J�W+1*�Jl�g�TzlH��9�JdX���7�G�[�����Tb�|e[d����?�x�����B
��j���u��gf��>��=
2O���sQ���M�X]�@�-n��^���]#n�ks�?�wN�vq�Pqļ�/:����0s+0u� 4Q��j<�8g�J��J��`�걞6���_,S�1M,�8]��ȹ5EE����j��-g#E9��Fդ�fDY�E�������r���y�;nd�1         8  x�u�=N�@���)����k{�	

(@t4H� R�&ih�� ��qd)N0g��c��n��7�>?�8��R�Ք~�m��Ju;B&[Q�F#��4�������2��Ӄ�@ }�YvѪu�	՛Bs��v��B�c�G���T3~�MR_��;��,ǎkn�J��p@Ӫ\������%��=���ևkB��yo��qS͕@�R��m�ն^9p�R8�Դ�߾dG��6�/T؝���7��p�,�6k-�4�
�:������]g�AZ�m�r��8^np!�KI��6諽����fP�A�2��         6   x�3�4�2��5D!@��D���
#3a",@�%�06�2�46F\1z\\\ ��
+     