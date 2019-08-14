class Heroine < ApplicationRecord
    belongs_to :power

    validates :super_name, presence: true, uniqueness: {message: "Name Already Taken!"}
end
