import UIKit

/*:
 ### Code Example
 */

var namesOfIntegers = [Int: String]()

namesOfIntegers[3] = "three"
namesOfIntegers[4] = "four"
namesOfIntegers = [:]

var ageDictionary = ["John": 33, "Samantha": 14]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "LAX": "Los Angeles International"]

print("The airports dictionary has: \(airports.count) items")

if airports.isEmpty {
    print("The airports dictionary is empty!")
}

airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["DEV"] = "Coder International"

airports["DEV"] = nil

for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for key in airports.keys {
    print("Key: \(key)")
}

for val in airports.values {
    print("Value: \(val)")
}

/*:
 ### Exercise
 
 Consider a real-world dictionary that you might read on your desk.
 
 1.  Create an animal dictionary where the key is the name of the animal and the value should be a string which represents the definition of the animal
 2.  Add ten animals to this dictionary
 3.  Iterate through the dictionary and print the keys and values in this format: `"Animal: X -- Description: Y"` where X is the name of the animal and Y is the description of the animal
 4.  Clear out the entire dictionary and then instead use this dictionary to store United States state abbrieviations and full names (ie CA : California)
 5. Store ten state names and abbreviations in this dictionary and then print them in this format: `Y: X` where Y is the name of the state and where X is the abbreviation
 6. Set the first state you chose to `nil`
 7. Iterate through the array and print each key and value and see what happened to that state you set to nil
 */

var animalDictionary = [String: String]()

animalDictionary["Panda"] = "O panda-gigante é um mamífero omnívoro da família Ursidae endêmico da República Popular da China."
animalDictionary["Coala"] = "O coala é um mamífero marsupial herbívoro arbóreo nativo da Austrália."
animalDictionary["Porquinho-da-índia"] = "é um roedor sul-americano da família Caviidae."
animalDictionary["Chinchila"] = "é o nome genérico dos mamíferos roedores da família Chinchillidae, nativa dos Andes da América do Sul."
animalDictionary["Jacaré"] = "são crocodilianos da família Alligatoridae, sendo muito parecidos com os crocodilos."
animalDictionary["Cavalo"] = "É um mamífero perissodáctilo pertencente à família taxonômica Equidae."
animalDictionary["Gato"] = "é um mamífero carnívoro da família dos felídeos, muito popular como animal de estimação."
animalDictionary["Cachorro"] = "é um mamífero carnívoro da família dos canídeos, subespécie do lobo, e talvez o mais antigo animal domesticado pelo ser humano."
animalDictionary["Leão"] = "é uma espécie de mamífero carnívoro do gênero Panthera e da família Felidae."
animalDictionary["Coelho"] = "são mamíferos lagomorfos da família dos leporídeos, em geral dos gêneros Oryctolagus e Sylvilagus."

for (animalName, animalDescription) in animalDictionary {
    print("Animal: \(animalName) -- Description: \(animalDescription)")
}

animalDictionary.removeAll()

animalDictionary["CA"] = "California"
animalDictionary["LA"] = "Louisiana"
animalDictionary["KA"] = "Kansas"
animalDictionary["AL"] = "Alabama"
animalDictionary["AK"] = "Alaska"
animalDictionary["OH"] = "Ohio"
animalDictionary["VA"] = "Virginia"
animalDictionary["TX"] = "Texas"
animalDictionary["HI"] = "Hawaii"
animalDictionary["CO"] = "Colorado"

for state in animalDictionary {
    print("\(state.value): \(state.key)")
}

animalDictionary["CA"] = nil


print("-----------------\n\n")

for state in animalDictionary{
    print("\(state.value): \(state.key)")
}

// When the value in the key is nil (or null), it's not showed when it's asked to print the values.
