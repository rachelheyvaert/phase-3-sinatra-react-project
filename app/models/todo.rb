class Todo < ActiveRecord::Base
    belongs_to :category
# FULL CRUD
    def self.by_oldest
        self.all.order(:created_at)
      end

end