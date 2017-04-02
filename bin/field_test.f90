program field_test

    use field, only: E, B
    use parameters

    implicit none

    double precision, dimension(3) :: r
    double precision :: t

    write(*, *)  E(t, r)
    write(*, *)  X_input

end program