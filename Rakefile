task :default => [:testlib]

task :testlib do
  system 'ruby test/raker_test.rb'
end

task :make do
  Raker.new.compile  
end

task :clean do
  Raker.new.clean
end

task :cm => [ :clean, :make ] do 
end

task :test => [ :cm ] do
  Raker.new.test
end