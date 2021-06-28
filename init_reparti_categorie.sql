CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

insert into reparto (nome)
values ('Tastiere'); --1
insert into reparto (nome)
values ('Chitarre');--2
insert into reparto (nome)
values ('Bassi');--3
insert into reparto (nome)
values ('Batterie / Percussioni'); --4
insert into reparto (nome)
values ('Strumenti a Fiato');--5
insert into reparto (nome)
values ('Strumenti a Corda');--6
insert into reparto (nome)
values ('Home & Studio Recording');
insert into reparto (nome)
values ('Live Equipment');
insert into reparto (nome)
values ('DJ Equipment');
insert into reparto (nome)
values ('Lighting');
insert into reparto (nome)
values ('CD / DVD / Didattica');
insert into reparto (nome)
values ('Merchandising');


insert into categoria (nome, id_reparto)
VALUES ('Synth a tastiera / Modulari', 1);
insert into categoria (nome, id_reparto)
VALUES ('Workstation a tastiera', 1);
insert into categoria (nome, id_reparto)
VALUES ('Digital / Stage Piano', 1);
insert into categoria (nome, id_reparto)
VALUES ('Master keyboard / Controller Midi', 1);
insert into categoria (nome, id_reparto)
VALUES ('Arranger a tastiera', 1);
insert into categoria (nome, id_reparto)
VALUES ('Expander rack', 1);
insert into categoria (nome, id_reparto)
VALUES ('Campionatori / Groove Box', 1);
insert into categoria (nome, id_reparto)
VALUES ('Librerie suoni', 1);
insert into categoria (nome, id_reparto)
VALUES ('Pianoforti acustici', 1);
insert into categoria (nome, id_reparto)
VALUES ('Organi / Hammond e Cloni', 1);
insert into categoria (nome, id_reparto)
VALUES ('Fisarmoniche', 1);
insert into categoria (nome, id_reparto)
VALUES ('Amplificatori per tastiera', 1);
insert into categoria (nome, id_reparto)
VALUES ('Pedali per tastiera e synth', 1);
insert into categoria (nome, id_reparto)
VALUES ('Stand per tastiera', 1);
insert into categoria (nome, id_reparto)
VALUES ('Sgabelli e panche', 1);
insert into categoria (nome, id_reparto)
VALUES ('Accordatori / Metronomi', 1);
insert into categoria (nome, id_reparto)
VALUES ('Leggii e altri supporti', 1);
insert into categoria (nome, id_reparto)
VALUES ('Custodie per tastiera', 1);
insert into categoria (nome, id_reparto)
VALUES ('Altri accessori per tastiera', 1);
insert into categoria (nome, id_reparto)
VALUES ('Cavi audio e adattatori', 1);



insert into categoria (nome, id_reparto)
VALUES ('Chitarre elettriche', 2);
insert into categoria (nome, id_reparto)
VALUES ('Chitarre semiacustiche', 2);
insert into categoria (nome, id_reparto)
VALUES ('Chitarre acustiche', 2);
insert into categoria (nome, id_reparto)
VALUES ('Chitarre classiche', 2);
insert into categoria (nome, id_reparto)
VALUES ('Mandolini / Ukulele / Banjo', 2);
insert into categoria (nome, id_reparto)
VALUES ('Amplificatori - Combo per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Amplificatori - Testata / Cassa per ', 2);
insert into categoria (nome, id_reparto)
VALUES ('Valvole per amplificatori', 2);
insert into categoria (nome, id_reparto)
VALUES ('Pedalini singoli per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Pedaliere multieffetto per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Effetti a rack per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Accordatori / Metronomi', 2);
insert into categoria (nome, id_reparto)
VALUES ('Corpi / Body per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Manici per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Pick-up per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Battipenna per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Manopole / Potenziometri', 2);
insert into categoria (nome, id_reparto)
VALUES ('Ponti / Tremoli per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Meccaniche per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Corde per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Tracolle per chitarra e basso', 2);
insert into categoria (nome, id_reparto)
VALUES ('Plettri per chitarra e basso', 2);
insert into categoria (nome, id_reparto)
VALUES ('Custodie per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Stand per chitarra e basso', 2);
insert into categoria (nome, id_reparto)
VALUES ('Sgabelli e panche', 2);
insert into categoria (nome, id_reparto)
VALUES ('Leggii e altri supporti', 2);
insert into categoria (nome, id_reparto)
VALUES ('Altri accessori per chitarra', 2);
insert into categoria (nome, id_reparto)
VALUES ('Cavi audio e adattatori', 2);


