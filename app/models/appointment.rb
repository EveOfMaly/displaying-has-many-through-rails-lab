class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def convert_date_format
        self.appointment_datetime.strftime('%B %d, %Y') + " at " + self.appointment_datetime.strftime('%H:%M')
    end

end
