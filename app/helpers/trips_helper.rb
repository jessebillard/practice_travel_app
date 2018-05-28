module TripsHelper
    def date(trip_date)
        trip_date.strftime("%A, %B, %d")
    end

    def time(trip_time)
        trip_time.strftime("at %I:%M")
    end
end
