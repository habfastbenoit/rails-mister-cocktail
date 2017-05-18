# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# db/seeds.rb

puts 'Cleaning database...'
Ingredient.destroy_all

puts 'Creating ingredients...'

ingredients_attributes = [
  {
name: "Light rum"
},
{
name: "Applejack"
},
{
name: "Gin"
},
{
name: "Dark rum"
},
{
name: "Sweet Vermouth"
},
{
name: "Strawberry schnapps"
},
{
name: "Scotch"
},
{
name: "Apricot brandy"
},
{
name: "Triple sec"
},
{
name: "Southern Comfort"
},
{
name: "Orange bitters"
},
{
name: "Brandy"
},
{
name: "Lemon vodka"
},
{
name: "Blended whiskey"
},
{
name: "Dry Vermouth"
},
{
name: "Amaretto"
},
{
name: "Tea"
},
{
name: "Creme de Cacao"
},
{
name: "Apple brandy"
},
{
name: "Dubonnet Blanc"
},
{
name: "Apple schnapps"
},
{
name: "Añejo rum"
},
{
name: "Champagne"
},
{
name: "Coffee liqueur"
},
{
name: "Rum"
},
{
name: "Cachaca"
},
{
name: "Sugar"
},
{
name: "Blackberry brandy"
},
{
name: "Calvados"
},
{
name: "Ice"
},
{
name: "Lemon"
},
{
name: "Coffee brandy"
},
{
name: "Bourbon"
},
{
name: "Irish whiskey"
},
{
name: "Vodka"
},
{
name: "Tequila"
},
{
name: "Bitters"
},
{
name: "Lime juice"
},
{
name: "Egg"
},
{
name: "Mint"
},
{
name: "Sherry"
},
{
name: "Cherry brandy"
},
{
name: "Canadian whisky"
},
{
name: "Kahlua"
},
{
name: "Yellow Chartreuse"
},
{
name: "Cognac"
},
{
name: "demerara Sugar"
},
{
name: "Sake"
},
{
name: "Dubonnet Rouge"
},
{
name: "Anis"
},
{
name: "White Creme de Menthe"
},
{
name: "Gold tequila"
},
{
name: "Sweet and sour"
},
{
name: "Salt"
},
{
name: "Galliano"
},
{
name: "Green Creme de Menthe"
},
{
name: "Kummel"
},
{
name: "Anisette"
},
{
name: "Carbonated water"
},
{
name: "Lemon peel"
},
{
name: "White wine"
},
{
name: "Sloe gin"
},
{
name: "Melon liqueur"
},
{
name: "Swedish Punsch"
},
{
name: "Peach brandy"
},
{
name: "Passion fruit juice"
},
{
name: "Peppermint schnapps"
},
{
name: "Creme de Noyaux"
},
{
name: "Grenadine"
},
{
name: "Port"
},
{
name: "Red wine"
},
{
name: "Rye whiskey"
},
{
name: "Grapefruit juice"
},
{
name: "Ricard"
},
{
name: "Banana liqueur"
},
{
name: "Vanilla ice-cream"
},
{
name: "Whiskey"
},
{
name: "Creme de Banane"
},
{
name: "Lime juice cordial"
},
{
name: "Strawberry liqueur"
},
{
name: "Sambuca"
},
{
name: "Peach schnapps"
},
{
name: "Apple juice"
},
{
name: "Berries"
},
{
name: "Blueberries"
},
{
name: "Orange juice"
},
{
name: "Pineapple juice"
},
{
name: "Cranberries"
},
{
name: "Brown sugar"
},
{
name: "Milk"
},
{
name: "Egg yolk"
},
{
name: "Lemon juice"
},
{
name: "Soda water"
},
{
name: "Coconut liqueur"
},
{
name: "Cream"
},
{
name: "Pineapple"
},
{
name: "Sugar syrup"
},
{
name: "Ginger ale"
},
{
name: "Worcestershire sauce"
},
{
name: "Ginger"
},
{
name: "Strawberries"
},
{
name: "Chocolate syrup"
},
{
name: "Yoghurt"
},
{
name: "Grape juice"
},
{
name: "Orange"
},
{
name: "Apple cider"
},
{
name: "Banana"
},
{
name: "Mango"
},
{
name: "Soy milk"
},
{
name: "Lime"
},
{
name: "Cantaloupe"
},
{
name: "Grapes"
},
{
name: "Kiwi"
},
{
name: "Tomato juice"
},
{
name: "Cocoa powder"
},
{
name: "Chocolate"
},
{
name: "Heavy cream"
},
{
name: "Peach Vodka"
},
{
name: "Ouzo"
},
{
name: "Coffee"
},
{
name: "Spiced rum"
},
{
name: "Water"
},
{
name: "Espresso"
},
{
name: "Angelica root"
},
{
name: "Condensed milk"
},
{
name: "Honey"
},
{
name: "Whipping cream"
},
{
name: "Half-and-half"
},
{
name: "Bread"
},
{
name: "Plums"
},
{
name: "Johnnie Walker"
},
{
name: "Vanilla"
},
{
name: "Apple"
},
{
name: "Orange rum"
},
{
name: "Everclear"
},
{
name: "Kool-Aid"
},
{
name: "Lemonade"
},
{
name: "Cranberry juice"
},
{
name: "Eggnog"
},
{
name: "Carbonated soft drink"
},
{
name: "Cloves"
},
{
name: "Raisins"
},
{
name: "Almond"
},
{
name: "Beer"
},
{
name: "Pink lemonade"
},
{
name: "Sherbet"
},
{
name: "Peach nectar"
},
{
name: "Firewater"
},
{
name: "Absolut Citron"
},
{
name: "Malibu rum"
},
{
name: "Midori melon liqueur"
},
{
name: "151 proof rum"
},
{
name: "Bacardi Limon"
},
{
name: "Bailey's irish cream"
},
{
name: "Lager"
},
{
name: "Orange vodka"
},
{
name: "Blue Curacao"
},
{
name: "Absolut Vodka"
},
{
name: "Jägermeister"
},
{
name: "Jack Daniels"
},
{
name: "Drambuie"
},
{
name: "Whisky"
},
{
name: "White rum"
},
{
name: "Pisco"
},
{
name: "Irish cream"
},
{
name: "Yukon Jack"
},
{
name: "Goldschlager"
},
{
name: "Butterscotch schnapps"
},
{
name: "Grand Marnier"
},
{
name: "Peachtree schnapps"
},
{
name: "Absolut Kurant"
},
{
name: "Ale"
},
{
name: "Chambord raspberry liqueur"
},
{
name: "Tia maria"
},
{
name: "Chocolate liqueur"
},
{
name: "Frangelico"
},
{
name: "Barenjager"
},
{
name: "Hpnotiq"
},
{
name: "Coca-Cola"
},
{
name: "Tuaca"
},
{
name: "Tang"
},
{
name: "Tropicana"
},
{
name: "Grain alcohol"
},
{
name: "Schnapps"
},
{
name: "Cider"
},
{
name: "Aftershock"
},
{
name: "Sprite"
},
{
name: "Rumple Minze"
},
{
name: "Key Largo schnapps"
},
{
name: "Pisang Ambon"
},
{
name: "Pernod"
},
{
name: "7-Up"
},
{
name: "Limeade"
},
{
name: "Gold rum"
},
{
name: "Wild Turkey"
},
{
name: "Cointreau"
},
{
name: "Lime vodka"
},
{
name: "Maraschino cherry juice"
},
{
name: "Creme de Cassis"
},
{
name: "Zima"
},
{
name: "Crown Royal"
},
{
name: "Cardamom"
},
{
name: "Orange Curacao"
},
{
name: "Tabasco sauce"
},
{
name: "Peach liqueur"
},
{
name: "Curacao"
},
{
name: "Cherry Heering"
},
{
name: "Fruit punch"
},
{
name: "Vermouth"
},
{
name: "Cherry juice"
},
{
name: "Cinnamon schnapps"
},
{
name: "Orange peel"
},
{
name: "Advocaat"
},
{
name: "Clamato juice"
},
{
name: "Sour mix"
},
{
name: "Apfelkorn"
},
{
name: "Green Chartreuse"
},
{
name: "Root beer schnapps"
},
{
name: "Coconut rum"
},
{
name: "Raspberry schnapps"
},
{
name: "Black Sambuca"
},
{
name: "Vanilla vodka"
},
{
name: "Root beer"
},
{
name: "Absolut Peppar"
},
{
name: "Vanilla schnapps"
},
{
name: "Orange liqueur"
},
{
name: "Kiwi liqueur"
},
{
name: "Hot chocolate"
},
{
name: "Jello"
},
{
name: "Mountain Dew"
},
{
name: "Blueberry schnapps"
},
{
name: "Maui"
},
{
name: "Tennessee whiskey"
},
{
name: "White chocolate liqueur"
},
{
name: "Cream of coconut"
},
{
name: "Citrus vodka"
},
{
name: "Fruit juice"
},
{
name: "Cranberry vodka"
},
{
name: "Campari"
},
{
name: "Corona"
},
{
name: "Chocolate ice-cream"
},
{
name: "Jim Beam"
},
{
name: "Aquavit"
},
{
name: "Hawaiian Punch"
},
{
name: "Blackberry schnapps"
},
{
name: "Chocolate milk"
},
{
name: "Watermelon schnapps"
},
{
name: "Beef bouillon"
},
{
name: "Dr. Pepper"
},
{
name: "Iced tea"
},
{
name: "Hot Damn"
},
{
name: "Club soda"
},
{
name: "Benedictine"
},
{
name: "Dark Creme de Cacao"
},
{
name: "Black rum"
},
{
name: "Cherry Cola"
},
{
name: "Absinthe"
},
{
name: "Angostura bitters"
},
{
name: "Tequila Rose"
},
{
name: "Guinness stout"
},
{
name: "Orange soda"
},
{
name: "Wildberry schnapps"
},
{
name: "Lemon-lime soda"
},
{
name: "Godiva liqueur"
},
{
name: "Baileys irish cream"
},
{
name: "Schweppes Russchian"
},
{
name: "Melon vodka"
},
{
name: "Sour Apple Pucker"
},
{
name: "Raspberry vodka"
},
{
name: "coconut milk"
}
]


Ingredient.create!(ingredients_attributes)

puts 'Finished!'
