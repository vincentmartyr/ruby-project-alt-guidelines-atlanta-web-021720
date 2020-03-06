# require 'tty'
require_relative '../config/environment'

# current_user = gets.chomp
# current_user_password = gets.chomp
# our_user = User.create(name: current_user, password: current_user_password)
# current_users_team = Team.update(user_id: our_user.id)
def render_ascii_art
    # File.readlines("mlblogo.txt") do |line|
    # puts line
    mlb_logo = <<-TEST

    .:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::.
    ..'                                      ....                  ..
    ..                            ......       ...                 ..
    |S                          .F.GiantsS.     F.G                ia
    nt                         sS.F.Gi||BASE      BAL              LB
    AS                        EBALLBASEBA||S       .F.             Gi
    an                          tsS.F.Giants         S.            F.
    Gi                         ||BASEBALLBA           SE           BA
    LL                          BASEBA||S.F.GiantsS.F .Gia         nt
    sS                          .F.Gi||BASEBALLBASEBALLBASEB       A|
    |S                        .F.GiantsS.F.GiantsS.F.Gi||BASE      BA
    LL      BA               SEBALLBASEBA||S.F.GiantsS.F.Giants    S.
    F.    Gi||B             ASEBALLBASEBALLBASEBA||S.F.GiantsS.F   .G
    ia      nt              sS.F.Gi||BASEBALLBASEBALLBASEBA||S.F   .G
    ia                      ntsS.F.GiantsS.F.Gi||BASEBALL          BA
     S                         EBALLBASEBA|'`'''''''''''           S
      '::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::'
    TEST
    puts mlb_logo
end

def welcome

    puts "First things first, lets create a profile."
    sleep(3)
    puts " "
    puts " "
    puts "Enter your name here: "
    puts " "
    puts " "
    @current_user = gets.chomp
    puts " "
    puts " "
    puts "Enter your password: "
    puts " "
    puts " "
    @current_user_password = gets.chomp
    sleep(3)
    puts " "
    puts " "
    puts "Thanks for signing up #{@current_user}!"
    sleep(3)
    puts " "
    puts " "
    @our_user = User.create(name: @current_user, password: @current_user_password)
end

def take_over
    puts "Before we pick players, lets take over a team."
    sleep(3)
    puts " "
    puts " "
    puts "Select a team from the list below"
    puts " "  
    puts " "
    sleep(3)
    puts Team.all.map(&:teamName)
    puts " "
    puts "Type that team's name:"
    @selected_team = gets.chomp
    puts " "
    puts " "
    sleep(3)
    puts "Nice! The #{@selected_team} could use a new owner!"
    sleep(3)
    @current_users_team = Team.find_by(teamName: @selected_team)
    @current_users_team.update(user_id: @our_user.id)
end

def draft
    puts "Now let's see which players we get!"
    puts " "
    puts " "
    puts "Type -- go"
    @go_prompt = gets.chomp
    sleep(2)
    if @go_prompt == "go"
    @random_picks = Player.all.sample(9)
    @current_users_players = @random_picks.map(&:name)
    puts " "
    puts " "
    puts "Ok here's our roster."
    puts " "
    puts " "

    puts @current_users_players
    puts " "
    puts " "

    puts "It looks like we might be over the cap. Let's check...."
    puts " "
    puts " "
    puts "Calculating.... "
    puts " "
    sleep(5)
    puts " "
    puts " "
    else 
        puts "try typing 'go' again."
    end
end

# def fill_positions
#     puts "Now lets fill empty positions"
#     puts " "
#     puts " "
#     puts " "
#     @current_users_players.all.position
# end

def cuts
    puts "Yes, we're over the cap!"
    puts " "
    puts " "
    sleep(2)
    puts "Unfortunately we need to make a cut. Let's just remove the last player drafted."
    puts " "
    puts " "
    puts "Type 'ok'"
    @cut = gets.chomp
    
    if @cut == "ok"
    
    @cut_player = @current_users_players.pop
    puts " "
    puts " "
    puts "Now we can avoid the luxury tax! Way to make the tough decisions #{@current_user}."
    puts " "
    puts " "
    puts "Here's who we had to cut:" 
    puts @cut_player
    puts " "
    puts " "
    sleep(2)
    puts "Check out your updated roster below:"
    puts " "
    puts " "
    sleep(2)
    puts @current_users_players
    else 
        puts "We have to make a cut to stay under the luxury tax!"
    end
end

def good_luck

    puts "Good Luck this season #{@current_user}!"
    puts " "
    puts " "
    sleep(2)
    puts "Your #{@selected_team} are World Series favorites!"
    puts " "
    puts " "
    sleep(2)
    puts "Don't blow it!"

end



# def make_team_changes
#     puts "Would you like to make changes to your new team?"
# end

# def our_players
#    puts "Let's would you like of your players?"
# end





