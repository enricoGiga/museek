--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3 (Debian 13.3-1.pgdg100+1)
-- Dumped by pg_dump version 13.3 (Debian 13.3-1.pgdg100+1)

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

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: annuncio; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.annuncio (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    modello character varying(255),
    prezzo bigint,
    prezzo_su_richiesta boolean NOT NULL,
    testo character varying(255),
    titolo character varying(255),
    utente character varying(255),
    id_categoria integer,
    id_marca character varying(255)
);


ALTER TABLE public.annuncio OWNER TO enrico;

--
-- Name: categoria; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.categoria (
    id integer NOT NULL,
    nome character varying(255) NOT NULL,
    id_reparto integer
);


ALTER TABLE public.categoria OWNER TO enrico;

--
-- Name: categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: enrico
--

CREATE SEQUENCE public.categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_seq OWNER TO enrico;

--
-- Name: categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enrico
--

ALTER SEQUENCE public.categoria_id_seq OWNED BY public.categoria.id;


--
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: enrico
--

CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO enrico;

--
-- Name: immagine_annuncio; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.immagine_annuncio (
    id_immagine_annuncio integer NOT NULL,
    data oid,
    id_annuncio uuid DEFAULT public.uuid_generate_v4()
);


ALTER TABLE public.immagine_annuncio OWNER TO enrico;

--
-- Name: immagine_annuncio_id_immagine_annuncio_seq; Type: SEQUENCE; Schema: public; Owner: enrico
--

CREATE SEQUENCE public.immagine_annuncio_id_immagine_annuncio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.immagine_annuncio_id_immagine_annuncio_seq OWNER TO enrico;

--
-- Name: immagine_annuncio_id_immagine_annuncio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enrico
--

ALTER SEQUENCE public.immagine_annuncio_id_immagine_annuncio_seq OWNED BY public.immagine_annuncio.id_immagine_annuncio;


--
-- Name: marca; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.marca (
    id character varying(255) NOT NULL
);


ALTER TABLE public.marca OWNER TO enrico;

--
-- Name: reparto; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.reparto (
    id integer NOT NULL,
    nome character varying(255) NOT NULL
);


ALTER TABLE public.reparto OWNER TO enrico;

--
-- Name: reparto_id_seq; Type: SEQUENCE; Schema: public; Owner: enrico
--

CREATE SEQUENCE public.reparto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reparto_id_seq OWNER TO enrico;

--
-- Name: reparto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enrico
--

ALTER SEQUENCE public.reparto_id_seq OWNED BY public.reparto.id;


--
-- Name: tipo_annuncio; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.tipo_annuncio (
    id_tipo_annuncio integer NOT NULL,
    tipo character varying(100)
);


ALTER TABLE public.tipo_annuncio OWNER TO enrico;

--
-- Name: tipo_annuncio_id_tipo_annuncio_seq; Type: SEQUENCE; Schema: public; Owner: enrico
--

CREATE SEQUENCE public.tipo_annuncio_id_tipo_annuncio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_annuncio_id_tipo_annuncio_seq OWNER TO enrico;

--
-- Name: tipo_annuncio_id_tipo_annuncio_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enrico
--

ALTER SEQUENCE public.tipo_annuncio_id_tipo_annuncio_seq OWNED BY public.tipo_annuncio.id_tipo_annuncio;


--
-- Name: categoria id; Type: DEFAULT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id SET DEFAULT nextval('public.categoria_id_seq'::regclass);


--
-- Name: immagine_annuncio id_immagine_annuncio; Type: DEFAULT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.immagine_annuncio ALTER COLUMN id_immagine_annuncio SET DEFAULT nextval('public.immagine_annuncio_id_immagine_annuncio_seq'::regclass);


--
-- Name: reparto id; Type: DEFAULT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.reparto ALTER COLUMN id SET DEFAULT nextval('public.reparto_id_seq'::regclass);


--
-- Name: tipo_annuncio id_tipo_annuncio; Type: DEFAULT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.tipo_annuncio ALTER COLUMN id_tipo_annuncio SET DEFAULT nextval('public.tipo_annuncio_id_tipo_annuncio_seq'::regclass);


--
-- Data for Name: annuncio; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.annuncio (id, modello, prezzo, prezzo_su_richiesta, testo, titolo, utente, id_categoria, id_marca) FROM stdin;
df982fbb-1cf7-4d42-8bd9-9c15b6f1a6cd	RC	2000	f	Vendo clarinetto ottimo stato. come nuovo. anno produzione 2011	vendo clarinetto sib RC	enrico.gigante@gmail.com	101	Buffet Crampon
4b5cde1a-a78f-493b-b2a0-ebbab7cb51d1	Fender	2000	f	Vendo chitarra acustica super intonata, possibile prova presso verona	vendo chitarra acustica fender	enrico.gigante@gmail.com	23	Casio
0e8c5719-cf4b-447d-bdbe-d0424f7d243e	CDP-s100	2000	f	Vendo tastiera come nuova	vendo tastiera	sbrauser@gmail.com	5	Yamaha
\.


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.categoria (id, nome, id_reparto) FROM stdin;
1	Synth a tastiera / Modulari	1
2	Workstation a tastiera	1
3	Digital / Stage Piano	1
4	Master keyboard / Controller Midi	1
5	Arranger a tastiera	1
6	Expander rack	1
7	Campionatori / Groove Box	1
8	Librerie suoni	1
9	Pianoforti acustici	1
10	Organi / Hammond e Cloni	1
11	Fisarmoniche	1
12	Amplificatori per tastiera	1
13	Pedali per tastiera e synth	1
14	Stand per tastiera	1
15	Sgabelli e panche	1
16	Accordatori / Metronomi	1
17	Leggii e altri supporti	1
18	Custodie per tastiera	1
19	Altri accessori per tastiera	1
20	Cavi audio e adattatori	1
21	Chitarre elettriche	2
22	Chitarre semiacustiche	2
23	Chitarre acustiche	2
24	Chitarre classiche	2
25	Mandolini / Ukulele / Banjo	2
26	Amplificatori - Combo per chitarra	2
27	Amplificatori - Testata / Cassa per 	2
28	Valvole per amplificatori	2
29	Pedalini singoli per chitarra	2
30	Pedaliere multieffetto per chitarra	2
31	Effetti a rack per chitarra	2
32	Accordatori / Metronomi	2
33	Corpi / Body per chitarra	2
34	Manici per chitarra	2
35	Pick-up per chitarra	2
36	Battipenna per chitarra	2
37	Manopole / Potenziometri	2
38	Ponti / Tremoli per chitarra	2
39	Meccaniche per chitarra	2
40	Corde per chitarra	2
41	Tracolle per chitarra e basso	2
42	Plettri per chitarra e basso	2
43	Custodie per chitarra	2
44	Stand per chitarra e basso	2
45	Sgabelli e panche	2
46	Leggii e altri supporti	2
47	Altri accessori per chitarra	2
48	Cavi audio e adattatori	2
49	Bassi elettrici 4 corde	3
50	Bassi elettrici 5/6/+ corde	3
51	Bassi acustici	3
52	Amplificatori - Combo per basso	3
53	Amplificatori - Testata / Cassa per basso	3
54	Valvole per amplificatori	3
55	Pedalini singoli per basso	3
56	Pedaliere multieffetto per basso	3
57	Effetti a rack per basso	3
58	Accordatori / Metronomi	3
59	Corpi / Body per basso	3
60	Manici per basso	3
61	Pick-up per basso	3
62	Battipenna per basso	3
63	Manopole / Potenziometri	3
64	Ponti / Tremoli per basso	3
65	Meccaniche per basso	3
66	Corde per basso	3
67	Tracolle per chitarra e basso	3
68	Plettri per chitarra e basso	3
69	Custodie per basso	3
70	Stand per chitarra e basso	3
71	Sgabelli e panche	3
72	Leggii e altri supporti	3
73	Altri accessori per basso	3
74	Cavi audio e adattatori	3
75	Batterie acustiche - Set completi	4
76	Batterie elettroniche - Set completi	4
77	Batterie elettroniche - Moduli / Pad	4
78	Gran Cassa	4
79	Rullanti	4
80	Tom	4
81	Timpani	4
82	Pelli / Cerchi / Ring	4
83	Set di piatti	4
84	Piatti - HiHat	4
85	Piatti - Crash	4
86	Piatti - Ride	4
87	Piatti - Splash	4
88	Piatti - China e Altri	4
89	Percussioni / Etnici	4
90	Meccaniche / Aste / Supporti	4
91	Pedali per batteria	4
92	Sgabelli e panche	4
93	Leggii e altri supporti	4
94	Custodie per batteria	4
95	Bacchette e Spazzole	4
96	Accordatori / Metronomi	4
97	Microfoni per batteria	4
98	Prodotti isolamento acustico	4
99	Altri accessori per batteria	4
100	Sax	5
101	Clarinetti	5
102	Flauti	5
103	Trombe	5
104	Corni / Flicorni	5
105	Tromboni / Bassi Tuba	5
106	Oboi / Fagotti	5
107	Legni - Altro / Accessori	5
108	Ottoni - Altro / Accessori	5
109	Custodie per fiati	5
110	Accordatori / Metronomi	5
111	Sgabelli e panche	5
112	Fiati - Altro / Accessori	5
113	Altri Strumenti a fiato	5
114	Armonica a bocca	5
115	Bocchini e ance per legni	5
116	Sordine	5
117	Bocchini per ottoni	5
118	Leggii e altri supporti	5
119	Violini / Viole	6
120	Violoncelli / Contrabbassi	6
121	Mandolini / Ukulele / Banjo	6
122	Strumenti Silent	6
123	Pianoforti acustici	6
124	Altri strumenti a corda	6
125	Custodie per strumenti a corda	6
126	Accordatori / Metronomi	6
127	Altri accessori per strumenti a corda	6
128	Sgabelli e panche	6
129	Arpe / Cetre	6
130	Accessori - Corde	6
131	Leggii e altri supporti	6
132	Accessori - Archetti	6
133	Mixer analogici	7
134	Mixer digitali	7
135	Equalizzatori	7
136	Compressori / Limiter	7
137	Preamplificatori	7
138	Finali di potenza	7
139	Effetti / Altri processori di segnale	7
140	Monitor da studio	7
141	Cuffie / Auricolari	7
142	Microfoni	7
143	Microfoni da studio	7
144	Schede audio / Interfacce Midi	7
145	Software - Audio / Midi Recording	7
146	Software - Virtual Instruments	7
147	Software - PlugIn Effects	7
148	Registratori multitraccia	7
149	Campionatori / Groove Box	7
150	Librerie suoni	7
151	Player Mp3 / Midi / Karaoke	7
152	Accordatori / Metronomi	7
153	Sgabelli e panche	7
154	Cavi audio e adattatori	7
155	Prodotti isolamento acustico	7
156	Workstation PC	7
157	Basi Mp3 / Midi / Karaoke	7
158	Aste microfoniche	7
159	Leggii e altri supporti	7
160	Radiomicrofoni	7
161	Workstation Apple	7
162	Mixer analogici	8
163	Mixer digitali	8
164	Equalizzatori	8
165	Compressori / Limiter	8
166	Preamplificatori	8
167	Finali di potenza	8
168	Effetti / Altri processori di segnale	8
169	Casse / Monitor Live Attivi	8
170	Casse / Monitor Live Passivi	8
171	Cavi audio e adattatori	8
172	Cuffie / Auricolari	8
173	Microfoni	8
174	Player Mp3 / Midi / Karaoke	8
175	Accordatori / Metronomi	8
176	Strutture Rack e Flight case	8
177	Sgabelli e panche	8
178	Aste microfoniche	8
179	Basi Mp3 / Midi / Karaoke	8
180	Leggii e altri supporti	8
181	Radiomicrofoni	8
182	Tralicci / Americana / Supporti	8
183	Altre attrezzature live	8
184	CD Player / Mp3 per DJ	9
185	Consolle / Controller per DJ	9
186	Giradischi e Testine per DJ	9
187	Mixer per DJ	9
188	Campionatori / Groove Box	9
189	Cuffie per DJ	9
190	Player Mp3 / Midi / Karaoke	9
191	Basi Mp3 / Midi / Karaoke	9
192	Dischi in vinile	9
193	CD Italiani	9
194	CD Stranieri	9
195	Borse e custodie per DJ	9
196	Strutture Rack e Flight case	9
197	Cavi audio e adattatori	9
198	Porta CD / DVD	9
199	Altri accessori per DJ	9
200	Teste mobili	10
201	Scanner	10
202	Laser	10
203	Luci Flowers	10
204	Proiettori luci	10
205	Luci Strobo	10
206	Altri effetti luce	10
207	Mixer Luci / Centraline / Dimmer	10
208	Macchine del fumo / bolle	10
209	Accessori - Lampade	10
210	Accessori - Gelatine	10
211	Accessori - Ganci / Staffe / Clamp	10
212	Cavi per lighting	10
213	Tralicci / Americana / Supporti	10
214	Altri accessori per lighting	10
215	Videoproiettori / Accessori video	10
216	CD Italiani	11
217	CD Stranieri	11
218	Dischi in vinile	11
219	DVD Italiani	11
220	DVD Stranieri	11
221	DVD / Video Didattici	11
222	Porta CD / DVD	11
223	Partiture Rock / Metal / Jazz / Blues	11
224	Partiture Classica	11
225	Metodi Studio / Didattica	11
226	Libri - Biografie	11
227	Libri - Altro	11
228	Riviste Musicali	11
229	Magliette / Felpe	12
230	Cappellini	12
231	Altri prodotti abbigliamento	12
232	Portachiavi / Cinture	12
233	Spille / Pin Badges	12
234	Plettri per chitarra e basso	12
235	Adesivi / Decalcomanie	12
236	Tazze / Bicchieri	12
237	Poster / Bandiere	12
238	Gadget elettronici	12
239	Altri gadget	12
\.


