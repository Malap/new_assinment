namespace :seed_users do
  desc "seed users update_user"
  task update_users: :environment do
   @users_first50 = User.first(50)
   @users_last50 = User.last(50)
   @users_first50.each do |user|
   user.active =true
   user.save
  end
  @users_last50.each do |user|
    user.active = false
    user.save
  end
end
end

namespace :seed_users do
  desc "list all the active users"
  task list_active_users: :environment do
    @users = User.all
    @users.each do |user|
      if user.save
        puts user.name
     end
  end
end
end
namespace :seed_users do
desc "list all the active users"
       task list_inactive_users: :environment do
        @users = User.all
        @users.each do |user|
          unless user.active 
            puts user.name
          end   
        end
       end
    end


