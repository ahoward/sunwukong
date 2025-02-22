## sunwukong.gemspec
#

Gem::Specification::new do |spec|
  spec.name = "sunwukong"
  spec.version = "0.4.2"
  spec.required_ruby_version = '>= 3.0'
  spec.platform = Gem::Platform::RUBY
  spec.summary = "sunwukong is the ai agenic framework for super monkeys"
  spec.description = "sunwukong is a a library, framework, and set of tools that allow\nnon-technical users to manage and deploy complex ai agenic frameworks\nin seconds for free at best, and cheap at worst."
  spec.license = "LicenseRef-LICENSE.md"

  spec.files =
["LICENSE.md",
 "README.md",
 "Rakefile",
 "SUNWUKONG.md",
 "lib",
 "lib/sunwukong",
 "lib/sunwukong.rb",
 "lib/sunwukong/_lib.rb",
 "lib/sunwukong/options.rb",
 "sunwukong.gemspec",
 "test"]

  spec.executables = []
  
  spec.require_path = "lib"

  

  spec.extensions.push(*[])

  spec.author = "Ara T. Howard"
  spec.email = "ara.t.howard@gmail.com"
  spec.homepage = "https://github.com/ahoward/sunwukong"
end
