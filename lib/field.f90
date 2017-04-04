module field

  implicit none

  contains

    function E_field(t, r)

      implicit none
      double precision, dimension(1:3) :: E_field
      double precision, intent(in) :: t
      double precision, dimension(1:3), intent(in) :: r

      E_field = (/0.d0, 0.d0, 0.d0/)

    end function E_field


    function B_field(t, r)

      implicit none
      double precision, dimension(1:3) :: B_field
      double precision, intent(in) :: t
      double precision, dimension(1:3), intent(in) :: r

      B_field = (/1.d0, 0.d0, 0.d0/)

    end function B_field

end module field
