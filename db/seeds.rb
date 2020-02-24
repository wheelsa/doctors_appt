# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
10.times do
  doctor = Doctor.create(
    name: Faker::FunnyName.four_word_name
  )
  10.times do 
    patient = Patient.create(
      name: Faker::FunnyName.name,
    )
    Appointment.create(
      appointment_date: Faker::Date.in_date_period,
      doctor_id: doctor.id,
      patient_id: patient.id,
    )
  end
end
puts "Data Seeded."