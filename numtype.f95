module numtype
    integer, parameter :: dp = selected_real_kind(15, 307) 
    !integer, parameter, :: qp = selected_real_kind(33, 4931)
    real(dp), parameter :: pi = 4*atan(1._dp)
    complex(dp), parameter :: iic = (0._dp, 1._dp )
end module numtype
