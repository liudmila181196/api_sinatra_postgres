namespace '/api/v1' do
  get '/jobs' do
    jobs = Job.all
    [:place, :name].each do |filter|
      jobs = jobs.send(filter, params[filter]) if params[filter]
    end
    collection_to_api(jobs)
  end
end