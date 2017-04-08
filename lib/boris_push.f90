module boris_push

  use cross, only: dot_product, cross_product
  use update, only: update_gamma

  implicit none

  contains

    subroutine boris_push_usual(v, E, B, chargeOverMass, c_speed, dt)

      implicit none
      double precision, dimension(1:3), intent(inout) :: v
      double precision, dimension(1:3), intent(in) :: E, B
      double precision, intent(in) :: chargeOverMass, c_speed, dt

      double precision :: f
      double precision, dimension(1:3) :: v_s, t

      f = (chargeOverMass * dt / 2.d0)
      t = f / c_speed * B

      v = v + f * E
      v_s = v + cross_product(v, t)
      v = v + 2.d0 / (1.d0 + dot_product(t, t)) * cross_product(v_s, t)
      v = v + f * E

    end subroutine boris_push_usual


    subroutine boris_push_gamma(u, E, B, chargeOverMass, c_speed, dt)

      implicit none
      double precision, dimension(0:3), intent(inout) :: u
      double precision, dimension(1:3), intent(in) :: E, B
      double precision, intent(in) :: chargeOverMass, c_speed, dt

      double precision :: f, g
      double precision, dimension(1:3) :: v_s, t, v

      f = (chargeOverMass * dt / 2.d0)

      v = v + f * E

      g = sqrt(1.d0 + dot_product(v,v))

      t = f / c_speed / g * B

      v_s = v + cross_product(v, t)
      v = v + 2.d0 / (1.d0 + dot_product(t, t)) * cross_product(v_s, t)
      v = v + f * E
      u(1:3) = v / (1.d0 + dot_product(v,v))

    end subroutine boris_push_gamma

end module boris_push
