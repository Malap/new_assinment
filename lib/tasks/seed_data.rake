namespace :seed_data do
  desc "create seed data in laptops tables"
  task laptops: :environment do
  	(1..10).each do |i|
      Laptop.create(model:"lenevo#{i}",ram:"2mb#{i}",processor:"intel core#{i}")	
  end
 end
end
 namespace :seed_data do
  desc "create seed data in hostels tables"
  (1..10).each do |i|
  task hostels: :environment do
      Hostel.create(name:"venkat#{i}",room:"201#{i}",address:"kphp core#{i}")
  end
 end
end



 