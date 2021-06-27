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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categoria; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.categoria (
    id_categoria integer NOT NULL,
    nome character varying(255) NOT NULL,
    id_reparto integer
);


ALTER TABLE public.categoria OWNER TO enrico;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: enrico
--

CREATE SEQUENCE public.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_id_categoria_seq OWNER TO enrico;

--
-- Name: categoria_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enrico
--

ALTER SEQUENCE public.categoria_id_categoria_seq OWNED BY public.categoria.id_categoria;


--
-- Name: marca; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.marca (
    id_marca integer NOT NULL,
    nome character varying(255) NOT NULL
);


ALTER TABLE public.marca OWNER TO enrico;

--
-- Name: marca_id_marca_seq; Type: SEQUENCE; Schema: public; Owner: enrico
--

CREATE SEQUENCE public.marca_id_marca_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.marca_id_marca_seq OWNER TO enrico;

--
-- Name: marca_id_marca_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enrico
--

ALTER SEQUENCE public.marca_id_marca_seq OWNED BY public.marca.id_marca;


--
-- Name: reparto; Type: TABLE; Schema: public; Owner: enrico
--

CREATE TABLE public.reparto (
    id_reparto integer NOT NULL,
    nome character varying(255) NOT NULL
);


ALTER TABLE public.reparto OWNER TO enrico;

--
-- Name: reparto_id_reparto_seq; Type: SEQUENCE; Schema: public; Owner: enrico
--

CREATE SEQUENCE public.reparto_id_reparto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reparto_id_reparto_seq OWNER TO enrico;

--
-- Name: reparto_id_reparto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: enrico
--

ALTER SEQUENCE public.reparto_id_reparto_seq OWNED BY public.reparto.id_reparto;


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
-- Name: categoria id_categoria; Type: DEFAULT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('public.categoria_id_categoria_seq'::regclass);


--
-- Name: marca id_marca; Type: DEFAULT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.marca ALTER COLUMN id_marca SET DEFAULT nextval('public.marca_id_marca_seq'::regclass);


--
-- Name: reparto id_reparto; Type: DEFAULT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.reparto ALTER COLUMN id_reparto SET DEFAULT nextval('public.reparto_id_reparto_seq'::regclass);


--
-- Name: tipo_annuncio id_tipo_annuncio; Type: DEFAULT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.tipo_annuncio ALTER COLUMN id_tipo_annuncio SET DEFAULT nextval('public.tipo_annuncio_id_tipo_annuncio_seq'::regclass);


