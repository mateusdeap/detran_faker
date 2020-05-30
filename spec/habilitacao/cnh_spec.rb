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

    it 'cannot have leading zeroes' do
      failed = false
      100.times do
        cnh_number = DetranFaker::Habilitacao::CNH.numero_registro_nacional
        failed = true if cnh_number.start_with? '0'
        break if failed
      end

      expect(failed).to be false
    end
  end

  describe '#numero_espelho' do
    it 'has 10 digits in total' do
      numero_espelho =
        DetranFaker::Habilitacao::CNH.numero_espelho

      expect(numero_espelho.length).to eq(10)
    end

    it 'should be different every time' do
      first_number = DetranFaker::Habilitacao::CNH.numero_espelho
      second_number = DetranFaker::Habilitacao::CNH.numero_espelho

      expect(first_number).not_to eq(second_number)
    end

    it 'cannot have leading zeroes' do
      failed = false
      100.times do
        numero_espelho = DetranFaker::Habilitacao::CNH.numero_espelho
        failed = true if numero_espelho.start_with? '0'
        break if failed
      end

      expect(failed).to be false
    end
  end

  describe '#numero_formulario_renach' do
    it 'has 11 characters' do
      numero_formulario_renach =
        DetranFaker::Habilitacao::CNH.numero_formulario_renach

      expect(numero_formulario_renach.length).to eq(11)
    end

    it 'should be different every time' do
      first_number = DetranFaker::Habilitacao::CNH.numero_formulario_renach
      second_number = DetranFaker::Habilitacao::CNH.numero_formulario_renach

      expect(first_number).not_to eq(second_number)
    end

    it 'cannot have leading zeroes' do
      failed = false
      100.times do
        renach = DetranFaker::Habilitacao::CNH.numero_formulario_renach
        failed = true if renach.start_with? '0'
        break if failed
      end

      expect(failed).to be false
    end

    it 'has the first two characters as the state abbreviation' do
<<<<<<< HEAD
      allowed_initials = %w[AM AC AL AP AM BA CE DF ES GO MA MT MS MG PA PB PR
                            PE PI RJ RN RS RO RR SC SP SE TO]
=======
      allowed_initials = %w[AM AC AL AP AM BA CE DF
                            ES GO MA MT MS MG PA PB PR PE PI
                            RJ RN RS RO RR SC SP SE TO]
>>>>>>> Implements CNH#numero_formulario_renach with tests
      renach = DetranFaker::Habilitacao::CNH.numero_formulario_renach
      starts_correctly = allowed_initials.include? renach[0..1]
      expect(starts_correctly).to be true
    end
<<<<<<< HEAD
  end

  describe '#categoria' do
    it 'should be one letter' do
      category = DetranFaker::Habilitacao::CNH.categoria

      expect(category.length).to be 1
    end

    it 'must be a valid license category' do
      possible_categories = %w[A B C D E ACC]
      category = DetranFaker::Habilitacao::CNH.categoria
      is_valid = possible_categories.include? category

      expect(is_valid).to be true
    end

    it 'should generate all possible values' do
      possible_categories = %w[A B C D E ACC]
      categories_array = []
      100.times do
        categories_array.push DetranFaker::Habilitacao::CNH.categoria
      end
      all_are_valid = possible_categories.all? do |category|
        categories_array.include? category
      end

      expect(all_are_valid).to be true
    end
=======
>>>>>>> Implements CNH#numero_formulario_renach with tests
  end
end
