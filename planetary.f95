module setup
  use numtype
  implicit none

  integer, parameter :: n_eq = 4
  real(dp), parameter :: g = 6.473e-11_dp, &
    ms = 1.981e+30_dp, me = 6.1e+24_dp, &
    mc = 5.0e+14_dp, R = 1.4972e+8_dp, mu = 3.003e-6_dp
end module setup

program CR3BP
  use setup
  implicit none

  real(dp) :: t, dt, tmax
  real(dp), dimension(n_eq) :: y

  t = 0
  dt = 0.1
  tmax = 320

  y(1:2) =  (/0.9900271_dp, 0._dp/)   ! use any Lagrange point
  y(3:4) = (/0.1_dp, 0._dp/)          ! initial velocity

  do while (t <= tmax)
    write(39,*) y(1), y(2)
    call rk4step(t, dt, y)
  end do
end program CR3BP