--
-- Data for Name: categoria; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.categoria (id_categoria, nome, id_reparto) FROM stdin;
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
-- Data for Name: marca; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.marca (id_marca, nome) FROM stdin;
1	10mfan
2	2Box
3	3Leaf Audio
4	3rd Power Amplification
5	4MS
6	65 Amps
7	A Data
8	A Designs
9	A Little Thunder
10	AA Alfred &amp; Arno Arnold
11	Aalberg Audio
12	Aardvark
13	Aaxtech
14	AB
15	Abel Axe Guitars
16	Ableton
17	Abm
18	Absolute
19	Absolutely Analog
20	Abstrakt Instruments
21	Ac Cetera
22	Academy
23	Access
24	Accugroove
25	Accuphase
26	Accutronics
27	Ace
28	Acer
29	Acidlab
30	Acme
31	Acorn Instruments
32	Acoustic
33	Acoustic Image
34	Acoustic Line
35	Acoustic Research
36	Acoustica
37	Acoustical
38	Acronn
39	Acronova
40	ActitoN
41	Active
42	Acus
43	Ada
44	ADAM Audio
45	Adam Hall
46	ADAM Professional Audio
47	Adamas
48	Adamovic
49	Adams
50	Adams Media
51	Adamson
52	ADB
53	ADC Equalizer
54	Adcom
55	ADD+
56	ADK
57	Admira
58	Adobe
59	Adonis
60	ADS Tech
61	Advance Acoustic
62	Advance Tube Technology
63	Advanced Audio
64	Advent
65	Aegidius Klotz
66	AER
67	Aerial 7
68	Aero Pickup
69	Aerodrums
70	Aeron
71	AEV
72	AFX Light
73	Agean Cymbals
74	Agile Guitars
75	Agner Drumsticks
76	Agostin Custom Guitars
77	Aguilar
78	Ahead
79	Ahlborn Organs
80	AIAIAI
81	Air Cell
82	Airline
83	AirTurn
84	Aiwa
85	Aizen
86	Akai
87	AKG
88	AKG Acoustics
89	Akiyama
90	Al Cass
91	Alan Wilcox
92	Alaska Pik
93	Alba Guitars
94	Albarry
95	Albert &amp; Mueller
96	Albert Fahr
97	Albert Rieder
98	Alberti
99	Albion
100	Alchemy Cymbals
101	Alctron Electronics
102	Alden Guitars
103	AlecB
104	Alegree
105	Aleho
106	Aleken Games
107	Alembic
108	Alesa Banjos
109	Alesis
110	Alessandro High-End Products
111	Alessi Vacchiano
112	Alexander Mainz
113	Alexandria Percussion
114	Alfred
115	Alhambra
116	Alice
117	Alisyn
118	All Parts
119	All Parts Wood
120	AllDSP
121	Allen &amp; Heath
122	Alleva Coppolo
123	Alliance
124	Allora
125	ALM
126	Alma Electronics Pedals
127	Almansa
128	Alonso Le Dosseur
129	Alparizio Palma
130	Alpha Audio
131	Alpha Recording System
132	Alpine
133	Altair
134	Altamira Guitars
135	Altec Lansing
136	Alter Ego
137	Alternate Mode
138	Altieri
139	Altitude Digital
140	Alto
141	Alto Ritmo
142	Altus Flutes
143	Alumabass
144	Alusonic
145	Alutek
146	Alva
147	Alvarez
148	Alvaro
149	Alysee
150	AM amplification
151	AM Audio
152	AM Mouthpieces
153	Amabilia
154	Amadeus Press
155	Amalfitano Pickups
156	Amat
157	Amati
158	Ambassador
159	Amber Pickups
160	Amborg
161	AMC
162	Amedia
163	Amek
164	American Audio
165	American DJ
166	American Drum
167	American Recorder
168	Amistar
169	Amlux
170	Ammoon
171	Ampeg
172	Ampete
173	Ampex
174	Amphenol
175	Amphion
176	Amplified Nation
177	Amplilux
178	Amplirec
179	AMPTECH
180	AmpTone lab
181	Amptown Cases
182	Amptweaker
183	Ampwedge
184	AMS Neve
185	Amsco
186	AMT Electronics
187	Analog Man
188	Analog Way
189	Analogue Addicts
190	Analogue Solutions
191	Analogue Systems
192	Analysis Plus
193	Anamod
194	Anasound
195	Anatek
196	Anatolian
197	Anchor Audio
198	Andersen Stringed Instruments
199	Andino
200	Andrea Tacchi
201	Andreas Guitars
202	Anelli Cremona
203	Angel
204	Anolis
205	ANT - Advanced Native Technologies
206	Antares
207	Antari
208	Antelope
209	Anthony DeMaria Labs
210	Antigua Casa Nunez
211	Antigua Winds
212	Antoine Courtois
213	Antonelli
214	Antonio Aparicio
215	Antonio Carvalho
216	Antonio Hermosa
217	Antonio Lorca
218	Antonio Picado
219	Antonio Scandurra
220	Antoniotsai Guitars
221	aNueNue
222	Anygig
223	Anyware Instruments
224	AP Audio
225	Apart
226	Apc
227	Apex
228	Apextone
229	Aphex
230	Api
231	Apogee
232	Apogeo
233	Apollo
234	Applause
235	Applause by Ovation
236	Apple
237	Apple Creek
238	Applied Acoustic System
239	Applied Acoustics Systems
240	Applied Microphone Technology
241	Aquarian
242	AquilaSax
243	AR Resonance
244	AR Resonnace
245	Aragona
246	Aram Music
247	Aramat effects
248	Aranjuez
249	Arbiter Flats
250	ARC Effects
251	Arcam
252	Arcane Inc Pickups
253	Arcangeli Guitars
254	Archimede Diffusori
255	area-mic
256	Argosy Console
257	Aria
258	Aries
259	Arion
260	Arirang
261	Ariston Castelfidardo
262	Arkaos
263	Armas
264	Armin &amp; Mario GROPP
265	Armin Hanika
266	Armstrong
267	Arnolds &amp; Sons
268	Aroma
269	Arp
270	Arrel Audio
271	Arriba Cases
272	Arrow
273	ART
274	Art &amp; Lutherie
275	Art Select
276	Astera
277	Aston
278	Asturias Guitars
279	Asus
280	Asymmetric
281	Atari
282	ATC
283	Atelier Z
284	Atlas
285	Atomic Amps
286	Atomic Pro
287	Atomic4dj
288	ATP
289	Atrics guitars
290	ATS
291	Attack
292	Audac
293	Audax
294	Audere
295	Audes
296	Audeze
297	Audient
298	Audilaza
299	Audinate
300	Audio Accessories
301	Audio Analogue
302	Audio Damage
303	Audio Definition
304	Audio Developments
305	Audio Innovate
306	Audio Logic
307	Audio Performance
308	Audio Research
309	Audio Solution
310	Audio Technica
311	Audio Tools
312	Audiodesign Pro
313	AudioFactory
314	Audiofilia
315	Audioline
316	AudioLive
317	Audiomarine
318	Audiometric
319	Audiophony
320	AUDIOPROBE
321	Audioquest
322	Audioromance Cables
323	Audioscope
324	Audiosir
325	Audiostatic
326	Audiotrak
327	AudioWarrior
328	Audison
329	Audition
330	Audix
331	August Forster
332	Augustine
333	Aulos
334	Auna
335	Aune Audio
336	Auralex
337	Auratone
338	Austin Custom Brass
339	Australian Monitor
340	Automatic Cases
341	Autosonik
342	AV
343	AV Link
344	Avalon
345	Avant Electronics
346	Avantone
347	Avid
348	Aviom
349	Avolites
350	Axcess by Giannini
351	Axesrus
352	Axess Electronics
353	AxeTrak
354	Axis
355	Axl
356	Axtech
357	Axys
358	Ayers
359	Ayotte
360	Ayotte Drums
361	Azden
362	Azumi
363	B 52
364	B Band
365	B&amp;C Speakers
366	B&amp;G Guitars
367	B&amp;J Serenader
368	B&amp;K
369	B&amp;L battere&amp;levare
370	B&amp;S
371	B.C. Rich
372	B.Jacoby Guitars
373	B2 Effetti
374	Ba.Ma Tralicci
375	Babicz
376	Bacchi tecnologie audio
377	Bacchus
378	Bach
379	Bachmann
380	Backbeat
381	Backline
382	Backun
383	Backvox
384	Bad Cat
385	Baden Guitars
386	Bae
387	Bag End
388	Bakers Guitars
389	Balbex Drumsticks
390	Baldwin Piano
391	Balken
392	Ballone Burini
393	Balthur
394	Bam Cases
395	Bama
396	Bang &amp; Olufsen
397	Banners
398	Banzai Music
399	Barber
400	Barbetta
401	Barco
402	Barcus Berry
403	Bardl
404	Bare Knuckle Pickups
405	Barefoot Sound
406	Barge Concepts
407	Bari
408	Bariselli
409	Barock
410	Baroni Lab
411	Barrios Guitars
412	Bartolini Pickups
413	Basement Arts
414	Basf
415	Basic Audio
416	Basix
417	Bass Drum O's
418	Bassculture
419	BassLab
420	Basslines
421	Basson
422	Bastl
423	Bat Drums
424	Baton Rouge
425	Batteriasound
426	Battiloro
427	Battipenna.it
428	Bauer Percussion
429	Bauhaus Walstein
430	Baxter
431	BBE
432	B-Beng
433	BCGuitars
434	BD-Design
435	Bdx Sound
436	BeamZ
437	Beard
438	Bearfoot FX
439	Beat Up
440	Beatnik
441	Beato
442	Beats
443	Bechstein
444	Beckemer
445	Bedell Guitars
446	Bedrock
447	Beechler
448	Beetronics
449	Behringer
450	Belcat
451	Belkin
452	Bell
453	Bellafina
454	Bellari
455	Belltron
456	Bellucci
457	Belmonte
458	Beltrami Fisarmoniche
459	Beltuna
460	Ben Rod
461	Benavente
462	Benchmark
463	Benedetto
464	Benge
465	Benq
466	Benson
467	Bentley Pianos
468	Berg Larsen
469	Bergantino
470	Bergen
471	Bergerault
472	Bergmann
473	Berklee Press
474	Berkos FX
475	BERP
476	Bespeco
477	Besson
478	Best Brass
479	Best Products
480	Best Service
481	Best Sound
482	Beta Aivin
483	Beta Three
484	Bettermaker
485	Beyer
486	Beyerdynamic
487	Beyma
488	BG
489	Bgw
490	bH Amps
491	Bholand &amp; Fuchs
492	Biamp
493	Biarnel
494	BIAS
495	Biema
496	Big Bang
497	Big Bends
498	Big Dipper
499	Big Fat Snare Drum
500	Big Fish Audio
501	Big Heart Slides
502	Big Joe Stomp Box Company
503	Big John Effects
504	Big Knob Pedals
505	Bigben Interactive
506	Bigfoot FX
507	BigHeart
508	Bigsby
509	Bill Edwards Publishing
510	Bill Lawrence
511	Billboard
512	Billy Boy Guitars
513	Billy Hyde
514	Binak
515	Binson
516	Bioworld
517	Birchwood Casey
518	Bittner
519	Bitwig
520	Bixonic
521	Biyang
522	BJFE
523	BK Butler
524	BKE Technology
525	Black Arts Toneworks
526	Black Case
527	Black Cat Pedals
528	Black Diamond
529	Black Kross
530	Black Label
531	Black Lion Audio
532	Black Star Design
533	Black TusQ
534	Black Volt Amplification
535	Blackheart
536	Blackout Effectors
537	Blackshark
538	Blackstar
539	Blackstone Appliances
540	Blade
541	Blakemore Effects
542	Blakhart
543	Blankenship
544	Blaupunkt
545	Bleep Labs
546	Blessing
547	Blista
548	Blitz
549	Blu Music
550	Blue
551	Blue Juice
552	Blue Sky
553	Blueamps
554	Bluebird '56 Guitars
555	Bluedio
556	Blueridge
557	Blues Saraceno
558	BluexLab
559	BluGuitar
560	Bluthner
561	BMF
562	BMS Speakers
563	Bo Pep
564	Bob Ackerman
565	Bob McGrath
566	Bob Reeves
567	Bobcat
568	Body Glove
569	Bogart Bass
570	Bogner
571	Bohemia Piano
572	Bohemian Guitars
573	Bois Ligatures
574	Boisselot
575	Bolton
576	Bompezzo
577	Bonade
578	Bond Guitars
579	Bondi Effects
580	Bone Drum
581	Bontempi
582	Boo Instruments
583	Boomerang
584	BoomToneDj
585	Bo-one Guitars
586	Boosey &amp; Co
587	Boosey &amp; Hawkes
588	Borgani
589	Borgna
590	Born to Sing
591	Bornemark
592	Borsini
593	Boschma
594	Bose
595	Bosendorfer
596	Bosh
597	Bosphorus
598	Boss
599	Boston
600	Bosworth
601	Botex
602	Boucher
603	Boulder Creek Guitars
604	Bourgeois Guitars
605	Bowers &amp; Wilkins
606	boxinsonorizzato.it
607	Box-Profi
608	BOXY
609	Bozo Podunavac
610	BPM Studiotechnik
611	Brady
612	Brainwerks
613	Brancher
614	Brand X
615	Brandoni
616	Brannen Cooper
617	Brauner Microphones
618	Bravado
619	Brave Amps
620	Brazen Guitars
621	BRBS Amplification
622	Breach
623	Breath Builder
624	Bredamhill
625	Breedlove
626	Brenn &amp; Sohn
627	Brent Averill
628	Brentwood Benson
629	Breslmair
630	Brian May Guitars
631	Brian Moore
632	Bricasti Design
633	Briccialdi
634	Brice Basses
635	Brilhart
636	Briteq
637	Broadwood &amp; Sons
638	Brodmann
639	Brownsville Guitars
640	Bruck
641	Brunetti
642	Bruno Amp
643	Bruno Tilz
644	Bruno Traverso Guitars
645	BRYCE
646	Bryston
647	BSC Trumpets
648	BSM
649	BSS Audio
650	Bst
651	BSX Bass
652	BSX By Paiste
653	Buchla
654	Budda
655	Buddy Rich Drum Company
656	Buescher
657	Buffalo Fx
658	Buffet Crampon
659	Bugari Armando
660	Bugera
661	Bulgheroni
662	Bulk Sonica
663	Bull
664	Bullet Cables
665	Bundy
666	Burger &amp; Jacobi
667	Burguet
668	Burkart
669	Burkey
670	Burl Audio
671	Burn Fx
672	Burns Guitars
673	Burny
674	Burriss Amps
675	Buscarini
676	Busilacchio
677	Buttarini
678	ButtKicker
679	Buzz Electronics
680	By Marco Fisarmoniche
681	BYOC
682	C Tech
683	C&amp;C Drums
684	C.M. Prestige
685	c.t.e.
686	Cabart
687	Cabasse
688	Caber Amplificazioni
689	Cable Corp
690	Cablo Custom
691	Cabotron
692	Cabre
693	CAD
694	Cadac
695	Cadenbach Acoustics
696	Cadeson
697	CAIG
698	Caimbè
699	Cajon
700	Cajon Rock
701	Cajonrock
702	Cakewalk
703	Cal Mil
704	Calace
705	Calato
706	Caliber Guitars
707	Calicchio
708	Caline
709	Calisia
710	Callaham
711	Callet Trumpets
712	Calrec Audio
713	Calsbro
714	Calton Cases
715	Camac
716	Camarota Basses &amp; Guitars
717	Camber
718	Cambridge Audio
719	Cambridge SoundWorks
720	Camco
721	Cameo
722	Camillo Perrella
723	Campbell American Guitars
724	Camps
725	Canare
726	Cannon Electric
727	Cannon Percussion
728	Cannonball
729	Canon
730	Canopus Drums
731	Cantini Strings
732	Canto
733	Canton
734	Cantulia
735	Capa
736	Caparison Guitars
737	Capek
738	Capsound
739	Carbondix
740	Carboni
741	Carbostick
742	Cardinal Instruments
743	Cardinali
744	Career
745	Carella Guitars
746	Caremi
747	Cargoleni
748	Carisch
749	Carl Fischer
750	Carl Martin
751	Carlo Giordano
752	Carlo Robelli
753	Carl's Custom Guitars
754	Carlsbro
755	Carlton
756	Carmelo Catania
757	Carol
758	Carol Brass
759	Carol-Ann Amplifiers
760	Caroline Guitar Company
761	Carr Amplifiers
762	Cartec Audio
763	Carter
764	Carver Amplifier
765	Carvin
766	Casio
767	Castagnari
768	Castley
769	Catalinbread
770	Catalyst
771	C-Audio
772	Cav Audio
773	Cavagnolo
774	Cavicchi
775	Cayin
776	Cayman
777	CB Drums
778	CB Percussion
779	CBI
780	Cdrum
781	C-ducer
782	Celemony
783	Celestion
784	Centent Cymbals
785	Center Pitch
786	Centerstream
787	CEntrance
788	Century Drums
789	Ceriatone
790	Cerveny
791	Cerwin Vega
792	Cesva
793	CG Mouthpiece
794	Challen &amp; Son
795	Chameleon Labs
796	ChamSys
797	Chandler
798	Chandler Limited
799	Changye
800	CHAOS.5
801	Chapman Guitars
802	Chapman Stick
803	Chappell
804	Chario
805	Charles Bassoux
806	Charles Bay
807	Charlie Lab
808	Charon
809	Chartbuster
810	CharterOak Acoustic
811	Charvel
812	Chase Bliss Audio
813	Chase Tone
814	Chatelier
815	Chauvet
816	Cheetah
817	Chennel
818	Cheri
819	Cherny
820	Cherry Lane
821	Cherry Music
822	Cherrystone Bass
823	Cherub
824	Cheval Guitars
825	Chevin
826	Chevin Research
827	Chiayo
828	Chicago Blues Box
829	Chicago Iron
830	ChickenPicks
831	Chickering
832	Chieftain
833	Children's Book Store
834	Chonwoo
835	ChopSaver
836	Chowny
837	Chris Campbell Guitars
838	Chroma Caps
839	Chunk Systems
840	Ciare
841	Cicognani
842	Cicolin
843	Cigalini
844	Cigano Guitars
845	Cimar Guitars
846	Cinder Block
847	Cioks
848	Citron Guitars
849	Citronic
850	Clanalog.com
851	Claricord
852	Clarissa
853	Clark Amplification
854	Clarke
855	Clash Guitars
856	Classè Audio
857	Classic Cantabile
858	Claude Lakey
859	Claude Marchand
860	Clavia
861	ClavinPiano
862	Clay Paky
863	Clayton
864	Clear Audio
865	Clear Voice
866	Clearsonic
867	Cleartone
868	Clement
869	Cliff
870	Clifford Essex Music
871	Clifton
872	Clinch FX
873	Cling On
874	CLN Pedalboards
875	Clockaudio
876	Cloe Guitars
877	Cloud Amplifiers
878	Cloud Microphones
879	Cloud Mixer
880	Clover Basses
881	Club Salsa
882	CM Labs
883	Cmatmods
884	CME
885	CMI
886	CNB Cases
887	CoalTone Guitars
888	Cobalt
889	Cobra International
890	Coda Audio
891	Codem Music
892	Coef Lighting
893	Coemar
894	Coffin
895	Coffin Case
896	Cog Effects
897	Cole Clark Guitars
898	Coleman Audio
899	Coles Microphones
900	Colin Goldie
901	Collard &amp; Collard
902	College Sax
903	Colletto
904	Collings
905	Collins
906	Colorsound
907	Columbus Washboard
908	Combs
909	Comet
910	Comfort Strapp
911	Community
912	Compania
913	Compass
914	Compulite
915	Conde Hermanos
916	Condre
917	Conductor
918	Confettishots
919	Conklin
920	Conn
921	Conquest
922	Consoli Pipe Organs
923	Consuelo Lopez
924	Contemporanea Sao Paulo
925	Contest
926	Contreras
927	Control Synthesis
928	Converse
929	Coolsound
930	Cooper FX
931	Cooper Sound
932	Cooperfisa
933	Coopersonic
934	Cooperstand
935	Copilot Fx
936	Coral
937	Cord Lox
938	Cordera
939	Cordial
940	Cordier
941	Cordlox
942	Cordoba
943	Core Equipment
944	CoreX2
945	Corland
946	Cornell
947	Cornford Amps
948	Coron
949	Corsin
950	Cort
951	Cortex
952	Cortez
953	Cosmolight
954	Cosmosound
955	Costalab
956	Couesnon
957	Countryman
958	Courtois
959	Covington Guitar Effects
960	Coxx
961	CP
962	CQuadro Drums
963	Crafter Guitars
964	Crane
965	Crane Song
966	Crate
967	Crave
968	Craviotto
969	Crazy Tube Circuits
970	CRB
971	CreamWare
972	Creation Audio Labs
973	Creative Concepts
974	Art Strings
975	Arta Guban
976	Artcelior
977	Artec
978	Artemis Editions
979	Artesound
980	Artisan
981	ArtistPro
982	Artley
983	Artmann
984	Artonus
985	Arturia
986	Asahi
987	Asba
988	ASG Guitars
989	Ashbory Bass
990	Ashdown
991	Asher Guitars
992	Ashland
993	Ashley Mark
994	Ashly Audio
995	Ashton
996	Ask Video
997	ASS
998	Associated
999	Astatic by CAD
1000	Astell&amp;Kern
1001	Creative Technology
1002	Creek
1003	Creepnomore
1004	Creepy Fingers Effects
1005	Crest Audio
1006	Crestline
1007	Crestron
1008	Crestwood
1009	Critter &amp; Guitari
1010	Cromwell
1011	Crookwood
1012	Croson
1013	Crown
1014	Crowther Audio
1015	Crucianelli
1016	Cruiser by Crafter
1017	Crumar
1018	Crusader Guitars
1019	CTS
1020	Cuenca
1021	Curci
1022	Curry
1023	Curt Mangan
1024	Curtis Novak
1025	Cusack Effects
1026	Custom Audio Electronics
1027	Custom Electronics
1028	Custom Shop Parts
1029	Custom Tones
1030	Custom77
1031	CVL
1032	Cwejman
1033	Cyber Acoustics
1034	Cycling 74
1035	Cyclone Analogic
1036	Cymatic Audio
1037	Cymbal Crown
1038	Cymbomute
1039	Cympad
1040	Cyril Morin
1041	Czarcie Kopyto
1042	D TAR
1043	D&amp;B Audiotechnik
1044	D&amp;R
1045	D*A*M Differential Audio Manifestationz
1046	D.A.V. Electronics
1047	D.E.I. SYSTEM
1048	DAD Dynamic Audio Device
1049	D'Addario
1050	Daddy Mojo
1051	Dadi
1052	Daewoo
1053	Dag
1054	Daila Percussions
1055	Daion
1056	Daisy Rock
1057	Daito
1058	Daking
1059	Dale Forty
1060	D'Alessandro
1061	Dallapè
1062	Dallas Arbiter
1063	Dallas Rangemaster
1064	DAM
1065	Damage Control
1066	Damon
1067	Dampit
1068	Dan Armstrong
1069	Danca Audio
1070	D'Andrea
1071	Danelectro
1072	D'Angelico Guitars
1073	Dangelo Amplifiers
1074	Dangerous Music
1075	Daniele Giardina
1076	Danmar
1077	DAP Audio
1078	Daphon
1079	D'Aquisto
1080	Darco
1081	Darestone
1082	Darkglass Electronics
1083	DAS
1084	Daslight
1085	Dateq
1086	Dava
1087	Dave Guardala
1088	Dave Hall Amplifiers
1089	Dave Smith Instruments
1090	David Allen Pickups
1091	David Bray Amps
1092	David Eden
1093	David Gage
1094	David Hite
1095	David Naill
1096	Davis Acoustic
1097	Davoli
1098	Dawn
1099	Dawner Prince Electronic
1100	Dayton Audio
1101	DB Percussion
1102	DB Technologies
1103	DBS electronic
1104	DBX
1105	DBZ Guitars
1106	DDA Console
1107	DDrum
1108	Ddt
1109	De Armond
1110	De Gier Guitars
1111	De Haske Publications
1112	De Salvo
1113	De Sisti
1114	Deagan
1115	Dean
1116	Dean Markley
1117	Death by Audio
1118	Decibel Eleven
1119	Decksaver
1120	Dee Jay Service
1121	Deep
1122	Deering
1123	Defil
1124	Definitive Technology
1125	Defraia Guitars
1126	DEG
1127	Deimel Guitarworks
1128	Delano
1129	Delcam Audio
1130	Dell
1131	Della Noce
1132	Delo Drums
1133	Delson
1134	DeltaLab
1135	D'Em Crazy
1136	Demeter Amplification
1137	Denis Wick
1138	Dennilu
1139	Denon
1140	Denon DJ
1141	DeSalvo
1142	Devi Ever
1143	Devialet
1144	Devine Entertainment
1145	Deviser
1146	Dexibell
1147	DG De Gregorio
1148	Di Berardino Drums
1149	Di Giorgio
1150	Di Leonardo
1151	Di Zhao
1152	Diago
1153	Diamante
1154	Diamond
1155	Diapason
1156	Diaz
1157	Dickies
1158	Didgeridoo Store
1159	Dietmann
1160	Diezel
1161	Digico
1162	Digidesign
1163	Digigram
1164	Digisynthetic
1165	Digital Audio Denmark
1166	Digital Audio Labs
1167	Digital Music Corporation
1168	Digital Music Doctor
1169	Digital Redux
1170	Digital Reference
1171	DigiTech
1172	Dikom
1173	Dillion Guitars
1174	DiMarzio
1175	Dimavery
1176	Dime Amplification
1177	Dime Hardware
1178	diMedici
1179	Dingwall Guitars
1180	Dino Baffetti
1181	Dino's Guitars
1182	DiPinto
1183	Direct Sound
1184	Diril Cymbals
1185	Dirty Boy Pedals
1186	Disaster Area Amps
1187	Discacciati
1188	Discopiu
1189	Disney
1190	Disney by Washburn
1191	Display and Play
1192	Divided by 13
1193	Dixon
1194	DJ Flare
1195	Dj Pro
1196	DJ Qbert
1197	DJ-Shield
1198	DJ-Tech
1199	Dls Effects
1200	DM
1201	DMC
1202	DMRLCargo
1203	DNA Analogic
1204	Dobro
1205	DocZac
1206	DOD
1207	Doepfer
1208	Dogal
1209	Doina
1210	Dolmetsch
1211	Dolnet
1212	Dolphin's Sound
1213	Domus Musica
1214	Donlis
1215	Donner
1216	Dophix
2788	MBL
1217	D'Orazio
1218	Doreli
1219	Dorfler
1220	Dori
1221	Dorrough
1222	Dot on Shaft
1223	Douglas Guitars
1224	Dowina
1225	Down 2 Earth
1226	Dpa Microphones
1227	DR Pro
1228	DR Strings
1229	Dr. Bohm
1230	Dr. Dan's
1231	Dr. Green
1232	Dr. Scientist
1233	Dr. Z Amplification
1234	Dr.J Effects
1235	Dr.No Effects
1236	Dragonfly
1237	Dragonfly Clothing Company
1238	Dragoon
1239	Drake Mouthpieces
1240	Drawmer
1241	Dreadbox
1242	Dream Cymbals
1243	Dreamaker Amps
1244	Dreambow
1245	Dreamsongs Pickups
1246	Driftwood Amps
1247	Drive
1248	Drum Art
1249	Drum Fun
1250	Drum One
1251	Drum Os
1252	Drum Pike
1253	Drum Sound
1254	Drum Tech
1255	Drum Workshop
1256	DrumCraft
1257	Drumdial
1258	DRUMM3R
1259	Drummer's Design
1260	Drumometer
1261	Drumstatic
1262	Drybell
1263	DTS Lighting Company
1264	Duallist
1265	Dudemusic
1266	Duende
1267	Duesenberg
1268	Duke
1269	Dukoff
1270	Dumble
1271	Dunbar
1272	Duncan Designed
1273	Duncan Performer
1274	Dunlop
1275	Dunnett
1276	DuP
1277	Dupont
1278	Durham Electronics
1279	Dusty Strings
1280	DV Mark
1281	Dvorak
1282	DVR
1283	DW
1284	DW Drums
1285	Dwarfcraft Devices
1286	Dynacord
1287	Dynarette
1288	Dynasonics
1289	Dynasty
1290	Dynatone
1291	Dynaudio
1292	Dynaudio Acoustics
1293	E Cords
1294	E MU
1295	E Mu Systems
1296	E.C. Kerby
1297	E.Energy
1298	E3works
1299	Eagle
1300	Eagle Line
1301	Eagle Mountain
1302	Eagletone
1303	EamLab
1304	EAR SONICS
1305	Ear Trumpet Labs
1306	EAR Yoshino
1307	Earlham
1308	EarthQuaker Devices
1309	Earthtone
1310	earthworks
1311	East Meets West
1312	East UK
1313	East West
1314	Eastman
1315	EastWest
1316	Eastwood Guitars
1317	Easy Play
1318	EAW
1319	EBO
1320	E-Bow
1321	EBS
1322	Ebtech
1323	Ec Pedals
1324	Eccleshall
1325	Echo
1326	Echo Digital Audio
1327	Echobel
1328	Echolette
1329	Echopark
1330	Ecler
1331	Eclipse
1332	Eclipse Trumpets
1333	Ecm
1334	Ecorda
1335	ECS
1336	EdC Sound
1337	Eddy Finn
1338	Eden
1339	Edicron
1340	Edifier Speakers
1341	Edirol
1342	Editors Keys
1343	Edward Dada
1344	Edward Van Halen
1345	Edwards Guitars
1346	Edwards Trombones
1347	Efesto Production
1348	Effector 13
1349	Effectrode
1350	Effects Pedal Boutique
1351	Effedot
1352	Effettidiclara
1353	Egmond Guitars
1354	Egnater Amplification
1355	Ego Lighting
1356	Ego Sonoro
1357	EICH Amplification
1358	Eigenlabs
1359	Eighteen Sound
1360	Eiki
1361	Eko
1362	Eko Guitars
1363	EKS
1364	El Dorado
1365	El Musico Loco
1366	El Torres
1367	Elation
1368	Electra Guitars
1369	Electric Piano Italia
1370	Electrical Guitar Company
1371	Electrix
1372	Electro Faustus
1373	Electro Harmonix
1374	Electro Voice
1375	Electrocompaniet
1376	ElectroLead
1377	Electronic Orange
1378	Elektron
1379	Elena Soprani
1380	Elettronica Legend
1381	Eleuke
1382	Eleven Electrix
1383	Elgam
1384	e-licktronic
1385	Eliminator
1386	Eliminator Lighting
1387	Elite Core
1388	Elite Tone
1389	Elixir
1390	Elka
1391	Elkavox
1392	Elkhart
1393	EllediSound
1394	Elli-Sound
1395	Elmwood Amps
1396	Elrick
1397	Elysia
1398	EM Books
1399	EM Winston
1400	Emagic
1401	Emanating Fist Electronics
1402	Embergher
1403	eMedia
1404	Emerson
1405	Emes
1406	EMG
1407	Eminence
1408	Eminent
1409	Emma
1410	Emma Electronic
1411	Emo Systems
1412	Emperion Guitars
1413	Empire Media
1414	Empirical Labs
1415	Empress
1416	EMS
1417	Emt
1418	Emu
1419	Encore
1420	Endangered Audio Research
1421	Endorphin.es
1422	Endust
1423	Energy
1424	Engelhardt
1425	Engineered Case Manufacturers
1426	Engl
1427	Engl Amps
1428	Eno Pedals
1429	Ensoniq
1430	Enttec
1431	Entwistle Custom Pickups
1432	Eowave
1433	Epa Sound
1434	EPE
1435	Epic
1436	Epicure Speakers
1437	Epifani
1438	Epiphone
1439	Epm Corporation
1440	Epos Acoustics
1441	Epson
1442	Equator Audio
1443	Erard
1444	Ergoplay
1445	Erica Synths
1446	Erjk
1447	Ernie Ball
1448	Ernst Kaps
1449	E-ROS
1450	Esarc
1451	Esh Bass
1452	ESI
1453	ESI Professional
1454	Esio Audio
1455	ESM Mouthpieces
1456	Eso Mixer
1457	ESP
1458	Espana
1459	Ess
1460	ESS Electronic Sound Solution
1461	Essetipicks
1462	Essex Pianos
1463	Esteban
1464	Estephan
1465	Esteve
1466	Estive
1467	Estonia Pianos
1468	ETA Systems
1469	ETC
1470	Etek
1471	Ethos Overdrive
1472	Etoile
1473	Euphonic Audio
1474	Euphonix
1475	Eurocable
1476	Eurocases
1477	Eurolegno
1478	Eurolite
1479	Euromet
1480	Europoint
1481	Eurotruss
1482	Euterpe
1483	Evandale
1484	Evans
1485	Eve Audio
1486	Event
1487	Eventide
1488	Everly
1489	Evertune
1490	EVH
1491	Evidence Audio
1492	EvoLight
1493	Evolution
1494	E-Wave
1495	Ews
1496	Excalibur
1497	Excelsior
1498	Exclusive
1499	ExEf
1500	E-Xence
1501	Expansion Tank
1502	Expert Sleepers
1503	Exploraudio
1504	Exposure
1505	Extreme
1506	Extreme Sound
1507	EZ Dupe
1508	F Bass
1509	F.E. Olds
1510	F.lli Alessandrini
1511	f.lli Vaccari
1512	F.Lorée
1513	Faber German Guitar Parts
1514	Fable Sounds
1515	Faby
1516	Faceless FX
1517	Facelift
1518	Factory Guitars
1519	Factory Metal Percussion
1520	Facus
1521	Faderfox
1522	Fahrenheit
1523	FAIRBANKS GUITARS
1524	Fairfield Circuitry
1525	Fairmont
1526	FaitalPRO
1527	Faith Guitars
1528	Fal
1529	Falcon
1530	Famc
1531	Fame
1532	Fancy Pans
1533	Fane
1534	Fanfoni
1535	Fanndec
1536	Fano Guitars
1537	Fantek
1538	Fantini Accordions
1539	Fantom
1540	Fantoni
1541	FarEast
1542	Farfisa
1543	Fargen Amps
1544	Farida Guitars
1545	Farley's
1546	Fasch
1547	Fast Axe
1548	Fat Congas
1549	Fatar
1550	Fattoria Mendoza
1551	Favored Nations
1552	Faxx
1553	FBG Fatboy Guitars
1554	FBT
1555	Fclef
1556	Fdb Audio
1557	FEA Labs
1558	Featherweight
1559	Feeldrum
1560	Feeltune
1561	Fender
1562	Fender Custom Shop Apparel
1563	Fender Footwear
1564	Fenix
1565	Fenton
1566	Fernandes
1567	Ferrara
1568	Ferrarotti
1569	Ferrarotti Chitarre
1570	Ferrofish
1571	Feurich
1572	Fever
1573	Ffalstaff
1574	FGN Guitars
1575	FIAS Stradella
1576	Fibes
1577	Fibracell
1578	Fides
1579	FiiO
1580	Fine Guitars
1581	Fine Resophonic Guitars
1582	Finger Fitness
1583	Fingerease
1584	Fingerweights
1585	Finhol
1586	FIP (fabbrica italiana pianoforti)
1587	First Act
1588	Fisart
1589	Fisher
1590	Fishman
1591	Five-O by Montarbo
1592	Fivre
1593	Flame
1594	Flametone
1595	Flash
1596	Flatiron
1597	Flaxwood
1598	Flea Bass
1599	Flea Market Music
1600	Fleta
1601	FlexWaves
1602	Flight
1603	Flip Oakes Wild Thing
1604	Flix
1605	Floda Guitars
1606	Florea
1607	Florencia
1608	Floret
1609	Floyd Rose
1610	Fluid Audio
1611	Flux
1612	FMR
1613	Focal
1614	FocGear
1615	Focusrite
1616	Fodera
1617	Fohhn
1618	Fom
1619	Fontanot
1620	Formanta
1621	Formula B
1622	Formula Sound
1623	Forssell Technologies
1624	Fortin
1625	Fostex
1626	Fox
1627	FoxGear
1628	Foxpedal
1629	FoxRox
1630	Foxx
1631	Fp Group
1632	FP Professional Cases
1633	FPD Drums
1634	F-Pedals
1635	Fractal Audio
1636	Framer
1637	Frameworks Guitars
1638	Framez
1639	Framus
1640	FRANCK BICHON
1641	Francois Louis
1642	Franklin Strap
1643	Frantone
1644	Franz Kirschnek
1645	Frap Tools
1646	Frate Precision
1647	Fratelli Crosio
1648	Fratelli Crosio Stradella
1649	Fratelli Patricola
1650	Fredenstein
1651	Frederick Hemke
1652	Fredric Effects
1653	Free the Tone
1654	FreeFloat
1655	Freehand
1656	Freekish Blues
1657	Frenzel Amps
1658	Frequency Central
1659	Fret King
1660	FretLight Guitars
1661	Fretlord
1662	Fridgebuzzz
1663	Friedman Amplification
1664	Frontalini
1665	Frontier Design
1666	Frontier Design Group
1667	FrontStage
1668	Frostwave
1669	Frudua
1670	Fryer Guitars
1671	Fryette
1672	Fuchs
1673	Fujiha
1674	Fulltone
1675	Fun Generation
1676	Funktion-One
1677	Furch
1678	Furcht &amp; Söhne
1679	Furlanetto
1680	Furman
1681	Furstein
1682	Fusco Guitars
1683	Fusion
1684	Future Retro
1685	Future Sonics
1686	Futurelight
1687	FX
1688	FX Case
1689	FXpansion
1690	FYRD
1691	G Force
1692	G Lobal
1693	G&amp;BL
1694	G&amp;L
1695	G&amp;P
1696	G. Schirmer
1697	G.Art
1698	G.I.S.
1699	G2D
1700	G7th
1701	Gabriel Sound Garage
1702	Gain by FGN
1703	Galactron
1704	Galanti
1705	Galanti Classic Organs
1706	Galaxy
1707	Galaxy Audio
1708	Galileo
1709	Gallagher Guitars
1710	Galli
1711	Gallien Krueger
1712	Gallinotti
1713	Galotta
1714	Galveston Guitars
1715	Garbujo Guitars
1716	Gard
1717	Garrard
1718	Garrison
1719	Garritan
1720	Gary Hurst
1721	Gary Sugal
1722	Gaskell Guitars
1723	Gato
1724	Gator
1725	Gatt Audio
1726	Gaucho
1727	Gauger Percussion
1728	Gauss
1729	Gaveau
1730	Gavio
1731	Gawharet El Fan
1732	Gazley
1733	GBC
1734	GDE
1735	Gear One
1736	Gear4music
1737	Gebr. Alexander mainz
1738	GeekMacDaddy Pedals
1739	Geloso
1740	Gem
1741	Gem Sound
1742	Gembird
1743	Gemeinhardt
1744	Gemini
1745	Gemini DJ
1746	Genalex
1747	Genelec
1748	General Electric
1749	General Music
1750	General Rohren
1751	Genesis
1752	Genius
1753	Genz Benz
1754	Genzler
1755	George Dennis
1756	George L
1757	George L's
1758	George Way Drums
1759	German Light Products
1760	Germino
1761	Get'm Get'm
1762	Getzen
1763	Gewa
1764	Geyer
1765	GFI System
1766	GFO Flight Cases
1767	GForce
1768	GFS electronics
1769	GFS Pickups
1770	GGP Sound
1771	Gherson
1772	GHS
1773	GHS Strings
1774	Giannini
1775	Giardinelli
1776	Gibraltar
1777	Gibson
1778	Gibson Custom Shop
1779	Gig
1780	Gig FX
1781	Gig Skinz
1782	Gigliotti
1783	Gigrig
1784	Gik Acoustics
1785	Gil Yaron
1786	Giovanetti Hand Wired
1787	Gitane
1788	Giulietti Fisarmoniche
1789	Giussani
1790	Giustozzi
1791	Gkg Gary Kramer Guitars
1792	G-Lab
1793	Glaesel
1794	Glaresoft
1795	Glass Master
1796	Glasser
1797	GLB Sound
1798	Glendale
1799	Glider
1800	Global Audio by CAD
1801	Global Truss
1802	Glockenklang
1803	Glorious
1804	GLX Lighting
1805	GLX Pedals
1806	Glyph
1807	GMedia Music
1808	GML
1809	Gmp Guitars
1810	GMS
1811	GNG Guitars
1812	GNI Pedals
1813	Godin
1814	Godlyke
1815	Godvinez
1816	Godwin Guitars
1817	Godwin Organs
1818	Goedrum
1819	GoGo Tuners
1820	Goja
1821	Gold Line
1822	Gold Star
1823	Gold Tone
1824	Golden Age
1825	Golden Cup
1826	Golden Gate
1827	Golden Sound
1828	Golden Ton
1829	Golden Touch
1830	Goldo
1831	Goldpoint
1832	Goldsound
1833	Goldtone
1834	Goldwood
1835	GOLEM instruments
1836	Goliath Studio
1837	Gon Bops
1838	Gonzales
1839	Goodmans
1840	Goodsell Amplifier
1841	Goosoniqueworx
1842	Gope
1843	Gordius
1844	Gordon Smith
1845	Gorilla Snot
1846	Görs &amp; Kallmann
1847	Gotoh
1848	Gower
1849	GR Basses
1850	GR Mouthpieces
1851	Grace Design
1852	Grado
1853	Graph Tech
1854	Grassi
1855	Gravity
1856	GRBASS
1857	GRCustomize
1858	Great Divide Guitar
1859	Great River Electronics
1860	Greco
1861	Greedtone
1862	Greenback
1863	Greenhouse Effects
1864	Greenwich
1865	Greer Amps
1866	Greg Bennett
1867	Greg Black
1868	Gretsch
1869	Gretsch Drums
1870	Gretsch Guitars
1871	GreyDressedBoy
1872	Griego Mouthpieces
1873	Gripmaster
1874	Griven
1875	Groove Tube
1876	Groove Tubes
1877	Groovster Strings
1878	Grosh Guitars
1879	Grossman Music
1880	Grotrian Steinweg
1881	Grover
1882	Grover Trophy
1883	Grp Synthesizer
1884	GRP Synthesizers
1885	GRS
1886	Grundig
1887	Gruv Gear
1888	Gryphon Audio
1889	GS Light
1890	GSA Audio
1891	GTX Guitar
1892	Guanex
1893	Guardala
1894	Guerrini
1895	Guil
1896	Guild
1897	Guillemot
1898	Guistar Picks
1899	Guitar 411
1900	Guitar Center
1901	Guitar Fetish
1902	Guitar Heads
1903	Guitar Hero
1904	Guitar Research
1905	Guitar Rings
1906	Guitar Tech
1907	Guitares Donadini
1908	Gulbransen
1909	Gullansky Lab
1910	Gurus
1911	Gut-a-Like
1912	Guvnor Guitars
1913	Guyatone
1914	Guzauski-Swist
1915	GW Guitars
1916	H&amp;S
1917	H.J. Bernstein
1918	Haagston
1919	Haar Guitars
1920	Haeussel
1921	Hafler
1922	Hagstrom
1923	Hahn Guitars
1924	Hal Leonard
1925	Halifax
1926	Hall
1927	Hallmark
1928	Halo Guitars
1929	Hamer
1930	Hamichord
1931	Hamilton Stands
1932	Hammerax
1933	Hammig Flutes
1934	Hammig Philipp
1935	Hammond
1936	Hand Crafted Labs
1937	HandHeld Sound
1938	Hand-i wood
1939	Handmade
1940	Hanika Guitars
1941	Hannabach
1942	Hans Hoyer
1943	Hans Mayer
1944	Hansenfutz
1945	Hao
1946	Hapi
1947	Harbeth
1948	Harbinger
1949	Hardcase
1950	HardWear
1951	HardWire
1952	Hardy
1953	Harley Benton
1954	Harman Kardon
1955	Harmon
1956	Harmonic Design
1957	Harmonic Vision
1958	HarmonicaLessons.com
1959	Harmony Guitars
1960	Harper
1961	HarpGear Amplification
1962	Harpsicle Harps
1963	Harptone
1964	Harrelson Trumpets
1965	Harrier
1966	Harrison Music Education Systems
1967	Harry Benton
1968	Harry Pedler
1969	Harsan Mihalia
1970	Hart Dynamics
1971	Hartke
1972	Hartman Pedals
1973	Hartmann
1974	Harvest Bags
1975	Hauptwerk
1976	Hawkes &amp; Son
1977	Hawthorne by Walden
1978	Hayden Amplifiers
1979	Hayman
1980	Haynes
1981	Haywire Custom Guitars
1982	HBE
1983	Headfx
1984	Headliner
1985	Headrush
1986	Headstrong Amplifiers
1987	Headway
1988	Hear Technologies
1989	Hearos
1990	Heartfield
1991	Heavy Electronics
1992	Heckel
1993	Hedgehog Stompboxes
1994	Heet Sound
1995	Heil Sound
1996	Helin
1997	Helios Electronics Ltd
1998	Hemingway Digital Pianos
1999	Hennessey Guitar Parts
2000	Henriksen
2001	Henry Red Heller
2002	Herco
2003	Hercules
2004	Hercules Stands
2005	Herda Guitars
2006	Heritage
2007	Hermann
2008	Hermida Audio
2009	Hernals Tokyo
2010	Hero
2011	Hertz
2012	Hesu
2013	Hetman
2014	Hevos
2015	Hexe
2016	Hexinverter Electronique
2017	HH Electronic
2018	HHB
2019	Hi-Case
2020	Hicon
2021	Hidersine
2022	HifiMan
2023	High End Systems
2024	High Spirits
2025	Highwood
2026	Higlander
2027	Hijos de Vincente Tatay
2028	Hill
2029	Hillwood
2030	Himmelstrutz
2031	HiPercussion
2032	Hipshot
2033	Hirsbrunner
2034	Hiscox Cases
2035	Hitachi
2036	Hitec Audio
2037	Hiwatt
2038	HK Audio
2039	HK-Instruments
2040	Hls Audio
2041	Hodge
2042	Hoepli
2043	Hoffmann &amp; Kuhne
2044	Hofmann &amp; Czerny
2045	Hofmann Wien
2046	Hofner
2047	Hohner
2048	Holling &amp; Spangenberg
2049	Hollywood
2050	Hologram Electronics
2051	Holophone
2052	Holton
2053	Homebrew Electronics
2054	Homespun
2055	Hondo
2056	Honsuy
2057	Hope Lab
2058	Hopf
2059	Hora
2060	Horizon
2061	Hornby Skewes
2062	Hornets
2063	Horngacher
2064	Horugel
2065	Hosa
2066	Hosco
2067	Hoshino
2068	Hosiden
2069	Hot Cabs
2070	Hot Licks
2071	Hot Picks
2072	Hot Sticks
2073	Hotone
2074	House of Blues
2075	House of Troy
2076	Houston Publishing
2077	Howarth
2078	Hoyer
2079	HP
2080	HQ Percussion
2081	HQ Power
2082	HQRP
2083	Hranov
2084	HRK
2085	Hsinghai Piano
2086	Htx Guitars
2087	Hub van Laar
2088	Hubschen
2089	Hudson Electronics
2090	Hudson Music
2091	Hughes &amp; Kettner
2092	Huller
2093	Hulton Archive
2094	Human Base
2095	Human Gear
2096	Humes &amp; Berg
2097	Humfree
2098	Humfrees
2099	Humicase
2100	Hunday Guitars
2101	Hupfeld
2102	Huss &amp; Dalton
2103	Hutchins Guitars
2104	Huttl
2105	HXM
2106	HyperSynth
2107	Ial Sound
2108	Ianiro
2109	Ianni Organetti
2110	Ibach
2111	Ibanez
2112	Ibiza
2113	Ice Pix
2114	IceScream Pedals
2115	Icon
2116	iConnectivity
2117	iFi Audio
2118	iGIG Cases
2119	IGS Audio
2120	IK Multimedia
2121	iKey Audio
2122	iko case
2123	ILIO
2124	IMAGE LINE
2125	IMG Stage Line
2126	Inaki Sebastian
2127	Incagnoli
2128	INDERBINEN
2129	India Street Percussion
2130	Indiana Line
2131	Indie Guitars
2132	Industrialectric
2133	Infinity
2134	Infinity Guitars
2135	Ingram Sherman
2136	Inima
2137	Inkel
2138	Innerclock Systems
2139	Innovative Music Systems
2140	Innovative Percussion
2141	Input Logic
2142	i-nstruments
2143	Integrity Music
2144	Intek
2145	Intellijel
2146	Intellitouch
2147	Inter-M
2148	International Music Company
2149	International Sound
2150	Intimidation
2151	Involight
2152	Inward Connections
2153	Ion Audio
2154	IPL
2155	iPlayMusic
2156	IQS
2157	Iron Ether
2158	Ironbridge Electronics
2159	Ironess USA
2160	Irongear
2161	Islander Ukulele
2162	Isoacoustic
2163	iSong
2164	IsoNode Pro
2165	ISP Technologies
2166	I-Spira
2167	Istanbul
2168	Italia
2169	Italian Stage
2170	ITBEATS
2171	iZotope
2172	J&amp;D Guitars
2173	J&amp;H
2174	J.Michael
2175	J.Rockett Audio Designs
2176	Jabra
2177	Jacaranda
2178	Jack Daniel's
2179	Jack Deville Electronics
2180	Jackson
2181	Jackson Audio
2182	Jacoland
2183	Jacques
2184	Jacques Capelle
2185	Jad&amp;Freer
2186	Jade Audio
2187	Jaden Rose Guitars
2188	Jaeger
2189	Jakob Winter
2190	Jam Hub
2191	Jam Pedals
2192	Jambone
2193	JAMedia
2194	James Goodall
2195	James Neligan
2196	James Trussart Guitars
2197	Jamey Aebersold
2198	Jam-Mate
2199	Jammin
2200	Jamo
2201	JamStands by Ultimate Support
2202	Janagy
2203	JanAid Guitars
2204	Jands
2205	JangleBox
2206	Jarre Technologies
2207	Jasmine by Takamine
2208	Jaspers
2209	Jay Haide Violins
2210	Jay Turser
2211	Jaydee
2212	Jaytec
2213	Jazzkat
2214	JazzLab
2215	JazzMutant
2216	JB Lighting
2217	JB Systems
2218	JBE Pickups
2219	JBL
2220	Jbn
2221	JBR WOOD
2222	JDK
2223	Jean Paul
2224	Jedia
2225	Jedson Guitars
2226	Jeff Gold Graphics
2227	Jeff Rowland
2228	Jeffrey David
2229	Jellifish
2230	Jen
2231	Jensen
2232	Jerry Jones Guitars
2233	Jerzy Drozd
2234	Jess Loureiro
2235	Jet 2000
2236	Jet City Amplification
2237	Jet Tone
2238	JetSlide
2239	Jetter
2240	JHS Pedals
2241	Jiggs
2242	Jim Dunlop
2243	Jim Harley
2244	Jim Redgate Guitars
2245	Jim Reed
2246	Jimi Hendrix
2247	JJ Electronics
2248	JJ Guitars
2249	JJ Scott
2250	JK Audio
2251	JL Cooper
2252	JLH Technologies
2253	Jm Forest
2254	Jmi
2255	JMLab
2256	Jo Ral
2257	Joan Cashimira
2258	Jocavi
2259	Jodavi
2260	Jodi Head
2261	Jody Jazz
2262	Joe Barden
2263	Joe Montineri Custom Drums
2264	Joemeek
2265	Johann Bruck
2266	Johannes Gerber
2267	Johannus Organs
2268	John Brinsmead &amp; Sons
2269	John Hornby Skewes
2270	John Packner
2271	John Pearse
2272	Johnson
2273	Jolana Guitars
2274	Jolida
2275	Jollysun
2276	Jomox
2277	José Lopez Bellido
2278	Jose Ramirez
2279	Jose Torres
2280	Josef Lazar
2281	Joseph Klotz
2282	JOSEPHSON
2283	JOTLER CUSTOM GUITARS
2284	Joyful Noise Drum
2285	Joyo
2286	JTS
2287	Juan Estruch
2288	Juan Hernandez
2289	Juan Martinez
2290	Jubal
2291	Juice Goose
2292	Jupiter
2293	JustEnough
2294	Jvc
2295	JZ Microphones
2296	K&amp;H Kühnl &amp; Hoyer
2297	K&amp;K Sound
2298	K&amp;M
2299	Kable Keepers
2300	Kaces
2301	Kafko
2302	Kahler
2303	Kala Ukulele
2304	Kalison
2305	Kalmann Piano
2306	KAM
2307	Kamaka
2308	Kangaba
2309	Kanile'a
2310	Kanstul
2311	Kaotica
2312	Kappler Coblenz
2313	Karathon
2314	Karl Glaser
2315	Karma
2316	K-array
2317	Kashian
2318	Kastner Pianos
2319	Kasuga
2320	KAT Percussion
2321	Katho
2322	Kawai
2323	Kay
2324	Keeler Designs
2325	Keeley
2326	Kef
2327	Keilwerth
2328	Keiper Guitars
2329	Keith McMillen
2330	Keller
2331	Kellermann
2332	Kelly
2333	Kemble
2334	Kemp Elektroniks
2335	Kemper
2336	Kempton
2337	Ken Rose
2338	Ken Smith
2339	Kendrick
2340	Kensington
2341	Kent Armstrong Pickups
2342	Kenton
2343	Kentucky
2344	Kenwood
2345	Kenyon
2346	Kepur
2347	Kerly
2348	Kessel Pianos
2349	Ketron
2350	Keyb Organ
2351	Keyhelm
2352	Keywear
2353	Khaler
2354	Khan Audio
2355	KickPort
2356	Kidsplay
2357	Kiesel
2358	Kilpatrick Audio
2359	Kimaxe
2360	Kimball
2361	Kimbo
2362	Kind Audio
2363	Kinetik
2364	King
2365	King Capitol Punishment
2366	King David
2367	King Doublebass
2368	KING TONE GUITAR
2369	King's Stone
2370	Kingsley Amplifiers
2371	Kingston
2372	Kinman
2373	Kinsman
2374	Kirchhoff Schlagwerk
2375	Kismet
2376	Kiso Suzuki
2377	kiStation
2378	Kitty Hawk
2379	Klark Teknik
2380	KLD
2381	Klein &amp; Hummel
2382	Klein Guitars
2383	Klein Pickups
2384	Klemt Echolette
2385	K-Line Guitars
2386	Kling &amp; Freitag
2387	Klingmann
2388	Klipsch
2389	Klira
2390	Klon
2391	Klotz
2392	Kluson
2393	KMD
2394	Kme
2395	Knabe Pianos
2396	Knaggs Guitars
2397	Knas
2398	Knosti
2399	Koala Music
2400	Kobble
2401	Koch
2402	Kodak
2403	Kohlert
2404	Kohno Guitars
2405	Kolberg
2406	KOMA Elektronik
2407	Komet
2408	Konig
2409	Konig &amp; Meyer
2410	Kontrol Dj
2411	Kooiman
2412	Kool Light
2413	Koolsound
2414	KOR Pedals
2415	Korala
2416	Korg
2417	Kornbherg
2418	Koss
2419	Kosth
2420	Kotato &amp; Fukushima
2421	Kraken Guitars
2422	Kramer
2423	Krank
2424	Krank Amplification
2425	Kratt
2426	Krauss
2427	Krell
2428	Kremona
2429	Krest Cymbals
2430	KRK
2431	Kronbauer
2432	Krundaal
2433	KS Audio
2434	KSD
2435	KSdigital
2436	KSP
2437	KTS Titanium
2438	Kubicki
2439	Kultur
2440	Kumika
2441	Kun
2442	Kurzweil
2443	Kush Audio
2444	Kustom
2445	KV2 Audio
2446	Kvant
2447	Kydd
2448	Kyser
2449	L.A. Sax
2450	L.POLVERINI 1889
2451	L.R. Baggs
2452	La Audio
2453	La Bella
2454	La Mancha Guitars
2455	La Patrie
2456	LAA Custom
2457	LaB di Lucio Bazzocchi
2458	Lab Gruppen
2459	Lab.gruppen
2460	LaBella
2461	Laberte-Humbert
2462	Laboga
2463	Lace
2464	LaCie
2465	L-Acoustics
2466	Lafin
2467	LAG Guitars
2468	Laguna
2469	Lake people
2470	Lakewood
2471	Lakland
2472	Lama
2473	Lamberson
2474	Lamp Lite
2475	Lampcraft
2476	Lampo
2477	Lan Audio
2478	Landgraff
2479	Landing Bass
2480	Landola
2481	Laney
2482	Lang Amplification
2483	Lange
2484	Langevin
2485	Langner
2486	Lanikai
2487	Lantec
2488	Lap axe
2489	Lark
2490	Larrivèe
2491	L'Artigiana
2492	Laserworld
2493	Laskey
2494	Latch Lake
2495	Latin Benson
2496	Latin Percussion
2497	Laurus
2498	Lauten Audio
2499	Lava
2500	LaVoz
2501	Lavry Engineering
2502	Lawton
2503	Lax
2504	Layolo
2505	Lazeman
2506	Lazy J Projects
2507	LD Systems
2508	Le Soprano
2509	Leach Guitars
2510	Leap Motion
2511	Lebayle
2512	LeBlanc
2513	Leblanc by Backun
2514	Lechner
2515	Lectrosonics
2516	LedLux
2517	Ledwall Star
2518	Lee Jackson
2519	Lee Oskar
2520	Leedy Drums
2521	Leem
2522	Lefima
2523	Legator
2524	Legend Guitars
2525	Légère
2526	Legg Guitars
2527	Lehle
2528	Leho Ukuleles
2529	LEM
2530	Lenco
2531	Lengardo
2532	Lenzner
2533	Leo Quan
2534	LepLoop
2535	Leslie
2536	Levin Guitars
2537	Levinson
2538	Levy's
2539	Lewitt
2540	Lexicon
2541	Lexonpro
2542	Lien Cheng
2543	Life
2544	Lifetime
2545	Light Planet
2546	Lightfoot Labs
2547	Lighting
2548	Lightmaxx
2549	LightSnake
2550	LightWave
2551	Limec
2552	Lindell Audio
2553	Linden
2554	Lindert
2555	Lindo
2556	Lindy
2557	Lindy Fralin
2558	Line 6
2559	Line Audio
2560	Line for Stage
2561	Line Parts
2562	Line6
2563	LINFAUDIO
2564	Link Italy
2565	Linko
2566	Litec
2567	Litecraft
2568	Lite-Puter
2569	Litestructures
2570	Little Labs
2571	littlepapercones
2572	Littlite
2573	Liutart e Tube Art
2574	Liuteria Canova
2575	Liuteria Cesarini
2576	Liuteria Guarnieri
2577	Liuteria Zacchetti
2578	Liutus
2579	Live Wire
2580	Live Wire Solutions
2581	Livewire Electronics
2582	Livid Instruments
2583	Lizard Spit
2584	LM Products
2585	LMI
2586	Loco Box
2587	Locto
2588	Lodi Guitars
2589	Logan
2590	Logic Keyboard
2591	Logidy
2592	Logjam Music
2593	Lollar Pickups
2594	Lombardi
2595	London City
2596	Longhin Ampli
2597	Loop-Master
2598	Looptrotter
2599	Lotus
2600	Lotus Pedal
2601	Loud Guitars
2602	Loud Professional
2603	Louis Electric Amplifier
2604	Louis Renner
2605	Lovadina
2606	Lovatone
2607	Lovepedal
2608	Loveri Usa
2609	Lovetone
2610	Lowden
2611	Loxx
2612	LR Baggs
2613	LR Soundproof
2614	LsL Instruments
2615	Lss
2616	LT Sound
2617	Ltd
2618	Lubrostage
2619	Lucchini
2620	Lucero
2621	Lucid
2622	Lucida
2623	Lucien
2624	Ludwig
2625	Luis Romero
2626	Luke &amp; Daniel
2627	Lumineze
2628	Lumpy's Tone Shop
2629	Luna
2630	Lunastone
2631	Lundgren Pickups
2632	Lupifaro
2633	Lute Hole
2634	Luthiers
2635	Luxman
2636	Luyben
2637	Lynx Studio Technology
2638	Lyon By Washburn
2639	M Audio
2640	M Capitale
2641	M Live
2642	M&amp;G Saxophones
2643	M.J. Douglas
2644	M@F
2645	M3 Emthree
2646	MA Lighting
2647	Maag Audio
2648	Mac Audio
2649	Mack
2650	Mackie
2651	Mad Corporation
2652	Mad Distribution
2653	Mad Hatter Stompboxes
2654	Mad Professor
2655	Madamp
2656	MadCat
2657	Madison Amps
2658	Madrigal Guitars
2659	Maeari
2660	Maestro
2661	Magic Fluke
2662	Magic Fx
2663	Magix
2664	Magma
2665	Magnamusic
2666	Magnat
2667	Magnatone
2668	Magnetic Effects
2669	Magnetics
2670	Magneto Audio Devices
2671	Magnum
2672	Magnum Pedal Steel
2673	Magrabò
2674	Mahaffay Amps
2675	Mahalo
2676	Mahi Mahi
2677	Mahilele
2678	Mahillon
2679	Mahimahi
2680	Mahler
2681	Maino e Orsi
2682	Maison
2683	Majestic
2684	Majid DRUMS
2685	Majik Box
2686	Majones
2687	Makala
2688	Makassar
2689	Make Music
2690	Make Noise
2691	MakeMusic!
2692	Malekko
2693	Malletech
2694	MalletKAT
2695	Malone
2696	Mam
2697	Mama Pickups
2698	Mancke
2699	Manfrotto
2700	Manhasset
2701	Manhattan Analog
2702	Manikin Electronic
2703	Manley
2704	Manlius Pickups
2705	Manne
2706	Manne Design
2707	MannMade USA
2708	Mann's
2709	Manson Guitars
2710	Mantini Guitarras
2711	Mantra
2712	Manuel Rodriguez
2713	Mapa
2714	Mapex
2715	Maple Drum
2716	Maranatha! Music
2717	Marantz
2718	Maratea Custom Audio
2719	Marca Reeds
2720	Marchesini Chitarre
2721	Marchi
2722	Marcinkiewicz Mouthpieces
2723	Marcus Bonna
2724	Mari
2725	Marigaux
2726	Mario Corso
2727	Mario Garrone
2728	Mario Grimaldi
2729	Mark Foley
2730	Mark Levinson
2731	Mark of the Unicorn (MOTU)
2732	MarkAudio
2733	Markbass
2734	MarkDrum
2735	MarkOne Audio
2736	Marks
2737	Marleaux
2738	Marma
2739	Marshall
2740	Marshall Electronics
2741	Martin
2742	Martin &amp; Co.
2743	Martin Audio
2744	Martin LeBlanc
2745	Martinez Guitars.com
2746	Maruni
2747	Maruszczyk Instruments
2748	Marvel
2749	Marvin
2750	Marvit
2751	Masaaki
2752	Masaki Sakurai
2753	Masaru Kohno
2754	Maselec
2755	Masetti Liuteria
2756	Masi
2757	Mason &amp; Hamlin
2758	Masotti Guitar Devices
2759	MassBass
2760	Massoni
2761	Master &amp; Dynamic
2762	Master Audio
2763	Masterwork
2764	Masterwriter
2765	Mastery
2766	Mastro Valvola
2767	MatAmp
2768	Matchless
2769	Mateki Flute
2770	Maton Guitars
2771	Matrix
2772	MATT BETTIS
2773	Mattia Cigalini
2774	Mattia Franchin guitars
2775	M-Audio
2776	Mauro Freschi Guitars
2777	Maverick Guitars
2778	Mavis
2779	Maxell
2780	Maxine Guitars
2781	Maxon
2782	Maxtone
2783	Maya Guitars
2784	Maybach
2785	Mayones
2786	Mayson Guitars
2787	MB Quart
2789	M-Blaster
2790	MBT
2791	MC Audio
2792	Mc Crypt
2793	MC Drums
2794	Mc Nash
2795	MC2 Audio
2796	McAlister
2797	McAntony Guitars
2798	MCAudioLab
2799	McDSP
2800	McFarlow
2801	McIlroy Guitars
2802	McIntosh
2803	McLore
2804	McNally
2805	McVoice
2806	MD Musical Accessories
2807	MDF
2808	Mdlr Case
2809	Me All
2810	Me all Light
2811	Me all Sound
2812	Meazzi
2813	Mec-pickups
2814	Medeli
2815	Mediapresse
2816	Meeblip
2817	Mega Amp
2818	MegaDrum
2819	Megatar
2820	Megatone
2821	Mei Mei
2822	Meìnel
2823	Meinl
2824	Meinl Weston
2825	Meisel
2826	Meisterklasse
2827	Mel Bay
2828	Melancon Guitars
2829	Melford
2830	Mellotron
2831	Mellowtone
2832	Melody Guitars
2833	Melody Major
2834	Melton
2835	Memorex
2836	Menatone
2837	Mengascini
2838	Mengozzi
2839	Mennekes
2840	Mensinger Guitars
2841	Mercury Drum
2842	Mercury Magnetics
2843	Mercury Recording Equipment
2844	Meredith Music
2845	Merging Technologies
2846	Merida
2847	Meridian Audio
2848	Meridian Guitars
2849	meris
2850	Merrill Guitars
2851	Mesa Boogie
2852	Metaltronix
2853	Metasonix
2854	Metelli Guitars
2855	Meteoro
2856	Metric Halo
2857	Metrophones
2858	Meyer
2859	Meyer Sound
2860	Mezzabarba
2861	MFB
2862	MG
2863	MI Audio
2864	Michael Kelly
2865	Michael Messer Resonator Guitar
2866	Micro
2867	MicroBoards
2868	Microdesignum
2869	Micromega
2870	Micronet
2871	Microsonic Music
2872	Microtech Gefell
2873	Microtips
2874	Midas
2875	Middle Atlantic
2876	Mid-Fi Electronics
2877	MIDI Solutions
2878	Midiman
2879	Midione
2880	Midiplus
2881	Miditech
2882	Miditemp
2883	Mighty Bright
2884	Mighty Mite
2885	Miguel Almería
2886	Miguel Angel
2887	Miguel Demarias
2888	Miguel Di Carlo
2889	Mike Balter
2890	Mike Caddy
2891	Mike Lull
2892	Mikrofon-M
2893	Miktek Audio
2894	Milab
2895	Millenium
2896	Millenium Drums
2897	Millennia
2898	Miller
2899	Miller Freeman
2900	Milos
2901	Minarik
2902	Mindprint
2903	MindSound
2904	Minotaur Sonic Terrors
2905	Mipro
2906	Mirage
2907	Miraphone
2908	MirrorPix
2909	Mi-Si Electronics
2910	Mission Engineering
2911	Mitchell
2912	Mitchell Lurie
2913	Mitec
2914	Mito
2915	Mitsubishi
2916	Mixars
2917	MixBooks
2918	Mixta Music
2919	MixVibes
2920	Miyazawa
2921	MJM Guitar FX
2922	MJS
2923	MJT
2924	MK Contrabbassi Elettrici
2925	Mkc
2926	MKM
2927	MKS Professional
2928	MMP Brasswind
2929	Mnk
2930	Mobil Truss
2931	Modal Electronics
2932	Modartt
2933	Modcan Synthesizer
2934	Mode Machines
2935	Modern Drummer
2936	Modtone
2937	Modulus
2938	Moeck
2939	Moen Pedals
2940	Moffa Guitars
2941	Mogami
2942	Mogar
2943	Mogees
2944	Mojave Audio
2945	Mojo Hand
2946	Mojotone
2947	Moldovan Amp
2948	Molinelli
2949	Mollard
2950	Mollenhauer
2951	Molpass
2952	Molten Voltage
2953	Monacor
2954	Monarch
2955	Monette
2956	Monitor Audio
2957	Monkey Banana
2958	Mono Case
2959	Monolith
2960	Monome
2961	Monster
2962	Monster Audio
2963	Monster Cable
2964	Monster Effect
2965	Monster Power
2966	Monster Relic
2967	Montani
2968	Montarbo
2969	Monte Allums
2970	Montreux
2971	Monzino
2972	Moody
2973	Mooer
2974	Moog
2975	Moog Music
2976	Moollon
2977	Moon Guitars
2978	Moonphaser
2979	Mordaunt-Short
2980	Moreno
2981	Moreschi
2982	Morgan
2983	Morgan Guitars
2984	Morgan Monroe
2985	Morgancase
2986	Morley
2987	Morpheus
2988	Morrell
2989	Morris
2990	Moses
2991	Mosky
2992	Mosrite Guitars
2993	Mossman
2994	Motion Sound
2995	Motu
2996	Mountainking Electronics
2997	Mouthpiece Café
2998	Movall
2999	Mozzani Liuteria
3000	Mp Audio
3001	MP Guitars
3002	MP Pickups
3003	Mpe
3004	MPE Audio
3005	MPGear
3006	MPM
3007	M-Pro
3008	Mr. b Music Family
3009	Mr. Black Pedals
3010	MS Sound Project
3011	MSI
3012	MTD
3013	MTV Books
3014	Mullard
3015	Müller-Schiedmayer
3016	Multivox
3017	Muramatsu
3018	Murat Diril
3019	Musa Drums
3020	Musart
3021	Muse Research
3022	Musedo
3023	Muses
3024	Music Accessories
3025	Music CD
3026	Music Industry Products
3027	Music Man
3028	Music People
3029	Music Sales
3030	Musical Fidelity
3031	Musician Sound Design
3032	Musicians Gear
3033	Musician's Institute
3034	Musicom Lab
3035	MusiCover
3036	Musicrew
3037	Musictech
3038	Musicvox
3039	MusicXPC
3040	Musikalia
3041	Musikding
3042	Musikraft
3043	Musima
3044	Musique Custom Guitars
3045	Musitalia
3046	Musitek
3047	Musser
3048	Mutable Instruments
3049	Mutec
3050	Mutron
3051	Mutronics
3052	Muza
3053	MVP
3054	mwm phase
3055	MXL
3056	MXR
3057	My Audio
3058	My Music
3059	My Power
3060	Mytek
3061	N Tune
3062	Nad
3063	Nady
3064	Nagahara Flutes
3065	Nagra Audio
3066	Nakamichi
3067	Napalm Pedals
3068	Nardelli
3069	Nash
3070	Nashville
3071	Naska Belts
3072	Natal
3073	National
3074	National Picks
3075	Native Instruments
3076	Navarro
3077	Navini Fisarmoniche
3078	NDS Music
3079	NEA Music Inside
3080	Neary
3081	Nec
3082	Nechville
3083	Neewer
3084	Nektar
3085	Nemesis
3086	Nemo Sound
3087	Nemphasis
3088	Neo Instruments
3089	Neo Oyaide
3090	Neotech
3091	Neptune
3092	NetworkSound
3093	Neumann
3094	Neumeyer Pianos
3095	Neunaber Audio Effects
3096	Neupert
3097	Neuratron
3098	Neuser Basses
3099	Neutrik
3100	Neve
3101	New England Digital
3102	New Old Sound Ltd
3103	Newtone Strings
3104	Nexo
3105	Nick Page Guitars
3106	Nickerson Guitars
3107	Niedermeyer
3108	Nieer
3109	Night Angels Electronics
3110	Nik Huber
3111	Nikko
3112	Ningbo
3113	Nino
3114	Nioi Design
3115	NitroCab
3116	Nobels
3117	Noble &amp; Cooley
3118	Noblet
3119	NOC3 Effects
3120	Noise Control Audio
3121	Noise Engineering
3122	Noisemaker Effects
3123	Noiz
3124	Noll Electronic
3125	Nomad
3126	Nomad Factory
3127	Nord
3128	Nordiska Pianos
3129	Nordstrand
3130	Norelco
3131	Norlin
3132	Norman Guitars
3133	Normandy Guitars
3134	Notation Technologies
3135	Notion
3136	Notion Music
3137	Nouglian
3138	Nouse
3139	Nova
3140	Novalight
3141	Novation
3142	Nowsonic
3143	Noyse
3144	NS Design
3145	NSI
3146	Ntp
3147	N-Tune
3148	Nubino
3149	Numark
3150	Nuova
3151	Nuova Elettronica
3152	Nuvo
3153	NUX
3154	NV Group
3155	O Tray
3156	O.C.D.P.
3157	O.M. Mönnich
3158	Oak River
3159	Oasis
3160	Obedia
3161	Oberheim
3162	Oboes.Ch.
3163	Obrac
3164	Ocheltree
3165	Octon
3166	Odd AEon
3167	Oddfellow Effects
3168	Odery
3169	Odyssey
3170	Off The Wall
3171	Offberg
3172	Offenbach
3173	OH!FX
3174	Ohana Ukuleles
3175	Ohm
3176	OKKO
3177	Oktava
3178	Old Blood Noise Endeavours
3179	Olds
3180	Oleg Products
3181	OLP
3182	Olveira
3183	Olympia Guitars
3184	Olympus
3185	Om Laboratories
3186	Omega
3187	OmegaFx
3188	Omnia Audio
3189	OmniaLaser
3190	Omnirax
3191	OmniSistem
3192	Omnitronic
3193	On Stage
3194	On Stage Stands
3195	One Control
3196	Onerr
3197	Onkyo
3198	OP Electronics
3199	Opcode
3200	Open Labs
3201	Opera
3202	Optima Strings
3203	Option 5
3204	Optoma
3205	Oqan
3206	OQUAN
3207	Oram
3208	Orange
3209	Orange County Drums and Percussion
3210	Orban
3211	Orbitone
3212	Oregon
3213	Origin Effects
3214	Original Case
3215	Original Fake
3216	Original Swab
3217	Orion Cymbals
3218	Orion Effekte
3219	Orla
3220	Orlando
3221	Ormsby Guitars
3222	Orpheus
3223	Ortega
3224	Ortofon
3225	Orville
3226	Oscar Schmidt
3227	Oscar Teller
3228	Osmannbrass
3229	Osram
3230	Otari
3231	Ottavianelli
3232	Otto Link
3233	Otto Musica
3234	Outline
3235	Ouverture
3236	Ovation
3237	Overlord of Music
3238	Overloud
3239	Overseas Connection
3240	Overstayer
3241	Overtone Labs
3242	OX4 Pickups
3243	Oxford Synthesiser Company
3244	Oxfuzz
3245	OXO
3246	Oyster
3247	Ozark
3248	P&amp;P Amplification
3249	P. Brunner
3250	P.Mauriat
3251	Pace
3252	Pacemaker
3253	Pacific Drums
3254	Pacific Drums by DW
3255	Pacific Trends
3256	Pack A Stand
3257	Paco Castillo
3258	Padovani
3259	Paesold
3260	Paganini
3261	Paia
3262	Paige
3263	Paiste
3264	Palatino
3265	Palladio Acoustics
3266	Palmer
3267	Palomino
3268	Panamax
3269	Panart
3270	Panasonic
3271	pandaMidi
3272	Pangolin
3273	Panther
3274	Paoletti
3275	Paolo Soprani
3276	Paradis
3277	Paramount Guitars
3278	Paraschos
3279	Parasound
3280	Parduba
3281	Pari organs
3282	Park Amplifiers
3283	Parker
3284	Parkson
3285	Parkwood
3286	Parrot
3287	Parsek
3288	Parts Planet
3289	Partsland
3290	PartyBag
3291	Pasha
3292	Paso Sistemi Audio
3293	Patrick Eggle Guitars
3294	P-Audio
3295	Paul Cochrane
3296	Paul Mc Bray Guitars
3297	Paul Reed Smith
3298	Paulino Bernabe
3299	Paulino Bernabé
3300	Paxman
3301	PCDJ
3302	Pdc
3303	PDP- Pacific Drum and Percussion
3304	Peace Drum
3305	Peace Love Productions
3306	Peak
3307	Pearce
3308	Pearl
3309	Pearl Flutes
3310	Pearl River
3311	Peavey
3312	Pedal Monsters
3313	Pedal Pad
3314	Pedal Space
3315	PedalGear
3316	PedalSnake
3317	Pedaltank
3318	Pedaltrain
3319	PedalworX
3320	Pedi
3321	Pedler
3322	Pedro de Miguel
3323	Pedro Martinez
3324	Pedro Morientes
3325	Pedulla
3326	Peecker Sound
3327	Peeker Sound
3328	Peerless
3329	Pegna Theremins
3330	Peluso
3331	Pendulum Audio
3332	Penguin Books
3333	Pensa Guitar
3334	Pentatonic
3335	Perez
3336	Performance Plus
3337	Peroni
3338	Perreaux
3339	Perri's
3340	Perri's Leathers
3341	Pete Cornish
3342	Peter Eaton
3343	Peter Florance Pickups
3344	Petersen Designs
3345	Peterson
3346	Petrof
3347	Pettyjohn Electronics
3348	Petz
3349	Pfeiffer
3350	PFL Technology
3351	PFX
3352	PG Music
3353	PGW
3354	Phaeton Trumpets
3355	Phantom Guitars
3356	Phase Linear
3357	PHD
3358	Phidrums
3359	Phil Barone
3360	Phil Jones Bass
3361	Philips
3362	Phil-Tone
3363	Phiton Resonators
3364	Phoenix Audio
3365	Phonic
3366	Phonika Drums
3367	Phon-X
3368	Piano Services
3369	Piano Wizard
3370	Pianosound
3371	Piatanesi
3372	Picato
3373	Pick N Glider
3374	Pickboy
3375	Pickering
3376	Pickguardian
3377	Pickupmakers
3378	Piermaria
3379	Pigini
3380	Pignose Amps
3381	Pigtronix
3382	PikCard USA
3383	Pillinger
3384	Pilosio
3385	Pinstripe Pedals
3386	Pintech
3387	Pioneer
3388	Pioneer DJ
3389	Pipers' Choice
3390	Pirastro
3391	Piretti Liuteria
3392	Pittsburgh
3393	Pizzoaa Cajon
3394	PJ Drums &amp; Percussion
3395	PKV pickups
3396	Placid Audio
3397	Planet Drum
3398	Planet Waves
3399	Plankton Electronics
3400	Plantronics
3401	Plastica Panaro
3402	Platinum Samples
3403	PL-Audio
3404	Players
3405	Pleyel
3406	Ploytec
3407	Plush
3408	Pmc
3409	PMsnare
3410	Pokketmixer
3411	Polk Audio
3412	Polverini
3413	Polytone Amplifiers
3414	Pomarico
3415	Pontillo
3416	Ponzol
3417	POPS
3418	Pork Pie
3419	Port City Amps
3420	Positive Grid
3421	Postal Monkey
3422	Potvin Guitars
3423	Powell Flutes
3424	Power Acoustik
3425	Power Dynamics
3426	Powerbox Factory
3427	Powersoft
3428	PowerSquid
3429	PPA
3430	PPG
3431	PR Lighting
3432	Practice Tracks
3433	Prelude
3434	Premier
3435	Prescription Electronics
3436	Presley Flight Case
3437	Presonus
3438	Prestige
3439	Prestini
3440	Preston
3441	Primacoustic
3442	Primary Line
3443	Primera Technology
3444	Primero
3445	Prism Sound
3446	Privada
3447	Privitera
3448	Pro Audio
3449	Pro Co
3450	Pro Ject
3451	Pro Mark
3452	Pro Media
3453	Pro Music Software
3454	Pro Snake
3455	Pro Tec
3456	Pro Tone Pedals
3457	Pro Tour
3458	Proac
3459	ProAudio Press
3460	Probe
3461	Procases
3462	Proco
3463	Prodigy
3464	Prodipe
3465	Proel
3466	Proel Die Hard
3467	Professional Sound Light
3468	Profile
3469	Progetti Sonori
3470	Proietta
3471	Project Lead
3472	ProLights
3473	ProLine
3474	Prolyte
3475	Prometeus Guitars
3476	Pronomic
3477	Prop It
3478	Propellerhead
3479	Pro-Show
3480	Proson
3481	ProStageGear
3482	Protection Racket
3483	Proton
3484	Protos
3485	Protruss
3486	Providence
3487	ProWaves
3488	PRS Guitars
3489	Prudencio Saez
3490	PSC Professional Sound Corporation
3491	Psk
3492	PSL Italy
3493	PSSO
3494	pTrumpet
3495	Publison
3496	Puchner
3497	Pulse
3498	Puma
3499	Punch Pedals
3500	Pur Cajon
3501	PureCussion
3502	Puresound Percussion
3503	Purple Audio
3504	Pyle Audio
3505	PyP-Bomb
3506	PZ Amp
3507	Q Parts
3508	Q Up Arts
3509	Q4audio
3510	QSC
3511	Q-tuner
3512	Quad
3513	Quagliardi
3514	Quantegy
3515	QuartzColor
3516	Quasimidi
3517	Qube Audio
3518	Qu-Bit Electronix
3519	Quested
3520	Quik Lok
3521	Quiklok
3522	Quilter Laboratories
3523	Qwik Time
3524	Qwik Tune
3525	Radial
3526	Radikal Technologies
3527	Raganato
3528	Raimundo
3529	Rain Recording
3530	Rainger FX
3531	Rainsong
3532	Ralph Marlin
3533	RAM Audio
3534	Ramble FX
3535	Ramirez
3536	Rammerdrum
3537	Ramon Garcia
3538	Ramon Latino
3539	Ramper
3540	Rampone &amp; Cazzani
3541	RAMSA
3542	Randall
3543	Rane
3544	Rash Guitars
3545	Rasha Professional
3546	Raspagni
3547	Rath Trombones
3548	Raven
3549	Raven Images
3550	Raxxess
3551	Ray Ramirez
3552	RAYGUN FX
3553	RCA
3554	RCF
3555	Rch
3556	Real Traps
3557	Real World
3558	Realist Pickup
3559	Rean
3560	Re'An
3561	Reani Guitars
3562	Rebeats Publications
3563	Rebel Amps
3564	Reckhorn
3565	Record Research
3566	Recording King
3567	Red Beat Audio
3568	Red Lighting
3569	Red Panda
3570	Red Shadow
3571	Red Sound
3572	Red Witch
3573	Redmatica
3574	Redpipe
3575	Redplate Amps
3576	Redstuff Amps
3577	Reeds Australia
3578	Rees Harps
3579	Reference
3580	Regal
3581	Regal Tip
3582	Regent
3583	Reghin
3584	REH
3585	Reinhardt Pedals
3586	Reismann
3587	RELIC STAR CUSTOM SHOP
3588	Reloop
3589	Remic
3590	Remo
3591	René Guénot Paris
3592	Renkus Heinz
3593	Renoise
3594	Republic Guitars
3595	Resident Audio
3596	Resocap
3597	Resonans
3598	Retro Channel
3599	Retro Instruments
3600	Retro Revival
3601	Retro-king Amps
3602	Retroman Music
3603	Retro-Sonic
3604	Reunion Blues
3605	Revac
3606	Revelation Guitars
3607	Reverend Guitars
3608	Revolution Drum
3609	Revolver Audio
3610	Revox
3611	REVV
3612	Rexer
3613	Reynolds
3614	RFT
3615	RFX
3616	Rhino
3617	Rhodes
3618	Rhythm Band
3619	Rhythm Tech
3620	Rialto
3621	Ribbecke
3622	Ribera
3623	Richard Cocco Strings
3624	Richmond Guitars
3625	Richmond Organization
3626	Richter
3627	Richwood
3628	Rick Levy
3629	Rick Turner
3630	Rickenbacker
3631	Rico
3632	Rico Royal
3633	Ricordi
3634	Ridenour
3635	Rieger Kloss
3636	Riffault
3637	Right On!
3638	Righton Straps
3639	Rigotti Reeds
3640	Rigoutat
3641	Ringway
3642	Rio Grande
3643	Ripamonti
3644	Rippen
3645	Risa
3646	Rising Software
3647	Ritmuller
3648	Ritter
3649	Ritter &amp; Son
3650	Rittor Music
3651	Rivera
3652	Riverhead Guitars
3653	RJM
3654	RKS Guitars
3655	Rlaky
3656	RMC
3657	RME
3658	RMI
3659	RMV
3660	Road Rage Pro Gear
3661	Road Ready
3662	Road Runner
3663	Roadcase
3664	Roadinger
3665	Roadster
3666	Rob Allen
3667	Rob Papen
3668	Robe
3669	Robert Morley &amp; Co
3670	Robert Stather Finsbury Park
3671	Roberto Lanaro
3672	Robin Guitars
3673	Roc N Soc
3674	Roche Thomas
3675	Rock Axe
3676	Rock Band
3677	Rock House
3678	Rock Jimmies
3679	Rock n Roller
3680	Rock Steady
3681	RockBag
3682	RockBass by Warwick
3683	Rockboard
3684	Rockbox
3685	Rockbox Effects
3686	Rockbridge Guitar Company
3687	RockCase by Warwick
3688	Rocketfire Guitars
3689	Rockett
3690	Rockfield
3691	Rockinger
3692	Rockman
3693	Rock'n roll Relics Guitars
3694	Rock'nroll Relics
3695	RockStand
3696	RockStand by Warwick
3697	Rocktek
3698	Rocktile
3699	Rocktron
3700	Rocktuner By Warwick
3701	Rockwood
3702	Rocky Mountain Slides
3703	RODE
3704	Rode Microphones
3705	Rodgers Organi
3706	Rodriguez
3707	Roeseler
3708	Roger Linn Design
3709	Roger Mayer
3710	Roger Schult
3711	Rogers
3712	Rogue
3713	Rohema
3714	Rok Axe
3715	Rok Sak
3716	Roland
3717	Roli
3718	Roling's
3719	Roll
3720	Roller
3721	Rolls
3722	Romance
3723	Romano Burini
3724	Romeo Orsi
3725	Ronisch Pianos
3726	Roost
3727	Root Guitar Effects
3728	Roscoe Guitars
3729	Rose
3730	Rosenbach
3731	Rosendahl
3732	Rosler
3733	Ross
3734	Ross Mallet
3735	Ross System
3736	Rotel
3737	Roth &amp; Junius
3738	Rothwell Audio Products
3739	Rotodrum
3740	Rotosound
3741	Rounder
3742	Rousseau
3743	Rover Banjos
3744	Rovner
3745	Rowin
3746	Roy Benson
3747	Royal
3748	Royal Standard
3749	Royer Labs
3750	Roytek
3751	Rozini
3752	Rozz
3753	RPM Dynamics
3754	RSP Technologies
3755	RSQ
3756	RTF Custom Case
3757	RTOM
3758	Rtw
3759	Ruby Tubes
3760	Rud Ibach Sohn
3761	Rudolf Meinl
3762	Rudy Muck
3763	Ruff Grip
3764	Ruff Rider
3765	Rugginenti
3766	Rulez Queen
3767	Runner
3768	Runyon
3769	Ruokangas
3770	Rupert Neve Designs
3771	RV Drums
3772	Rycote
3773	Rydeen
3774	Ryoji Matsuoka
3775	S. Clary
3776	S.E. Shires
3777	Saba
3778	Sabbadius Pedals
3779	Sabian
3780	Sabine
3781	Sabra
3782	Sabre Guitars
3783	Sadowsky Guitars
3784	SAE
3785	Saga
3786	Sagitter
3787	Sailor Jerry Clothing
3788	Saito
3789	Sakae
3790	Sakura
3791	Saldaneri Guitars
3792	Salmieri Drums
3793	Salterio
3794	Salto Percussioni
3795	Saluda Cymbals
3796	Salvador Cortez
3797	Salvi Harps
3798	Samba
3799	Samick
3800	Samko
3801	Samson
3802	Samsun Cymbals
3803	Samsung
3804	Sanchez
3805	Sanchis Lopez
3806	Sanctuary
3807	Sandberg
3808	Sanden
3809	SanDisk
3810	Sanken
3811	Sankyo Flute
3812	Sanox
3813	Sansone Strings
3814	Sansui
3815	Santa Cruz Guitar Company
3816	Santander
3817	Santech
3818	Santos Martinez
3819	Sanyo
3820	Saporetti e Capelli
3821	Sauter Pianos
3822	Savannah
3823	Savarez
3824	Savior
3825	Saxscape
3826	SAXXAS
3827	Sbe
3828	Scala Guitars Usa
3829	Scandalli
3830	Scanic
3831	Scarbee
3832	Scarlata
3833	Scarli
3834	Schaaf
3835	Schack Guitars
3836	Schagerl
3837	Schaller
3838	Schalloch
3839	Schatten Design
3840	Schecter
3841	Schertler
3842	Scherzer
3843	Schiedmayer
3844	Schiit
3845	Schilke
3846	Schiller
3847	Schimmel
3848	Schlagwerk
3849	Schober Organ
3850	Schoenhut
3851	Schoeps
3852	Scholze
3853	Schon
3854	Schott
3855	Schreiber
3856	Schroeder
3857	Schulmann
3858	Schulze Pollmann
3859	Scorpion
3860	Scott
3861	Scratch Pad
3862	ScreenStars
3863	Scumback Speakers &amp; Cabinets
3864	SD Curlee
3865	Sd System
3866	SE Electronics
3867	Seagull
3868	Seck
3869	Second Floor Music
3870	Secret Efx
3871	Secrets of the Pros
3872	Seelake
3873	Sefour
3874	Seiko
3875	Seiler
3876	Seiwin
3877	Sekova Guitars
3878	Selmer
3879	Selmer Paris
3880	Sem
3881	Semprini
3882	Sennheiser
3883	Sequential Circuits
3884	Sequerra
3885	Sequoia Saxophones
3886	Serenelli
3887	Session
3888	Settimio Soprani
3889	Seventh Circle Audio
3890	Seydel
3891	Seydel Sohne
3892	Seymour Duncan
3893	SGC Nanyo
3894	SGM
3895	SGR by Schecter
3896	Shadow
3897	Shadow Hills Industries
3898	Shannan
3899	Shard-Star
3900	Sharp Concepts
3901	Shauvet
3902	Sheptone
3903	Shergold Guitars
3904	Sherman Filterbank
3905	Shertler
3906	Sherwood
3907	Shift Line
3908	Shigeru Kawai
3909	Shimano
3910	Shimmel
3911	Shine Drums
3912	Shin-Ei
3913	Shiner
3914	Shinp
3915	Shin's Music
3916	Shires
3917	Shiva Audio Devices
3918	Shoe Pedals
3919	Shoeps Microphones
3920	Shonner
3921	Shortbassone
3922	Show-Lite
3923	Showster
3924	Showtec
3925	Showven
3926	Shredneck
3927	Shubb
3928	Shubb Pearse
3929	Shure
3930	SIB Effects
3931	Sibelius
3932	SIC Instruments
3933	Sica
3934	Sidewinder
3935	Siegmund
3936	Siel
3937	Siemens
3938	Sienzo
3939	Sierra Guitars
3940	Sigma Guitars
3941	Signal Flex
3942	Signatures Network
3943	Signex
3944	Siheko
3945	SILENTSYSTEM
3946	Silver Acoustic
3947	Silver Bullet
3948	Silver Creek
3949	Silver Fox
3950	Silverblade
3951	Silversound
3952	Silverstein
3953	Silvertone
3954	Simetrix
3955	Simmons
3956	Simms Watts
3957	Simon &amp; Patrick
3958	Singing Machine
3959	Singular Sound
3960	Sinn7
3961	Sintel
3962	Sire
3963	Sirus
3964	SIT
3965	Skatterbrane Pickups
3966	SKB
3967	Skervesen Guitars
3968	Skreddy Pedals
3969	Skrydstrup R&amp;D
3970	SKT
3971	Skull Strings
3972	Skullcandy
3973	Sky
3974	Skychord
3975	Skytec
3976	SL
3977	Slammer Guitars
3978	SlapKlatz
3979	Slappa
3980	Slate Pro Audio
3981	Sleishman Drums
3982	Slick
3983	Slide O Mix
3984	Slider Straps
3985	Slingerland
3986	Slug Percussion
3987	SM Pro Audio
3988	Smart Research
3989	Smashboards
3990	SMG
3991	SmithsonMartin
3992	Sml Saxophones
3993	Smokey
3994	SMP
3995	SMPro Audio
3996	Sms Audio
3997	SMT
3998	Snark
3999	Snarling Dogs
4000	Snouse Electric
4001	Sobbat
4002	SofiaMari
4003	Softone
4004	Softube
4005	Sojin Pianos
4006	Sojing
4007	Sol Republic
4008	Sola Sound
4009	Solar by Sabian
4010	Solar Guitars
4011	Soldano
4012	Solec
4013	Solid State Logic
4014	Solidbody Store
4015	Solidgoldfx
4016	Solidstand
4017	Solina
4018	Soller &amp; Sivcak
4019	SoloEtte
4020	Soloway Guitars
4021	Solton
4022	Som D'ouro
4023	Sommer
4024	Sonata
4025	Song Xpress
4026	Sonic Core
4027	Sonic Implants
4028	Sonic Reality
4029	Sonic Research
4030	Sonicake
4031	Sonifex
4032	Sonik Capsules
4033	Sonitus
4034	SONiVOX
4035	Sonnox
4036	Sonny the Lutist
4037	Sonola
4038	Sonoma Wire Works
4039	Sonoma Wireworks
4040	Sonor
4041	Sonora
4042	Sonos
4043	Sontronics
4044	Sonus Faber
4045	Sonus Pater
4046	Sonus Pedals
4047	Sonuus
4048	Sony
4049	Sopar
4050	Soul of Sound
4051	Soultone Cymbals
4052	Sound City
4053	Sound Devices
4054	Sound Man
4055	Sound Percussion
4056	Sound Quest
4057	Sound Sculpture
4058	Sound Skulptor
4059	Soundart
4060	Soundbrenner
4061	Soundcraft
4062	Soundcraftsmen
4063	Soundelux Microphones
4064	Soundfield
4065	Soundking
4066	SoundLab
4067	Sounds We Make
4068	Soundsation
4069	Soundsphere
4070	SoundTech
4071	Soundtoys
4072	Soundtracs
4073	Soundwear
4074	Sourceaudio
4075	South Park
4076	Sovtek
4077	Soyuz
4078	Spaceman Effects
4079	Spacetek
4080	Spada Music
4081	Spaethe
4082	Spalt Instruments
4083	Sparkular
4084	Spaun
4085	Speakeasy
4086	Spear Guitars
4087	Speck Electronics
4088	Spector Basses
4089	Spectraflex
4090	Spectral Audio
4091	Spectrasonics
4092	Speedster
4093	Spendor Audio Systems
4094	Sperzel
4095	Spf
4096	Spin Doctor
4097	Spizz
4098	Spizzichino Cymbals
4099	SPL
4100	Splawn
4101	Spotlight
4102	Springer Guitars
4103	Sputnik Modular
4104	Squier
4105	Squier by Fender
4106	SR Technologies
4107	SR Technology
4108	SRS Light Design
4109	Sshhmute
4110	ST Audio
4111	St. Blues
4112	Staccato Drums
4113	Stage Accompany
4114	Stage Magic
4115	Stage Ninja
4116	Stage Rig
4117	stageClix
4118	Stageline
4119	Stagetrix
4120	Stagg
4121	Stairville
4122	Stam Audio
4123	Standtastic
4124	Stanford Guitars
4125	Stanton
4126	Stanton DJ
4127	Stanzani
4128	Star Licks
4129	Starfield
4130	Starfire Guitars
4131	StarLights Professional Effects
4132	Starr Labs
4133	StarSun
4134	Startec
4135	Starway
4136	Stash Picks
4137	Status
4138	Stax
4139	Stealton
4140	Steavens
4141	Steck
4142	Stedman
4143	Steelphon
4144	Stefy Line
4145	Steinbach
4146	Steinberg
4147	Steinberger
4148	Steiner
4149	Steinmayer
4150	Steinway &amp; Sons
4151	Stella
4152	Stentor
4153	Stephallen Guitars
4154	Stephanhauser
4155	Stephens Design
4156	Stephenson Amp
4157	Steppodrum
4158	Stereoping Music Devices
4159	Sterisol
4160	Sterling Audio
4161	Sterling by Music Man
4162	Sterling Modular
4163	Stetsbar
4164	Stewart Ellis
4165	Stewart MacDonald
4166	StewMac
4167	Steyr
4168	Stinger
4169	Stocco Drums
4170	Stocco Fisarmoniche
4171	Stomp Under Foot
4172	Stompamp
4173	Stomvi
4174	Stone Deaf FX
4175	Stonecastle
4176	Stonehenge Guitars
4177	Storm
4178	Stowasser
4179	Straightwire
4180	Strand Lighting
4181	Strandberg Guitars
4182	Strasser Marigaux SML
4183	Stratos
4184	Street Audio
4185	Strike
4186	String Letter
4187	String Master
4188	String Swing
4189	StringTek
4190	Stromberg Guitars
4191	Strunal
4192	Strymon
4193	Stuart
4194	Studer
4195	Studio 49
4196	Studio Due
4197	Studio Electronics
4198	Studio Projects
4199	Studio RTA
4200	Studiologic
4201	Studiomaster
4202	StudioPhile
4203	Subdecay
4204	Submersible Music
4205	SubtleNoiseMaker
4206	SubZero
4207	Suhr Guitars
4208	Summit Audio
4209	Sumo Amps
4210	Sundown
4211	Sunn
4212	Sunrise
4213	Super Alberti
4214	Super Bass
4215	Super Salas
4216	Super Sensitive
4217	Super Stradella
4218	Super Vee
4219	Supercussion
4220	Superlux
4221	Supernatural Cymbals
4222	Superscope
4223	Superslick
4224	Supertone
4225	Suprem
4226	Supro
4227	Susato
4228	Sutera
4229	Suzuki
4230	Svetlana
4231	Swan Flight
4232	Swart Amps
4233	SWD SoundWatchingDrum
4234	Sweet Pipes
4235	Sweet Sound
4236	Swefog
4237	SwirlyGig
4238	Swisson
4239	Swissonic
4240	Switch Guitars
4241	Switchcraft
4242	SWR
4243	Sx
4244	Sylvania
4245	Symetrix
4246	Synapse Audio
4247	Synq
4248	Synthesis Technology
4249	Synthetic Sound Labs
4250	Synthogy
4251	T Rex
4252	T.bone
4253	T.Miranda
4254	T.U.K.
4255	Tabacco
4256	Tac Mixers
4257	Tacoma
4258	TAF Truss Aluminium Factory
4259	Tagima
4260	Taiki
4261	Taiyo Yuden
4262	Takamine
4263	Takeda Bassoon
4264	Takstar
4265	Taktell
4266	Tama
4267	Tamaka
4268	Tamaki
4269	Tambor
4270	Tamburo
4271	Tandberg
4272	Tanglewood
4273	Tannoy
4274	Tapco
4275	Tapco by Mackie
4276	Tapspace Publications
4277	TARA LABS
4278	Tara Publications
4279	TAS
4280	Tascam
4281	Tasker
4282	Tasso Audio
4283	Taurus
4284	Tayden
4285	Tayden Speakers
4286	Taye
4287	Taylor
4288	TC Electronic
4289	TC Helicon
4290	TCase
4291	T-Cymbals
4292	TDK
4293	TDrum
4294	Teac
4295	TecAmp
4296	Tech 21
4297	Technica
4298	Technics
4299	Technosound
4300	Techra
4301	Teclumen
4302	Tecnare
4303	Tecsom
4304	Ted Klum
4305	Teenage Engineering
4306	Tegeler Audio
4307	Teisco
4308	Teknosign
4309	Tekson
4310	Teksonor
4311	Telefunken
4312	Teletronix
4313	Telex
4314	Tempus Drums
4315	Tenayo
4316	Tenlux
4317	Tennessee
4318	Tenson
4319	TenTen Devices
4320	Teqsas
4321	Terada Guitars
4322	Terratec
4323	TerraTec Producer
4324	Terrè
4325	Tesla
4326	Tesla Audio Lab
4327	Teuffel Guitars
4328	Texsign
4329	Teye Guitars
4330	TF Morris
4331	TFPro
4332	Thalia
4333	THD
4334	The Box
4335	The Brass Spa
4336	The Gripp
4337	The Hand
4338	The Hood
4339	The Loar
4340	The Music Stamp
4341	The Singing Machine
4342	The Sssnake
4343	The String Centre
4344	The T Amp
4345	the t.racks
4346	The Valve
4347	The Voice of Saturn
4348	Thema
4349	Theo Wanne
4350	Theodore Presser
4351	Thermionic Culture
4352	Third Eye Guitar
4353	Third Hand Capo
4354	Thomann
4355	Thomas
4356	Thomas Organs
4357	Thomastik
4358	Thomastik Infeld
4359	Thomson Technologies
4360	Thon
4361	Thorens
4362	ThorpyFX
4363	ThreeGuitars
4364	Throbak
4365	Thud Rumble
4366	Thumb Eze
4367	Thunder
4368	Thunderfunk
4369	Thunderplugs
4370	Thürmer
4371	Timber Tones
4372	Timpani
4373	Tino Tedesco
4374	Tipbook
4375	Tiptop Audio
4376	Titan Cabs
4377	Titan Stage
4378	Titanex
4379	Tittarelli
4380	Tk Audio
4381	TKL
4382	TKMelody
4383	tks Engineering
4384	TL Audio
4385	TOA Electronics
4386	ToadWorks
4387	Tobias
4388	Toca
4389	Toft Audio Designs
4390	Together Again
4391	Togra
4392	Tokai
4393	Toledo
4394	Tom Anderson Guitars
4395	Tom Crown
4396	Tom Gauger
4397	Tom Holmes
4398	Tombo
4399	Tom's Line
4400	Tomsline
4401	Tone Amps
4402	Tone Candy
4403	Tone City
4404	Tone Gear
4405	Tone in Progress
4406	Tone King
4407	Tonecandy Pedals
4408	Toneczar Effects
4409	Tonelux
4410	TonePros
4411	Tonerider
4412	ToneRite
4413	ToneWoodAmp
4414	ToneWorks
4415	Tonium
4416	Toontrack
4417	Topp Pro
4418	Toptone
4419	Tornado
4420	Toro Strings
4421	Torque
4422	Tortuga Effects
4423	Tosco
4424	Toshiba
4425	Totally Wycked Audio
4426	Town Talk
4427	Toyo
4428	T-Pedals
4429	T-Power
4430	Traben
4431	Trabes
4432	Trace Elliot
4433	Tradition Guitars
4434	Trailer Trash
4435	TrainWreck
4436	Trance Audio
4437	Transcend
4438	Transcontinental Music
4439	Trantec
4440	Traps
4441	Traps Drums
4442	Traveler
4443	Traveler Guitars
4444	Travelite
4445	Travis Bean
4446	Traynor
4447	TreeWorks
4448	Trench
4449	Trep
4450	Trevor James
4451	T-Rex
4452	Trexist
4453	Triad
4454	Tribe Guitars
4455	Tribute by G&amp;L
4456	Trick
4457	Trident
4458	Trigger Perfect
4459	Triggs Guitars
4460	Tritonlab
4461	Trixon
4462	Trizio
4463	Trombotine
4464	Tromsa
4465	Tronical
4466	Tronographic
4467	Trophy
4468	True Systems
4469	True Temperament
4470	Truetone
4471	TrumCor
4472	Trusst
4473	Truth Custom Drums
4474	Trutone
4475	TRX Cymbals
4476	Tsa Tecnology
4477	TT-Cabs
4478	TTM Guitars
4479	Tube Amp Doctor
4480	Tube Tech
4481	Tube Works
4482	Tube-Town
4483	Tune
4484	Tung Sol
4485	Tungsram
4486	TurboSound
4487	Turkish Cymbals
4488	Turkistan
4489	Tuscany
4490	TusQ
4491	Tutondo
4492	Tuyama
4493	TV Jones
4494	TWA Fly Boys
4495	Twisted-Electrons
4496	Two Notes
4497	Two-Rock
4498	Tycoon Percussion
4499	Tyler Guitars
4500	U &amp; I Software
4501	U.S. Masters
4502	UDG
4503	UDG Ultimate DJ Gear
4504	Udrum
4505	Ueberschall
4506	UFIP
4507	Uher
4508	Ultimate
4509	Ultimate Ears
4510	Ultimate Sound Bank
4511	Ultimate Support
4512	Ultra
4513	Ultracase
4514	Ultrasone
4515	UltraSound
4516	Unbranded
4517	Underwood
4518	Unison Research
4519	United Labels
4520	Unity Audio
4521	Universal Audio
4522	Universal Percussion
4523	Univox
4524	Up Stage
4525	Urei
4526	US Blaster
4527	USA Custom Guitars
4528	Use Audio
4529	Utah Speaker
4530	Vact
4531	Vader Cabinets
4532	Vahlbruch
4533	Valco
4534	Valencia Guitars
4535	Valenti guitars
4536	Valentino
4537	Valeton
4538	Valley Arts
4539	Valley People
4540	Valmusic
4541	ValveTech Amps
4542	ValveTrain Amplification
4543	Valvolare
4544	Van Den Hul
4545	Van Kleef
4546	Van Zandt
4547	Van-Amps
4548	Vanderkley
4549	Vandoren
4550	Vantage
4551	Vantage Guitars
4552	Var Ance
4553	Varta
4554	Varytec
4555	Vater
4556	VDL Professional Analogics
4557	Vecchio
4558	Veelah Guitars
4559	Vega
4560	Velodyne Acoustics
4561	Velvet Strings
4562	Vemuram
4563	Venson
4564	Venus Flutes
4565	Verbatim
4566	Verbos
4567	Verde Fisarmoniche
4568	Vermona
4569	Verse
4570	Vertex Effects
4571	Vesta Fire
4572	Vestax
4573	Vester
4574	VF Guitar Works
4575	VFE Pedals
4576	Vgs Guitars
4577	VGV
4578	VHT
4579	Vibe Drum
4580	Vibesware
4581	Vibramate
4582	Vibrato Sax
4583	Vibrawell
4584	Vic Firth
4585	Vicente Tatay Tomas
4586	Vick Audio
4587	Vicoustic
4588	Victoria Accordions
4589	Victoria Amps
4590	Victory Amplifiers
4591	Vienna Instruments
4592	Vieta
4593	Vig
4594	Vigier Guitars
4595	Vignoni Accordions
4596	Villex
4597	Vimar
4598	Vince
4599	Vinetto
4600	Vintage
4601	Vintech
4602	Vinteck
4603	Violet Audio
4604	Violet Design
4605	Vir2
4606	VirSyn
4607	Viscount
4608	Vision
4609	Visual Circuit
4610	Visual Sound
4611	Vital Arts
4612	Vito
4613	Vitoos
4614	Vivanco
4615	VMB
4616	V-Moda
4617	Vocal Power Institute
4618	Voce inc.
4619	VocoPro
4620	Voes
4621	Vogel's
4622	Voice System
4623	Void
4624	Volcano
4625	Volontè &amp; Co
4626	Volume Drums
4627	Vonyx
4628	VooDoo
4629	Voodoo Lab
4630	Vortex Italy
4631	Vovox
4632	Vox
4633	Vox Meister
4634	Voyage Air Guitars
4635	VPI
4636	VSCASES
4637	VTG
4638	Vulcan Cymbal
4639	W.D. Brand
4640	Wailer
4641	Wal
4642	Walden
4643	Waldorf
4644	Walkasse
4645	Wallacher
4646	Walrus Audio
4647	Walrus Productions
4648	Walter Franchi Liutaio
4649	Walter Nirschl
4650	Walter Woods
4651	Walther
4652	Walton Music
4653	Waltons
4654	Wampler Pedals
4655	Wandre
4656	Warburton
4657	Warehouse Flightcase
4658	Warehouse Guitar Speakers
4659	Warm Audio
4660	Warmoth
4661	Warner Bros
4662	Warr Guitar
4663	Warriors
4664	Warwick
4665	Washburn
4666	Waterfall Audio
4667	Waterstone
4668	Watson Guptill
4669	Wattson FX
4670	W-AUDIO
4671	Wave Arts
4672	Wave Machine Labs
4673	Wave Panels
4674	Waveelite
4675	Waves
4676	Wavetrap
4677	Way Huge
4678	Way Huge Electronics
4679	Way Out Ware
4680	WBS
4681	Wcr Guitar Pickups
4682	WD Music
4683	Weapon
4684	Weapon Guitars
4685	Weber
4686	Weber &amp; Son
4687	Weber Speakers
4688	Wechter
4689	Wedge
4690	Wee Lush FX
4691	Weinbach
4692	Weisbach
4693	Weiss
4694	Weissenborn
4695	Welson
4696	Weltklang
4697	Weltmeister
4698	Wem
4699	Weril
4700	Wersi
4701	Wes Audio
4702	Wesc
4703	Wesley
4704	Westbury
4705	Westelettric
4706	Westlake Audio
4707	Westone
4708	WGS
4709	Whacky Music
4710	Wharfedale
4711	Wharfedale Pro
4712	Whirlwind
4713	WhisperRoom
4714	White Instruments
4715	Widara
4716	Wilhsteinberg
4717	Wilkinson
4718	Willcox Guitars
4719	Willermann
4720	William Horn
4721	William Lewis &amp; Son
4722	Williams
4723	Willows Guitar Works
4724	Willson
4725	Willy Wolf
4726	Wilson Brothers
4727	Wilson Effects
4728	Wincent
4729	Windmill
4730	Windreed Solution
4731	Windy City
4732	WIRELESS SOLUTION
4733	Wirething
4734	WISDOM
4735	Wise Publications
4736	Wisemann
4737	Wisycom
4738	Wittner
4739	Wizard Amplification
4740	Wizoo
4741	Wizz Pickups
4742	WMD
4743	Wolf Guitars
4744	WolfeTone
4745	Wolfpak
4746	Wood &amp; Tronics
4747	Wooding
4748	Woodstock
4749	Word Music
4750	Work
4751	World Tour
4752	World Wide Woodshed
4753	WorldMax
4754	WorldSonic
4755	Worship Together
4756	Wrangler
4757	Wrap N Strap
4758	Wren and Cuff
4759	Writer's Digest
4760	Wsl Guitars
4761	Wuhan
4762	Wunder Audio
4763	Wurlitzer
4764	Wylde Audio
4765	X2 Digital
4766	X2 Digital Wireless
4767	Xander Electronics
4768	Xaoc Devices
4769	Xavier Guitars
4770	X-Drum
4771	Xilica
4772	XL Specialty Percussion
4773	X-LEAD
4774	XLNT Idea
4775	Xm
4776	Xotic
4777	XP Sound
4778	XPAudio-Morpheus
4779	XP-Cases
4780	XS Percussion
4781	XTA Electronics
4782	X-Treme
4783	XTS - XAct Tone Solutions
4784	XVive
4785	XXL Inside
4786	Yairi
4787	Yak Pak
4788	Yamaha
4789	Yanagisawa
4790	Yankee
4791	Yaqin
4792	Yellow Tools
4793	Yellowtec
4794	Yerasov
4795	Yorkville
4796	Young Chang
4797	YouRock Guitar
4798	Yukawa
4799	Yuwin
4800	Z.Cat Pedals
4801	Zacks
4802	Zacros Engineering
4803	Zagar
4804	Zanki
4805	Zaor
4806	Zar
4807	Zebracase
4808	Zeck Audio
4809	Zeff Wind Instruments
4810	Zemaitis
4811	Zen Guitars
4812	Zen Music
4813	Zendrum
4814	Zen-on
4815	Zerberus Guitars
4816	Zero G
4817	Zero88
4818	ZeroGravity
4819	ZeroPik
4820	ZeroSette
4821	Zeus Cymbal
4822	Zildjian
4823	Zilla Cabs
4824	Zimmermann
4825	Zinky
4826	Zinner
4827	Zinzi
4828	Zion Guitars
4829	ZIVIK
4830	ZMB Professional Audio
4831	Zomo
4832	Zon
4833	Zonda
4834	Zoom
4835	ZT Amplifiers
4836	Zultan
4837	Zvex
4838	Z-Vex Effects
4839	ZZIPP
4840	ZZYZX
\.


