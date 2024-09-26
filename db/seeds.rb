# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'faker'

Faker::Config.locale ='pt-BR'

 
doctor = Doctor.create!(name: Faker::Name.name)
    

 
patient = Patient.create!(name: Faker::Name.name)

Appointment.create!(doctor: doctor, patient: patient, date: Faker::Date.forward(days: 30))
    end
end



s1 = Supplier.create!(name: Faker::Name.name )

a1 = Account.create!(number: Faker::Number.number(digits: 3), supplier: s1)

AccountHistory.create(date: Date.today, account: a1)

    end
end