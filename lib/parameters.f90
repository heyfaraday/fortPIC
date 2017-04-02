module parameters

    implicit none
    
    double precision :: dt_input = 0.1d0
    double precision :: t_start_input = 0.d0
    double precision :: t_end_input = 1000.d0
    double precision :: chargeOverMass_input = 0.01
    double precision :: c_speed = 1.d0

    double precision, dimension(0:3) :: B_input = (/0.d0, 0.d0, 0.d0, 0.d0/)
    double precision, dimension(0:3) :: E_input = (/0.d0, 0.d0, 0.d0, 0.d0/)
    double precision, dimension(0:3) :: X_input = (/0.d0, 0.d0, 0.d0, 0.d0/)
    double precision, dimension(0:3) :: V_input = (/0.d0, 0.d0, 0.d0, 0.d0/)

    contains

end module parameters