--
-- Data for Name: immagine_annuncio; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.immagine_annuncio (id_immagine_annuncio, data, id_annuncio) FROM stdin;
\.


--
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.marca (id) FROM stdin;
10mfan
2Box
3Leaf Audio
3rd Power Amplification
4MS
65 Amps
A Data
A Designs
A Little Thunder
AA Alfred &amp; Arno Arnold
Aalberg Audio
Aardvark
Aaxtech
AB
Abel Axe Guitars
Ableton
Abm
Absolute
Absolutely Analog
Abstrakt Instruments
Ac Cetera
Academy
Access
Accugroove
Accuphase
Accutronics
Ace
Acer
Acidlab
Acme
Acorn Instruments
Acoustic
Acoustic Image
Acoustic Line
Acoustic Research
Acoustica
Acoustical
Acronn
Acronova
ActitoN
Active
Acus
Ada
ADAM Audio
Adam Hall
ADAM Professional Audio
Adamas
Adamovic
Adams
Adams Media
Adamson
ADB
ADC Equalizer
Adcom
ADD+
ADK
Admira
Adobe
Adonis
ADS Tech
Advance Acoustic
Advance Tube Technology
Advanced Audio
Advent
Aegidius Klotz
AER
Aerial 7
Aero Pickup
Aerodrums
Aeron
AEV
AFX Light
Agean Cymbals
Agile Guitars
Agner Drumsticks
Agostin Custom Guitars
Aguilar
Ahead
Ahlborn Organs
AIAIAI
Air Cell
Airline
AirTurn
Aiwa
Aizen
Akai
AKG
AKG Acoustics
Akiyama
Al Cass
Alan Wilcox
Alaska Pik
Alba Guitars
Albarry
Albert &amp; Mueller
Albert Fahr
Albert Rieder
Alberti
Albion
Alchemy Cymbals
Alctron Electronics
Alden Guitars
AlecB
Alegree
Aleho
Aleken Games
Alembic
Alesa Banjos
Alesis
Alessandro High-End Products
Alessi Vacchiano
Alexander Mainz
Alexandria Percussion
Alfred
Alhambra
Alice
Alisyn
All Parts
All Parts Wood
AllDSP
Allen &amp; Heath
Alleva Coppolo
Alliance
Allora
ALM
Alma Electronics Pedals
Almansa
Alonso Le Dosseur
Alparizio Palma
Alpha Audio
Alpha Recording System
Alpine
Altair
Altamira Guitars
Altec Lansing
Alter Ego
Alternate Mode
Altieri
Altitude Digital
Alto
Alto Ritmo
Altus Flutes
Alumabass
Alusonic
Alutek
Alva
Alvarez
Alvaro
Alysee
AM amplification
AM Audio
AM Mouthpieces
Amabilia
Amadeus Press
Amalfitano Pickups
Amat
Amati
Ambassador
Amber Pickups
Amborg
AMC
Amedia
Amek
American Audio
American DJ
American Drum
American Recorder
Amistar
Amlux
Ammoon
Ampeg
Ampete
Ampex
Amphenol
Amphion
Amplified Nation
Amplilux
Amplirec
AMPTECH
AmpTone lab
Amptown Cases
Amptweaker
Ampwedge
AMS Neve
Amsco
AMT Electronics
Analog Man
Analog Way
Analogue Addicts
Analogue Solutions
Analogue Systems
Analysis Plus
Anamod
Anasound
Anatek
Anatolian
Anchor Audio
Andersen Stringed Instruments
Andino
Andrea Tacchi
Andreas Guitars
Anelli Cremona
Angel
Anolis
ANT - Advanced Native Technologies
Antares
Antari
Antelope
Anthony DeMaria Labs
Antigua Casa Nunez
Antigua Winds
Antoine Courtois
Antonelli
Antonio Aparicio
Antonio Carvalho
Antonio Hermosa
Antonio Lorca
Antonio Picado
Antonio Scandurra
Antoniotsai Guitars
aNueNue
Anygig
Anyware Instruments
AP Audio
Apart
Apc
Apex
Apextone
Aphex
Api
Apogee
Apogeo
Apollo
Applause
Applause by Ovation
Apple
Apple Creek
Applied Acoustic System
Applied Acoustics Systems
Applied Microphone Technology
Aquarian
AquilaSax
AR Resonance
AR Resonnace
Aragona
Aram Music
Aramat effects
Aranjuez
Arbiter Flats
ARC Effects
Arcam
Arcane Inc Pickups
Arcangeli Guitars
Archimede Diffusori
area-mic
Argosy Console
Aria
Aries
Arion
Arirang
Ariston Castelfidardo
Arkaos
Armas
Armin &amp; Mario GROPP
Armin Hanika
Armstrong
Arnolds &amp; Sons
Aroma
Arp
Arrel Audio
Arriba Cases
Arrow
ART
Art &amp; Lutherie
Art Select
Astera
Aston
Asturias Guitars
Asus
Asymmetric
Atari
ATC
Atelier Z
Atlas
Atomic Amps
Atomic Pro
Atomic4dj
ATP
Atrics guitars
ATS
Attack
Audac
Audax
Audere
Audes
Audeze
Audient
Audilaza
Audinate
Audio Accessories
Audio Analogue
Audio Damage
Audio Definition
Audio Developments
Audio Innovate
Audio Logic
Audio Performance
Audio Research
Audio Solution
Audio Technica
Audio Tools
Audiodesign Pro
AudioFactory
Audiofilia
Audioline
AudioLive
Audiomarine
Audiometric
Audiophony
AUDIOPROBE
Audioquest
Audioromance Cables
Audioscope
Audiosir
Audiostatic
Audiotrak
AudioWarrior
Audison
Audition
Audix
August Forster
Augustine
Aulos
Auna
Aune Audio
Auralex
Auratone
Austin Custom Brass
Australian Monitor
Automatic Cases
Autosonik
AV
AV Link
Avalon
Avant Electronics
Avantone
Avid
Aviom
Avolites
Axcess by Giannini
Axesrus
Axess Electronics
AxeTrak
Axis
Axl
Axtech
Axys
Ayers
Ayotte
Ayotte Drums
Azden
Azumi
B 52
B Band
B&amp;C Speakers
B&amp;G Guitars
B&amp;J Serenader
B&amp;K
B&amp;L battere&amp;levare
B&amp;S
B.C. Rich
B.Jacoby Guitars
B2 Effetti
Ba.Ma Tralicci
Babicz
Bacchi tecnologie audio
Bacchus
Bach
Bachmann
Backbeat
Backline
Backun
Backvox
Bad Cat
Baden Guitars
Bae
Bag End
Bakers Guitars
Balbex Drumsticks
Baldwin Piano
Balken
Ballone Burini
Balthur
Bam Cases
Bama
Bang &amp; Olufsen
Banners
Banzai Music
Barber
Barbetta
Barco
Barcus Berry
Bardl
Bare Knuckle Pickups
Barefoot Sound
Barge Concepts
Bari
Bariselli
Barock
Baroni Lab
Barrios Guitars
Bartolini Pickups
Basement Arts
Basf
Basic Audio
Basix
Bass Drum O's
Bassculture
BassLab
Basslines
Basson
Bastl
Bat Drums
Baton Rouge
Batteriasound
Battiloro
Battipenna.it
Bauer Percussion
Bauhaus Walstein
Baxter
BBE
B-Beng
BCGuitars
BD-Design
Bdx Sound
BeamZ
Beard
Bearfoot FX
Beat Up
Beatnik
Beato
Beats
Bechstein
Beckemer
Bedell Guitars
Bedrock
Beechler
Beetronics
Behringer
Belcat
Belkin
Bell
Bellafina
Bellari
Belltron
Bellucci
Belmonte
Beltrami Fisarmoniche
Beltuna
Ben Rod
Benavente
Benchmark
Benedetto
Benge
Benq
Benson
Bentley Pianos
Berg Larsen
Bergantino
Bergen
Bergerault
Bergmann
Berklee Press
Berkos FX
BERP
Bespeco
Besson
Best Brass
Best Products
Best Service
Best Sound
Beta Aivin
Beta Three
Bettermaker
Beyer
Beyerdynamic
Beyma
BG
Bgw
bH Amps
Bholand &amp; Fuchs
Biamp
Biarnel
BIAS
Biema
Big Bang
Big Bends
Big Dipper
Big Fat Snare Drum
Big Fish Audio
Big Heart Slides
Big Joe Stomp Box Company
Big John Effects
Big Knob Pedals
Bigben Interactive
Bigfoot FX
BigHeart
Bigsby
Bill Edwards Publishing
Bill Lawrence
Billboard
Billy Boy Guitars
Billy Hyde
Binak
Binson
Bioworld
Birchwood Casey
Bittner
Bitwig
Bixonic
Biyang
BJFE
BK Butler
BKE Technology
Black Arts Toneworks
Black Case
Black Cat Pedals
Black Diamond
Black Kross
Black Label
Black Lion Audio
Black Star Design
Black TusQ
Black Volt Amplification
Blackheart
Blackout Effectors
Blackshark
Blackstar
Blackstone Appliances
Blade
Blakemore Effects
Blakhart
Blankenship
Blaupunkt
Bleep Labs
Blessing
Blista
Blitz
Blu Music
Blue
Blue Juice
Blue Sky
Blueamps
Bluebird '56 Guitars
Bluedio
Blueridge
Blues Saraceno
BluexLab
BluGuitar
Bluthner
BMF
BMS Speakers
Bo Pep
Bob Ackerman
Bob McGrath
Bob Reeves
Bobcat
Body Glove
Bogart Bass
Bogner
Bohemia Piano
Bohemian Guitars
Bois Ligatures
Boisselot
Bolton
Bompezzo
Bonade
Bond Guitars
Bondi Effects
Bone Drum
Bontempi
Boo Instruments
Boomerang
BoomToneDj
Bo-one Guitars
Boosey &amp; Co
Boosey &amp; Hawkes
Borgani
Borgna
Born to Sing
Bornemark
Borsini
Boschma
Bose
Bosendorfer
Bosh
Bosphorus
Boss
Boston
Bosworth
Botex
Boucher
Boulder Creek Guitars
Bourgeois Guitars
Bowers &amp; Wilkins
boxinsonorizzato.it
Box-Profi
BOXY
Bozo Podunavac
BPM Studiotechnik
Brady
Brainwerks
Brancher
Brand X
Brandoni
Brannen Cooper
Brauner Microphones
Bravado
Brave Amps
Brazen Guitars
BRBS Amplification
Breach
Breath Builder
Bredamhill
Breedlove
Brenn &amp; Sohn
Brent Averill
Brentwood Benson
Breslmair
Brian May Guitars
Brian Moore
Bricasti Design
Briccialdi
Brice Basses
Brilhart
Briteq
Broadwood &amp; Sons
Brodmann
Brownsville Guitars
Bruck
Brunetti
Bruno Amp
Bruno Tilz
Bruno Traverso Guitars
BRYCE
Bryston
BSC Trumpets
BSM
BSS Audio
Bst
BSX Bass
BSX By Paiste
Buchla
Budda
Buddy Rich Drum Company
Buescher
Buffalo Fx
Buffet Crampon
Bugari Armando
Bugera
Bulgheroni
Bulk Sonica
Bull
Bullet Cables
Bundy
Burger &amp; Jacobi
Burguet
Burkart
Burkey
Burl Audio
Burn Fx
Burns Guitars
Burny
Burriss Amps
Buscarini
Busilacchio
Buttarini
ButtKicker
Buzz Electronics
By Marco Fisarmoniche
BYOC
C Tech
C&amp;C Drums
C.M. Prestige
c.t.e.
Cabart
Cabasse
Caber Amplificazioni
Cable Corp
Cablo Custom
Cabotron
Cabre
CAD
Cadac
Cadenbach Acoustics
Cadeson
CAIG
Caimbè
Cajon
Cajon Rock
Cajonrock
Cakewalk
Cal Mil
Calace
Calato
Caliber Guitars
Calicchio
Caline
Calisia
Callaham
Callet Trumpets
Calrec Audio
Calsbro
Calton Cases
Camac
Camarota Basses &amp; Guitars
Camber
Cambridge Audio
Cambridge SoundWorks
Camco
Cameo
Camillo Perrella
Campbell American Guitars
Camps
Canare
Cannon Electric
Cannon Percussion
Cannonball
Canon
Canopus Drums
Cantini Strings
Canto
Canton
Cantulia
Capa
Caparison Guitars
Capek
Capsound
Carbondix
Carboni
Carbostick
Cardinal Instruments
Cardinali
Career
Carella Guitars
Caremi
Cargoleni
Carisch
Carl Fischer
Carl Martin
Carlo Giordano
Carlo Robelli
Carl's Custom Guitars
Carlsbro
Carlton
Carmelo Catania
Carol
Carol Brass
Carol-Ann Amplifiers
Caroline Guitar Company
Carr Amplifiers
Cartec Audio
Carter
Carver Amplifier
Carvin
Casio
Castagnari
Castley
Catalinbread
Catalyst
C-Audio
Cav Audio
Cavagnolo
Cavicchi
Cayin
Cayman
CB Drums
CB Percussion
CBI
Cdrum
C-ducer
Celemony
Celestion
Centent Cymbals
Center Pitch
Centerstream
CEntrance
Century Drums
Ceriatone
Cerveny
Cerwin Vega
Cesva
CG Mouthpiece
Challen &amp; Son
Chameleon Labs
ChamSys
Chandler
Chandler Limited
Changye
CHAOS.5
Chapman Guitars
Chapman Stick
Chappell
Chario
Charles Bassoux
Charles Bay
Charlie Lab
Charon
Chartbuster
CharterOak Acoustic
Charvel
Chase Bliss Audio
Chase Tone
Chatelier
Chauvet
Cheetah
Chennel
Cheri
Cherny
Cherry Lane
Cherry Music
Cherrystone Bass
Cherub
Cheval Guitars
Chevin
Chevin Research
Chiayo
Chicago Blues Box
Chicago Iron
ChickenPicks
Chickering
Chieftain
Children's Book Store
Chonwoo
ChopSaver
Chowny
Chris Campbell Guitars
Chroma Caps
Chunk Systems
Ciare
Cicognani
Cicolin
Cigalini
Cigano Guitars
Cimar Guitars
Cinder Block
Cioks
Citron Guitars
Citronic
Clanalog.com
Claricord
Clarissa
Clark Amplification
Clarke
Clash Guitars
Classè Audio
Classic Cantabile
Claude Lakey
Claude Marchand
Clavia
ClavinPiano
Clay Paky
Clayton
Clear Audio
Clear Voice
Clearsonic
Cleartone
Clement
Cliff
Clifford Essex Music
Clifton
Clinch FX
Cling On
CLN Pedalboards
Clockaudio
Cloe Guitars
Cloud Amplifiers
Cloud Microphones
Cloud Mixer
Clover Basses
Club Salsa
CM Labs
Cmatmods
CME
CMI
CNB Cases
CoalTone Guitars
Cobalt
Cobra International
Coda Audio
Codem Music
Coef Lighting
Coemar
Coffin
Coffin Case
Cog Effects
Cole Clark Guitars
Coleman Audio
Coles Microphones
Colin Goldie
Collard &amp; Collard
College Sax
Colletto
Collings
Collins
Colorsound
Columbus Washboard
Combs
Comet
Comfort Strapp
Community
Compania
Compass
Compulite
Conde Hermanos
Condre
Conductor
Confettishots
Conklin
Conn
Conquest
Consoli Pipe Organs
Consuelo Lopez
Contemporanea Sao Paulo
Contest
Contreras
Control Synthesis
Converse
Coolsound
Cooper FX
Cooper Sound
Cooperfisa
Coopersonic
Cooperstand
Copilot Fx
Coral
Cord Lox
Cordera
Cordial
Cordier
Cordlox
Cordoba
Core Equipment
CoreX2
Corland
Cornell
Cornford Amps
Coron
Corsin
Cort
Cortex
Cortez
Cosmolight
Cosmosound
Costalab
Couesnon
Countryman
Courtois
Covington Guitar Effects
Coxx
CP
CQuadro Drums
Crafter Guitars
Crane
Crane Song
Crate
Crave
Craviotto
Crazy Tube Circuits
CRB
CreamWare
Creation Audio Labs
Creative Concepts
Art Strings
Arta Guban
Artcelior
Artec
Artemis Editions
Artesound
Artisan
ArtistPro
Artley
Artmann
Artonus
Arturia
Asahi
Asba
ASG Guitars
Ashbory Bass
Ashdown
Asher Guitars
Ashland
Ashley Mark
Ashly Audio
Ashton
Ask Video
ASS
Associated
Astatic by CAD
Astell&amp;Kern
Creative Technology
Creek
Creepnomore
Creepy Fingers Effects
Crest Audio
Crestline
Crestron
Crestwood
Critter &amp; Guitari
Cromwell
Crookwood
Croson
Crown
Crowther Audio
Crucianelli
Cruiser by Crafter
Crumar
Crusader Guitars
CTS
Cuenca
Curci
Curry
Curt Mangan
Curtis Novak
Cusack Effects
Custom Audio Electronics
Custom Electronics
Custom Shop Parts
Custom Tones
Custom77
CVL
Cwejman
Cyber Acoustics
Cycling 74
Cyclone Analogic
Cymatic Audio
Cymbal Crown
Cymbomute
Cympad
Cyril Morin
Czarcie Kopyto
D TAR
D&amp;B Audiotechnik
D&amp;R
D*A*M Differential Audio Manifestationz
D.A.V. Electronics
D.E.I. SYSTEM
DAD Dynamic Audio Device
D'Addario
Daddy Mojo
Dadi
Daewoo
Dag
Daila Percussions
Daion
Daisy Rock
Daito
Daking
Dale Forty
D'Alessandro
Dallapè
Dallas Arbiter
Dallas Rangemaster
DAM
Damage Control
Damon
Dampit
Dan Armstrong
Danca Audio
D'Andrea
Danelectro
D'Angelico Guitars
Dangelo Amplifiers
Dangerous Music
Daniele Giardina
Danmar
DAP Audio
Daphon
D'Aquisto
Darco
Darestone
Darkglass Electronics
DAS
Daslight
Dateq
Dava
Dave Guardala
Dave Hall Amplifiers
Dave Smith Instruments
David Allen Pickups
David Bray Amps
David Eden
David Gage
David Hite
David Naill
Davis Acoustic
Davoli
Dawn
Dawner Prince Electronic
Dayton Audio
DB Percussion
DB Technologies
DBS electronic
DBX
DBZ Guitars
DDA Console
DDrum
Ddt
De Armond
De Gier Guitars
De Haske Publications
De Salvo
De Sisti
Deagan
Dean
Dean Markley
Death by Audio
Decibel Eleven
Decksaver
Dee Jay Service
Deep
Deering
Defil
Definitive Technology
Defraia Guitars
DEG
Deimel Guitarworks
Delano
Delcam Audio
Dell
Della Noce
Delo Drums
Delson
DeltaLab
D'Em Crazy
Demeter Amplification
Denis Wick
Dennilu
Denon
Denon DJ
DeSalvo
Devi Ever
Devialet
Devine Entertainment
Deviser
Dexibell
DG De Gregorio
Di Berardino Drums
Di Giorgio
Di Leonardo
Di Zhao
Diago
Diamante
Diamond
Diapason
Diaz
Dickies
Didgeridoo Store
Dietmann
Diezel
Digico
Digidesign
Digigram
Digisynthetic
Digital Audio Denmark
Digital Audio Labs
Digital Music Corporation
Digital Music Doctor
Digital Redux
Digital Reference
DigiTech
Dikom
Dillion Guitars
DiMarzio
Dimavery
Dime Amplification
Dime Hardware
diMedici
Dingwall Guitars
Dino Baffetti
Dino's Guitars
DiPinto
Direct Sound
Diril Cymbals
Dirty Boy Pedals
Disaster Area Amps
Discacciati
Discopiu
Disney
Disney by Washburn
Display and Play
Divided by 13
Dixon
DJ Flare
Dj Pro
DJ Qbert
DJ-Shield
DJ-Tech
Dls Effects
DM
DMC
DMRLCargo
DNA Analogic
Dobro
DocZac
DOD
Doepfer
Dogal
Doina
Dolmetsch
Dolnet
Dolphin's Sound
Domus Musica
Donlis
Donner
Dophix
D'Orazio
Doreli
Dorfler
Dori
Dorrough
Dot on Shaft
Douglas Guitars
Dowina
Down 2 Earth
Dpa Microphones
DR Pro
DR Strings
Dr. Bohm
Dr. Dan's
Dr. Green
Dr. Scientist
Dr. Z Amplification
Dr.J Effects
Dr.No Effects
Dragonfly
Dragonfly Clothing Company
Dragoon
Drake Mouthpieces
Drawmer
Dreadbox
Dream Cymbals
Dreamaker Amps
Dreambow
Dreamsongs Pickups
Driftwood Amps
Drive
Drum Art
Drum Fun
Drum One
Drum Os
Drum Pike
Drum Sound
Drum Tech
Drum Workshop
DrumCraft
Drumdial
DRUMM3R
Drummer's Design
Drumometer
Drumstatic
Drybell
DTS Lighting Company
Duallist
Dudemusic
Duende
Duesenberg
Duke
Dukoff
Dumble
Dunbar
Duncan Designed
Duncan Performer
Dunlop
Dunnett
DuP
Dupont
Durham Electronics
Dusty Strings
DV Mark
Dvorak
DVR
DW
DW Drums
Dwarfcraft Devices
Dynacord
Dynarette
Dynasonics
Dynasty
Dynatone
Dynaudio
Dynaudio Acoustics
E Cords
E MU
E Mu Systems
E.C. Kerby
E.Energy
E3works
Eagle
Eagle Line
Eagle Mountain
Eagletone
EamLab
EAR SONICS
Ear Trumpet Labs
EAR Yoshino
Earlham
EarthQuaker Devices
Earthtone
earthworks
East Meets West
East UK
East West
Eastman
EastWest
Eastwood Guitars
Easy Play
EAW
EBO
E-Bow
EBS
Ebtech
Ec Pedals
Eccleshall
Echo
Echo Digital Audio
Echobel
Echolette
Echopark
Ecler
Eclipse
Eclipse Trumpets
Ecm
Ecorda
ECS
EdC Sound
Eddy Finn
Eden
Edicron
Edifier Speakers
Edirol
Editors Keys
Edward Dada
Edward Van Halen
Fantek
Edwards Guitars
Edwards Trombones
Efesto Production
Effector 13
Effectrode
Effects Pedal Boutique
Effedot
Effettidiclara
Egmond Guitars
Egnater Amplification
Ego Lighting
Ego Sonoro
EICH Amplification
Eigenlabs
Eighteen Sound
Eiki
Eko
Eko Guitars
EKS
El Dorado
El Musico Loco
El Torres
Elation
Electra Guitars
Electric Piano Italia
Electrical Guitar Company
Electrix
Electro Faustus
Electro Harmonix
Electro Voice
Electrocompaniet
ElectroLead
Electronic Orange
Elektron
Elena Soprani
Elettronica Legend
Eleuke
Eleven Electrix
Elgam
e-licktronic
Eliminator
Eliminator Lighting
Elite Core
Elite Tone
Elixir
Elka
Elkavox
Elkhart
EllediSound
Elli-Sound
Elmwood Amps
Elrick
Elysia
EM Books
EM Winston
Emagic
Emanating Fist Electronics
Embergher
eMedia
Emerson
Emes
EMG
Eminence
Eminent
Emma
Emma Electronic
Emo Systems
Emperion Guitars
Empire Media
Empirical Labs
Empress
EMS
Emt
Emu
Encore
Endangered Audio Research
Endorphin.es
Endust
Energy
Engelhardt
Engineered Case Manufacturers
Engl
Engl Amps
Eno Pedals
Ensoniq
Enttec
Entwistle Custom Pickups
Eowave
Epa Sound
EPE
Epic
Epicure Speakers
Epifani
Epiphone
Epm Corporation
Epos Acoustics
Epson
Equator Audio
Erard
Ergoplay
Erica Synths
Erjk
Ernie Ball
Ernst Kaps
E-ROS
Esarc
Esh Bass
ESI
ESI Professional
Esio Audio
ESM Mouthpieces
Eso Mixer
ESP
Espana
Ess
ESS Electronic Sound Solution
Essetipicks
Essex Pianos
Esteban
Estephan
Esteve
Estive
Estonia Pianos
ETA Systems
ETC
Etek
Ethos Overdrive
Etoile
Euphonic Audio
Euphonix
Eurocable
Eurocases
Eurolegno
Eurolite
Euromet
Europoint
Eurotruss
Euterpe
Evandale
Evans
Eve Audio
Event
Eventide
Everly
Evertune
EVH
Evidence Audio
EvoLight
Evolution
E-Wave
Ews
Excalibur
Excelsior
Exclusive
ExEf
E-Xence
Expansion Tank
Expert Sleepers
Exploraudio
Exposure
Extreme
Extreme Sound
EZ Dupe
F Bass
F.E. Olds
F.lli Alessandrini
f.lli Vaccari
F.Lorée
Faber German Guitar Parts
Fable Sounds
Faby
Faceless FX
Facelift
Factory Guitars
Factory Metal Percussion
Facus
Faderfox
Fahrenheit
FAIRBANKS GUITARS
Fairfield Circuitry
Fairmont
FaitalPRO
Faith Guitars
Fal
Falcon
Famc
Fame
Fancy Pans
Fane
Fanfoni
Fanndec
Fano Guitars
Fantini Accordions
Fantom
Fantoni
FarEast
Farfisa
Fargen Amps
Farida Guitars
Farley's
Fasch
Fast Axe
Fat Congas
Fatar
Fattoria Mendoza
Favored Nations
Faxx
FBG Fatboy Guitars
FBT
Fclef
Fdb Audio
FEA Labs
Featherweight
Feeldrum
Feeltune
Fender
Fender Custom Shop Apparel
Fender Footwear
Fenix
Fenton
Fernandes
Ferrara
Ferrarotti
Ferrarotti Chitarre
Ferrofish
Feurich
Fever
Ffalstaff
FGN Guitars
FIAS Stradella
Fibes
Fibracell
Fides
FiiO
Fine Guitars
Fine Resophonic Guitars
Finger Fitness
Fingerease
Fingerweights
Finhol
FIP (fabbrica italiana pianoforti)
First Act
Fisart
Fisher
Fishman
Five-O by Montarbo
Fivre
Flame
Flametone
Flash
Flatiron
Flaxwood
Flea Bass
Flea Market Music
Fleta
FlexWaves
Flight
Flip Oakes Wild Thing
Flix
Floda Guitars
Florea
Florencia
Floret
Floyd Rose
Fluid Audio
Flux
FMR
Focal
FocGear
Focusrite
Fodera
Fohhn
Fom
Fontanot
Formanta
Formula B
Formula Sound
Forssell Technologies
Fortin
Fostex
Fox
FoxGear
Foxpedal
FoxRox
Foxx
Fp Group
FP Professional Cases
FPD Drums
F-Pedals
Fractal Audio
Framer
Frameworks Guitars
Framez
Framus
FRANCK BICHON
Francois Louis
Franklin Strap
Frantone
Franz Kirschnek
Frap Tools
Frate Precision
Fratelli Crosio
Fratelli Crosio Stradella
Fratelli Patricola
Fredenstein
Frederick Hemke
Fredric Effects
Free the Tone
FreeFloat
Freehand
Freekish Blues
Frenzel Amps
Frequency Central
Fret King
FretLight Guitars
Fretlord
Fridgebuzzz
Friedman Amplification
Frontalini
Frontier Design
Frontier Design Group
FrontStage
Frostwave
Frudua
Fryer Guitars
Fryette
Fuchs
Fujiha
Fulltone
Fun Generation
Funktion-One
Furch
Furcht &amp; Söhne
Furlanetto
Furman
Furstein
Fusco Guitars
Fusion
Future Retro
Future Sonics
Futurelight
FX
FX Case
FXpansion
FYRD
G Force
G Lobal
G&amp;BL
G&amp;L
G&amp;P
G. Schirmer
G.Art
G.I.S.
G2D
G7th
Gabriel Sound Garage
Gain by FGN
Galactron
Galanti
Galanti Classic Organs
Galaxy
Galaxy Audio
Galileo
Gallagher Guitars
Galli
Gallien Krueger
Gallinotti
Galotta
Galveston Guitars
Garbujo Guitars
Gard
Garrard
Garrison
Garritan
Gary Hurst
Gary Sugal
Gaskell Guitars
Gato
Gator
Gatt Audio
Gaucho
Gauger Percussion
Gauss
Gaveau
Gavio
Gawharet El Fan
Gazley
GBC
GDE
Gear One
Gear4music
Gebr. Alexander mainz
GeekMacDaddy Pedals
Geloso
Gem
Gem Sound
Gembird
Gemeinhardt
Gemini
Gemini DJ
Genalex
Genelec
General Electric
General Music
General Rohren
Genesis
Genius
Genz Benz
Genzler
George Dennis
George L
George L's
George Way Drums
German Light Products
Germino
Get'm Get'm
Getzen
Gewa
Geyer
GFI System
GFO Flight Cases
GForce
GFS electronics
GFS Pickups
GGP Sound
Gherson
GHS
GHS Strings
Giannini
Giardinelli
Gibraltar
Gibson
Gibson Custom Shop
Gig
Gig FX
Gig Skinz
Gigliotti
Gigrig
Gik Acoustics
Gil Yaron
Giovanetti Hand Wired
Gitane
Giulietti Fisarmoniche
Giussani
Giustozzi
Gkg Gary Kramer Guitars
G-Lab
Glaesel
Glaresoft
Glass Master
Glasser
GLB Sound
Glendale
Glider
Global Audio by CAD
Global Truss
Glockenklang
Glorious
GLX Lighting
GLX Pedals
Glyph
GMedia Music
GML
Gmp Guitars
GMS
GNG Guitars
GNI Pedals
Godin
Godlyke
Godvinez
Godwin Guitars
Godwin Organs
Goedrum
GoGo Tuners
Goja
Gold Line
Gold Star
Gold Tone
Golden Age
Golden Cup
Golden Gate
Golden Sound
Golden Ton
Golden Touch
Goldo
Goldpoint
Goldsound
Goldtone
Goldwood
GOLEM instruments
Goliath Studio
Gon Bops
Gonzales
Goodmans
Goodsell Amplifier
Goosoniqueworx
Gope
Gordius
Gordon Smith
Gorilla Snot
Görs &amp; Kallmann
Gotoh
Gower
GR Basses
GR Mouthpieces
Grace Design
Grado
Graph Tech
Grassi
Gravity
GRBASS
GRCustomize
Great Divide Guitar
Great River Electronics
Greco
Greedtone
Greenback
Greenhouse Effects
Greenwich
Greer Amps
Greg Bennett
Greg Black
Gretsch
Gretsch Drums
Gretsch Guitars
GreyDressedBoy
Griego Mouthpieces
Gripmaster
Griven
Groove Tube
Groove Tubes
Groovster Strings
Grosh Guitars
Grossman Music
Grotrian Steinweg
Grover
Grover Trophy
Grp Synthesizer
GRP Synthesizers
GRS
Grundig
Gruv Gear
Gryphon Audio
GS Light
GSA Audio
GTX Guitar
Guanex
Guardala
Guerrini
Guil
Guild
Guillemot
Guistar Picks
Guitar 411
Guitar Center
Guitar Fetish
Guitar Heads
Guitar Hero
Guitar Research
Guitar Rings
Guitar Tech
Guitares Donadini
Gulbransen
Gullansky Lab
Gurus
Gut-a-Like
Guvnor Guitars
Guyatone
Guzauski-Swist
GW Guitars
H&amp;S
H.J. Bernstein
Haagston
Haar Guitars
Haeussel
Hafler
Hagstrom
Kahler
Hahn Guitars
Hal Leonard
Halifax
Hall
Hallmark
Halo Guitars
Hamer
Hamichord
Hamilton Stands
Hammerax
Hammig Flutes
Hammig Philipp
Hammond
Hand Crafted Labs
HandHeld Sound
Hand-i wood
Handmade
Hanika Guitars
Hannabach
Hans Hoyer
Hans Mayer
Hansenfutz
Hao
Hapi
Harbeth
Harbinger
Hardcase
HardWear
HardWire
Hardy
Harley Benton
Harman Kardon
Harmon
Harmonic Design
Harmonic Vision
HarmonicaLessons.com
Harmony Guitars
Harper
HarpGear Amplification
Harpsicle Harps
Harptone
Harrelson Trumpets
Harrier
Harrison Music Education Systems
Harry Benton
Harry Pedler
Harsan Mihalia
Hart Dynamics
Hartke
Hartman Pedals
Hartmann
Harvest Bags
Hauptwerk
Hawkes &amp; Son
Hawthorne by Walden
Hayden Amplifiers
Hayman
Haynes
Haywire Custom Guitars
HBE
Headfx
Headliner
Headrush
Headstrong Amplifiers
Headway
Hear Technologies
Hearos
Heartfield
Heavy Electronics
Heckel
Hedgehog Stompboxes
Heet Sound
Heil Sound
Helin
Helios Electronics Ltd
Hemingway Digital Pianos
Hennessey Guitar Parts
Henriksen
Henry Red Heller
Herco
Hercules
Hercules Stands
Herda Guitars
Heritage
Hermann
Hermida Audio
Hernals Tokyo
Hero
Hertz
Hesu
Hetman
Hevos
Hexe
Hexinverter Electronique
HH Electronic
HHB
Hi-Case
Hicon
Hidersine
HifiMan
High End Systems
High Spirits
Highwood
Higlander
Hijos de Vincente Tatay
Hill
Hillwood
Himmelstrutz
HiPercussion
Hipshot
Hirsbrunner
Hiscox Cases
Hitachi
Hitec Audio
Hiwatt
HK Audio
HK-Instruments
Hls Audio
Hodge
Hoepli
Hoffmann &amp; Kuhne
Hofmann &amp; Czerny
Hofmann Wien
Hofner
Hohner
Holling &amp; Spangenberg
Hollywood
Hologram Electronics
Holophone
Holton
Homebrew Electronics
Homespun
Hondo
Honsuy
Hope Lab
Hopf
Hora
Horizon
Hornby Skewes
Hornets
Horngacher
Horugel
Hosa
Hosco
Hoshino
Hosiden
Hot Cabs
Hot Licks
Hot Picks
Hot Sticks
Hotone
House of Blues
House of Troy
Houston Publishing
Howarth
Hoyer
HP
HQ Percussion
HQ Power
HQRP
Hranov
HRK
Hsinghai Piano
Htx Guitars
Hub van Laar
Hubschen
Hudson Electronics
Hudson Music
Hughes &amp; Kettner
Huller
Hulton Archive
Human Base
Human Gear
Humes &amp; Berg
Humfree
Humfrees
Humicase
Hunday Guitars
Hupfeld
Huss &amp; Dalton
Hutchins Guitars
Huttl
HXM
HyperSynth
Ial Sound
Ianiro
Ianni Organetti
Ibach
Ibanez
Ibiza
Ice Pix
IceScream Pedals
Icon
iConnectivity
iFi Audio
iGIG Cases
IGS Audio
IK Multimedia
iKey Audio
iko case
ILIO
IMAGE LINE
IMG Stage Line
Inaki Sebastian
Incagnoli
INDERBINEN
India Street Percussion
Indiana Line
Indie Guitars
Industrialectric
Infinity
Infinity Guitars
Ingram Sherman
Inima
Inkel
Innerclock Systems
Innovative Music Systems
Innovative Percussion
Input Logic
i-nstruments
Integrity Music
Intek
Intellijel
Intellitouch
Inter-M
International Music Company
International Sound
Intimidation
Involight
Inward Connections
Ion Audio
IPL
iPlayMusic
IQS
Iron Ether
Ironbridge Electronics
Ironess USA
Irongear
Islander Ukulele
Isoacoustic
iSong
IsoNode Pro
ISP Technologies
I-Spira
Istanbul
Italia
Italian Stage
ITBEATS
iZotope
J&amp;D Guitars
J&amp;H
J.Michael
J.Rockett Audio Designs
Jabra
Jacaranda
Jack Daniel's
Jack Deville Electronics
Jackson
Jackson Audio
Jacoland
Jacques
Jacques Capelle
Jad&amp;Freer
Jade Audio
Jaden Rose Guitars
Jaeger
Jakob Winter
Jam Hub
Jam Pedals
Jambone
JAMedia
James Goodall
James Neligan
James Trussart Guitars
Jamey Aebersold
Jam-Mate
Jammin
Jamo
JamStands by Ultimate Support
Janagy
JanAid Guitars
Jands
JangleBox
Jarre Technologies
Jasmine by Takamine
Jaspers
Jay Haide Violins
Jay Turser
Jaydee
Jaytec
Jazzkat
JazzLab
JazzMutant
JB Lighting
JB Systems
JBE Pickups
JBL
Jbn
JBR WOOD
JDK
Jean Paul
Jedia
Jedson Guitars
Jeff Gold Graphics
Jeff Rowland
Jeffrey David
Jellifish
Jen
Jensen
Jerry Jones Guitars
Jerzy Drozd
Jess Loureiro
Jet 2000
Jet City Amplification
Jet Tone
JetSlide
Jetter
JHS Pedals
Jiggs
Jim Dunlop
Jim Harley
Jim Redgate Guitars
Jim Reed
Jimi Hendrix
JJ Electronics
JJ Guitars
JJ Scott
JK Audio
JL Cooper
JLH Technologies
Jm Forest
Jmi
JMLab
Jo Ral
Joan Cashimira
Jocavi
Jodavi
Jodi Head
Jody Jazz
Joe Barden
Joe Montineri Custom Drums
Joemeek
Johann Bruck
Johannes Gerber
Johannus Organs
John Brinsmead &amp; Sons
John Hornby Skewes
John Packner
John Pearse
Johnson
Jolana Guitars
Jolida
Jollysun
Jomox
José Lopez Bellido
Jose Ramirez
Jose Torres
Josef Lazar
Joseph Klotz
JOSEPHSON
JOTLER CUSTOM GUITARS
Joyful Noise Drum
Joyo
JTS
Juan Estruch
Juan Hernandez
Juan Martinez
Jubal
Juice Goose
Jupiter
JustEnough
Jvc
JZ Microphones
K&amp;H Kühnl &amp; Hoyer
K&amp;K Sound
K&amp;M
Kable Keepers
Kaces
Kafko
Kala Ukulele
Kalison
Kalmann Piano
KAM
Kamaka
Kangaba
Kanile'a
Kanstul
Kaotica
Kappler Coblenz
Karathon
Karl Glaser
Karma
K-array
Kashian
Kastner Pianos
Kasuga
KAT Percussion
Katho
Kawai
Kay
Keeler Designs
Keeley
Kef
Keilwerth
Keiper Guitars
Keith McMillen
Keller
Kellermann
Kelly
Kemble
Kemp Elektroniks
Kemper
Kempton
Ken Rose
Ken Smith
Kendrick
Kensington
Kent Armstrong Pickups
Kenton
Kentucky
Kenwood
Kenyon
Kepur
Kerly
Kessel Pianos
Ketron
Keyb Organ
Keyhelm
Keywear
Khaler
Khan Audio
KickPort
Kidsplay
Kiesel
Kilpatrick Audio
Kimaxe
Kimball
Kimbo
Kind Audio
Kinetik
King
King Capitol Punishment
King David
King Doublebass
KING TONE GUITAR
King's Stone
Kingsley Amplifiers
Kingston
Kinman
Kinsman
Kirchhoff Schlagwerk
Kismet
Kiso Suzuki
kiStation
Kitty Hawk
Klark Teknik
KLD
Klein &amp; Hummel
Klein Guitars
Klein Pickups
Klemt Echolette
K-Line Guitars
Kling &amp; Freitag
Klingmann
Klipsch
Klira
Klon
Klotz
Kluson
KMD
Kme
Knabe Pianos
Knaggs Guitars
Knas
Knosti
Koala Music
Kobble
Koch
Kodak
Kohlert
Kohno Guitars
Kolberg
KOMA Elektronik
Komet
Konig
Konig &amp; Meyer
Kontrol Dj
Kooiman
Kool Light
Koolsound
KOR Pedals
Korala
Korg
Kornbherg
Koss
Kosth
Kotato &amp; Fukushima
Kraken Guitars
Kramer
Krank
Krank Amplification
Kratt
Krauss
Krell
Kremona
Krest Cymbals
KRK
Kronbauer
Krundaal
KS Audio
KSD
KSdigital
KSP
KTS Titanium
Kubicki
Kultur
Kumika
Kun
Kurzweil
Kush Audio
Kustom
KV2 Audio
Kvant
Kydd
Kyser
L.A. Sax
L.POLVERINI 1889
L.R. Baggs
La Audio
La Bella
La Mancha Guitars
La Patrie
LAA Custom
LaB di Lucio Bazzocchi
Lab Gruppen
Lab.gruppen
LaBella
Laberte-Humbert
Laboga
Lace
LaCie
L-Acoustics
Lafin
LAG Guitars
Laguna
Lake people
Lakewood
Lakland
Lama
Lamberson
Lamp Lite
Lampcraft
Lampo
Lan Audio
Landgraff
Landing Bass
Landola
Laney
Lang Amplification
Lange
Langevin
Langner
Lanikai
Lantec
Lap axe
Lark
Larrivèe
L'Artigiana
Laserworld
Laskey
Latch Lake
Latin Benson
Latin Percussion
Laurus
Lauten Audio
Lava
LaVoz
Lavry Engineering
Lawton
Lax
Layolo
Lazeman
Lazy J Projects
LD Systems
Le Soprano
Leach Guitars
Leap Motion
Lebayle
LeBlanc
Leblanc by Backun
Lechner
Lectrosonics
LedLux
Ledwall Star
Lee Jackson
Lee Oskar
Leedy Drums
Leem
Lefima
Legator
Legend Guitars
Légère
Legg Guitars
Lehle
Leho Ukuleles
LEM
Lenco
Lengardo
Lenzner
Leo Quan
LepLoop
Leslie
Levin Guitars
Levinson
Levy's
Lewitt
Lexicon
Lexonpro
Lien Cheng
Life
Lifetime
Light Planet
Lightfoot Labs
Lighting
Lightmaxx
LightSnake
LightWave
Limec
Lindell Audio
Linden
Lindert
Lindo
Lindy
Lindy Fralin
Line 6
Line Audio
Line for Stage
Line Parts
Line6
LINFAUDIO
Link Italy
Linko
Litec
Litecraft
Lite-Puter
Litestructures
Little Labs
littlepapercones
Littlite
Liutart e Tube Art
Liuteria Canova
Liuteria Cesarini
Liuteria Guarnieri
Liuteria Zacchetti
Liutus
Live Wire
Live Wire Solutions
Livewire Electronics
Livid Instruments
Lizard Spit
LM Products
LMI
Loco Box
Locto
Lodi Guitars
Logan
Logic Keyboard
Logidy
Logjam Music
Lollar Pickups
Lombardi
London City
Longhin Ampli
Loop-Master
Looptrotter
Lotus
Lotus Pedal
Loud Guitars
Loud Professional
Louis Electric Amplifier
Louis Renner
Lovadina
Lovatone
Lovepedal
Loveri Usa
Lovetone
Lowden
Loxx
LR Baggs
LR Soundproof
LsL Instruments
Lss
LT Sound
Ltd
Lubrostage
Lucchini
Lucero
Lucid
Lucida
Lucien
Ludwig
Luis Romero
Luke &amp; Daniel
Lumineze
Lumpy's Tone Shop
Luna
Lunastone
Lundgren Pickups
Lupifaro
Lute Hole
Luthiers
Luxman
Luyben
Lynx Studio Technology
Lyon By Washburn
M Audio
M Capitale
M Live
M&amp;G Saxophones
M.J. Douglas
M@F
M3 Emthree
MA Lighting
Maag Audio
Mac Audio
Mack
Mackie
Mad Corporation
Mad Distribution
Mad Hatter Stompboxes
Mad Professor
Madamp
MadCat
Madison Amps
Madrigal Guitars
Maeari
Maestro
Magic Fluke
Magic Fx
Magix
Magma
Magnamusic
Magnat
Magnatone
Magnetic Effects
Magnetics
Magneto Audio Devices
Magnum
Magnum Pedal Steel
Magrabò
Mahaffay Amps
Mahalo
Mahi Mahi
Mahilele
Mahillon
Mahimahi
Mahler
Maino e Orsi
Maison
Majestic
Majid DRUMS
Majik Box
Majones
Makala
Makassar
Make Music
Make Noise
MakeMusic!
Malekko
Malletech
MalletKAT
Malone
Mam
Mama Pickups
Mancke
Manfrotto
Manhasset
Manhattan Analog
Manikin Electronic
Manley
Manlius Pickups
Manne
Manne Design
MannMade USA
Mann's
Manson Guitars
Mantini Guitarras
Mantra
Manuel Rodriguez
Mapa
Mapex
Maple Drum
Maranatha! Music
Marantz
Maratea Custom Audio
Marca Reeds
Marchesini Chitarre
Marchi
Marcinkiewicz Mouthpieces
Marcus Bonna
Mari
Marigaux
Mario Corso
Mario Garrone
Mario Grimaldi
Mark Foley
Mark Levinson
Mark of the Unicorn (MOTU)
MarkAudio
Markbass
MarkDrum
MarkOne Audio
Marks
Marleaux
Marma
Marshall
Marshall Electronics
Martin
Martin &amp; Co.
Martin Audio
Martin LeBlanc
Martinez Guitars.com
Maruni
Maruszczyk Instruments
Marvel
Marvin
Marvit
Masaaki
Masaki Sakurai
Masaru Kohno
Maselec
Masetti Liuteria
Masi
Mason &amp; Hamlin
Masotti Guitar Devices
MassBass
Massoni
Master &amp; Dynamic
Master Audio
Masterwork
Masterwriter
Mastery
Mastro Valvola
MatAmp
Matchless
Mateki Flute
Maton Guitars
Matrix
MATT BETTIS
Mattia Cigalini
Mattia Franchin guitars
M-Audio
Mauro Freschi Guitars
Maverick Guitars
Mavis
Maxell
Maxine Guitars
Maxon
Maxtone
Maya Guitars
Maybach
Mayones
Mayson Guitars
MB Quart
MBL
M-Blaster
MBT
MC Audio
Mc Crypt
MC Drums
Mc Nash
MC2 Audio
McAlister
McAntony Guitars
MCAudioLab
McDSP
McFarlow
McIlroy Guitars
McIntosh
McLore
McNally
McVoice
MD Musical Accessories
MDF
Mdlr Case
Me All
Me all Light
Me all Sound
Meazzi
Mec-pickups
Medeli
Mediapresse
Meeblip
Mega Amp
MegaDrum
Megatar
Megatone
Mei Mei
Meìnel
Meinl
Meinl Weston
Meisel
Meisterklasse
Mel Bay
Melancon Guitars
Melford
Mellotron
Mellowtone
Melody Guitars
Melody Major
Melton
Memorex
Menatone
Mengascini
Mengozzi
Mennekes
Mensinger Guitars
Mercury Drum
Mercury Magnetics
Mercury Recording Equipment
Meredith Music
Merging Technologies
Merida
Meridian Audio
Meridian Guitars
meris
Merrill Guitars
Mesa Boogie
Metaltronix
Metasonix
Metelli Guitars
Meteoro
Metric Halo
Metrophones
Meyer
Meyer Sound
Mezzabarba
MFB
MG
MI Audio
Michael Kelly
Michael Messer Resonator Guitar
Micro
MicroBoards
Microdesignum
Micromega
Micronet
Microsonic Music
Microtech Gefell
Microtips
Midas
Middle Atlantic
Mid-Fi Electronics
MIDI Solutions
Midiman
Midione
Midiplus
Miditech
Miditemp
Mighty Bright
Mighty Mite
Miguel Almería
Miguel Angel
Miguel Demarias
Miguel Di Carlo
Mike Balter
Mike Caddy
Mike Lull
Mikrofon-M
Miktek Audio
Milab
Millenium
Millenium Drums
Millennia
Miller
Miller Freeman
Milos
Minarik
Mindprint
MindSound
Minotaur Sonic Terrors
Mipro
Mirage
Miraphone
MirrorPix
Mi-Si Electronics
Mission Engineering
Mitchell
Mitchell Lurie
Mitec
Mito
Mitsubishi
Mixars
MixBooks
Mixta Music
MixVibes
Miyazawa
MJM Guitar FX
MJS
MJT
MK Contrabbassi Elettrici
Mkc
MKM
MKS Professional
MMP Brasswind
Mnk
Mobil Truss
Modal Electronics
Modartt
Modcan Synthesizer
Mode Machines
Modern Drummer
Modtone
Modulus
Moeck
Moen Pedals
Moffa Guitars
Mogami
Mogar
Mogees
Mojave Audio
Mojo Hand
Mojotone
Moldovan Amp
Molinelli
Mollard
Mollenhauer
Molpass
Molten Voltage
Monacor
Monarch
Monette
Monitor Audio
Monkey Banana
Mono Case
Monolith
Moid
Monster
Monster Audio
Monster Cable
Monster Effect
Monster Power
Monster Relic
Montani
Montarbo
Monte Allums
Montreux
Monzino
Moody
Mooer
Moog
Moog Music
Moollon
Moon Guitars
Moonphaser
Mordaunt-Short
Moreno
Moreschi
Morgan
Morgan Guitars
Morgan Monroe
Morgancase
Morley
Morpheus
Morrell
Morris
Moses
Mosky
Mosrite Guitars
Mossman
Motion Sound
Motu
Mountainking Electronics
Mouthpiece Café
Movall
Mozzani Liuteria
Mp Audio
MP Guitars
MP Pickups
Mpe
MPE Audio
MPGear
MPM
M-Pro
Mr. b Music Family
Mr. Black Pedals
MS Sound Project
MSI
MTD
MTV Books
Mullard
Müller-Schiedmayer
Multivox
Muramatsu
Murat Diril
Musa Drums
Musart
Muse Research
Musedo
Muses
Music Accessories
Music CD
Music Industry Products
Music Man
Music People
Music Sales
Musical Fidelity
Musician Sound Design
Musicians Gear
Musician's Institute
Musicom Lab
MusiCover
Musicrew
Musictech
Musicvox
MusicXPC
Musikalia
Musikding
Musikraft
Musima
Musique Custom Guitars
Musitalia
Musitek
Musser
Mutable Instruments
Mutec
Mutron
Mutronics
Muza
MVP
mwm phase
MXL
MXR
My Audio
My Music
My Power
Mytek
N Tune
Nad
Nady
Nagahara Flutes
Nagra Audio
Nakamichi
Napalm Pedals
Nardelli
Nash
Nashville
Naska Belts
Natal
National
National Picks
Native Instruments
Navarro
Navini Fisarmoniche
NDS Music
RMI
NEA Music Inside
Neary
Nec
Nechville
Neewer
Nektar
Nemesis
Nemo Sound
Nemphasis
Neo Instruments
Neo Oyaide
Neotech
Neptune
NetworkSound
Neumann
Neumeyer Pianos
Neunaber Audio Effects
Neupert
Neuratron
Neuser Basses
Neutrik
Neve
New England Digital
New Old Sound Ltd
Newtone Strings
Nexo
Nick Page Guitars
Nickerson Guitars
Niedermeyer
Nieer
Night Angels Electronics
Nik Huber
Nikko
Ningbo
Nino
Nioi Design
NitroCab
Nobels
Noble &amp; Cooley
Noblet
NOC3 Effects
Noise Control Audio
Noise Engineering
Noisemaker Effects
Noiz
Noll Electronic
Nomad
Nomad Factory
Nord
Nordiska Pianos
Nordstrand
Norelco
Norlin
Norman Guitars
Normandy Guitars
Notation Technologies
Notion
Notion Music
Nouglian
Nouse
Nova
Novalight
Novation
Nowsonic
Noyse
NS Design
NSI
Ntp
N-Tune
Nubino
Numark
Nuova
Nuova Elettronica
Nuvo
NUX
NV Group
O Tray
O.C.D.P.
O.M. Mönnich
Oak River
Oasis
Obedia
Oberheim
Oboes.Ch.
Obrac
Ocheltree
Octon
Odd AEon
Oddfellow Effects
Odery
Odyssey
Off The Wall
Offberg
Offenbach
OH!FX
Ohana Ukuleles
Ohm
OKKO
Oktava
Old Blood Noise Endeavours
Olds
Oleg Products
OLP
Olveira
Olympia Guitars
Olympus
Om Laboratories
Omega
OmegaFx
Omnia Audio
OmniaLaser
Omnirax
OmniSistem
Omnitronic
On Stage
On Stage Stands
One Control
Onerr
Onkyo
OP Electronics
Opcode
Open Labs
Opera
Optima Strings
Option 5
Optoma
Oqan
OQUAN
Oram
Orange
Orange County Drums and Percussion
Orban
Orbitone
Oregon
Origin Effects
Original Case
Original Fake
Original Swab
Orion Cymbals
Orion Effekte
Orla
Orlando
Ormsby Guitars
Orpheus
Ortega
Ortofon
Orville
Oscar Schmidt
Oscar Teller
Osmannbrass
Osram
Otari
Ottavianelli
Otto Link
Otto Musica
Outline
Ouverture
Ovation
Overlord of Music
Overloud
Overseas Connection
Overstayer
Overtone Labs
OX4 Pickups
Oxford Synthesiser Company
Oxfuzz
OXO
Oyster
Ozark
P&amp;P Amplification
P. Brunner
P.Mauriat
Pace
Pacemaker
Pacific Drums
Pacific Drums by DW
Pacific Trends
Pack A Stand
Paco Castillo
Padovani
Paesold
Paganini
Paia
Paige
Paiste
Palatino
Palladio Acoustics
Palmer
Palomino
Panamax
Panart
Panasonic
pandaMidi
Pangolin
Panther
Paoletti
Paolo Soprani
Paradis
Paramount Guitars
Paraschos
Parasound
Parduba
Pari organs
Park Amplifiers
Parker
Parkson
Parkwood
Parrot
Parsek
Parts Planet
Partsland
PartyBag
Pasha
Paso Sistemi Audio
Patrick Eggle Guitars
P-Audio
Paul Cochrane
Paul Mc Bray Guitars
Paul Reed Smith
Paulino Bernabe
Paulino Bernabé
Paxman
PCDJ
Pdc
PDP- Pacific Drum and Percussion
Peace Drum
Peace Love Productions
Peak
Pearce
Pearl
Pearl Flutes
Pearl River
Peavey
Pedal Monsters
Pedal Pad
Pedal Space
PedalGear
PedalSnake
Pedaltank
Pedaltrain
PedalworX
Pedi
Pedler
Pedro de Miguel
Pedro Martinez
Pedro Morientes
Pedulla
Peecker Sound
Peeker Sound
Peerless
Pegna Theremins
Peluso
Pendulum Audio
Penguin Books
Pensa Guitar
Pentatonic
Perez
Performance Plus
Peroni
Perreaux
Perri's
Perri's Leathers
Pete Cornish
Peter Eaton
Peter Florance Pickups
Petersen Designs
Peterson
Petrof
Pettyjohn Electronics
Petz
Pfeiffer
PFL Technology
PFX
PG Music
PGW
Phaeton Trumpets
Phantom Guitars
Phase Linear
PHD
Phidrums
Phil Barone
Phil Jones Bass
Philips
Phil-Tone
Phiton Resonators
Phoenix Audio
Phonic
Phonika Drums
Phon-X
Piano Services
Piano Wizard
Pianosound
Piatanesi
Picato
Pick N Glider
Pickboy
Pickering
Pickguardian
Pickupmakers
Piermaria
Pigini
Pignose Amps
Pigtronix
PikCard USA
Pillinger
Pilosio
Pinstripe Pedals
Pintech
Pioneer
Pioneer DJ
Pipers' Choice
Pirastro
Piretti Liuteria
Pittsburgh
Pizzoaa Cajon
PJ Drums &amp; Percussion
PKV pickups
Placid Audio
Planet Drum
Planet Waves
Plankton Electronics
Plantronics
Plastica Panaro
Platinum Samples
PL-Audio
Players
Pleyel
Ploytec
Plush
Pmc
PMsnare
Pokketmixer
Polk Audio
Polverini
Polytone Amplifiers
Pomarico
Pontillo
Ponzol
POPS
Pork Pie
Port City Amps
Positive Grid
Postal Monkey
Potvin Guitars
Powell Flutes
Power Acoustik
Power Dynamics
Powerbox Factory
Powersoft
PowerSquid
PPA
PPG
PR Lighting
Practice Tracks
Prelude
Premier
Prescription Electronics
Presley Flight Case
Presonus
Prestige
Prestini
Preston
Primacoustic
Primary Line
Primera Technology
Primero
Prism Sound
Privada
Privitera
Pro Audio
Pro Co
Pro Ject
Pro Mark
Pro Media
Pro Music Software
Pro Snake
Pro Tec
Pro Tone Pedals
Pro Tour
Proac
ProAudio Press
Probe
Procases
Proco
Prodigy
Prodipe
Proel
Proel Die Hard
Professional Sound Light
Profile
Progetti Sonori
Proietta
Project Lead
ProLights
ProLine
Prolyte
Prometeus Guitars
Pronomic
Prop It
Propellerhead
Pro-Show
Proson
ProStageGear
Protection Racket
Proton
Protos
Protruss
Providence
ProWaves
PRS Guitars
Prudencio Saez
PSC Professional Sound Corporation
Psk
PSL Italy
PSSO
pTrumpet
Publison
Puchner
Pulse
Puma
Punch Pedals
Pur Cajon
PureCussion
Puresound Percussion
Purple Audio
Pyle Audio
PyP-Bomb
PZ Amp
Q Parts
Q Up Arts
Q4audio
QSC
Q-tuner
Quad
Quagliardi
Quantegy
QuartzColor
Quasimidi
Qube Audio
Qu-Bit Electronix
Quested
Quik Lok
Quiklok
Quilter Laboratories
Qwik Time
Qwik Tune
Radial
Radikal Technologies
Raganato
Raimundo
Rain Recording
Rainger FX
Rainsong
Ralph Marlin
RAM Audio
Ramble FX
Ramirez
Rammerdrum
Ramon Garcia
Ramon Latino
Ramper
Rampone &amp; Cazzani
RAMSA
Randall
Rane
Rash Guitars
Rasha Professional
Raspagni
Rath Trombones
Raven
Raven Images
Raxxess
Ray Ramirez
RAYGUN FX
RCA
RCF
Rch
Real Traps
Real World
Realist Pickup
Rean
Re'An
Reani Guitars
Rebeats Publications
Rebel Amps
Reckhorn
Record Research
Recording King
Red Beat Audio
Red Lighting
Red Panda
Red Shadow
Red Sound
Red Witch
Redmatica
Redpipe
Redplate Amps
Redstuff Amps
Reeds Australia
Rees Harps
Reference
Regal
Regal Tip
Regent
Reghin
REH
Reinhardt Pedals
Reismann
RELIC STAR CUSTOM SHOP
Reloop
Remic
Remo
René Guénot Paris
Renkus Heinz
Renoise
Republic Guitars
Resident Audio
Resocap
Resonans
Retro Channel
Retro Instruments
Retro Revival
Retro-king Amps
Retroman Music
Retro-Sonic
Reunion Blues
Revac
Revelation Guitars
Reverend Guitars
Revolution Drum
Revolver Audio
Revox
REVV
Rexer
Reynolds
RFT
RFX
Rhino
Rhodes
Rhythm Band
Rhythm Tech
Rialto
Ribbecke
Ribera
Richard Cocco Strings
Richmond Guitars
Richmond Organization
Richter
Richwood
Rick Levy
Rick Turner
Rickenbacker
Rico
Rico Royal
Ricordi
Ridenour
Rieger Kloss
Riffault
Right On!
Righton Straps
Rigotti Reeds
Rigoutat
Ringway
Rio Grande
Ripamonti
Rippen
Risa
Rising Software
Ritmuller
Ritter
Ritter &amp; Son
Rittor Music
Rivera
Riverhead Guitars
RJM
RKS Guitars
Rlaky
RMC
RME
RMV
Road Rage Pro Gear
Road Ready
Road Runner
Roadcase
Roadinger
Roadster
Rob Allen
Rob Papen
Robe
Robert Morley &amp; Co
Robert Stather Finsbury Park
Roberto Lanaro
Robin Guitars
Roc N Soc
Roche Thomas
Rock Axe
Rock Band
Rock House
Rock Jimmies
Rock n Roller
Rock Steady
RockBag
RockBass by Warwick
Rockboard
Rockbox
Rockbox Effects
Rockbridge Guitar Company
RockCase by Warwick
Rocketfire Guitars
Rockett
Rockfield
Rockinger
Rockman
Rock'n roll Relics Guitars
Rock'nroll Relics
RockStand
RockStand by Warwick
Rocktek
Rocktile
Rocktron
Rocktuner By Warwick
Rockwood
Rocky Mountain Slides
RODE
Rode Microphones
Rodgers Organi
Rodriguez
Roeseler
Roger Linn Design
Roger Mayer
Roger Schult
Rogers
Rogue
Rohema
Rok Axe
Rok Sak
Roland
Roli
Roling's
Roll
Roller
Rolls
Romance
Romano Burini
Romeo Orsi
Ronisch Pianos
Roost
Root Guitar Effects
Roscoe Guitars
Rose
Rosenbach
Rosendahl
Rosler
Ross
Ross Mallet
Ross System
Rotel
Roth &amp; Junius
Rothwell Audio Products
Rotodrum
Rotosound
Rounder
Rousseau
Rover Banjos
Rovner
Rowin
Roy Benson
Royal
Royal Standard
Royer Labs
Roytek
Rozini
Rozz
RPM Dynamics
RSP Technologies
RSQ
RTF Custom Case
RTOM
Rtw
Ruby Tubes
Rud Ibach Sohn
Rudolf Meinl
Rudy Muck
Ruff Grip
Ruff Rider
Rugginenti
Rulez Queen
Runner
Runyon
Ruokangas
Rupert Neve Designs
RV Drums
Rycote
Rydeen
Ryoji Matsuoka
S. Clary
S.E. Shires
Saba
Sabbadius Pedals
Sabian
Sabine
Sabra
Sabre Guitars
Sadowsky Guitars
SAE
Saga
Sagitter
Sailor Jerry Clothing
Saito
Sakae
Sakura
Saldaneri Guitars
Salmieri Drums
Salterio
Salto Percussioni
Saluda Cymbals
Salvador Cortez
Salvi Harps
Samba
Samick
Samko
Samson
Samsun Cymbals
Samsung
Sanchez
Sanchis Lopez
Sanctuary
Sandberg
Sanden
SanDisk
Sanken
Sankyo Flute
Sanox
Sansone Strings
Sansui
Santa Cruz Guitar Company
Santander
Santech
Santos Martinez
Sanyo
Saporetti e Capelli
Sauter Pianos
Savannah
Savarez
Savior
Saxscape
SAXXAS
Sbe
Scala Guitars Usa
Scandalli
Scanic
Scarbee
Scarlata
Scarli
Schaaf
Schack Guitars
Schagerl
Schaller
Schalloch
Schatten Design
Schecter
Schertler
Scherzer
Schiedmayer
Schiit
Schilke
Schiller
Schimmel
Schlagwerk
Schober Organ
Schoenhut
Schoeps
Scholze
Schon
Schott
Schreiber
Schroeder
Schulmann
Schulze Pollmann
Scorpion
Scott
Scratch Pad
ScreenStars
Scumback Speakers &amp; Cabinets
SD Curlee
Sd System
SE Electronics
Seagull
Seck
Second Floor Music
Secret Efx
Secrets of the Pros
Seelake
Sefour
Seiko
Seiler
Seiwin
Sekova Guitars
Selmer
Selmer Paris
Sem
Semprini
Sennheiser
Sequential Circuits
Sequerra
Sequoia Saxophones
Serenelli
Session
Settimio Soprani
Seventh Circle Audio
Seydel
Seydel Sohne
Seymour Duncan
SGC Nanyo
SGM
SGR by Schecter
Shadow
Shadow Hills Industries
Shannan
Shard-Star
Sharp Concepts
Shauvet
Sheptone
Shergold Guitars
Sherman Filterbank
Shertler
Sherwood
Shift Line
Shigeru Kawai
Shimano
Shimmel
Shine Drums
Shin-Ei
Shiner
Shinp
Shin's Music
Shires
Shiva Audio Devices
Shoe Pedals
Shoeps Microphones
Shonner
Shortbassone
Show-Lite
Showster
Showtec
Showven
Shredneck
Shubb
Shubb Pearse
Shure
SIB Effects
Sibelius
SIC Instruments
Sica
Sidewinder
Siegmund
Siel
Siemens
Sienzo
Sierra Guitars
Sigma Guitars
Signal Flex
Signatures Network
Signex
Siheko
SILENTSYSTEM
Silver Acoustic
Silver Bullet
Silver Creek
Silver Fox
Silverblade
Silversound
Silverstein
Silvertone
Simetrix
Simmons
Simms Watts
Simon &amp; Patrick
Singing Machine
Singular Sound
Sinn7
Sintel
Sire
Sirus
SIT
Skatterbrane Pickups
SKB
Skervesen Guitars
Skreddy Pedals
Skrydstrup R&amp;D
SKT
Skull Strings
Skullcandy
Sky
Skychord
Skytec
SL
Slammer Guitars
SlapKlatz
Slappa
Slate Pro Audio
Sleishman Drums
Slick
Slide O Mix
Slider Straps
Slingerland
Slug Percussion
SM Pro Audio
Smart Research
Smashboards
SMG
SmithsonMartin
Sml Saxophones
Smokey
SMP
SMPro Audio
Sms Audio
SMT
Snark
Snarling Dogs
Snouse Electric
Sobbat
SofiaMari
Softone
Softube
Sojin Pianos
Sojing
Sol Republic
Sola Sound
Solar by Sabian
Solar Guitars
Soldano
Solec
Solid State Logic
Solidbody Store
Solidgoldfx
Solidstand
Solina
Soller &amp; Sivcak
SoloEtte
Soloway Guitars
Solton
Som D'ouro
Sommer
Sonata
Song Xpress
Sonic Core
Sonic Implants
Sonic Reality
Sonic Research
Sonicake
Sonifex
Sonik Capsules
Sonitus
SONiVOX
Sonnox
Sonny the Lutist
Sonola
Sonoma Wire Works
Sonoma Wireworks
Sonor
Sonora
Sonos
Sontronics
Sonus Faber
Sonus Pater
Sonus Pedals
Sonuus
Sony
Sopar
Soul of Sound
Soultone Cymbals
Sound City
Sound Devices
Sound Man
Sound Percussion
Sound Quest
Sound Sculpture
Sound Skulptor
Soundart
Soundbrenner
Soundcraft
Soundcraftsmen
Soundelux Microphones
Soundfield
Soundking
SoundLab
Sounds We Make
Soundsation
Soundsphere
SoundTech
Soundtoys
Soundtracs
Soundwear
Sourceaudio
South Park
Sovtek
Soyuz
Spaceman Effects
Spacetek
Spada Music
Spaethe
Spalt Instruments
Sparkular
Spaun
Speakeasy
Spear Guitars
Speck Electronics
Spector Basses
Spectraflex
Spectral Audio
Spectrasonics
Speedster
Spendor Audio Systems
Sperzel
Spf
Spin Doctor
Spizz
Spizzichino Cymbals
SPL
Splawn
Spotlight
Springer Guitars
Sputnik Modular
Squier
Squier by Fender
SR Technologies
SR Technology
SRS Light Design
Sshhmute
ST Audio
St. Blues
Staccato Drums
Stage Accompany
Stage Magic
Stage Ninja
Stage Rig
stageClix
Stageline
Stagetrix
Stagg
Stairville
Stam Audio
Standtastic
Stanford Guitars
Stanton
Stanton DJ
Stanzani
Star Licks
Starfield
Starfire Guitars
StarLights Professional Effects
Starr Labs
StarSun
Startec
Starway
Stash Picks
Status
Stax
Stealton
Steavens
Steck
Stedman
Steelphon
Stefy Line
Steinbach
Steinberg
Steinberger
Steiner
Steinmayer
Steinway &amp; Sons
Stella
Stentor
Stephallen Guitars
Stephanhauser
Stephens Design
Stephenson Amp
Steppodrum
Stereoping Music Devices
Sterisol
Sterling Audio
Sterling by Music Man
Sterling Modular
Stetsbar
Stewart Ellis
Stewart MacDonald
StewMac
Steyr
Stinger
Stocco Drums
Stocco Fisarmoniche
Stomp Under Foot
Stompamp
Stomvi
Stone Deaf FX
Stonecastle
Stonehenge Guitars
Storm
Stowasser
Straightwire
Strand Lighting
Strandberg Guitars
Strasser Marigaux SML
Stratos
Street Audio
Strike
String Letter
String Master
String Swing
StringTek
Stromberg Guitars
Strunal
Strymon
Stuart
Studer
Studio 49
Studio Due
Studio Electronics
Studio Projects
Studio RTA
Studiologic
Studiomaster
StudioPhile
Subdecay
Submersible Music
SubtleNoiseMaker
SubZero
Suhr Guitars
Summit Audio
Sumo Amps
Sundown
Sunn
Sunrise
Super Alberti
Super Bass
Super Salas
Super Sensitive
Super Stradella
Super Vee
Supercussion
Superlux
Supernatural Cymbals
Superscope
Superslick
Supertone
Suprem
Supro
Susato
Sutera
Suzuki
Svetlana
Swan Flight
Swart Amps
SWD SoundWatchingDrum
Sweet Pipes
Sweet Sound
Swefog
SwirlyGig
Swisson
Swissonic
Switch Guitars
Switchcraft
SWR
Sx
Sylvania
Symetrix
Synapse Audio
Synq
Synthesis Technology
Synthetic Sound Labs
Synthogy
T Rex
T.bone
T.Miranda
T.U.K.
Tabacco
Tac Mixers
Tacoma
TAF Truss Aluminium Factory
Tagima
Taiki
Taiyo Yuden
Takamine
Takeda Bassoon
Takstar
Taktell
Tama
Tamaka
Tamaki
Tambor
Tamburo
Tandberg
Tanglewood
Tannoy
Tapco
Tapco by Mackie
Tapspace Publications
TARA LABS
Tara Publications
TAS
Tascam
Tasker
Tasso Audio
Taurus
Tayden
Tayden Speakers
Taye
Taylor
TC Electronic
TC Helicon
TCase
T-Cymbals
TDK
TDrum
Teac
TecAmp
Tech 21
Technica
Technics
Technosound
Techra
Teclumen
Tecnare
Tecsom
Ted Klum
Teenage Engineering
Tegeler Audio
Teisco
Teknosign
Tekson
Teksonor
Telefunken
Teletronix
Telex
Tempus Drums
Tenayo
Tenlux
Tennessee
Tenson
TenTen Devices
Teqsas
Terada Guitars
Terratec
TerraTec Producer
Terrè
Tesla
Tesla Audio Lab
Teuffel Guitars
Texsign
Teye Guitars
TF Morris
TFPro
Thalia
THD
The Box
The Brass Spa
The Gripp
The Hand
The Hood
The Loar
The Music Stamp
The Singing Machine
The Sssnake
The String Centre
The T Amp
the t.racks
The Valve
The Voice of Saturn
Thema
Theo Wanne
Theodore Presser
Thermionic Culture
Third Eye Guitar
Third Hand Capo
Thomann
Thomas
Thomas Organs
Thomastik
Thomastik Infeld
Thomson Technologies
Thon
Thorens
ThorpyFX
ThreeGuitars
Throbak
Thud Rumble
Thumb Eze
Thunder
Thunderfunk
Thunderplugs
Thürmer
Timber Tones
Timpani
Tino Tedesco
Tipbook
Tiptop Audio
Titan Cabs
Titan Stage
Titanex
Tittarelli
Tk Audio
TKL
TKMelody
tks Engineering
TL Audio
TOA Electronics
ToadWorks
Tobias
Toca
Toft Audio Designs
Together Again
Togra
Tokai
Toledo
Tom Anderson Guitars
Tom Crown
Tom Gauger
Tom Holmes
Tombo
Tom's Line
Tomsline
Tone Amps
Tone Candy
Tone City
Tone Gear
Tone in Progress
Tone King
Tonecandy Pedals
Toneczar Effects
Tonelux
TonePros
Tonerider
ToneRite
ToneWoodAmp
ToneWorks
Tonium
Toontrack
Topp Pro
Toptone
Tornado
Toro Strings
Torque
Tortuga Effects
Tosco
Toshiba
Totally Wycked Audio
Town Talk
Toyo
T-Pedals
T-Power
Traben
Trabes
Trace Elliot
Tradition Guitars
Trailer Trash
TrainWreck
Trance Audio
Transcend
Transcontinental Music
Trantec
Traps
Traps Drums
Traveler
Traveler Guitars
Travelite
Travis Bean
Traynor
TreeWorks
Trench
Trep
Trevor James
T-Rex
Trexist
Triad
Tribe Guitars
Tribute by G&amp;L
Trick
Trident
Trigger Perfect
Triggs Guitars
Tritonlab
Trixon
Trizio
Trombotine
Tromsa
Tronical
Tronographic
Trophy
True Systems
True Temperament
Truetone
TrumCor
Trusst
Truth Custom Drums
Trutone
TRX Cymbals
Tsa Tecnology
TT-Cabs
TTM Guitars
Tube Amp Doctor
Tube Tech
Tube Works
Tube-Town
Tune
Tung Sol
Tungsram
TurboSound
Turkish Cymbals
Turkistan
Tuscany
TusQ
Tutondo
Tuyama
TV Jones
TWA Fly Boys
Twisted-Electrons
Two Notes
Two-Rock
Tycoon Percussion
Tyler Guitars
U &amp; I Software
U.S. Masters
UDG
UDG Ultimate DJ Gear
Udrum
Ueberschall
UFIP
Uher
Ultimate
Ultimate Ears
Ultimate Sound Bank
Ultimate Support
Ultra
Ultracase
Ultrasone
UltraSound
Unbranded
Underwood
Unison Research
United Labels
Unity Audio
Universal Audio
Universal Percussion
Univox
Up Stage
Urei
US Blaster
USA Custom Guitars
Use Audio
Utah Speaker
Vact
Vader Cabinets
Vahlbruch
Valco
Valencia Guitars
Valenti guitars
Valentino
Valeton
Valley Arts
Valley People
Valmusic
ValveTech Amps
ValveTrain Amplification
Valvolare
Van Den Hul
Van Kleef
Van Zandt
Van-Amps
Vanderkley
Vandoren
Vantage
Vantage Guitars
Var Ance
Varta
Varytec
Vater
VDL Professional Analogics
Vecchio
Veelah Guitars
Vega
Velodyne Acoustics
Velvet Strings
Vemuram
Venson
Venus Flutes
Verbatim
Verbos
Verde Fisarmoniche
Vermona
Verse
Vertex Effects
Vesta Fire
Vestax
Vester
VF Guitar Works
VFE Pedals
Vgs Guitars
VGV
VHT
Vibe Drum
Vibesware
Vibramate
Vibrato Sax
Vibrawell
Vic Firth
Vicente Tatay Tomas
Vick Audio
Vicoustic
Victoria Accordions
Victoria Amps
Victory Amplifiers
Vienna Instruments
Vieta
Vig
Vigier Guitars
Vignoni Accordions
Villex
Vimar
Vince
Vinetto
Vintage
Vintech
Vinteck
Violet Audio
Violet Design
Vir2
VirSyn
Viscount
Vision
Visual Circuit
Visual Sound
Vital Arts
Vito
Vitoos
Vivanco
VMB
V-Moda
Vocal Power Institute
Voce inc.
VocoPro
Voes
Vogel's
Voice System
Void
Volcano
Volontè &amp; Co
Volume Drums
Vonyx
VooDoo
Voodoo Lab
Vortex Italy
Vovox
Vox
Vox Meister
Voyage Air Guitars
VPI
VSCASES
VTG
Vulcan Cymbal
W.D. Brand
Wailer
Wal
Walden
Waldorf
Walkasse
Wallacher
Walrus Audio
Walrus Productions
Walter Franchi Liutaio
Walter Nirschl
Walter Woods
Walther
Walton Music
Waltons
Wampler Pedals
Wandre
Warburton
Warehouse Flightcase
Warehouse Guitar Speakers
Warm Audio
Warmoth
Warner Bros
Warr Guitar
Warriors
Warwick
Washburn
Waterfall Audio
Waterstone
Watson Guptill
Wattson FX
W-AUDIO
Wave Arts
Wave Machine Labs
Wave Panels
Waveelite
Waves
Wavetrap
Way Huge
Way Huge Electronics
Way Out Ware
WBS
Wcr Guitar Pickups
WD Music
Weapon
Weapon Guitars
Weber
Weber &amp; Son
Weber Speakers
Wechter
Wedge
Wee Lush FX
Weinbach
Weisbach
Weiss
Weissenborn
Welson
Weltklang
Weltmeister
Wem
Weril
Wersi
Wes Audio
Wesc
Wesley
Westbury
Westelettric
Westlake Audio
Westone
WGS
Whacky Music
Wharfedale
Wharfedale Pro
Whirlwind
WhisperRoom
White Instruments
Widara
Wilhsteinberg
Wilkinson
Willcox Guitars
Willermann
William Horn
William Lewis &amp; Son
Williams
Willows Guitar Works
Willson
Willy Wolf
Wilson Brothers
Wilson Effects
Wincent
Windmill
Windreed Solution
Windy City
WIRELESS SOLUTION
Wirething
WISDOM
Wise Publications
Wisemann
Wisycom
Wittner
Wizard Amplification
Wizoo
Wizz Pickups
WMD
Wolf Guitars
WolfeTone
Wolfpak
Wood &amp; Tronics
Wooding
Woodstock
Word Music
Work
World Tour
World Wide Woodshed
WorldMax
WorldSonic
Worship Together
Wrangler
Wrap N Strap
Wren and Cuff
Writer's Digest
Wsl Guitars
Wuhan
Wunder Audio
Wurlitzer
Wylde Audio
X2 Digital
X2 Digital Wireless
Xander Electronics
Xaoc Devices
Xavier Guitars
X-Drum
Xilica
XL Specialty Percussion
X-LEAD
XLNT Idea
Xm
Xotic
XP Sound
XPAudio-Morpheus
XP-Cases
XS Percussion
XTA Electronics
X-Treme
XTS - XAct Tone Solutions
XVive
XXL Inside
Yairi
Yak Pak
Yamaha
Yanagisawa
Yankee
Yaqin
Yellow Tools
Yellowtec
Yerasov
Yorkville
Young Chang
YouRock Guitar
Yukawa
Yuwin
Z.Cat Pedals
Zacks
Zacros Engineering
Zagar
Zanki
Zaor
Zar
Zebracase
Zeck Audio
Zeff Wind Instruments
Zemaitis
Zen Guitars
Zen Music
Zendrum
Zen-on
Zerberus Guitars
Zero G
Zero88
ZeroGravity
ZeroPik
ZeroSette
Zeus Cymbal
Zildjian
Zilla Cabs
Zimmermann
Zinky
Zinner
Zinzi
Zion Guitars
ZIVIK
ZMB Professional Audio
Zomo
Zon
Zonda
Zoom
ZT Amplifiers
Zultan
Zvex
Z-Vex Effects
ZZIPP
ZZYZX
\.


