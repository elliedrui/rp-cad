require './config/environment.rb'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
use GovsController
use AdminLevelsController
use GunsController
use AddressesController
use VehiclesController
use AgenciesController
use PersonasController
use MembersController
use SessionController
