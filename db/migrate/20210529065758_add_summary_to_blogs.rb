class AddSummaryToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :summary, :string
  end
end
