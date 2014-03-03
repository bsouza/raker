require 'minitest/autorun'
require_relative '../lib/raker'

describe Raker do

  APP_PATH = "test/sample"
  RAKER_PATH = "#{APP_PATH}/raker"
  
  describe 'on clean' do    
    describe 'when raker dir exist' do
      system "mkdir #{RAKER_PATH}"
      system "touch #{RAKER_PATH}/test"

      it 'should remove raker dir' do
        Raker.new(APP_PATH).clean
        Dir.exist?(RAKER_PATH).must_equal false
      end
    end
  end

end