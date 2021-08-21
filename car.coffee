# MIT License

# Copyright (c) 2020 Jean-Jacques François Reibel

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
class Car
  constructor: (@wheels, @doors, @cylinders) ->

  addWheels: (wheelsToAdd) ->
    @wheels = @wheels +  wheelsToAdd
  addDoors: (doorsToAdd) ->
    @doors = @doors +  doorsToAdd
  addCylinders: (cylindersToAdd) ->
    @cylinders = @cylinders +  cylindersToAdd
  deleteWheels: (wheelsToRemove) ->
    @wheels = @wheels -  wheelsToRemove
  deleteDoors: (doorsToRemove) ->
    @doors = @doors -  doorsToRemove
  deleteCylinders: (cylindersToRemove) ->
    @cylinders = @cylinders -  cylindersToRemove
  displayProperties: ->
    console.log "Wheel check: " + subaru.wheels
    console.log "Door check: " + subaru.doors
    console.log "Cylinder check: " + subaru.cylinders + "\n"

# Creating car
console.log "\nCreating car."
subaru = new Car 4, 4, 4
subaru.displayProperties()
# Adding wheel directly to car object
console.log "Adding wheel directly to car object."
subaru.wheels = 5
subaru.displayProperties()
# Deleting wheel using object method
console.log "Deleting wheel using object method."
subaru.deleteWheels(1)
subaru.displayProperties()

