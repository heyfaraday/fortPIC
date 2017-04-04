module update

  use cross, only: dot_product

  implicit none

  contains

    subroutine update_r(r, v, dt)

      implicit none
      double precision, dimension(1:3), intent(out) :: r
      double precision, dimension(1:3), intent(in) :: v
      double precision, intent(in) :: dt

      r = r + v(1:3) * dt

    end subroutine update_r


    subroutine update_r_gamma(r, v, dt)

      implicit none
      double precision, dimension(1:3), intent(out) :: r
      double precision, dimension(0:3), intent(in) :: v
      double precision, intent(in) :: dt

      r = r + v(1:3) * dt

    end subroutine update_r_gamma


    subroutine update_gamma(u)

      implicit none
      double precision, dimension(0:3), intent(out) :: u

      u(0) = 1.d0 / sqrt(1 - dot_product(u(1:3), u(1:3)))

    end subroutine update_gamma

end module update
