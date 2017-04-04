module boris_push

  use cross, only: dot_product, cross_product
  use update, only: update_gamma

  implicit none

  contains

    subroutine boris_push_usual(v, E, B, chargeOverMass, c_speed, dt)

      implicit none
      double precision, dimension(1:3), intent(inout) :: v
      double precision, dimension(1:3), intent(in) :: E, B
      double precision, intent(in) :: chargeOverMass, dt, c_speed

      double precision :: f
      double precision, dimension(1:3) :: v_s, t

      f = (chargeOverMass * dt / 2.d0)
      t = f / c_speed * B

      v = v + f * E
      v_s = v + cross_product(v, t)
      v = v + 2.d0 / (1 + dot_product(t, t)) * cross_product(v_s, t)
      v = v + f * E

    end subroutine boris_push_usual


    subroutine boris_push_gamma(u, E, B, chargeOverMass, c_speed, dt)

      implicit none
      double precision, dimension(0:3), intent(inout) :: u
      double precision, dimension(1:3), intent(in) :: E, B
      double precision, intent(in) :: chargeOverMass, dt, c_speed

      double precision :: f_1, f_2
      double precision, dimension(1:3) :: u_s, t

      call update_gamma(u)

      u(1:3) = u(0) * u(1:3)

      f_1 = (chargeOverMass * dt / 2.d0)


      u(1:3) = u(1:3) + f_1 * E

      f_2 = sqrt(1.d0 + dot_product(u(1:3), u(1:3)))

      t = f_1 / c_speed / f_2 * B

      u_s = u(1:3) + cross_product(u(1:3), t)
      u(1:3) = u(1:3) + 2.d0 / (1 + dot_product(t, t)) * cross_product(u_s, t)
      u(1:3) = u(1:3) + f_1 * E
      u(1:3) = u(1:3) / (1 + dot_product(u(1:3), u(1:3)))
      u(1:3) = u(1:3) / u(0)

    end subroutine boris_push_gamma

end module boris_push
