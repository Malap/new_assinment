namespace :seed_data do
  desc "create seed data users table"
  task users: :environment do
    User.destroy_all
     (0..100).each do|i|
       User.create(name:"hari#{i}",city:"hyderabad{i}",country:"india#{i}",email:"malapati532@gmail.com")
     end
  end

    desc "create seed data books table"
  task books: :environment do
    Book.destroy_all
    byebug
     (102..150).each do|i|
       Book.create(name:"hari#{i}",user_id:i,description:"this is book table#{i}")
      end
  end
    desc "create seed data products table"
  task products: :environment do
    Product.destroy_all
     (102..150).each do|i|
       Product.create(name:"hari#{i}",user_id:i,description:"this is products table#{i}")
      end
   end
end

