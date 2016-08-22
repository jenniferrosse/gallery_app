class AddAttachmentThumbnailToGalleries < ActiveRecord::Migration
  def self.up
    change_table :galleries do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :galleries, :thumbnail
  end
end
