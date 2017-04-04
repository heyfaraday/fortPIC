module stacks

  use cross, only: dot_product

  implicit none

  contains

    subroutine gamma_velocity_check(v, c_speed)

      implicit none
      double precision, dimension(1:3), intent(in) :: v
      double precision, intent(in) :: c_speed

      if ( dot_product(v,v) > c_speed * c_speed) then
        write(unit=*, fmt=*) 'ERROR, v > c'
      end if

    end subroutine gamma_velocity_check

end module stacks
