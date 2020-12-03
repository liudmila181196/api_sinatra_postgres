Sequel.migration do
  change do
    create_table!(:applies, :ignore_index_errors=>true) do
      primary_key :id
      Integer :job_id, :null => false
      Integer :geek_id, :null => false
      TrueClass :read, :default => false
      TrueClass :invited, :default => false

      DateTime :created_at
      DateTime :upated_at
      index :id
    end
  end
end
