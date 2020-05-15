# frozen_string_literal: true

class CreateUsernotes < ActiveRecord::Migration[5.2]
  def change
    create_table :usernotes do |t|
      t.string :title
      t.string :contents
      t.string :tag

      t.timestamps
    end
  end
end
