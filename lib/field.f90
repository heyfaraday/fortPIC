module field

    implicit none

    contains
    
     function E(t, r)

        implicit none
        double precision, dimension(3) :: E
        double precision :: t
        double precision, dimension(3) :: r

        E = (/1.d0, 0.d0, 0.d0/)
        
    end function E


    function B(t, r)

        implicit none
        double precision, dimension(3) :: B
        double precision :: t
        double precision, dimension(3) :: r

        B = (/0.d0, 0.d0, 0.d0/)
        
    end function B

end module field