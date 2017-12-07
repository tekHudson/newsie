# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

############
# ARTICLES #
############
ARTICLE_TITLES = ["How to Have a Healthier and More Productive Home Office", "10 Step To Successfully Outsourcing Your Online Business", "21 Ways to Dominate Youtube: The Ultimate Guide", "6 Instant Confidence Boosters", "Parenting Guru: From Chaos to Access", "Gene Breakthrough Restores The Sight Of People With Inherited Eye Disease And Could Save Thousands From Blindness", "Twitter Goes Public: 21 Things You Should Know", "Tips That Show Anybody How To Make Money Online – Guaranteed", "Thousands Already Make Millions Online And So Can You"]
ARTICLE_TEXT = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo lacus a dui mollis, in interdum sem blandit. Maecenas lorem nisl, molestie eu ornare in, ullamcorper eu eros. Pellentesque est odio, elementum quis diam ac, maximus tincidunt sem. Vestibulum gravida quis lacus at lobortis. Vivamus cursus enim vitae urna euismod, eget laoreet quam imperdiet. Sed vitae mattis nibh, a blandit nunc. Sed auctor luctus velit hendrerit faucibus. Vestibulum nunc elit, blandit non pulvinar eget, luctus vitae sem. Aenean non mi sed arcu consequat ullamcorper. Morbi a ultricies eros. Nulla sed massa lacus. Quisque arcu erat, feugiat et tortor nec, rhoncus vulputate purus."

ARTICLE_TITLES.each do |title|
  Article.create(title: title, text: ARTICLE_TEXT)
end

############
# PRODUCTS #
############
PRODUCT_DESCRIPTIONS = ["Lorem ipsum dolor sit amet, consectetur adipiscing elit.", "Nam commodo lacus a dui mollis, in interdum sem blandit.", "Maecenas lorem nisl, molestie eu ornare in, ullamcorper eu eros.", "Pellentesque est odio, elementum quis diam ac, maximus tincidunt sem.", "Vestibulum gravida quis lacus at lobortis.", "Vivamus cursus enim vitae urna euismod, eget laoreet quam imperdiet.", "Sed vitae mattis nibh, a blandit nunc.", "Sed auctor luctus velit hendrerit faucibus.", "Vestibulum nunc elit, blandit non pulvinar eget, luctus vitae sem.", "Aenean non mi sed arcu consequat ullamcorper.", "Morbi a ultricies eros.", "Nulla sed massa lacus.", "Quisque arcu erat, feugiat et tortor nec, rhoncus vulputate purus."]
PRODUCTS = {
  categories: ["Cigars", "Bulk Pipe Tobacco", "Pipe Tobacco Tins", "Cigar Cutters", "Humidors", "Travel Cigar Cases", "Humidification Devices", "Lighters", "Lighter Fuel", ],
  cigars: ["601 - Blue Label Maduro", "601 - Green Label Oscuro", "601 - La Bomba", "601 - La Bomba Limited Edition - Warhead", "601 - Red Label Habano", "601 Red Label - Guapito", "601 Red Label - Rabito", "601 Red Label - Robusto", "601 Red Label - Toro", "601 Red Label - Torpedo", "601 Red Label - Trabuco", "Alec Bradley - Family Blend - D-3", "Alec Bradley - Family Blend - T-11", "Alec Bradley - Family Blend - V_R_1", "Alec Bradley - Prensado - Corona Gorda", "Alec Bradley - Prensado - Gran Toro", "Alec Bradley - Prensado - Robust", "Alec Bradley - Tempus - Centuria", "Alec Bradley - Tempus - Cero", "Alec Bradley - Tempus - Genesis", "Alec Bradley - Tempus - Imperator", "Alec Bradley - Tempus - Inceptio", "Alec Bradley - Tempus - Magistri", "Alec Bradley - Tempus - Magnus", "Alec Bradley - Tempus - Terra Novo", "Alec Bradley - Tempus Maduro - Imperator - Cello", "Alec Bradley - Tempus Maduro - Magistri - cello", "Alec Bradley - Tempus Maduro - Terra Nova - cello", "Alec Bradley - Tempus Muduro - Centuria - cello", "Alec Bradley - Tempus Muduro - Medius - cello"],
  bulk_pipe_tobacco: ["Almondine", "Amaretto", "Aromatic English", "Bahamian Rhapsody", "Balkan I", "Balkan II", "Black Cherry", "Black Cordial", "Black Heath", "Black Toasted Cavendish", "Bright Virginia", "Butter Pecan", "Buttered Rum", "Byzantium", "Carmello", "Carolina Flake", "Cherry Cavendish", "Chocolate Burley", "Chocolate Truffle", "Coco Cream", "Coconut Almond", "Count Pulaski", "Cream Soda", "Crown Achievement", "CTC", "Cube Burley", "Embassy", "Fox & Hound", "Fruit Tart", "Ginger Snaps"],
  pipe_tobacco_tins: ["CAO Bella Vanilla", "CAO Cherrybomb", "CAO Eileen's Dream", "CAO Moontrance", "Dunhill Nightcap"],
  cigar_cutters: ["Xikar"],
  humidors: ["Don Salvatore", "Lotus"],
  travel_cigar_cases: ["VAULT"],
  humidification_devices: ["Boveda", "Cigar Mechanic", "Xikar"],
  lighters: ["Blazer", "iM Corona", "JetLine", "Lotus", "Prometheus"],
  lighter_fuel: ["Lotus", "Vector", "Xikar", "Zippo"]
}

PRODUCTS[:categories].each do |category_name|
  category = Category.create(name: category_name, description: PRODUCT_DESCRIPTIONS[rand(0...12)])

  PRODUCTS[category_name.downcase.gsub(' ', '_').to_sym].each do |product_name|
    Product.create(category: category, name: product_name, description: PRODUCT_DESCRIPTIONS[rand(0...12)])
  end
end
