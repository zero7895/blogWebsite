class CreatePaperclipImages < ActiveRecord::Migration
  def change
    create_table :paperclip_images do |t|

      t.timestamps
    end

    add_attachment :paperclip_images, :picture
  end
end
