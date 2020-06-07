# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "detran_faker/version"

Gem::Specification.new do |spec|
  spec.name          = "detran_faker"
  spec.version       = DetranFaker::VERSION
  spec.authors       = ["Mateus Pereira"]
  spec.email         = ["mateusdeap@gmail.com"]

  spec.summary       = %(Faker. Só que para as coisas do Código de Trânsito Brasileiro.)
  spec.description   = %(Essa gem visa apenas atender a uma necessidade
    interna dos desenvolvedores do DETRANCE, gerando dados falsos de
    habilitação e veículos, porém que estão conformes às determinações
    do CTB.)
  spec.homepage      = "https://github.com/mateusdeap/detran_faker"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "3.9.0"
  spec.add_development_dependency "rspec_junit_formatter", "0.4.1"

  spec.add_development_dependency 'rspec', '3.9.0'
  spec.add_development_dependency 'rspec_junit_formatter', '0.4.1'
end
