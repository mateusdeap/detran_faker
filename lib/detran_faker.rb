# frozen_string_literal: true

my_dir = __dir__

require "i18n"

Dir.glob(File.join(my_dir, "detran_faker", "/**/*.rb")).sort.each do |file|
  require file
end

I18n.load_path += Dir[File.join(my_dir, "locales", "/*.yml")]
I18n.default_locale = :pt

# Top level module
module DetranFaker
end
