module update

    implicit none

    contains

    subroutine update_x(r, v, dt)

        implicit none
        double precision, dimension(3) :: r, v
        double precision :: dt

        r = r + v * dt
        
    end subroutine update_x

end module update