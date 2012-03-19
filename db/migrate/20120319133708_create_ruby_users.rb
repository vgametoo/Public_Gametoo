class CreateRubyUsers < ActiveRecord::Migration
  def change
    create_table :ruby_users do |t|
      t.string :Login
      t.string :Email
      t.string :ForceId

      t.timestamps
    end
  end
end
