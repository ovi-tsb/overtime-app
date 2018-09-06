class AddPostHourRequestToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :daily_hours, :decimal
  end
end
