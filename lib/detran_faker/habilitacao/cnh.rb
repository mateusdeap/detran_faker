# frozen_string_literal: true

module DetranFaker
  module Habilitacao
    # Module responsible for generating fake information
    # that simulates a national driver's license.
    class CNH
      class << self
        def numero_registro_nacional
          cnh_number = Random.rand(1..9).to_s
          10.times do
            cnh_number = cnh_number.dup.concat Random.rand(0..9).to_s
          end

          cnh_number
        end

        def numero_espelho
          numero_espelho = Random.rand(1..9).to_s
          9.times do
            numero_espelho = numero_espelho.dup.concat Random.rand(0..9).to_s
          end

          numero_espelho
        end
      end
    end
  end
end
