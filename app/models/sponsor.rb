class Sponsor < ActiveRecord::Base
    has_many :foxes

    def fox_count
        total = self.foxes.count
        self.update(num_of_foxes: total)
    end

    def fox_sponsored_names
        self.foxes.pluck( :name )
    end

    def fox_images
        self.foxes.pluck( :image )
    end
    
end