class Heroine < ApplicationRecord
    belongs_to :power

    validates :super_name, uniqueness: true

    def superpower
        power = Power.all.find do |power|
            power.id == self.power_id
        end
        power.name
    end
end