--
-- Data for Name: reparto; Type: TABLE DATA; Schema: public; Owner: enrico
--

COPY public.reparto (id_reparto, nome) FROM stdin;
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
-- Name: categoria_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.categoria_id_categoria_seq', 239, true);


--
-- Name: marca_id_marca_seq; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.marca_id_marca_seq', 4840, true);


--
-- Name: reparto_id_reparto_seq; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.reparto_id_reparto_seq', 12, true);


--
-- Name: tipo_annuncio_id_tipo_annuncio_seq; Type: SEQUENCE SET; Schema: public; Owner: enrico
--

SELECT pg_catalog.setval('public.tipo_annuncio_id_tipo_annuncio_seq', 1, false);


--
-- Name: categoria categoria_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);


--
-- Name: marca marca_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.marca
    ADD CONSTRAINT marca_pkey PRIMARY KEY (id_marca);


--
-- Name: reparto reparto_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.reparto
    ADD CONSTRAINT reparto_pkey PRIMARY KEY (id_reparto);


--
-- Name: tipo_annuncio tipo_annuncio_pkey; Type: CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.tipo_annuncio
    ADD CONSTRAINT tipo_annuncio_pkey PRIMARY KEY (id_tipo_annuncio);


--
-- Name: categoria fkqhecgd3xwr3mki0sadj4g1ief; Type: FK CONSTRAINT; Schema: public; Owner: enrico
--

ALTER TABLE ONLY public.categoria
    ADD CONSTRAINT fkqhecgd3xwr3mki0sadj4g1ief FOREIGN KEY (id_reparto) REFERENCES public.reparto(id_reparto);


--
-- PostgreSQL database dump complete
--

