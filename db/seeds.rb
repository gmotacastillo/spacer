# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require "date"

Invoice.destroy_all
User.destroy_all
Client.destroy_all
Garage.destroy_all
ParkingSpace.destroy_all
InvoiceSpace.destroy_all


puts "Creating users..."
user1 = User.create(email:"info1@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "Stefan", last_name: "Alexandru", company: "Auchan", vat_number: "12345", address: "rue des brucs 15", country: "spain", phone_number: "695489859")
user2 = User.create(email:"info@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "Robert", last_name: "Muller", company: "Hornbach", vat_number: "34567", address: "rue de la foret, 3", country: "luxembourg", phone_number: "691345")
user3 = User.create(email:"info3@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "Mathis", last_name: "Krier", company: "Condis", vat_number: "5678", address: "rue des miguels, 3", country: "romania", phone_number: "691115147")
user4 = User.create(email:"info4@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "Gerard", last_name: "Mota", company: "BlueSpot", vat_number: "76543", address: "rue des petasses 15", country: "portugal", phone_number: "4564455")
user5 = User.create(email:"info5@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "John", last_name: "Doe", company: "Ruetz", vat_number: "345679", address: "rue des conasses, 55", country: "denmark", phone_number: "422422")

puts "Users created"
puts "Creating garages..."

garage1 = Garage.create(name: "Oldtown Garage", location: "New York", price: 10, average_size: 12, description: "in very good shape", capacity:5, user_id:1 )
garage2 = Garage.create(name: "Exclusiv Garage", location: "Boston", price: 15, average_size: 13, description: "good shape", capacity:30, user_id: 2 )
garage3 = Garage.create(name: "Rusty Garage", location: "Detroit", price: 13, average_size: 13, description: "bad condition", capacity:25, user_id: 3)
garage4 = Garage.create(name: "Skyscrapper Garage", location: "Chicago", price: 14, average_size: 12, description: "good condition", capacity:33, user_id: 4)
garage5 = Garage.create(name: "Village Garage", location: "LA", price: 11, average_size: 11, description: "very good!!!!", capacity:7, user_id: 5)
garage6 = Garage.create(name: "Old Garage", location: "Las Vegas", price: 25, average_size: 15, description: "very good!", capacity:15, user_id: 3)
garage7 = Garage.create(name: "Garage", location: "NY", price: 22, average_size: 16, description: "very good!", capacity:15, user_id: 3)
garage8 = Garage.create(name: "GarageNew", location: "LA", price: 25, average_size: 18, description: "very good!", capacity:17, user_id: 3)

puts "Garages created"
puts "Creating parking spaces..."

parkingspace1 = ParkingSpace.create(custom_size: 12, custom_price: 120, title: "babygarage", garage_id: 1)
parkingspace2 = ParkingSpace.create(custom_size: 13, custom_price: 110, title: "exclusive garage", garage_id: 2)
parkingspace3 = ParkingSpace.create(custom_size: 7, custom_price: 10, title: "bikegarage", garage_id: 3)
parkingspace4 = ParkingSpace.create(custom_size: 9, custom_price: 75, title: "motobike", garage_id: 4)
parkingspace5 = ParkingSpace.create(custom_size: 8, custom_price: 80, title: "yacht", garage_id: 5)
parkingspace6 = ParkingSpace.create(custom_size: 9, custom_price: 90, title: "BigSpace", garage_id: 6)
parkingspace7 = ParkingSpace.create(custom_size: 10, custom_price: 90, title: "SmallOne", garage_id: 6)
parkingspace8 = ParkingSpace.create(custom_size: 12, custom_price: 80, title: "FancyOne", garage_id: 6)
parkingspace9 = ParkingSpace.create(custom_size: 10, custom_price: 77, title: "NewONe", garage_id: 6)
parkingspace10 = ParkingSpace.create(custom_size: 7, custom_price: 79, title: "OldOne", garage_id: 6)


puts "parking spaces created"

puts "Creatings clients.."

client1 = Client.create(first_name: "Bob", last_name: "Schmit", phone_number: "691115147" , email: "bob.schmit@gmail.com", company: "nordica", user_id: 1)
client2 = Client.create(first_name: "Daniel", last_name: "Biren", phone_number: "6912345147" , email: "daniel.biren@gmail.com", company: "scarpa", user_id: 2)
client3 = Client.create(first_name: "Joe", last_name: "Koster", phone_number: "69387363" , email: "joekoster@gmail.com", company: "atomic", user_id: 3)
client4 = Client.create(first_name: "Luc", last_name: "Welter", phone_number: "6453345" , email: "luc.welter@gmail.com", company: "k2", user_id: 4 )
client5 = Client.create(first_name: "Robert", last_name: "Müller", phone_number: "1000000" , email: "roby.muller@ping.com", company: "WDC", user_id: 5)
client6 = Client.create(first_name: "Tom", last_name: "Frankly", phone_number: "456760" , email: "codeworks@ping.com", company: "Codeworks", user_id: 3)
client7 = Client.create(first_name: "Peter", last_name: "Pan", phone_number: "674335", email: "ironhack@info.com", company: "Ironhack", user_id: 3)
client8 = Client.create(first_name: "Patito", last_name: "Hover", phone_number: "156744" , email: "lewagonn@info.com", company: "Lewagon", user_id: 3)
client9 = Client.create(first_name: "Gerard", last_name: "Doe", phone_number: "464567" , email: "robert@ping.com", company: "Codewars", user_id: 3)

puts "Clients created"

puts "Creatings invoices.."
invoice1= Invoice.create(start_date: "01/01/2021", end_date: "01/01/2023",price: 10,payment_confirmed: 1, client_id: 1)
invoice2= Invoice.create(start_date: "01/03/2021", end_date: "01/05/2024",price: 11,payment_confirmed: 0, client_id: 2)
invoice3= Invoice.create(start_date: "03/02/2022", end_date: "01/12/2022",price: 12,payment_confirmed: 1, client_id: 3)
invoice4= Invoice.create(start_date: "09/07/2022", end_date: "01/03/2025",price: 12,payment_confirmed: 1, client_id: 4)
invoice5= Invoice.create(start_date: "01/03/2022", end_date: "01/05/2027",price: 60,payment_confirmed: 1, client_id: 5)
invoice6= Invoice.create(start_date: "02/06/2022", end_date: "01/05/2027",price: 70,payment_confirmed: 1, client_id: 9)
invoice7= Invoice.create(start_date: "07/05/2023", end_date: "08/06/2026",price: 65,payment_confirmed: 1, client_id: 8)
invoice8= Invoice.create(start_date: "09/06/2022", end_date: "08/07/2026",price: 89,payment_confirmed: 1, client_id: 7)
invoice9= Invoice.create(start_date: "09/03/2022", end_date: "08/06/2029",price: 90,payment_confirmed: 1, client_id: 6)

invoice10= Invoice.create(start_date: "15/03/2022", end_date: "08/06/2027",price: 72,payment_confirmed: 1, client_id: 3)
invoice11= Invoice.create(start_date: "17/06/2022", end_date: "08/06/2026",price: 80,payment_confirmed: 1, client_id: 3)
invoice12= Invoice.create(start_date: "16/05/2024", end_date: "13/07/2029",price: 90,payment_confirmed: 1, client_id: 3)

puts "Invoices created"


puts "Creating invoice space.."
invoice_space1 = InvoiceSpace.create(parking_space_id: 1, invoice_id: 1)
invoice_space2 = InvoiceSpace.create(parking_space_id: 2, invoice_id: 3)
invoice_space3 = InvoiceSpace.create(parking_space_id: 3, invoice_id: 2)
invoice_space4 = InvoiceSpace.create(parking_space_id: 4, invoice_id: 4)
invoice_space5 = InvoiceSpace.create(parking_space_id: 5, invoice_id: 5)
invoice_space6 = InvoiceSpace.create(parking_space_id: 9, invoice_id: 9)
invoice_space7 = InvoiceSpace.create(parking_space_id: 8, invoice_id: 8)
invoice_space8 = InvoiceSpace.create(parking_space_id: 7, invoice_id: 7)
invoice_space9 = InvoiceSpace.create(parking_space_id: 6, invoice_id: 6)

invoice_space10 = InvoiceSpace.create(parking_space_id: 6, invoice_id: 10)
invoice_space11 = InvoiceSpace.create(parking_space_id: 6, invoice_id: 11)
invoice_space12 = InvoiceSpace.create(parking_space_id: 6, invoice_id: 12)

puts "Invoice_spaces created"
