namespace :db do
  namespace :migrate do
    desc "Migrate development & test databases"
    task :all do
      puts "Migrating development database"
      Rake::Task["db:migrate"].invoke
    
      puts "Migrating test database"
      Rake::Task["db:test:clone"].invoke
    end
    
  end  
end
