class EnablePostgisAndVector < ActiveRecord::Migration[8.0]
  def change
    enable_extension "plpgsql"
    enable_extension "postgis"
    enable_extension "vector"
  end
end