--
-- Data for Name: reparto; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.reparto (id, nome) FROM stdin;
1	Tastiere
2	Chitarre
3	Bassi
4	Batterie / Percussioni
5	Strumenti a Fiato
6	Strumenti a Corda
7	Home & Studio Recording
8	Live Equipment
9	DJ Equipment
10	Lighting
11	CD / DVD / Didattica
12	Merchandising
\.


--
-- Data for Name: tipo_annuncio; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.tipo_annuncio (id_tipo_annuncio, tipo) FROM stdin;
\.


--
-- Name: categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.categoria_id_seq', 239, true);


--
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1, false);


--
-- Name: immagine_annuncio_id_immagine_annuncio_seq; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.immagine_annuncio_id_immagine_annuncio_seq', 1, false);


--
-- Name: reparto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.reparto_id_seq', 12, true);


--
-- Name: tipo_annuncio_id_tipo_annuncio_seq; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.tipo_annuncio_id_tipo_annuncio_seq', 1, false);


--
-- Name: annuncio annuncio_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.annuncio
    ADD CONSTRAINT annuncio_pkey PRIMARY KEY (id);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id);


--
-- Name: immagine_annuncio immagine_annuncio_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.immagine_annuncio
    ADD CONSTRAINT immagine_annuncio_pkey PRIMARY KEY (id_immagine_annuncio);


