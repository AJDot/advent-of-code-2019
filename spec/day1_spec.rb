require 'minitest/autorun'
require './days/day_1/day1'

describe Day1 do
  describe 'Part 1: when not accounting for the fuel needed for the fuel' do
    describe 'and given a mass of 12' do
      it 'should return the correct fuel needed' do
        app = Day1.new(['12'])
        app.run_part_1
        _(app.fuel_for_modules).must_equal 2
      end
    end

    describe 'and given a mass of 14' do
      it 'should return the correct fuel needed' do
        app = Day1.new(['14'])
        app.run_part_1
        _(app.fuel_for_modules).must_equal 2
      end
    end

    describe 'and given a mass of 1969' do
      it 'should return the correct fuel needed' do
        app = Day1.new(['1969'])
        app.run_part_1
        _(app.fuel_for_modules).must_equal 654
      end
    end

    describe 'and given a mass of 100756' do
      it 'should return the correct fuel needed' do
        app = Day1.new([100756])
        app.run_part_1
        _(app.fuel_for_modules).must_equal 33583
      end
    end
  end

  describe 'Part 2: when accounting for the fuel needed for the fuel' do
    describe 'and given a mass of 14' do
      it 'should return the correct fuel needed' do
        app = Day1.new([14])
        app.run_part_2
        _(app.fuel_for_modules_and_fuel).must_equal 2
      end
    end

    describe 'and given a mass of 1969' do
      it 'should return the correct fuel needed' do
        app = Day1.new([1969])
        app.run_part_2
        _(app.fuel_for_modules_and_fuel).must_equal 966
      end
    end
  end
end


