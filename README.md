## Execution
 1. Modify `planetary.f95` lines A-Z to reflect whatever initial conditions you want.
 2. Open Unix/Linux terminal and `cd` to the driectory which includes the files.
 3. Run the `makefile` by typying `make`.
 4. Execute the created `3plan` file by running `./3plan` in the terminal.
 
The execution can probably also be done in Windows. I believe that you have to manually run the GFortran files in the order which appears in the `makefile` line 1.

## Warnings
- Please see the wiki home page for $\LaTeX$ write up of the problem.
- See the wiki plots page for a few plots with different initial conditions.
- In my code the number 1 refers to the Earth, and number 2 refers to the Sun. This is exactly the opposite of the Wiki page where the index 1 refers to the Sun.
