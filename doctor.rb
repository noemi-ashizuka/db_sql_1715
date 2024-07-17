require 'sqlite3'
DB = SQLite3::Database.new("data/patients_doctors.sqlite")

class Doctor
  def initialize(attributes = {})
    @id = attributes[:id] || attributes["id"]
    @first_name = attributes[:first_name] || attributes["first_name"]
    @last_name = attributes[:last_name] || attributes["last_name"]
    @age = attributes[:age] || attributes["age"]
    @specialty = attributes[:specialty] || attributes["specialty"]
  end

  def self.all # class method
    DB.results_as_hash = true
    # returns an array on instances
    results = DB.execute('SELECT * FROM doctors;')
    results.map do |doctor_hash|
      Doctor.new(doctor_hash)
    end
  end
end

# @doctor_repository.all
# @doctor_instance.all instance method NOT GOOD
p Doctor.all
