
OBJS1 = numtype.o planetary.o rk4step.o

PROG1 = 3plan

F95 = gfortran

F95FLAGS = -O3 -funroll-loops  -fexternal-blas

#LIBS = -framework Accelerate

LDFLAGS = $(LIBS)

all: $(PROG1)

$(PROG1): $(OBJS1)
	$(F95) $(LDFLAGS) -o $@ $(OBJS1)

clean:
	rm -f $(PROG1) *.{o,mod} fort.*

.SUFFIXES: $(SUFFIXES) .f95

.f95.o:
	$(F95) $(F95FLAGS) -c $<
