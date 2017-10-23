
class Vehicle
    # Class variables are declared with @@
    @@line_separator = "--------------------"

    # Default constructor
    def initialize
        puts "Class Vehicle initialized"
    end

    # Parameterized constructor
    def initialize(type)
        @type = type
    end

    # Parameterized constructor
    def initialize(type, brand)
        @type = type
        @brand = brand
        @wheels = 3
    end

    # Method definition
    def showSpec
        puts @@line_separator
        puts @brand + " " + @type
        puts "# of wheels : #{@wheels.to_s}"
        puts @@line_separator
    end
end

# Create an instance for Vehicle class
car = Vehicle.new("Car", "Ford")
car.showSpec
