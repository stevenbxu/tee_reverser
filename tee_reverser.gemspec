Gem::Specification.new do |s|
  s.name        = 'tee_reverser'
  s.version     = '0.1.2'
  s.date        = '2013-12-09'
  s.summary     = "Choosing a recipe, made...simpler?"
  s.description = "Determines optimal recipe given pantry contents. Powered by Yummly."
  s.authors     = ["Steven Xu"]
  s.email       = 'steven.b.xu@gmail.com'
  s.files       = ["lib/tee_reverser.rb", "lib/tee_reverser/execute.rb", "lib/tee_reverser/pantry.rb", "lib/tee_reverser/recipe_list.rb", "lib/tee_reverser/reverser.rb", "lib/tee_reverser/version.rb", "test", "doc"]
  s.requirements  << 'Yummly, CSV'
  s.homepage    = 'https://github.com/stevenbxu/tee_reverser'
  s.license     = 'The MIT License (MIT)'
  s.test_files  = Dir.glob('test')
end