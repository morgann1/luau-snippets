local Car = require("Car")

local bmw: Car.Car = Car.new(155.4, "BMW 3 Series")

bmw:Ignite()
bmw:Drive() -- Should print 'vroom vroom'

task.wait(2)
bmw:TurnOff()

bmw:Drive() -- Should error 'car has not started'
