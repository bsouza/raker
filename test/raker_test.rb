require 'minitest/autorun'
require_relative '../lib/raker'

def prepare_to_clear
  system "mkdir #{RAKER_PATH}" if !Dir.exist?(RAKER_PATH)
  system "touch #{RAKER_PATH}/test" if Dir.entries(RAKER_PATH) == [ '..', '.' ]
end

describe Raker do  

  APP_PATH = "#{Dir.pwd}/test/sample"
  RAKER_PATH = "#{APP_PATH}/raker"

  def file_exist?(filename)
    File.exist?("#{RAKER_PATH}/#{filename}").must_equal true
  end

  def dir_exist?(dirname)
    Dir.exist?("raker/#{dirname}").must_equal true
  end

  describe 'on compile' do    
    it 'should create make files' do
      Raker.new(APP_PATH, false).compile
      
      dir_exist? 'CMakeFiles'
      ['CMakeCache.txt', 'cmake_install.cmake', 'Makefile', 'test'].each { |file| file_exist? file }
    end
  end

  describe 'on clear' do    
    describe 'when raker dir exist' do
      it 'should remove raker dir' do
        prepare_to_clear
        Raker.new(APP_PATH).clear
        Dir.exist?(RAKER_PATH).must_equal false
      end
    end
  end

end