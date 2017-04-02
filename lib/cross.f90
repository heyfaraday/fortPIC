module cross

    implicit none

    contains
        
        function cross_product(a, b)
            
            implicit none
            double precision, dimension(0:3) :: cross_product
            double precision, dimension(0:3), intent(in) :: a, b

            cross_product(1) = a(2) * b(3) - a(3) * b(2)
            cross_product(2) = a(3) * b(1) - a(1) * b(3)
            cross_product(3) = a(1) * b(2) - a(2) * b(1)
        
        end function cross_product


        function dot_product(a, b)

            implicit none
            double precision :: dot_product
            double precision, dimension(0:3), intent(in) :: a, b

            dot_product = SUM(a(1:3) * b(1:3))
        
        end function dot_product


        function dot_product_gamma(a, b)

            implicit none
            double precision :: dot_product_gamma
            double precision, dimension(0:3), intent(in) :: a, b

            dot_product_gamma = a(0) * b(0) - SUM(a(1:3) * b(1:3))
        
        end function dot_product_gamma

end module cross