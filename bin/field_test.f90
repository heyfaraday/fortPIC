program field_test

    use field, only: E_field, B_field
    use parameters

    implicit none

    double precision, dimension(3) :: r
    double precision :: t

    write(*, *)  E_field(t,r)
    write(*, *)  R_input

end program field_test
