subroutine rk4step ( x, h, y )
    use setup
    implicit none
    real(dp), intent(inout) :: x
    real(dp), intent(in) :: h
    real(dp), intent(inout), dimension(n_eq) :: y
    real(dp), dimension(n_eq) :: k1, k2, k3, k4, dy

    k1 = kv( x, h, y )
    k2 = kv( x+h/2, h, y + k1/2 )
    k3 = kv( x+h/2, h, y + k2/2 )
    k4 = kv( x+h , h,  y + k3 )
    dy = ( k1 + 2*k2 + 2*k3 + k4 ) / 6

    x = x + h
    y = y + dy

  contains
    function kv(t, dt, y ) result(k)
      use setup
      implicit none
      real(dp), intent(in) :: t, dt
      real(dp), intent(in), dimension(n_eq) :: y
      real(dp), dimension(n_eq) :: f, k
      real(dp) :: r1, r2
          !---------------------------------
      r1 = sqrt((y(1)-(1-mu))**2 + y(2)**2)    ! distance vector with Earth
      r2 = sqrt((y(1)+mu)**2 + y(2)**2)        ! distance vector with Sun

      f(1:2) = y(3:4)
      f(3) = -(mu*(y(1)-1+mu))/r1**3 - ((1-mu)*(mu+y(1)))/r2**3 + y(1) + 2*y(4)
      f(4) = - (mu*y(2))/r1**3 - ((1-mu)*y(2))/r2**3 + y(2) - 2*y(3)
          !---------------------------------
      k = dt * f
    end function kv
end subroutine rk4step
