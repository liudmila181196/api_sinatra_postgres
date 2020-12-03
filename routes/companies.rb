namespace '/api/v1' do
  require 'json'
  get '/companies' do
    companies = Company.all
    puts "params = #{params.inspect}"
    puts "companies = #{companies.inspect}"
    return collection_to_api(companies) if params.empty?
    if params['name']
      puts 'name'
      companies_all = Company.by_name(params['name'])
      if params['location']
        puts 'name + location'
        companies = companies_all.by_location(params['location'])
        puts "companies = #{companies.inspect}"
      else
        puts 'name NO location'
        companies = companies_all
      end
    else
      if params['location']
        puts 'location'
        companies = Company.by_location(params['location'])
      end
    end
    collection_to_api(companies)
  end

  get '/company_jobs' do
    Company.company_jobs(params[:name])
    # call_one_method(Company, 'company_jobs', params[:name])
  end

  get '/company/:id' do
    company = Company.where(id: params[:id].to_i)
    company.to_a[0].values.to_json
  end

  post '/companies' do
    company = Company.create(params)
    company.nil? ? [].to_json : company.values.to_json
  end
end
