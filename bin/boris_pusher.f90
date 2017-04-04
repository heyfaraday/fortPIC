program boris_pusher

  use boris_push, only: boris_push_usual, boris_push_gamma
  use update, only: update_r, update_gamma
  use stacks, only: gamma_velocity_check
  use write_in_file, only: write_iteration
  use parameters

  implicit none
  double precision, dimension(1:3) :: r, E, B
  double precision, dimension(0:3) :: u
  double precision :: t

  open(1, file="~/Github/fortPIC/data/out.dat")

  t = t_start_input

  r = R_input
  u(1:3) = V_input

  E = E_input
  B = B_input

  do while (t <= t_end_input)

    call write_iteration(1, t, r, u(1:3))
    call boris_push_gamma(u, E, B, chargeOverMass_input, c_speed_input, dt_input)
    call update_r(r, u, dt_input)
    call gamma_velocity_check(u(1:3), c_speed_input)

    t = t + dt_input

  end do

end program boris_pusher
