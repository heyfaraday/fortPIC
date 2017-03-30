module print_hi_f90

    use print_hello_f90, only: print_hello

    implicit none
    double precision :: number_1 = 1.d0

    contains
        
        subroutine print_hi(number_2)

            implicit none
            double precision :: number_2
            
            call print_hello(number_2)

        end subroutine print_hi

end module print_hi_f90