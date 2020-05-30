# frozen_string_literal: true

my_dir = __dir__

Dir.glob(File.join(my_dir, 'detran_faker', '/**/*.rb')).sort.each do |file|
  require file
end

# Top level module
module DetranFaker
end
