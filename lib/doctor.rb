class Doctor

  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  ##### class methods #####

  def self.all
    @@all
  end


  ##### instance methods #####


  def new_appointment(patient, date)
    Appointment.new(date, patient,  self)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    patients_array = []
    self.appointments.map do |appointments|
      patients_array << appointments.patient
    end
    patients_array
  end



end
