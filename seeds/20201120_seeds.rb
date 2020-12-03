Sequel.seed() do
  def run
    [:companies, :jobs, :geeks, :applies].each { |model| puts model; DB[model].truncate(:cascade => true, :restart=>true)}
  end
end