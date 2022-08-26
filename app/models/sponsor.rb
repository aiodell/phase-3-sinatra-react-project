class Sponsor < ActiveRecord::Base
    has_many :foxes

    def fox_sponsored_names
        self.foxes.pluck( :name )
    end
    
end