insert into categoria (nome, id_reparto)
VALUES ('Bassi elettrici 4 corde', 3);
insert into categoria (nome, id_reparto)
VALUES ('Bassi elettrici 5/6/+ corde', 3);
insert into categoria (nome, id_reparto)
VALUES ('Bassi acustici', 3);
insert into categoria (nome, id_reparto)
VALUES ('Amplificatori - Combo per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Amplificatori - Testata / Cassa per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Valvole per amplificatori', 3);
insert into categoria (nome, id_reparto)
VALUES ('Pedalini singoli per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Pedaliere multieffetto per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Effetti a rack per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Accordatori / Metronomi', 3);
insert into categoria (nome, id_reparto)
VALUES ('Corpi / Body per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Manici per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Pick-up per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Battipenna per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Manopole / Potenziometri', 3);
insert into categoria (nome, id_reparto)
VALUES ('Ponti / Tremoli per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Meccaniche per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Corde per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Tracolle per chitarra e basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Plettri per chitarra e basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Custodie per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Stand per chitarra e basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Sgabelli e panche', 3);
insert into categoria (nome, id_reparto)
VALUES ('Leggii e altri supporti', 3);
insert into categoria (nome, id_reparto)
VALUES ('Altri accessori per basso', 3);
insert into categoria (nome, id_reparto)
VALUES ('Cavi audio e adattatori', 3);


insert into categoria (nome, id_reparto)
VALUES ('Batterie acustiche - Set completi', 4);
insert into categoria (nome, id_reparto)
VALUES ('Batterie elettroniche - Set completi', 4);
insert into categoria (nome, id_reparto)
VALUES ('Batterie elettroniche - Moduli / Pad', 4);
insert into categoria (nome, id_reparto)
VALUES ('Gran Cassa', 4);
insert into categoria (nome, id_reparto)
VALUES ('Rullanti', 4);
insert into categoria (nome, id_reparto)
VALUES ('Tom', 4);
insert into categoria (nome, id_reparto)
VALUES ('Timpani', 4);
insert into categoria (nome, id_reparto)
VALUES ('Pelli / Cerchi / Ring', 4);
insert into categoria (nome, id_reparto)
VALUES ('Set di piatti', 4);
insert into categoria (nome, id_reparto)
VALUES ('Piatti - HiHat', 4);
insert into categoria (nome, id_reparto)
VALUES ('Piatti - Crash', 4);
insert into categoria (nome, id_reparto)
VALUES ('Piatti - Ride', 4);
insert into categoria (nome, id_reparto)
VALUES ('Piatti - Splash', 4);
insert into categoria (nome, id_reparto)
VALUES ('Piatti - China e Altri', 4);
insert into categoria (nome, id_reparto)
VALUES ('Percussioni / Etnici', 4);
insert into categoria (nome, id_reparto)
VALUES ('Meccaniche / Aste / Supporti', 4);
insert into categoria (nome, id_reparto)
VALUES ('Pedali per batteria', 4);
insert into categoria (nome, id_reparto)
VALUES ('Sgabelli e panche', 4);
insert into categoria (nome, id_reparto)
VALUES ('Leggii e altri supporti', 4);
insert into categoria (nome, id_reparto)
VALUES ('Custodie per batteria', 4);
insert into categoria (nome, id_reparto)
VALUES ('Bacchette e Spazzole', 4);
insert into categoria (nome, id_reparto)
VALUES ('Accordatori / Metronomi', 4);
insert into categoria (nome, id_reparto)
VALUES ('Microfoni per batteria', 4);
insert into categoria (nome, id_reparto)
VALUES ('Prodotti isolamento acustico', 4);
insert into categoria (nome, id_reparto)
VALUES ('Altri accessori per batteria', 4);


