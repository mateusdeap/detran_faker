# frozen_string_literal: true

require_relative '../spec_helper'

RSpec.describe DetranFaker::Habilitacao::CNH do
  describe '#numero_registro_nacional' do
    it 'has 11 digits in total' do
      numero_registro_nacional =
        DetranFaker::Habilitacao::CNH.numero_registro_nacional

      expect(numero_registro_nacional.length).to eq(11)
    end

    it 'should be different every time' do
      first_number = DetranFaker::Habilitacao::CNH.numero_registro_nacional
      second_number = DetranFaker::Habilitacao::CNH.numero_registro_nacional

      expect(first_number).not_to eq(second_number)
    end

    it 'cannot have leading zeroes'
  end

  describe '#numero_espelho' do
    it 'has 10 digits in total'
  end

  describe '#numero_formulario_renach' do
    it 'has 11 characters'
    it 'has the first two characters as the state abbreviation'
  end
end