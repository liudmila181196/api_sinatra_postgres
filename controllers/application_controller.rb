namespace '/api/v1' do
  def call_method(model_name, method, params)
       if params
         model_name.send(method, params)
       else
         puts "Enter Name!"
         [].to_json
       end
  end
end