insert into categoria (nome, id_reparto)
VALUES ('Sax', 5);
insert into categoria (nome, id_reparto)
VALUES ('Clarinetti', 5);
insert into categoria (nome, id_reparto)
VALUES ('Flauti', 5);
insert into categoria (nome, id_reparto)
VALUES ('Trombe', 5);
insert into categoria (nome, id_reparto)
VALUES ('Corni / Flicorni', 5);
insert into categoria (nome, id_reparto)
VALUES ('Tromboni / Bassi Tuba', 5);
insert into categoria (nome, id_reparto)
VALUES ('Oboi / Fagotti', 5);
insert into categoria (nome, id_reparto)
VALUES ('Legni - Altro / Accessori', 5);
insert into categoria (nome, id_reparto)
VALUES ('Ottoni - Altro / Accessori', 5);
insert into categoria (nome, id_reparto)
VALUES ('Custodie per fiati', 5);
insert into categoria (nome, id_reparto)
VALUES ('Accordatori / Metronomi', 5);
insert into categoria (nome, id_reparto)
VALUES ('Sgabelli e panche', 5);
insert into categoria (nome, id_reparto)
VALUES ('Fiati - Altro / Accessori', 5);
insert into categoria (nome, id_reparto)
VALUES ('Altri Strumenti a fiato', 5);
insert into categoria (nome, id_reparto)
VALUES ('Armonica a bocca', 5);
insert into categoria (nome, id_reparto)
VALUES ('Bocchini e ance per legni', 5);
insert into categoria (nome, id_reparto)
VALUES ('Sordine', 5);
insert into categoria (nome, id_reparto)
VALUES ('Bocchini per ottoni', 5);
insert into categoria (nome, id_reparto)
VALUES ('Leggii e altri supporti', 5);


insert into categoria (nome, id_reparto)
VALUES ('Violini / Viole', 6);
insert into categoria (nome, id_reparto)
VALUES ('Violoncelli / Contrabbassi', 6);
insert into categoria (nome, id_reparto)
VALUES ('Mandolini / Ukulele / Banjo', 6);
insert into categoria (nome, id_reparto)
VALUES ('Strumenti Silent', 6);
insert into categoria (nome, id_reparto)
VALUES ('Pianoforti acustici', 6);
insert into categoria (nome, id_reparto)
VALUES ('Altri strumenti a corda', 6);
insert into categoria (nome, id_reparto)
VALUES ('Custodie per strumenti a corda', 6);
insert into categoria (nome, id_reparto)
VALUES ('Accordatori / Metronomi', 6);
insert into categoria (nome, id_reparto)
VALUES ('Altri accessori per strumenti a corda', 6);
insert into categoria (nome, id_reparto)
VALUES ('Sgabelli e panche', 6);
insert into categoria (nome, id_reparto)
VALUES ('Arpe / Cetre', 6);
insert into categoria (nome, id_reparto)
VALUES ('Accessori - Corde', 6);
insert into categoria (nome, id_reparto)
VALUES ('Leggii e altri supporti', 6);
insert into categoria (nome, id_reparto)
VALUES ('Accessori - Archetti', 6);


insert into categoria (nome, id_reparto)
VALUES ('Mixer analogici', 7);
insert into categoria (nome, id_reparto)
VALUES ('Mixer digitali', 7);
insert into categoria (nome, id_reparto)
VALUES ('Equalizzatori', 7);
insert into categoria (nome, id_reparto)
VALUES ('Compressori / Limiter', 7);
insert into categoria (nome, id_reparto)
VALUES ('Preamplificatori', 7);
insert into categoria (nome, id_reparto)
VALUES ('Finali di potenza', 7);
insert into categoria (nome, id_reparto)
VALUES ('Effetti / Altri processori di segnale', 7);
insert into categoria (nome, id_reparto)
VALUES ('Monitor da studio', 7);
insert into categoria (nome, id_reparto)
VALUES ('Cuffie / Auricolari', 7);
insert into categoria (nome, id_reparto)
VALUES ('Microfoni', 7);
insert into categoria (nome, id_reparto)
VALUES ('Microfoni da studio', 7);
insert into categoria (nome, id_reparto)
VALUES ('Schede audio / Interfacce Midi', 7);
insert into categoria (nome, id_reparto)
VALUES ('Software - Audio / Midi Recording', 7);
insert into categoria (nome, id_reparto)
VALUES ('Software - Virtual Instruments', 7);
insert into categoria (nome, id_reparto)
VALUES ('Software - PlugIn Effects', 7);
insert into categoria (nome, id_reparto)
VALUES ('Registratori multitraccia', 7);
insert into categoria (nome, id_reparto)
VALUES ('Campionatori / Groove Box', 7);
insert into categoria (nome, id_reparto)
VALUES ('Librerie suoni', 7);
insert into categoria (nome, id_reparto)
VALUES ('Player Mp3 / Midi / Karaoke', 7);
insert into categoria (nome, id_reparto)
VALUES ('Accordatori / Metronomi', 7);
insert into categoria (nome, id_reparto)
VALUES ('Sgabelli e panche', 7);
insert into categoria (nome, id_reparto)
VALUES ('Cavi audio e adattatori', 7);
insert into categoria (nome, id_reparto)
VALUES ('Prodotti isolamento acustico', 7);
insert into categoria (nome, id_reparto)
VALUES ('Workstation PC', 7);
insert into categoria (nome, id_reparto)
VALUES ('Basi Mp3 / Midi / Karaoke', 7);
insert into categoria (nome, id_reparto)
VALUES ('Aste microfoniche', 7);
insert into categoria (nome, id_reparto)
VALUES ('Leggii e altri supporti', 7);
insert into categoria (nome, id_reparto)
VALUES ('Radiomicrofoni', 7);
insert into categoria (nome, id_reparto)
VALUES ('Workstation Apple', 7);

