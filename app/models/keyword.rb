 class Keyword < ActiveRecord::Base
             validates :keyword, presence: true,
                        length: { maximum: 150 }
          end
