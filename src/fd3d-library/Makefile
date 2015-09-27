all: gridinfo.o  h5.o  logging.o  mat.o  output.o  solver.o  vec.o

export PETSC_DIR=${HOME}/MyLocal/petsc-3.6.0
export PETSC_ARCH=arch-fd3d

include ${PETSC_DIR}/lib/petsc/conf/variables
include ${PETSC_DIR}/lib/petsc/conf/rules
CLEANFILES = gridinfo.o  h5.o  logging.o  mat.o  output.o  solver.o  vec.o

gridinfo: gridinfo.o
	$(CLINKER) -Wall -g -o $@ gridinfo.o
h5: h5.o
	$(CLINKER) -Wall -g -o $@ h5.o
logging: logging.o
	$(CLINKER) -Wall -g -o $@ logging.o
mat: mat.o
	$(CLINKER) -Wall -g -o $@ mat.o
output: output.o
	$(CLINKER) -Wall -g -o $@ output.o
solver: solver.o
	$(CLINKER) -Wall -g -o $@ solver.o
vec: vec.o
	$(CLINKER) -Wall -g -o $@ vec.o
test: test.o
	$(CLINKER) -Wall -g -o $@ test.o