insert into categoria (nome, id_reparto)
VALUES ('Mixer analogici', 8);
insert into categoria (nome, id_reparto)
VALUES ('Mixer digitali', 8);
insert into categoria (nome, id_reparto)
VALUES ('Equalizzatori', 8);
insert into categoria (nome, id_reparto)
VALUES ('Compressori / Limiter', 8);
insert into categoria (nome, id_reparto)
VALUES ('Preamplificatori', 8);
insert into categoria (nome, id_reparto)
VALUES ('Finali di potenza', 8);
insert into categoria (nome, id_reparto)
VALUES ('Effetti / Altri processori di segnale', 8);
insert into categoria (nome, id_reparto)
VALUES ('Casse / Monitor Live Attivi', 8);
insert into categoria (nome, id_reparto)
VALUES ('Casse / Monitor Live Passivi', 8);
insert into categoria (nome, id_reparto)
VALUES ('Cavi audio e adattatori', 8);
insert into categoria (nome, id_reparto)
VALUES ('Cuffie / Auricolari', 8);
insert into categoria (nome, id_reparto)
VALUES ('Microfoni', 8);
insert into categoria (nome, id_reparto)
VALUES ('Player Mp3 / Midi / Karaoke', 8);
insert into categoria (nome, id_reparto)
VALUES ('Accordatori / Metronomi', 8);
insert into categoria (nome, id_reparto)
VALUES ('Strutture Rack e Flight case', 8);
insert into categoria (nome, id_reparto)
VALUES ('Sgabelli e panche', 8);
insert into categoria (nome, id_reparto)
VALUES ('Aste microfoniche', 8);
insert into categoria (nome, id_reparto)
VALUES ('Basi Mp3 / Midi / Karaoke', 8);
insert into categoria (nome, id_reparto)
VALUES ('Leggii e altri supporti', 8);
insert into categoria (nome, id_reparto)
VALUES ('Radiomicrofoni', 8);
insert into categoria (nome, id_reparto)
VALUES ('Tralicci / Americana / Supporti', 8);
insert into categoria (nome, id_reparto)
VALUES ('Altre attrezzature live', 8);


insert into categoria (nome, id_reparto)
VALUES ('CD Player / Mp3 per DJ', 9);
insert into categoria (nome, id_reparto)
VALUES ('Consolle / Controller per DJ', 9);
insert into categoria (nome, id_reparto)
VALUES ('Giradischi e Testine per DJ', 9);
insert into categoria (nome, id_reparto)
VALUES ('Mixer per DJ', 9);
insert into categoria (nome, id_reparto)
VALUES ('Campionatori / Groove Box', 9);
insert into categoria (nome, id_reparto)
VALUES ('Cuffie per DJ', 9);
insert into categoria (nome, id_reparto)
VALUES ('Player Mp3 / Midi / Karaoke', 9);
insert into categoria (nome, id_reparto)
VALUES ('Basi Mp3 / Midi / Karaoke', 9);
insert into categoria (nome, id_reparto)
VALUES ('Dischi in vinile', 9);
insert into categoria (nome, id_reparto)
VALUES ('CD Italiani', 9);
insert into categoria (nome, id_reparto)
VALUES ('CD Stranieri', 9);
insert into categoria (nome, id_reparto)
VALUES ('Borse e custodie per DJ', 9);
insert into categoria (nome, id_reparto)
VALUES ('Strutture Rack e Flight case', 9);
insert into categoria (nome, id_reparto)
VALUES ('Cavi audio e adattatori', 9);
insert into categoria (nome, id_reparto)
VALUES ('Porta CD / DVD', 9);
insert into categoria (nome, id_reparto)
VALUES ('Altri accessori per DJ', 9);



