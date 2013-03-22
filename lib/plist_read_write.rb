unless defined?(Motion::Project::Config)
  raise "The plist_read_write gem must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'plist_read_write/*.rb')).each do |file|
    app.files.unshift(file)
  end
end