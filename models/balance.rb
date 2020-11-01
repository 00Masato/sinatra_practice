config = YAML.load_file('./config/database.yml')
ActiveRecord::Base.establish_connection(config['development'])
class Balance < ActiveRecord::Base

end