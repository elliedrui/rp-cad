require './config/environment.rb'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
use AdminLevelsController
use GunsController
use AddressesController
use VehiclesController
use AgenciesController
use LeosController
use PersonasController
use MembersController
