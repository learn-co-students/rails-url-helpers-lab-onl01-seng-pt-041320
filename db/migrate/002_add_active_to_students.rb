class AddActiveToStudents < ActiveRecord::Migration
    # syntax is: add_column table_name, parameter name, data type, default value
    def change
        add_column :students, :active, :boolean, :default => false
    end
end