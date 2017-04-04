module update

  implicit none

  contains

    subroutine update_r(r, v, dt)

      implicit none
      double precision, dimension(3), intent(out) :: r
      double precision, dimension(3), intent(in) :: v
      double precision, intent(in) :: dt

      r = r + v * dt

    end subroutine update_r

end module update
