require 'sinatra'
require 'pg'
# allows us to connect to postgres database 'contacts'
conn = PG::Connection.open(:dbname=> 'contacts')

get '/' do
  # collect all contacts in the database
  res = conn.exec('SELECT * FROM people')
  # format them to be read by other computers
  content_type :json
  res.each_with_index.map{ |row,index| row}.to_json
  # {status:"ok",
  # number_of_results: res.ntuples,
  # values: res.values,
  # fields: res.fields,
  # num_tuples: res.num_tuples,
  # ntuples: res.ntuples
  # }.to_json
end

get '/contacts' do 
  # collect all contacts in the database
  res  = conn.exec('SELECT first_name, last_name FROM people')

  # format them to be read by other computers
  content_type :json

  # go through and make an array of hashes
  res.each_with_index.map{ |x, i| res[i] }.to_json
end

post '/contacts' do 
  # now fetch the record
  res = conn.exec_params('INSERT INTO people (
       first_name, last_name, phone,
       email, company, title
      ) VALUES (
       $1, $2, $3, $4, $5, $6
      ) returning *',
    [
      params[:first_name], params[:last_name], params[:phone], 
      params[:email], params[:company], params[:title]
    ]
  )
  # format them to be read by other computers
  content_type :json
  
  status 201
  res.each_with_index.map{ |x, i| res[i] }.to_json
end


put '/contacts/:id' do 
  res = conn.exec_params(
    "UPDATE people SET #{params[:field]} = $1 WHERE id = $2 returning *", 
    [params[:value], params[:id]]
  )
  # format them to be read by other computers
  content_type :json
  res.each_with_index.map{ |x, i| res[i] }.to_json
end

get '/contacts/:id' do 
  res = conn.exec_params(
    'SELECT * FROM people WHERE id = $1 LIMIT 1', 
    [params[:id]]
  )
  # format them to be read by other computers
  content_type :json
  res.each_with_index.map{ |x, i| res[i] }.to_json
end

delete '/contacts/:id' do 
  res = conn.exec_params(
    'DELETE FROM people WHERE id = $1', 
    [params[:id]]
  )
  # format them to be read by other computers
  content_type :json
  status 204
end

