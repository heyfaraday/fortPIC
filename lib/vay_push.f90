module vay_push

  implicit none

  contains

    subroutine vay_push_usual(u, E, B, chargeOverMass, c_speed, dt)

      implicit none
      double precision, dimension(0:3), intent(inout) :: u
      double precision, dimension(1:3), intent(in) :: E, B
      double precision, intent(in) :: chargeOverMass, c_speed, dt

      double precision :: f
      double precision, dimension(1:3) :: v_s, t

    end subroutine vay_push_usual

end module vay_push
