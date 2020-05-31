# frozen_string_literal: true

module DetranFaker
  # Module that contains any classes to generate data
  # related to licensing issues
  module Habilitacao
    @state_initials = %w[AM AC AL AP AM BA CE DF
                         ES GO MA MT MS MG PA PB PR PE PI
                         RJ RN RS RO RR SC SP SE TO]

    class << self
      def random_single_digit
        Random.rand(0..9).to_s
      end

      def random_non_zero_digit
        Random.rand(1..9).to_s
      end

      def random_state_initials
        @state_initials[Random.rand(0..(@state_initials.size - 1))]
      end
    end

    # Module responsible for generating fake information
    # that simulates a national driver's license.
    class CNH
      class << self
        def numero_registro_nacional
          cnh_number = Habilitacao.random_non_zero_digit
          10.times do
            cnh_number = cnh_number.dup.concat Habilitacao.random_single_digit
          end

          cnh_number
        end

        def numero_espelho
          numero_espelho = Habilitacao.random_non_zero_digit
          9.times do
            numero_espelho =
              numero_espelho.dup.concat Habilitacao.random_single_digit
          end

          numero_espelho
        end

        def numero_formulario_renach
          renach = Habilitacao.random_state_initials
          9.times do
            renach = renach.dup.concat Habilitacao.random_single_digit
          end

          renach
        end
      end
    end
  end
end
