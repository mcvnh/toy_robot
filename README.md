# Toy Robot

The toy robot is a simulation of a robot that moves on a 5x5 square tabletop. There are no other obstructions on the table surface. The robot is free to roam around the surface of the table. Any movement that would result in the robot falling from the table is prevented, however further valid movement commands are still allowed.

```
PLACE X, Y, F
MOVE
LEFT
RIGHT
REPORT
```


1. PLACE will put the toy robot on the table in position X, Y and facing NORTH, SOUTH, EAST, or WEST
2. The origin 0, 0 is the SOUTHWEST most corner
3. All commands are ignored until a valid PLACE is made
4. MOVE will move the toy robot one unit forward in the direction it is currently facing.
5. LEFT and RIGHT rotates the robot 90 degrees in the specified direction without changing the position of the robot.
6. REPORT announces the X, Y, and F of the toy robot.

The file is assumed to have ASCII encoding. It is assumed that the PLACE command has only one space, that is PLACE 1, 2, NORTH is an invalid command, All commands must be in uppercase, all lower and mixed case commands will be ignored.
