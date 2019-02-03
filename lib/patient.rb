class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

#### class methods #####
def self.all
  @@all
end

##### instance methods ######




def new_appointment(doctor, date)
  Appointment.new(date, self, doctor)
end


def appointments
  Appointment.all.select do |appointment|
    appointment.patient == self
  end
end

def doctors
  doctors_array = []
  self.appointments.map do |appointment|
  doctors_array <<  appointment.doctor
  end
  doctors_array.uniq
end

end
