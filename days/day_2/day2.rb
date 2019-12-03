class Day2
  def initialize(ints_string)
    @ints = if ints_string.is_a?(String)
              ints_string.split(',').map(&:to_i)
            else
              raise ArgumentError.new('argument must be a string')
            end
    @results = [nil, nil]
  end

  def run_part_1(noun = nil, verb = nil)
    result = @ints.clone
    result[1] = noun if noun.is_a?(Integer)
    result[2] = verb if verb.is_a?(Integer)
    pointer = 0
    size = result.size
    until pointer > size
      opcode, pos_1, pos_2, location = result[pointer..pointer + 3]
      case opcode
      when 1
        val_1 = result[pos_1]
        val_2 = result[pos_2]
        result[location] = val_1 + val_2
      when 2
        val_1 = result[pos_1]
        val_2 = result[pos_2]
        result[location] = val_1 * val_2
      when 99
        break
      else
        raise ArgumentError.new("invalid opcode #{opcode}")
      end
      pointer += 4
    end
    @results[0] = result.first
  end

  def run_part_2(output)
    if run_part_1 == output
      @results[1] = 100 * @ints[1] + @ints[2]
    else
      noun, verb = 0, 0
      until run_part_1(noun, verb) == output || noun > 99
        if verb == 99
          verb = 0
          noun += 1
        else
          verb += 1
        end
      end
      @results[1] = 100 * noun + verb if noun <= 99
    end
  end

  def result_part_1
    @results[0]
  end

  def result_part_2
    @results[1]
  end

  def result
    <<~OUTPUT
      Outputs Part 1: #{result_part_1}.
      Outputs Part 2: #{result_part_2}.
    OUTPUT
  end
end
