module field

    implicit none

    contains
    
    function E(t, r)

        implicit none
        double precision, dimension(3) :: E
        double precision, intent(in) :: t
        double precision, dimension(3), intent(in) :: r

        E = (/1.d0, 0.d0, 0.d0/)
        
    end function E


    function B(t, r)

        implicit none
        double precision, dimension(3) :: B
        double precision, intent(in) :: t
        double precision, dimension(3), intent(in) :: r

        B = (/0.d0, 0.d0, 0.d0/)

    end function B

end module field