class Todo < ActiveRecord::Base
    belongs_to :category
# FULL CRUD
#not sure which methods to use
    def self.by_oldest
        self.all.order(:created_at)
      end

end