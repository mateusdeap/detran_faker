# frozen_string_literal: true

module DetranFaker
  # Module that contains any classes to generate data
  # related to licensing issues
  module Habilitacao
    # Base class for the Habilitacao module
    class Base
      class << self
        def random_single_digit
          Random.rand(0..9).to_s
        end

        def random_non_zero_digit
          Random.rand(1..9).to_s
        end

        def fetch(key:)
          fetched_values = I18n.translate("detran_faker.#{key}")
          fetched_values[Random.rand(0..(fetched_values.size - 1))]
        end
      end
    end

    # Class responsible for generating fake information
    # that simulates a national driver's license.
    class CNH < Base
      class << self
        def numero_registro_nacional
          cnh_number = random_non_zero_digit
          10.times do
            cnh_number = cnh_number.dup.concat random_single_digit
          end

          cnh_number
        end

        def numero_espelho
          numero_espelho = random_non_zero_digit
          9.times do
            numero_espelho =
              numero_espelho.dup.concat random_single_digit
          end

          numero_espelho
        end

        def numero_formulario_renach
          renach = fetch(key: "habilitacao.abreviacoes_estados")
          9.times do
            renach = renach.dup.concat random_single_digit
          end

          renach
        end

        def categoria
          fetch(key: "habilitacao.cnh.categorias")
        end
      end
    end
  end
end
