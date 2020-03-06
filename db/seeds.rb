User.destroy_all
Team.destroy_all
DraftPick.destroy_all
Player.destroy_all

puts "Starting..."
puts "Creating users..."

vince = User.create(name: "Vincent Martyr", password: "password1", player_spots: 9)
dellys = User.create(name: "Dellys Soler", password: "password2", player_spots: 9)
luce = User.create(name: "Lucero Martyr", password: "password3", player_spots: 9)
carolina = User.create(name: "Carolina Martyr", password: "password4", player_spots: 9)
clemente = User.create(name: "Clemente Martyr", password: "password5", player_spots: 9)
harlem = User.create(name: "Harlem Martyr", password: "password6", player_spots: 9)

puts "Creating teams..."

philadelphia_phillies = Team.create(city: "Philadelphia" , teamName: "Phillies", user_id: 25)
la_angels = Team.create(city: "Los Angeles" , teamName: "Angels", user_id: 26)
chicago_whitesox = Team.create(city: "Chicago" , teamName: "White Sox", user_id: 27)
seattle_mariners = Team.create(city: "Seattle" , teamName: "Mariners", user_id: 28)
brooklyn_dodgers = Team.create(city: "Brooklyn" , teamName: "Dodgers", user_id: 29)
houston_astros = Team.create(city: "Houston" , teamName: "Astros", user_id: 33)
miami_marlins= Team.create(city: "Miami" , teamName: "Marlins", user_id: 25)
cleveland_indians= Team.create(city: "Cleveland" , teamName: "Indians", user_id: 26)
cincy_reds= Team.create(city: "Cincy" , teamName: "Reds", user_id: 27)
stlouis_cardinals= Team.create(city: "St. Louis" , teamName: "Cardinals", user_id: 28)
sanfransico_giants = Team.create(city: "San Francisco" , teamName: "Giants", user_id: 29)
boston_redsox = Team.create(city: "Boston" , teamName: "Red Sox", user_id: 30)
tampa_devilrays = Team.create(city: "Tampa" , teamName: "Devil Rays", user_id: 25)
texas_rangers = Team.create(city: "Texas" , teamName: "Rangers", user_id: 26)
chicago_cubs = Team.create(city: "Chicago" , teamName: "Cubs", user_id: 27)

puts "Creating players..."

griffey = Player.create(name: "Ken Griffey Jr", position: "CF")
henderson = Player.create(name: "Rickey Henderson", position: "LF")
harper = Player.create(name: "Bryce Harper", position: "RF")
lindor = Player.create(name: "Fransico Lindor", position: "SS")
kershaw = Player.create(name: "Clayton Kershaw", position: "P")
neris = Player.create(name: "Hector Neris", position: "RP")
trout = Player.create(name: "Mike Trout", position: "CF")
bonds = Player.create(name: "Barry Bonds", position: "LF")
judge = Player.create(name: "Aaron Judge", position: "RF")
sabathia = Player.create(name: "CC Sabathia", position: "P")
johnson = Player.create(name: "Randy Johnson", position: "P")
hoffman = Player.create(name: "Trevor Hoffman", position: "RP")
howard = Player.create(name: "Ryan Howard", position: "1B")
alomar = Player.create(name: "Roberto Alomar", position: "2B")
maddox = Player.create(name: "Greg Maddox", position: "P")
arod = Player.create(name: "Alex Rodriguez", position: "3B")
rodriguez = Player.create(name: "Ivan Rodriguez", position: "C")
realmuto = Player.create(name: "JT Realmuto", position: "C")
pujols = Player.create(name: "Albert Pujols", position: "1B")
utley = Player.create(name: "Chase Utley", position: "2B")
rose = Player.create(name: "Pete Rose", position: "3B")
anderson = Player.create(name: "Tim Anderson", position: "SS")
halladay = Player.create(name: "Doc Halladay", position: "P")
rivera = Player.create(name: "Mariano Rivera", position: "RP")

puts "Creating draft picks..."
first_pick = DraftPick.create(team_id: 1 , player_id: 1)
sencond_pick = DraftPick.create(team_id: 2 , player_id: 2 )
third_pick = DraftPick.create(team_id: 3 , player_id: 3 )
fourth_pick = DraftPick.create(team_id: 4, player_id: 4 )
fifth_pick = DraftPick.create(team_id: 5 , player_id: 5 )
sixth_pick = DraftPick.create(team_id: 6 , player_id: 6 )
seventh_pick = DraftPick.create(team_id: 7 , player_id: 7)
eighth_pick = DraftPick.create(team_id: 8 , player_id: 8 )
ninth_pick = DraftPick.create(team_id: 9 , player_id: 1 )
tenth_pick = DraftPick.create(team_id: 10, player_id: 2 )
eleventh_pick = DraftPick.create(team_id: 11 , player_id: 3 )
twelfth_pick = DraftPick.create(team_id: 12 , player_id: 4 )
thirteenth_pick = DraftPick.create(team_id: 13 , player_id: 5)
fourteenth_pick = DraftPick.create(team_id: 14 , player_id: 6 )
fifteenth_pick = DraftPick.create(team_id: 15 , player_id: 7 )
sixteenth_pick = DraftPick.create(team_id: 1, player_id: 8 )
seventeenth_pick = DraftPick.create(team_id: 2 , player_id: 1 )
eighteenth_pick = DraftPick.create(team_id: 3 , player_id: 2 )

puts "Ending..."