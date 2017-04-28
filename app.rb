require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/class1')
require('./lib/class1')
require('pry')

get('/') do
  erb(:index)
end

get('/first_form') do
  @contacts = Contact.all()
  erb(:contacts)
end

post('/first_form') do
  @first_name = params.fetch('first-name')
  @last_name = params.fetch('last-name')
  @job = params.fetch('job')
  @company = params.fetch('company')
  @contact = Contact.new({:first_name=> @first_name, :last_name=>@last_name, :job_title=>@job, :company=>@company})
  @contact.save()
  @contacts = Contact.all()
  erb(:success)
end
