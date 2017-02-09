class AddDeviseToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      ## Database authenticatable
      t.string :email,              null: false
      t.string :encrypted_password, null: false

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      add_trackable t

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end

  def self.down
    change_table(:users) do |t|
      ## Database authenticatable
      t.remove :email
      t.remove :encrypted_password

      ## Recoverable
      t.remove :reset_password_token
      t.remove :reset_password_sent_at

      ## Rememberable
      t.remove :remember_created_at

      remove_trackable t

      remove_timestamps t
    end
  end

  private

  ## Trackable
  def add_trackable(t)
    t.integer  :sign_in_count, default: 0, null: false
    t.datetime :current_sign_in_at
    t.datetime :last_sign_in_at
    t.string   :current_sign_in_ip
    t.string   :last_sign_in_ip
  end

  def remove_trackable(t)
    t.remove :sign_in_count
    t.remove :current_sign_in_at
    t.remove :last_sign_in_at
    t.remove :current_sign_in_ip
    t.remove :last_sign_in_ip
  end

  def remove_timestamps(t)
    t.remove :created_at
    t.remove :updated_at
  end
end
