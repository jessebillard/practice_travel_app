class Trip < ApplicationRecord
    belongs_to :location
    belongs_to :traveler
    accepts_nested_attributes_for :traveler

    def traveler_attributes=(traveler)
       self.traveler = Traveler.find_or_create_by(first_name: traveler["first_name"])
       self.traveler.update(traveler)
    end 

    # def traveler_first_name
    #     self.traveler.first_name
    # end 

    # def traveler_last_name=(traveler_last_name)
    #     self.traveler = Traveler.find_or_create_by(last_name: traveler_last_name)
    #  end 
 
    #  def traveler_last_name
    #      self.traveler.last_name
    #  end 

end
