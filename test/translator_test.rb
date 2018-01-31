require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/translator.rb'

class TranslatorTest < MiniTest::Test

  # def test_class_exist
  #   translator = Translator.new
  #   assert_instance_of Translator, translator
  # end

  def test_translator_works
    translator = Translator.new
    translator.eng_to_morse("hello world")
    # binding.pry
    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse
  end
end
