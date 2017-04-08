module parameters

  implicit none

  double precision :: dt_input = 0.1d0
  double precision :: t_start_input = 0.d0
  double precision :: t_end_input = 5.d0
  double precision :: chargeOverMass_input = 0.01
  double precision :: c_speed_input = 1.d0

  double precision, dimension(1:3) :: B_input = (/0.d0, 0.d0, 0.d0/)
  double precision, dimension(1:3) :: E_input = (/0.d0, 0.d0, 0.d0/)
  double precision, dimension(1:3) :: R_input = (/0.d0, 0.d0, 0.d0/)
  double precision, dimension(1:3) :: V_input = (/0.1d0, 0.d0, 0.d0/)

  contains

end module parameters
