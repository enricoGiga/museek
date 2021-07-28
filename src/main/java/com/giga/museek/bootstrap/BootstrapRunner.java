package com.giga.museek.bootstrap;

import com.giga.museek.documents.Allocation;
import com.giga.museek.entity.Category;
import com.giga.museek.repository.AllocationRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.CommandLineRunner;
import org.springframework.data.mongodb.core.ReactiveMongoOperations;
import org.springframework.data.mongodb.core.ReactiveMongoTemplate;
import org.springframework.stereotype.Component;

import java.util.List;

@Slf4j
@Component
public class BootstrapRunner implements CommandLineRunner {


    final AllocationRepository allocationRepository;
    final ReactiveMongoTemplate mongoTemplate;
    final ReactiveMongoOperations mongoOperations;

    public BootstrapRunner(
                           AllocationRepository allocationRepository, ReactiveMongoTemplate mongoTemplate, ReactiveMongoOperations mongoOperations) {

        this.allocationRepository = allocationRepository;
        this.mongoTemplate = mongoTemplate;
        this.mongoOperations = mongoOperations;
    }

    @Override
    public void run(String... args) throws Exception {

        createCappedCollection();
        insertAllocations();

    }

    private void createCappedCollection() {
        mongoOperations.dropCollection(Allocation.class);
        mongoOperations.collectionExists(Allocation.class);

        if (mongoOperations.collectionExists(Allocation.class).block() != null && Boolean.FALSE.equals(mongoOperations.collectionExists(Allocation.class).block())) {
            mongoOperations.createCollection(Allocation.class).subscribe();
        }

        insertAllocations();
//        if (mongoOperations.collectionExists(Reparto.class).block() != null && Boolean.FALSE.equals(mongoOperations.collectionExists(Reparto.class).block())) {
//            mongoOperations.createCollection(Reparto.class, CollectionOptions.empty().maxDocuments(20).capped().size(2000)).subscribe();
//        }


    }

    private void insertAllocations() {
        List<Allocation> allocations = List.of(
                new Allocation("Tastiere", this.getTastiere()),
                new Allocation("Chitarre", this.getChitarre()),
                new Allocation("Bassi", this.getBassi()),
                new Allocation("Batterie / Percussioni", this.getBatteriePercussioni()),
                new Allocation("Strumenti a Fiato", this.getStrumentiAFiato()),
                new Allocation("Strumenti a Corda", this.getStrumentiACorda()),
                new Allocation("Home & Studio Recording", this.getHomeStudioRecording()),
                new Allocation("Live Equipment", this.getLiveEquipment()),
                new Allocation("DJ Equipment", this.getDJEquipment()),
                new Allocation("Lighting", this.getLighting()),
                new Allocation("CD / DVD / Didattica", this.getCD_DVD_Didattica()),
                new Allocation("Merchandising", this.getMerchandising())

        );
        allocationRepository.saveAll(allocations);
    }
    private List<Category> getTastiere() {
        return List.of(
                new Category("Synth a tastiera / Modulari"),
                new Category("Workstation a tastiera"),
                new Category("Digital / Stage Piano"),
                new Category("Master keyboard / Controller Midi"),
                new Category("Arranger a tastiera"),
                new Category("Expander rack"),
                new Category("Campionatori / Groove Box"),
                new Category("Librerie suoni"),
                new Category("Pianoforti acustici"),
                new Category("Organi / Hammond e Cloni"),
                new Category("Fisarmoniche"),
                new Category("Amplificatori per tastiera"),
                new Category("Pedali per tastiera e synth"),
                new Category("Stand per tastiera"),
                new Category("Sgabelli e panche"),
                new Category("Accordatori / Metronomi"),
                new Category("Leggii e altri supporti"),
                new Category("Custodie per tastiera"),
                new Category("Altri accessori per tastiera"),
                new Category("Cavi audio e adattatori"));

    }

    private List<Category> getChitarre() {
        return List.of(
                new Category("Chitarre elettriche"),
                new Category("Chitarre semiacustiche"),
                new Category("Chitarre acustiche"),
                new Category("Chitarre classiche"),
                new Category("Mandolini / Ukulele / Banjo"),
                new Category("Amplificatori - Combo per chitarra"),
                new Category("Amplificatori - Testata / Cassa per "),
                new Category("Valvole per amplificatori"),
                new Category("Pedalini singoli per chitarra"),
                new Category("Pedaliere multieffetto per chitarra"),
                new Category("Effetti a rack per chitarra"),
                new Category("Accordatori / Metronomi"),
                new Category("Corpi / Body per chitarra"),
                new Category("Manici per chitarra"),
                new Category("Pick-up per chitarra"),
                new Category("Battipenna per chitarra"),
                new Category("Manopole / Potenziometri"),
                new Category("Ponti / Tremoli per chitarra"),
                new Category("Meccaniche per chitarra"),
                new Category("Corde per chitarra"),
                new Category("Tracolle per chitarra e basso"),
                new Category("Plettri per chitarra e basso"),
                new Category("Custodie per chitarra"),
                new Category("Stand per chitarra e basso"),
                new Category("Sgabelli e panche"),
                new Category("Leggii e altri supporti"),
                new Category("Altri accessori per chitarra"),
                new Category("Cavi audio e adattatori")
        );


    }

