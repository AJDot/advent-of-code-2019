require 'minitest/autorun'
require './days/day_2/day2'

describe Day2 do
  describe 'Part 1:' do
    describe 'and given input of 1,0,0,0,99' do
      it 'should return the correct answer' do
        app = Day2.new('1,0,0,0,99')
        app.run_part_1
        _(app.result_part_1).must_equal 2
      end

      it 'should return the correct answer' do
        app = Day2.new('2,3,0,3,99')
        app.run_part_1
        _(app.result_part_1).must_equal 2
      end

      it 'should return the correct answer' do
        app = Day2.new('2,4,4,5,99,0')
        app.run_part_1
        _(app.result_part_1).must_equal 2
      end

      it 'should return the correct answer' do
        app = Day2.new('1,1,1,4,99,5,6,0,99')
        app.run_part_1
        _(app.result_part_1).must_equal 30
      end
    end
  end
  describe 'Part 2:' do
    describe 'and given input of 1,0,0,0,99' do
      it 'should return the correct answer' do
        app = Day2.new('1,0,0,0,99')
        app.run_part_2(2)
        _(app.result_part_2).must_equal 100 * 0 + 0
      end

      it 'should return the correct answer' do
        app = Day2.new('2,3,0,3,99')
        app.run_part_2(2)
        _(app.result_part_2).must_equal 100 * 3 + 0
      end

      it 'should return the correct answer' do
        app = Day2.new('2,4,4,5,99,0')
        app.run_part_2(2)
        _(app.result_part_2).must_equal 100 * 4 + 4
      end

      it 'should return the correct answer' do
        app = Day2.new('1,1,1,4,99,5,6,0,99')
        app.run_part_2(30)
        _(app.result_part_2).must_equal 100 * 1 + 1
      end
    end
  end
end


