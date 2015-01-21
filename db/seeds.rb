# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.delete_all
# . . .
Product.create(:title => 'Programming Ruby 1.9',
:description =>
%{<p>
Ruby is the fastest growing and most exciting dynamic language
out there. If you need to get working programs delivered fast,
you should add Ruby to your toolbox.
</p>},
:image_url => '/images/rails.jpg',
:price => 49.50)

User.create(
    :name => "admin",
    :password => "12345678"
)
# Order.delete_all
# Order.create  name: "indore", address: "indore", email: "indore@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "ram", address: "indore", email: "ram@gmail.com", pay_type: "Purchase order",  total_amount: 49.5
# Order.create  name: "goa", address: "goa", email: "sandeepchourey@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "sandeepchourey", address: "indore", email: "sandeepchourey@gmail.com", pay_type: "Check",  total_amount: 49.5
# Order.create  name: "sandy", address: "delhi", email: "sandy@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "sandeepchourey", address: "goa", email: "raju@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "raju", address: "indore", email: "raju@gmail.com", pay_type: "Purchase order",  total_amount: 49.5
# Order.create  name: "raju", address: "goa", email: "sandeepchourey@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "sandeepchourey", address: "delhi", email: "raju@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "raju", address: "delhi", email: "sandeepchourey@gmail.com", pay_type: "Check",  total_amount: 49.5
# Order.create  name: "goa", address: "indore", email: "sandeepchourey@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "sandeepchourey", address: "indore", email: "sandeepchourey@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "shyam", address: "delhi", email: "shyam@gmail.com", pay_type: "Credit card",  total_amount: 49.5
# Order.create  name: "shyam", address: "goa", email: "ram@gmail.com", pay_type: "Check", total_amount: 49.5
