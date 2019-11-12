class AddTagReferenceToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :tag, index: true

  end
end
