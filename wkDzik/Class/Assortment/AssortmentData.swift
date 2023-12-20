//
//  AssortmentData.swift
//  wkDzik
//
//  Created by Filip Skup on 18/12/2023.
//

import UIKit
import SwiftUI

class AssortmentData: NSObject {
    @Published var bascet: [Assortment] = []
    @Published var assortment: [Assortment] = [
        AssortmentClothes(name: "SKARPETY TRENINGOWE CZARNE HAFT",price: 40.00, image: "assortment/skarpety_czarne", description: "Skarpetki sportowe długie to doskonałe rozwiązanie dla wszystkich miłośników aktywnego trybu życia, którzy cenią sobie wygodę i wsparcie podczas intensywnego treningu. Są nie tylko praktycznym elementem garderoby sportowca, ale również stylowym dodatkiem, który podkreśla profesjonalizm i zaangażowanie w dbanie o własne zdrowie i kondycję fizyczną.", availability: true, novelty: true, size: "35-38", color: "black"),
        AssortmentClothes(name: "SKARPETY TRENINGOWE BIAŁE HAFT",price: 40.00, image: "assortment/skarpety_biale", description: "Skarpetki sportowe długie to doskonałe rozwiązanie dla wszystkich miłośników aktywnego trybu życia, którzy cenią sobie wygodę i wsparcie podczas intensywnego treningu. Są nie tylko praktycznym elementem garderoby sportowca, ale również stylowym dodatkiem, który podkreśla profesjonalizm i zaangażowanie w dbanie o własne zdrowie i kondycję fizyczną.", availability: true, novelty: true, size: "35-38", color: "white"),
        AssortmentFood(name: "BIAŁKO PREMIUM BIAŁA CZEKOLADA", price: 100.00, image: "assortymentFood/bialko_baton", description: "Jednym z filarów zdrowego stylu życia i pracy nad sylwetką jest dostarczenie organizmowi odpowiedniej ilości białka. Makroskładnik ten buduje nasze tkanki, w tym tkankę mięśniową, a więc jeśli zależy Ci na rozbudowie mięśni - nasz suplement jest stworzony dla Ciebie! Ponadto proteiny zapewniają duże uczucie sytości, będziesz zatem rzadziej sięgać po niezdrowe przekąski, a tym samym łatwiej zrzucisz niechciane kilogramy.", availability: true, novelty: false, taste: "Biała czekolada"),
        AssortmentFood(name: "BIAŁKO PREMIUM MLECZNY BATON", price: 100.00, image: "assortymentFood/baton", description: "Niezależnie czy jesteś sportowcem czy po prostu chcesz się zdrowiej odżywiać - powinieneś zadbać o wystarczającą podaż białka w swojej diecie. ", availability: true, novelty: false, taste: "mleczny baton"),
        AssortmentFood(name: "BOMBA PREWORKOUT MANGO", price: 70.00, image: "assortymentFood/bomba", description: "Miewasz czasem momenty zwątpienia przed treningiem? Ciężko jest Ci skupić myśli na ćwiczeniach? Jesteś przemęczony i nie zawsze Twój trening wygląda tak jakbyś tego oczekiwał? Mamy coś, co rozwiąże te problemy!", availability: true, novelty: false, taste: "mango"),
        AssortmentFood(name: "CYTRULINA DZIK® PRO COLA-CYTRYNA", price: 60.00, image: "assortymentFood/cytrulina", description: "Cytrulina jest dokładnie przebadanym suplementem o udowodnionym działaniu. Ma bardzo pozytywny wpływ na funkcjonowanie organizmu i jest w pełni bezpieczna dla zdrowia.", availability: true, novelty: false, taste: "cola i cytryna"),
        AssortmentFood(name: "KREATYNA DZIK® PRO COLA", price: 60.00, image: "assortymentFood/kreatyna", description: "Badania naukowe potwierdzają, że forma kreatyny nie ma większego znaczenia, a więc my oferujemy Ci najbardziej przebadaną substancję jaką jest monohydrat.", availability: true, novelty: false, taste: "cola"),
        AssortmentFood(name: "PODRĘCZNY ZESTAW ZDROWIA", price: 140.00, image: "assortymentFood/zestaw_zdrowia", description: "Są to suplementy przebadane laboratoryjnie, o potwierdzonym, prozdrowotnym działaniu. Każdy z nich ma niezwykle ważne funkcje w organizmie człowieka, a ich niedobór może być przyczyną nie tylko złego samopoczucia, ale przede wszystkim pogorszenia stanu zdrowia.", availability: true, novelty: false),
        AssortmentFood(name: "SOS ZERO BBQ", price: 18.00, image: "assortymentFood/sosBBQ", description: "Sos Barbecue Smoke jest wyrazisty i fantastycznie podkreśla smak potraw mięsnych. Stworzyliśmy produkt, który możesz stosować każdego dnia nie martwiąc się o swoją sylwetkę! Powstał bez dodatku cukru, ani tłuszczu. Jest ulubieńcem kulturystów, którzy niemal każdego dnia jadają duże ilości mięsa, a te z naszym sosem smakuje wybornie! Pozwól nam urozmaicić smak swojej diety.", availability: true, novelty: false, taste: "BBQ")
    ]
    // funkcja znajdująca nowe rzeczy w kolekcji
    func findNew() -> [Assortment]{
        let newAssortment = assortment.filter{ $0.novelty == true}
        return newAssortment
    }
    // funkcja wyszukująca jedzenie
    func findFood() -> [Assortment]{
        let foodAssortment = assortment.compactMap { $0 as? AssortmentFood }
        return foodAssortment
    }
    // funkcja dodająca do koszyka
    func addToBascet(product: Assortment){
        bascet.append(product)
    }
    // funkcja usuwająca z koszyka
    func deleteBascet(product: Assortment){
        let productId = product.id
        bascet.removeAll{ $0.id == productId }
    }
    // funkcja licząca i sprawdzająca duplikaty
    func duplicatesCount() -> [(assortment: Assortment, count: Int)]{
        var dupCount: [String:Int] = [:]
        for product in assortment{
            if let count = dupCount[product.name]{
                dupCount[product.name] = count+1
            }else{
                dupCount[product.name] = 1
            }
        }
        var basketArray: [(assortment: Assortment, count: Int)] = []
        
        for (name, count) in dupCount {
            if let product = assortment.first(where: { $0.name == name}){
                basketArray.append((assortment: product, count: count))
            }
        }
        return basketArray
    }
// Funkcja dodająca przedmioty z tablicy assortment do bascet
    func addAssortmentItemsToBasket() {
        bascet.append(contentsOf: assortment)
    }
}
