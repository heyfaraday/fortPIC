module boris_push

    use cross, only: dot_product, cross_product

    implicit none

    contains

    subroutine boris_push_usual(v, E, B, chargeOverMass, dt)

        implicit none
        double precision, dimension(0:3), intent(out) :: v
        double precision, dimension(0:3), intent(in) :: E, B
        double precision, intent(in) :: chargeOverMass, dt


        double precision :: f_1, f_2
        double precision, dimension(0:3) :: v_cross_B

        f_1 = dt * chargeOverMass / 2.d0
        f_2 = (2.d0 * f_1) / (1.d0 + f_1 * f_1 * dot_product(B, B))

        v(1:3) = v(1:3) + f_1 * E(1:3)

        v_cross_B = cross_product(v, B)
        
        
    end subroutine boris_push_usual

end module boris_push