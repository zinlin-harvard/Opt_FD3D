all: fd3dexec

export PETSC_DIR=/home/zlin/MyLocal/petsc-3.6.0
export PETSC_ARCH=arch-fd3d
export FD3D_PATH=../fd3d-library

include ${PETSC_DIR}/lib/petsc/conf/variables
include ${PETSC_DIR}/lib/petsc/conf/rules
CLEANFILES = fd3d.o

fd3dexec: fd3d.o
	$(CLINKER) fd3d.o -o fd3dexec ${FD3D_PATH}/libFD3D.a $(PETSC_LIB)

fd3d: fd3d.o
	$(CLINKER) -Wall -g -o $@ fd3d.o
