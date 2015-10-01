N=[200,200,75]; %[Nx,Ny,Nz]
bc=[2,2,0]; %[x bc, y bc, z bc]; {PEC,PMC,Bloch}
e_ikL=[1,1,1]; %[exp(-i kx Lx), exp(-i ky Ly), exp(-i kz Lz)]

f=0; %{Etype, Htype, Nft}
ge=0; %{Prim, Dual, Ngt}
lambda=1;
omega=2*pi/lambda; %we take c=1
x0_type=0; %{GEN_ZERO, GEN_RAND, GEN_GIVEN} F0Type
maxit=100000000;
tol=1e-6;

dx=0.002;
dy=0.002;
dz=0.01;
dx_prim=ones(2,N(1))*dx;
dx_prim(2,:)=0;
dy_prim=ones(2,N(2))*dy;
dy_prim(2,:)=0;
dz_prim=ones(2,N(3))*dz;
dz_prim(2,:)=0;
dx_dual=ones(2,N(1))*dx;
dx_dual(2,:)=0;
dy_dual=ones(2,N(2))*dy;
dy_dual(2,:)=0;
dz_dual=ones(2,N(3))*dz;
dz_dual(2,:)=0;

Npml=[0,0,25];
%construct scpml arrays
sx_prim=ones(2,N(1));
sx_prim(2,:)=0;
sy_prim=ones(2,N(2));
sy_prim(2,:)=0;
sz_prim=ones(2,N(3));
sz_prim(2,:)=0;




%construct eps, mu, srcJ, srcM
