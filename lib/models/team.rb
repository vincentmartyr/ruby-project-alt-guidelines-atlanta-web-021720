class Team < ActiveRecord::Base
    belongs_to :user
    has_many :draftPicks
    has_many :players, through: :draftPicks
    

    

end