insert into categoria (nome, id_reparto)
VALUES ('Teste mobili', 10);
insert into categoria (nome, id_reparto)
VALUES ('Scanner', 10);
insert into categoria (nome, id_reparto)
VALUES ('Laser', 10);
insert into categoria (nome, id_reparto)
VALUES ('Luci Flowers', 10);
insert into categoria (nome, id_reparto)
VALUES ('Proiettori luci', 10);
insert into categoria (nome, id_reparto)
VALUES ('Luci Strobo', 10);
insert into categoria (nome, id_reparto)
VALUES ('Altri effetti luce', 10);
insert into categoria (nome, id_reparto)
VALUES ('Mixer Luci / Centraline / Dimmer', 10);
insert into categoria (nome, id_reparto)
VALUES ('Macchine del fumo / bolle', 10);
insert into categoria (nome, id_reparto)
VALUES ('Accessori - Lampade', 10);
insert into categoria (nome, id_reparto)
VALUES ('Accessori - Gelatine', 10);
insert into categoria (nome, id_reparto)
VALUES ('Accessori - Ganci / Staffe / Clamp', 10);
insert into categoria (nome, id_reparto)
VALUES ('Cavi per lighting', 10);
insert into categoria (nome, id_reparto)
VALUES ('Tralicci / Americana / Supporti', 10);
insert into categoria (nome, id_reparto)
VALUES ('Altri accessori per lighting', 10);
insert into categoria (nome, id_reparto)
VALUES ('Videoproiettori / Accessori video', 10);

insert into categoria (nome, id_reparto)
VALUES ('CD Italiani', 11);
insert into categoria (nome, id_reparto)
VALUES ('CD Stranieri', 11);
insert into categoria (nome, id_reparto)
VALUES ('Dischi in vinile', 11);
insert into categoria (nome, id_reparto)
VALUES ('DVD Italiani', 11);
insert into categoria (nome, id_reparto)
VALUES ('DVD Stranieri', 11);
insert into categoria (nome, id_reparto)
VALUES ('DVD / Video Didattici', 11);
insert into categoria (nome, id_reparto)
VALUES ('Porta CD / DVD', 11);
insert into categoria (nome, id_reparto)
VALUES ('Partiture Rock / Metal / Jazz / Blues', 11);
insert into categoria (nome, id_reparto)
VALUES ('Partiture Classica', 11);
insert into categoria (nome, id_reparto)
VALUES ('Metodi Studio / Didattica', 11);
insert into categoria (nome, id_reparto)
VALUES ('Libri - Biografie', 11);
insert into categoria (nome, id_reparto)
VALUES ('Libri - Altro', 11);
insert into categoria (nome, id_reparto)
VALUES ('Riviste Musicali', 11);


insert into categoria (nome, id_reparto)
VALUES ('Magliette / Felpe', 12);
insert into categoria (nome, id_reparto)
VALUES ('Cappellini', 12);
insert into categoria (nome, id_reparto)
VALUES ('Altri prodotti abbigliamento', 12);
insert into categoria (nome, id_reparto)
VALUES ('Portachiavi / Cinture', 12);
insert into categoria (nome, id_reparto)
VALUES ('Spille / Pin Badges', 12);
insert into categoria (nome, id_reparto)
VALUES ('Plettri per chitarra e basso', 12);
insert into categoria (nome, id_reparto)
VALUES ('Adesivi / Decalcomanie', 12);
insert into categoria (nome, id_reparto)
VALUES ('Tazze / Bicchieri', 12);
insert into categoria (nome, id_reparto)
VALUES ('Poster / Bandiere', 12);
insert into categoria (nome, id_reparto)
VALUES ('Gadget elettronici', 12);
insert into categoria (nome, id_reparto)
VALUES ('Altri gadget', 12);


insert into annuncio ( modello, prezzo, prezzo_su_richiesta, testo, titolo, utente, id_categoria, id_marca)
values ( 'RC', 2000, false, 'Vendo clarinetto ottimo stato. come nuovo. anno produzione 2011', 'vendo clarinetto sib RC',
        'enrico.gigante@gmail.com', 101, 'Buffet Crampon');


insert into annuncio (modello, prezzo, prezzo_su_richiesta, testo, titolo, utente, id_categoria, id_marca)
values ('Fender', 2000, false, 'Vendo chitarra acustica super intonata, possibile prova presso verona', 'vendo chitarra acustica fender',
        'enrico.gigante@gmail.com', 23, 'Casio');

insert into annuncio ( modello, prezzo, prezzo_su_richiesta, testo, titolo, utente, id_categoria, id_marca)
values ( 'CASIO', 2000, false, 'Vendo tastiera come nuova', 'vendo tastiera',
        'sbrauser@gmail.com', 5, 'Yamaha');