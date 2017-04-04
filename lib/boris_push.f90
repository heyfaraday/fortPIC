module boris_push

  use cross, only: dot_product, cross_product

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

end module boris_push
