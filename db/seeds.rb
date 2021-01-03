# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Agent.destroy_all
Seller.destroy_all
Propertyshowing.destroy_all


a1= Agent.create(name: "Thomas Potter", telephone: "9546788899", work_address: "5861 Crest Lane", email_address: "www.acerealty.com", years_of_experience: "5")
a2= Agent.create(name: "Susan Lansky", telephone: "9546788603", work_address: "3945 Sun Drive", email_address: "www.number1realty.com", years_of_experience: "10")
a3= Agent.create(name: "Christopher Jacobs", telephone: "7867800999", work_address: "9370 Hill Crest Street",email_address: "www.besthomes.com", years_of_experience: "15")
a4= Agent.create(name: "Ryan Seaborn", telephone: "7864861012", work_address: "Buttercup Freeway", email_address: "www.luxuaryrealty.com", years_of_experience: "20")

# t.string "name"
# t.string "telephone"
# t.string "email_address"
# t.string "occupation"

s1= Seller.create(name: "Steven Smith", telephone: "9030383733", email_address: "Steven.Smith@gmail.com", occupation: "Doctor")
s2= Seller.create(name: "Rachel Roy", telephone: "9340389833", email_address: "Rachel.Roy@gmail.com", occupation: "Lawyer")
s3= Seller.create(name: "Candy Appleton", telephone: "7860389890", email_address: "Candy.Appleton@gmail.com", occupation: "Nurse")
s4= Seller.create(name: "George Thompson", telephone: "3219908876", email_address: "George.Thompson@gmail.com", occupation: "Engineer")


# t.string "address"
# t.string "date"
# t.string "time"
# t.string "description"
# t.string "size"
# t.string "price"
# t.integer "agent_id"
# t.integer "seller_id"

Propertyshowing.create(address:"6444 Mimosa Ln Dallas, TX 75230", date:"01-05-21", time: "3pm", description: "5/5", size:"5897 sqft", price: "1895000", agent_id: a4.id, seller_id: s2.id)
Propertyshowing.create(address:"4640 N Lindhurst Ave Dallas, TX 75229", date:"01-07-21", time: "1pm", description: "5/8", size:"10204 sqft", price: "7250000", agent_id: a1.id, seller_id: s4.id)
Propertyshowing.create(address:"6419 Lakehurst Ave Dallas, TX 75230", date:"01-09-21", time: "12pm", description: "5/5", size:"6744 sqft", price: "2195000", agent_id: a2.id, seller_id: s3.id)
Propertyshowing.create(address:"5627 Vanderbilt Ave Dallas, TX 75206", date:"01-10-21", time: "3pm", description: "4/4", size:"3764 sqft", price: "1195000", agent_id: a3.id, seller_id: s2.id)
Propertyshowing.create(address:"17108 Club Hill Dr Dallas, TX 75248", date:"01-11-21", time: "4pm", description: "5/6", size:"4708 sqft", price: "1195000", agent_id: a4.id, seller_id: s1.id)
Propertyshowing.create(address:"4656 Meadowood Rd Dallas, TX 75220", date:"01-12-21", time: "1pm", description: "4/7", size:"13220 sqft", price: "6295000", agent_id: a1.id, seller_id: s1.id)
Propertyshowing.create(address:"10455 Strait Ln Dallas, TX 75229", date:"01-16-21", time: "3pm", description: "5/5", size:"9160 sqft", price: "7495000", agent_id: a1.id, seller_id: s2.id)
Propertyshowing.create(address:"6920 Vassar Ave Dallas, TX 75205", date:"01-24-21", time: "2pm", description: "6/10", size:"14,181 sqft", price: "16500000", agent_id: a3.id, seller_id: s4.id)