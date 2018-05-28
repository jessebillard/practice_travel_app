module TravelersHelper

    def full_name(traveler)
        "#{traveler.first_name} #{traveler.last_name}"
    end

    

    # def traveler_name_check(traveler)
    #     if traveler.name.empty?
    #         "Edit Profile to Add Name"
    #     else
    #         traveler.name
    #     end
    # end 

    # def traveler_dob_check(traveler)
    #     if traveler.dob.empty?
    #         "Edit Profile to Add D.O.B"
    #     else
    #         traveler.dob
    #     end 
    # end 

    # def traveler_trips_check(traveler)
    #     if traveler.trips.empty?
    #         "You Don't Appear To Have Any Trips. Click Below to Get the Party Started!"
    #     else
            
    #     end
    # end

end
