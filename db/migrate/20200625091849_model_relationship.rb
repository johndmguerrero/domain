class ModelRelationship < ActiveRecord::Migration[5.2]
  def change
    add_reference :domains, :registrant, index: true
  end
end
