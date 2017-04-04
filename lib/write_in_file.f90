module write_in_file

  implicit none

  contains

    subroutine write_iteration(un, t, r, v)

      implicit none
      integer, intent(in) :: un
      double precision, intent(in) :: t
      double precision, dimension(1:3), intent(in) :: r, v

      write(unit=un, fmt="(F)", advance='no') t
      write(unit=un, fmt="(A)", advance='no') ','
      write(unit=un, fmt="(F)", advance='no') r(1)
      write(unit=un, fmt="(A)", advance='no') ','
      write(unit=un, fmt="(F)", advance='no') r(2)
      write(unit=un, fmt="(A)", advance='no') ','
      write(unit=un, fmt="(F)", advance='no') r(3)
      write(unit=un, fmt="(A)", advance='no') ','
      write(unit=un, fmt="(F)", advance='no') v(1)
      write(unit=un, fmt="(A)", advance='no') ','
      write(unit=un, fmt="(F)", advance='no') v(2)
      write(unit=un, fmt="(A)", advance='no') ','
      write(unit=un, fmt="(F)", advance='no') v(3)
      write(unit=un, fmt="(A)", advance='no') NEW_LINE('F')

    end subroutine write_iteration

end module write_in_file
