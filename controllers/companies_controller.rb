namespace '/api/v1' do
  get '/company_jobs' do
    call_method(Company, 'company_jobs', params[:co_name])
  end
end