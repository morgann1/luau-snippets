--!strict

type Properties = {
	speed: number,
	model: string,
	_started: boolean,
}

local Car = {}
Car.__index = Car

function Car.new(speed: number, model: string)
	local properties: Properties = {
		Speed = speed,
		Model = model,
		_started = false,
	}
	return setmetatable(properties, Car)
end

export type Car = typeof(Car.new())

function Car.Ignite(self: Car)
	self._started = true
end

function Car.TurnOff(self: Car)
	self._started = false
end

function Car.HasStarted(self: Car): boolean
	return self._started
end

function Car.Drive(self: Car)
	if not self:HasStarted() then
		print("the car is not on")
		return
	end
	print("vroom vroom")
end

return Car
