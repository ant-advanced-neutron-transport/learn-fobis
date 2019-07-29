module hello_mod

  implicit none
contains

  subroutine hello
    print*, 'hello from hello module'
  end subroutine hello

end module hello_mod
