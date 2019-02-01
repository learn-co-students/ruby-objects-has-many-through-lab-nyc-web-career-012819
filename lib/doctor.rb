require 'pry'

class Doctor

attr_reader :name
 # :appointments, :patient, :date

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(patient, date)
  Appointment.new(date, patient, self)
end

def appointments
  Appointment.all.select do |appoint|
    appoint.doctor == self
  end
end

def patients
  pats = []
  Appointment.all.select do |appoint|
    if appoint.doctor == self
      pats << appoint.patient
    end
  end
  pats
end

# binding.pry




end
