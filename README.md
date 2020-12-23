# Boris-bikes

Makers Academy project to design a system to replicate London’s Boris Bikes

# Technologies used:

- Ruby
- Rspec


# Features
- Users can rent and return bikes
- Users can remove broken bikes





# User stories

```
As a user,
So i can ride a bike,
I want to be able to release from docking station
```
```
As a user,
So that I can use a working bike,
I'd like to see if my bike is working
```
```
As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station
```
```
As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
```
```
As a member of the public,
So that I am not confused and charged unnecessarily,
I'd like docking stations not to release bikes when there are none available.
```
```
As a maintainer of the system,
So that I can control the distribution of bikes,
I'd like docking stations not to accept more bikes than their capacity.
```
```
As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.
```
```
As a system maintainer,
So that busy areas can be served more effectively,
I want to be able to specify a larger capacity when necessary.
```

```
As a maintainer of the system,
So that I can manage broken bikes and not disappoint users,
I'd like the manager of stations to remove broken bikes.
```

# IRB

```
2.7.0 :001 > require './lib/docking_station'
=> true
2.7.0 :002 > station = DockingStation.new
2.7.0 :003 > bike = Bike.new
2.7.0 :004 > station.dock bike
=> [#<Bike:0x00007fb1af021378 @working=true>]
bike.break
2.7.0 :005 > station.dock bike
=> [#<Bike:0x00007fb1af021378 @working=false>, #<Bike:0x00007fb1af021378 @working=false>]
2.7.0 :006 > station.remove_bikes
2.7.0 :007 > station
=> #<DockingStation:0x00007fac7d823c10 @capacity=20, @bikes=[]>
```