--
-- Name: marca marca_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id);


--
-- Name: reparto reparto_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_pkey PRIMARY KEY (id);


--
-- Name: tipo_annuncio tipo_annuncio_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.tipo_annuncio
    ADD CONSTRAINT tipo_annuncio_pkey PRIMARY KEY (id_tipo_annuncio);


--
-- Name: immagine_annuncio fkd4jl0m3fnias31u4gswkuwona; Type: FK CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.immagine_annuncio
    ADD CONSTRAINT fkd4jl0m3fnias31u4gswkuwona FOREIGN KEY (id_annuncio) REFERENCES public.annuncio(id);


--
-- Name: annuncio fkexdysjxvwjkqekmw9ycsvu6nv; Type: FK CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.annuncio
    ADD CONSTRAINT fkexdysjxvwjkqekmw9ycsvu6nv FOREIGN KEY (id_marca) REFERENCES public.marca(id);


--
-- Name: annuncio fko4x9ymvdh23r85335wdyvj4yb; Type: FK CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.annuncio
    ADD CONSTRAINT fko4x9ymvdh23r85335wdyvj4yb FOREIGN KEY (id_categoria) REFERENCES public.categoria(id);


--
-- Name: categoria fkqhecgd3xwr3mki0sadj4g1ief; Type: FK CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT fkqhecgd3xwr3mki0sadj4g1ief FOREIGN KEY (id_reparto) REFERENCES public.reparto(id);


--
-- PostgreSQL database dump complete
--

