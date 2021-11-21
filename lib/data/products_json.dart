String products_json_string = '''
[
  {
    "id": 1,
    "name": "Vulpes chama",
    "description": "Fox, silver-backed",
    "image": "http://dummyimage.com/234x100.png/5fa2dd/ffffff"
  },
  {
    "id": 2,
    "name": "Camelus dromedarius",
    "description": "Camel, dromedary",
    "image": "http://dummyimage.com/147x100.png/dddddd/000000"
  },
  {
    "id": 3,
    "name": "Amblyrhynchus cristatus",
    "description": "Marine iguana",
    "image": "http://dummyimage.com/125x100.png/ff4444/ffffff"
  },
  {
    "id": 4,
    "name": "Lasiorhinus latifrons",
    "description": "Wombat, southern hairy-nosed",
    "image": "http://dummyimage.com/186x100.png/dddddd/000000"
  },
  {
    "id": 5,
    "name": "Genetta genetta",
    "description": "Genet, small-spotted",
    "image": "http://dummyimage.com/196x100.png/5fa2dd/ffffff"
  },
  {
    "id": 6,
    "name": "Procyon cancrivorus",
    "description": "Raccoon, crab-eating",
    "image": "http://dummyimage.com/224x100.png/ff4444/ffffff"
  },
  {
    "id": 7,
    "name": "Ciconia episcopus",
    "description": "White-necked stork",
    "image": "http://dummyimage.com/159x100.png/cc0000/ffffff"
  },
  {
    "id": 8,
    "name": "Paradoxurus hermaphroditus",
    "description": "Civet, common palm",
    "image": "http://dummyimage.com/172x100.png/ff4444/ffffff"
  },
  {
    "id": 9,
    "name": "unavailable",
    "description": "Ant (unidentified)",
    "image": "http://dummyimage.com/211x100.png/cc0000/ffffff"
  },
  {
    "id": 10,
    "name": "Crotalus cerastes",
    "description": "Sidewinder",
    "image": "http://dummyimage.com/234x100.png/5fa2dd/ffffff"
  },
  {
    "id": 11,
    "name": "Petaurus breviceps",
    "description": "Glider, sugar",
    "image": "http://dummyimage.com/211x100.png/dddddd/000000"
  },
  {
    "id": 12,
    "name": "Grus canadensis",
    "description": "Crane, sandhill",
    "image": "http://dummyimage.com/233x100.png/5fa2dd/ffffff"
  },
  {
    "id": 13,
    "name": "Anitibyx armatus",
    "description": "Eagle, tawny",
    "image": "http://dummyimage.com/158x100.png/5fa2dd/ffffff"
  },
  {
    "id": 14,
    "name": "Carduelis uropygialis",
    "description": "Siskin, yellow-rumped",
    "image": "http://dummyimage.com/193x100.png/cc0000/ffffff"
  },
  {
    "id": 15,
    "name": "Uraeginthus bengalus",
    "description": "Bleu, red-cheeked cordon",
    "image": "http://dummyimage.com/224x100.png/cc0000/ffffff"
  },
  {
    "id": 16,
    "name": "Sarkidornis melanotos",
    "description": "Comb duck",
    "image": "http://dummyimage.com/154x100.png/ff4444/ffffff"
  },
  {
    "id": 17,
    "name": "Sterna paradisaea",
    "description": "Arctic tern",
    "image": "http://dummyimage.com/102x100.png/cc0000/ffffff"
  },
  {
    "id": 18,
    "name": "Macropus fuliginosus",
    "description": "Western grey kangaroo",
    "image": "http://dummyimage.com/237x100.png/cc0000/ffffff"
  },
  {
    "id": 19,
    "name": "Priodontes maximus",
    "description": "Giant armadillo",
    "image": "http://dummyimage.com/120x100.png/cc0000/ffffff"
  },
  {
    "id": 20,
    "name": "Lophoaetus occipitalis",
    "description": "Long-crested hawk eagle",
    "image": "http://dummyimage.com/143x100.png/cc0000/ffffff"
  },
  {
    "id": 21,
    "name": "Sarkidornis melanotos",
    "description": "Duck, comb",
    "image": "http://dummyimage.com/139x100.png/dddddd/000000"
  },
  {
    "id": 22,
    "name": "Cordylus giganteus",
    "description": "Lizard, giant girdled",
    "image": "http://dummyimage.com/158x100.png/cc0000/ffffff"
  },
  {
    "id": 23,
    "name": "Mellivora capensis",
    "description": "Honey badger",
    "image": "http://dummyimage.com/149x100.png/cc0000/ffffff"
  },
  {
    "id": 24,
    "name": "Mephitis mephitis",
    "description": "Skunk, striped",
    "image": "http://dummyimage.com/136x100.png/ff4444/ffffff"
  },
  {
    "id": 25,
    "name": "Conolophus subcristatus",
    "description": "Iguana, land",
    "image": "http://dummyimage.com/158x100.png/dddddd/000000"
  },
  {
    "id": 26,
    "name": "Ara ararauna",
    "description": "Macaw, blue and gold",
    "image": "http://dummyimage.com/241x100.png/dddddd/000000"
  },
  {
    "id": 27,
    "name": "Caiman crocodilus",
    "description": "Spectacled caiman",
    "image": "http://dummyimage.com/186x100.png/5fa2dd/ffffff"
  },
  {
    "id": 28,
    "name": "unavailable",
    "description": "Mudskipper (unidentified)",
    "image": "http://dummyimage.com/247x100.png/5fa2dd/ffffff"
  },
  {
    "id": 29,
    "name": "Anathana ellioti",
    "description": "Shrew, mandras tree",
    "image": "http://dummyimage.com/238x100.png/ff4444/ffffff"
  },
  {
    "id": 30,
    "name": "Theropithecus gelada",
    "description": "Bleeding heart monkey",
    "image": "http://dummyimage.com/172x100.png/dddddd/000000"
  }
]
''';
