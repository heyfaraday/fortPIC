program boris_pusher

  use boris_push, only: boris_push_usual
  use update, only: update_r
  use parameters

  implicit none
  double precision, dimension(1:3) :: r, v, E, B
  double precision :: t

  open(1, file="~/Github/fortPIC/data/out.dat")

  t = t_start_input

  r = R_input
  v = V_input

  E = E_input
  B = B_input

  do while (t <= t_end_input)

    write (1, *) v(1), '  ', v(2), '  ', v(3)

    call boris_push_usual(v, E, B, chargeOverMass_input, c_speed_input, dt_input)
    call update_r(r, v, dt_input)

    t = t + dt_input

  end do

end program boris_pusher
