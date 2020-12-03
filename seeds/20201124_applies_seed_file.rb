Sequel.seed() do
  def run
    dataset = DB[:applies]
    dataset.insert( job_id: 1, geek_id: 1, read: true, invited: true )
    dataset.insert( job_id: 1, geek_id: 2, read: false, invited: false)
    dataset.insert( job_id: 5, geek_id: 5, read: true, invited: false)
    dataset.insert( job_id: 6, geek_id: 8, read: false, invited: false)
  end
end
