require 'minitest/autorun'
require_relative '../lib/raker'

describe Raker do
  
  describe 'on clean' do    
    describe 'when raker dir exist' do
      system 'mkdir raker'
      system 'touch raker/test'

      it 'should remove raker dir' do
        Raker.new.clean
        Dir.exist?('raker').must_equal false
      end
    end
  end

end