    private List<Category> getMerchandising() {
        return List.of(
                new Category("Magliette / Felpe"),
                new Category("Cappellini"),
                new Category("Altri prodotti abbigliamento"),
                new Category("Portachiavi / Cinture"),
                new Category("Spille / Pin Badges"),
                new Category("Plettri per chitarra e basso"),
                new Category("Adesivi / Decalcomanie"),
                new Category("Tazze / Bicchieri"),
                new Category("Poster / Bandiere"),
                new Category("Gadget elettronici"),
                new Category("Altri gadget")
        );
    }

    private List<Category> getCD_DVD_Didattica() {
        return List.of(
                new Category("CD Italiani"),
                new Category("CD Stranieri"),
                new Category("Dischi in vinile"),
                new Category("DVD Italiani"),
                new Category("DVD Stranieri"),
                new Category("DVD / Video Didattici"),
                new Category("Porta CD / DVD"),
                new Category("Partiture Rock / Metal / Jazz / Blues"),
                new Category("Partiture Classica"),
                new Category("Metodi Studio / Didattica"),
                new Category("Libri - Biografie"),
                new Category("Libri - Altro"),
                new Category("Riviste Musicali")
        );
    }

    private List<Category> getLighting() {
        return List.of(
                new Category("Teste mobili"),
                new Category("Scanner"),
                new Category("Laser"),
                new Category("Luci Flowers"),
                new Category("Proiettori luci"),
                new Category("Luci Strobo"),
                new Category("Altri effetti luce"),
                new Category("Mixer Luci / Centraline / Dimmer"),
                new Category("Macchine del fumo / bolle"),
                new Category("Accessori - Lampade"),
                new Category("Accessori - Gelatine"),
                new Category("Accessori - Ganci / Staffe / Clamp"),
                new Category("Cavi per lighting"),
                new Category("Tralicci / Americana / Supporti"),
                new Category("Altri accessori per lighting"),
                new Category("Videoproiettori / Accessori video")


        );
    }

    private List<Category> getDJEquipment() {
        return List.of(
                new Category("CD Player / Mp3 per DJ"),
                new Category("Consolle / Controller per DJ"),
                new Category("Giradischi e Testine per DJ"),
                new Category("Mixer per DJ"),
                new Category("Campionatori / Groove Box"),
                new Category("Cuffie per DJ"),
                new Category("Player Mp3 / Midi / Karaoke"),
                new Category("Basi Mp3 / Midi / Karaoke"),
                new Category("Dischi in vinile"),
                new Category("CD Italiani"),
                new Category("CD Stranieri"),
                new Category("Borse e custodie per DJ"),
                new Category("Strutture Rack e Flight case"),
                new Category("Cavi audio e adattatori"),
                new Category("Porta CD / DVD"),
                new Category("Altri accessori per DJ")
        );
    }

    private List<Category> getLiveEquipment() {
        return List.of(
                new Category("Mixer analogici"),
                new Category("Mixer digitali"),
                new Category("Equalizzatori"),
                new Category("Compressori / Limiter"),
                new Category("Preamplificatori"),
                new Category("Finali di potenza"),
                new Category("Effetti / Altri processori di segnale"),
                new Category("Casse / Monitor Live Attivi"),
                new Category("Casse / Monitor Live Passivi"),
                new Category("Cavi audio e adattatori"),
                new Category("Cuffie / Auricolari"),
                new Category("Microfoni"),
                new Category("Player Mp3 / Midi / Karaoke"),
                new Category("Accordatori / Metronomi"),
                new Category("Strutture Rack e Flight case"),
                new Category("Sgabelli e panche"),
                new Category("Aste microfoniche"),
                new Category("Basi Mp3 / Midi / Karaoke"),
                new Category("Leggii e altri supporti"),
                new Category("Radiomicrofoni"),
                new Category("Tralicci / Americana / Supporti"),
                new Category("Altre attrezzature live")
        );
    }

    private List<Category> getHomeStudioRecording() {
        return List.of(
                new Category("Mixer analogici"),
                new Category("Mixer digitali"),
                new Category("Equalizzatori"),
                new Category("Compressori / Limiter"),
                new Category("Preamplificatori"),
                new Category("Finali di potenza"),
                new Category("Effetti / Altri processori di segnale"),
                new Category("Monitor da studio"),
                new Category("Cuffie / Auricolari"),
                new Category("Microfoni"),
                new Category("Microfoni da studio"),
                new Category("Schede audio / Interfacce Midi"),
                new Category("Software - Audio / Midi Recording"),
                new Category("Software - Virtual Instruments"),
                new Category("Software - PlugIn Effects"),
                new Category("Registratori multitraccia"),
                new Category("Campionatori / Groove Box"),
                new Category("Librerie suoni"),
                new Category("Player Mp3 / Midi / Karaoke"),
                new Category("Accordatori / Metronomi"),
                new Category("Sgabelli e panche"),
                new Category("Cavi audio e adattatori"),
                new Category("Prodotti isolamento acustico"),
                new Category("Workstation PC"),
                new Category("Basi Mp3 / Midi / Karaoke"),
                new Category("Aste microfoniche"),
                new Category("Leggii e altri supporti"),
                new Category("Radiomicrofoni"),
                new Category("Workstation Apple")
        );
    }

