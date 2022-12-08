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
#user1 = User.create(email:"info1@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "Stefan", last_name: "Alexandru", company: "Auchan", vat_number: "12345", address: "rue des brucs 15", country: "spain", phone_number: "695489859")
#user2 = User.create(email:"info@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "Robert", last_name: "Muller", company: "Hornbach", vat_number: "34567", address: "rue de la foret, 3", country: "luxembourg", phone_number: "691345")
user3 = User.create(email:"mathis@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "Mathis", last_name: "Krier", company: "Condis", vat_number: "567228", address: "rue des miguels, 3", country: "Luxembourg", phone_number: "691115147")
#user4 = User.create(email:"info4@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "Gerard", last_name: "Mota", company: "BlueSpot", vat_number: "76543", address: "rue des petasses 15", country: "portugal", phone_number: "4564455")
#user5 = User.create(email:"info5@info.com", encrypted_password: "rkgjbsdalkfbsafkab", password: "123456", first_name: "John", last_name: "Doe", company: "Ruetz", vat_number: "345679", address: "rue des conasses, 55", country: "denmark", phone_number: "422422")

puts "Users created"
puts "Creating garages..."

garage1 = Garage.create(name: "Barceloneta", location: "Barceloneta", price: 10, average_size: 10, description: "Modern Garage", capacity:5, user_id:user3.id )
garage2 = Garage.create(name: "Diagonal", location: "Diagonal", price: 10, average_size: 10, description: "Older Garage ", capacity:17, user_id: user3.id )
#garage3 = Garage.create(name: "Placa Catalunya", location: "Placa Catalunya", price: 17, average_size: 10, description: "Big Garage", capacity:27, user_id:user3.id)
#garage4 = Garage.create(name: "Rambla", location: "Rambla", price: 18, average_size: 12, description: "Heated Garage", capacity:22, user_id:user3.id)
#garage5 = Garage.create(name: "Village Garage", location: "LA", price: 11, average_size: 11, description: "very good!!!!", capacity:7, user_id: 5)
#garage6 = Garage.create(name: "Old Garage", location: "Las Vegas", price: 25, average_size: 15, description: "very good!", capacity:15, user_id: 3)
#garage7 = Garage.create(name: "Garage", location: "NY", price: 22, average_size: 16, description: "very good!", capacity:15, user_id: 3)
#garage8 = Garage.create(name: "GarageNew", location: "LA", price: 25, average_size: 18, description: "very good!", capacity:17, user_id: 3)

puts "Garages created"
puts "Creating parking spaces..."

parkingspace1 = ParkingSpace.create(custom_size: 12, custom_price: 10, title: "Exclusiv", garage_id: garage1)
parkingspace2 = ParkingSpace.create(custom_size: 13, custom_price: 10, title: "Exclusiv", garage_id: garage1)
parkingspace3 = ParkingSpace.create(custom_size: 10, custom_price: 7, title: "Exclusiv", garage_id: garage1)
parkingspace4 = ParkingSpace.create(custom_size: 9, custom_price: 13, title: "Exclusiv", garage_id: garage1)
parkingspace5 = ParkingSpace.create(custom_size: 15, custom_price: 12, title: "Exclusiv", garage_id: garage1)
parkingspace6 = ParkingSpace.create(custom_size: 10, custom_price: 9, title: "Exclusiv", garage_id: garage1)
parkingspace7 = ParkingSpace.create(custom_size: 11, custom_price: 15, title: "Exclusiv", garage_id: garage1)
parkingspace8 = ParkingSpace.create(custom_size: 12, custom_price: 14, title: "Exclusiv", garage_id: garage1)
parkingspace9 = ParkingSpace.create(custom_size: 10, custom_price: 12, title: "Exclusiv", garage_id: garage1)
parkingspace10 = ParkingSpace.create(custom_size: 9, custom_price: 14, title: "Exclusiv", garage_id: garage1)
parkingspace11 = ParkingSpace.create(custom_size: 9, custom_price: 10, title: "Exclusiv", garage_id: garage1)
parkingspace12 = ParkingSpace.create(custom_size: 12, custom_price: 13, title: "Exclusiv", garage_id: garage1)
parkingspace13 = ParkingSpace.create(custom_size: 13, custom_price: 12, title: "Exclusiv", garage_id: garage1)
parkingspace14 = ParkingSpace.create(custom_size: 13, custom_price: 14, title: "Exclusiv", garage_id: garage1)
parkingspace15 = ParkingSpace.create(custom_size: 13, custom_price: 9, title: "Exclusiv", garage_id: garage1)
parkingspace16 = ParkingSpace.create(custom_size: 13, custom_price: 10, title: "Exclusiv", garage_id: garage1)
parkingspace17 = ParkingSpace.create(custom_size: 13, custom_price: 8, title: "Exclusiv", garage_id: garage1)
parkingspace18 = ParkingSpace.create(custom_size: 13, custom_price: 9, title: "Exclusiv", garage_id: garage1)
parkingspace19 = ParkingSpace.create(custom_size: 13, custom_price: 12, title: "Exclusiv", garage_id: garage2)
parkingspace20 = ParkingSpace.create(custom_size: 13, custom_price: 10, title: "Exclusiv", garage_id: garage2)
parkingspace21 = ParkingSpace.create(custom_size: 13, custom_price: 18, title: "Exclusiv", garage_id: garage2)
parkingspace22 = ParkingSpace.create(custom_size: 13, custom_price: 7, title: "Exclusiv", garage_id: garage2)
parkingspace23 = ParkingSpace.create(custom_size: 13, custom_price: 16, title: "Exclusiv", garage_id: garage2)
parkingspace24 = ParkingSpace.create(custom_size: 13, custom_price: 7, title: "Exclusiv", garage_id: garage2)
parkingspace25 = ParkingSpace.create(custom_size: 13, custom_price: 9, title: "Exclusiv", garage_id: garage2)
parkingspace26 = ParkingSpace.create(custom_size: 13, custom_price: 8, title: "Exclusiv", garage_id: garage2)
parkingspace27 = ParkingSpace.create(custom_size: 13, custom_price: 11, title: "Exclusiv", garage_id: garage2)
parkingspace28 = ParkingSpace.create(custom_size: 13, custom_price: 12, title: "Exclusiv", garage_id: garage2)
parkingspace29 = ParkingSpace.create(custom_size: 13, custom_price: 17, title: "Exclusiv", garage_id: garage2)
parkingspace30 = ParkingSpace.create(custom_size: 13, custom_price: 19, title: "Exclusiv", garage_id: garage2)
parkingspace31 = ParkingSpace.create(custom_size: 13, custom_price: 18, title: "Exclusiv", garage_id: garage2)
parkingspace32 = ParkingSpace.create(custom_size: 13, custom_price: 14, title: "Exclusiv", garage_id: garage2)
parkingspace33 = ParkingSpace.create(custom_size: 13, custom_price: 12, title: "Exclusiv", garage_id: garage2)
parkingspace34 = ParkingSpace.create(custom_size: 13, custom_price: 10, title: "Exclusiv", garage_id: garage2)
parkingspace35 = ParkingSpace.create(custom_size: 13, custom_price: 8, title: "Exclusiv", garage_id: garage2)
parkingspace36 = ParkingSpace.create(custom_size: 13, custom_price: 9, title: "Exclusiv", garage_id: garage2)
parkingspace37 = ParkingSpace.create(custom_size: 13, custom_price: 10, title: "Exclusiv", garage_id: garage2)
parkingspace38 = ParkingSpace.create(custom_size: 13, custom_price: 12, title: "Exclusiv", garage_id: garage2)


puts "parking spaces created"

puts "Creatings clients.."

client1 = Client.create(first_name: "Bob", last_name: "Schmit", phone_number: "691115147" , email: "bob.schmit@gmail.com", company: "Nordica", user_id:user3.id, created_at:Date.yesterday)
client2 = Client.create(first_name: "Daniel", last_name: "Biren", phone_number: "6912345147" , email: "daniel.biren@gmail.com", company: "Scarpa", user_id:user3.id, created_at:(Date.tomorrow + 1))
client3 = Client.create(first_name: "Joe", last_name: "Koster", phone_number: "69387363" , email: "joekoster@gmail.com", company: "Condis", user_id:user3.id, created_at:(Date.tomorrow + 1))
client4 = Client.create(first_name: "Luc", last_name: "Welter", phone_number: "6453345" , email: "luc.welter@gmail.com", company: "Vapiano", user_id:user3.id, created_at:(Date.tomorrow))
client5 = Client.create(first_name: "Robi", last_name: "Muller", phone_number: "34787875" , email: "roby.muller@gmail.com", company: "Lufthansa", user_id:user3.id, created_at:Date.yesterday)
client6 = Client.create(first_name: "Tom", last_name: "Frankly", phone_number: "456760" , email: "codeworks@ping.com", company: "Codeworks", user_id:user3.id, created_at:Date.today)
client7 = Client.create(first_name: "Peter", last_name: "Hansen", phone_number: "67433335", email: "Peter@info.com", company: "Helly Hansen", user_id:user3.id, created_at:Date.today)
client8 = Client.create(first_name: "Ivan", last_name: "Labalestra", phone_number: "156744" , email: "Barilla@info.com", company: "Barilla", user_id:user3.id, created_at:(Date.tomorrow + 1))
client9 = Client.create(first_name: "Gerard", last_name: "Doe", phone_number: "464567" , email: "robert@ping.com", company: "Carrefour", user_id:user3.id, created_at:Date.today)
client10 = Client.create(first_name: "Max", last_name: "Jaeger", phone_number: "436de4567" , email: "jegenm@gmail.com", company: "Auchan", user_id:user3.id, created_at:Date.today)
client11 = Client.create(first_name: "Gerard", last_name: "Doe", phone_number: "4645sd67" , email: "doe@viva.com", company: "Viva", user_id:user3.id, created_at:Date.today)

puts "Clients created"

puts "Creatings invoices.."
invoice1= Invoice.create(start_date: "01/01/2021", end_date: "01/01/2023",price: 110,payment_confirmed: 1, client_id: client5)
invoice2= Invoice.create(start_date: "01/03/2021", end_date: "01/03/2022",price: 2500,payment_confirmed: 1, client_id: client5)
invoice3= Invoice.create(start_date: "03/02/2020", end_date: "01/12/2023",price: 200,payment_confirmed: 1, client_id: client1)
invoice4= Invoice.create(start_date: "09/07/2022", end_date: "01/03/2025",price: 1000,payment_confirmed: 1, client_id: client4)
invoice5= Invoice.create(start_date: "01/03/2023", end_date: "01/05/2027",price: 2100,payment_confirmed: 1, client_id: client3)
invoice6= Invoice.create(start_date: "02/06/2022", end_date: "01/05/2027",price: 73000,payment_confirmed: 1, client_id: client9)
invoice7= Invoice.create(start_date: "07/05/2020", end_date: "08/06/2022",price: 700,payment_confirmed: 1, client_id: client8)
invoice8= Invoice.create(start_date: "09/06/2022", end_date: "08/07/2024",price: 600,payment_confirmed: 1, client_id: client7)
invoice9= Invoice.create(start_date: "09/03/2022", end_date: "08/06/2023",price: 1500,payment_confirmed: 1, client_id: client6)
invoice10= Invoice.create(start_date: "15/03/2020", end_date: "08/12/2022",price: 72,payment_confirmed: 1, client_id: client2)
invoice11= Invoice.create(start_date: "17/06/2022", end_date: "08/06/2026",price: 80,payment_confirmed: 1, client_id: client3)
invoice12= Invoice.create(start_date: "16/05/2024", end_date: "13/07/2025",price: 900,payment_confirmed: 1, client_id: client3)

puts "Invoices created"


puts "Creating invoice space.."
invoice_space1 = InvoiceSpace.create(parking_space_id: parkingspace17, invoice_id: invoice1)
invoice_space2 = InvoiceSpace.create(parking_space_id: parkingspace20, invoice_id: invoice2)
invoice_space3 = InvoiceSpace.create(parking_space_id: parkingspace3, invoice_id: invoice3)
invoice_space4 = InvoiceSpace.create(parking_space_id: parkingspace4, invoice_id: invoice4)
invoice_space5 = InvoiceSpace.create(parking_space_id: parkingspace5, invoice_id: invoice5)
invoice_space6 = InvoiceSpace.create(parking_space_id: parkingspace9, invoice_id: invoice9)
invoice_space7 = InvoiceSpace.create(parking_space_id: parkingspace8, invoice_id: invoice8)
invoice_space8 = InvoiceSpace.create(parking_space_id: parkingspace7, invoice_id: invoice7)
invoice_space9 = InvoiceSpace.create(parking_space_id: parkingspace6, invoice_id: invoice6)
invoice_space10 = InvoiceSpace.create(parking_space_id: parkingspace25, invoice_id: invoice10)
invoice_space11 = InvoiceSpace.create(parking_space_id: parkingspace27, invoice_id: invoice11)
invoice_space12 = InvoiceSpace.create(parking_space_id: parkingspace29, invoice_id: invoice12)

puts "Invoice_spaces created"
