program deritativ
DIMENSION X(1000),Y(1000),D(1000),P(1000),W(3),Z(3)
Write (*,*) 'Chislo tochek=3'
Write(*,*) 'Vvedite interval'
Read (*,*) a,b
HF=(b-a)/1000
HL=(b-a)/3
  OPEN(10,FILE='13.dat')
  do i=1,1000
    X(i)=a+(i-1)*HF
    D(i)=(((X(i)+2*HF)**2-(X(i)+HF)**2)-((X(i)+HF)**2-(X(i))**2))/(HF)**2
    write (10,*) X(i),D(i)
  end do
  close (10)
  open (20,FILE='23.dat')
  do i=1,3
  W(i)=a+(i-1)*HL
  end do
  do k=1,1000
  P(k)=((W(1))**2-2*(W(2))**2+(W(3))**2)/(HL)**2
  write (20,*) X(k),P(k)
  end do
  close(20)
end program