    private List<Category> getStrumentiACorda() {
        return List.of(
                new Category("Violini / Viole"),
                new Category("Violoncelli / Contrabbassi"),
                new Category("Mandolini / Ukulele / Banjo"),
                new Category("Strumenti Silent"),
                new Category("Pianoforti acustici"),
                new Category("Altri strumenti a corda"),
                new Category("Custodie per strumenti a corda"),
                new Category("Accordatori / Metronomi"),
                new Category("Altri accessori per strumenti a corda"),
                new Category("Sgabelli e panche"),
                new Category("Arpe / Cetre"),
                new Category("Accessori - Corde"),
                new Category("Leggii e altri supporti"),
                new Category("Accessori - Archetti")
        );
    }

    private List<Category> getStrumentiAFiato() {
        return List.of(
                new Category("Sax"),
                new Category("Clarinetti"),
                new Category("Flauti"),
                new Category("Trombe"),
                new Category("Corni / Flicorni"),
                new Category("Tromboni / Bassi Tuba"),
                new Category("Oboi / Fagotti"),
                new Category("Legni - Altro / Accessori"),
                new Category("Ottoni - Altro / Accessori"),
                new Category("Custodie per fiati"),
                new Category("Accordatori / Metronomi"),
                new Category("Sgabelli e panche"),
                new Category("Fiati - Altro / Accessori"),
                new Category("Altri Strumenti a fiato"),
                new Category("Armonica a bocca"),
                new Category("Bocchini e ance per legni"),
                new Category("Sordine"),
                new Category("Bocchini per ottoni"),
                new Category("Leggii e altri supporti")

        );
    }

    private List<Category> getBatteriePercussioni() {
        return List.of(
                new Category("Batterie acustiche - Set completi"),
                new Category("Batterie elettroniche - Set completi"),
                new Category("Batterie elettroniche - Moduli / Pad"),
                new Category("Gran Cassa"),
                new Category("Rullanti"),
                new Category("Tom"),
                new Category("Timpani"),
                new Category("Pelli / Cerchi / Ring"),
                new Category("Set di piatti"),
                new Category("Piatti - HiHat"),
                new Category("Piatti - Crash"),
                new Category("Piatti - Ride"),
                new Category("Piatti - Splash"),
                new Category("Piatti - China e Altri"),
                new Category("Percussioni / Etnici"),
                new Category("Meccaniche / Aste / Supporti"),
                new Category("Pedali per batteria"),
                new Category("Sgabelli e panche"),
                new Category("Leggii e altri supporti"),
                new Category("Custodie per batteria"),
                new Category("Bacchette e Spazzole"),
                new Category("Accordatori / Metronomi"),
                new Category("Microfoni per batteria"),
                new Category("Prodotti isolamento acustico"),
                new Category("Altri accessori per batteria")

        );
    }

    private List<Category> getBassi() {
        return List.of(
                new Category("Bassi elettrici 4 corde"),
                new Category("Bassi elettrici 5/6/+ corde"),
                new Category("Bassi acustici"),
                new Category("Amplificatori - Combo per basso"),
                new Category("Amplificatori - Testata / Cassa per basso"),
                new Category("Valvole per amplificatori"),
                new Category("Pedalini singoli per basso"),
                new Category("Pedaliere multieffetto per basso"),
                new Category("Effetti a rack per basso"),
                new Category("Accordatori / Metronomi"),
                new Category("Corpi / Body per basso"),
                new Category("Manici per basso"),
                new Category("Pick-up per basso"),
                new Category("Battipenna per basso"),
                new Category("Manopole / Potenziometri"),
                new Category("Ponti / Tremoli per basso"),
                new Category("Meccaniche per basso"),
                new Category("Corde per basso"),
                new Category("Tracolle per chitarra e basso"),
                new Category("Plettri per chitarra e basso"),
                new Category("Custodie per basso"),
                new Category("Stand per chitarra e basso"),
                new Category("Sgabelli e panche"),
                new Category("Leggii e altri supporti"),
                new Category("Altri accessori per basso"),
                new Category("Cavi audio e adattatori")
        );
    }




//    public void dataSetupForCappedCollection() {
//
//        Flux<Category> categoriaCappedFlux = Flux.fromIterable(getCategorie());
//
//        categoriaRepository
//
//                .insert(categoriaCappedFlux)
//                .flatMap(categoriaRepository::save).subscribe();
//
//
//        Mono<Category> cappellini = categoriaRepository.findCategoriesByNome("Cappellini");
//
//
//        Category block = cappellini.block();
//
////        cappellini.subscribe(categoriaRepository::insert);
////
////        categoriaRepository
////
////                .saveAll(getCategorie());
//    }


}
