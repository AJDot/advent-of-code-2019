class Day1
  attr_reader :fuel_needed

  def initialize(file_or_masses)
    @masses = if file_or_masses.is_a?(String)
                File.readlines(file_or_masses, chomp: true)
              elsif file_or_masses.is_a?(Array)
                file_or_masses
              else
                raise ArgumentError.new('argument must be a string or array')
              end.map(&:to_i)
    @fuel_needed = [nil, nil]
  end

  def run_part_1
    @fuel_needed[0] = @masses.reduce(0) { |sum, mass| sum + calculate_fuel(mass) }
  end

  def run_part_2
    @fuel_needed[1] = @masses.reduce(0) do |sum, mass|
      result = calculate_fuel(mass)
      next_result = calculate_fuel(result)
      while next_result > 0
        result += next_result
        next_result = calculate_fuel(next_result)
      end

      sum + result
    end
  end

  def run
    run_part_1
    run_part_2
  end

  def fuel_for_modules
    fuel_needed[0]
  end

  def fuel_for_modules_and_fuel
    fuel_needed[1]
  end

  def result
    <<~OUTPUT
      Fuel needed for modules: #{fuel_for_modules}.
      Fuel needed for modules and fuel: #{fuel_for_modules_and_fuel}.
    OUTPUT
  end

  private

  def calculate_fuel(mass)
    (mass / 3).floor - 2
  end
end
