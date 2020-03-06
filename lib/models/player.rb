class Player < ActiveRecord::Base
    has_many :draftPicks
    has_many :teams, through: :draftPicks
    
end