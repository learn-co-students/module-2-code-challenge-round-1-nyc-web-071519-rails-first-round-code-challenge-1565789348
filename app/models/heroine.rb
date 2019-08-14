class Heroine < ApplicationRecord
    belongs_to :power


    def power_name 
        self.power.name if self.power
    end

end
