require 'pry'

class Patient

attr_reader :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_appointment(doctor, date)
  Appointment.new(date, self, doctor)
end

def appointments
  Appointment.all.select do |appoint|
    appoint.patient == self
  end
end

def doctors
docs = []
  Appointment.all.select do |appoint|
    if appoint.patient == self
      docs << appoint.doctor
    end
  end
  docs
end






end
