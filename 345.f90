program deritativ
DIMENSION X(1000),Y(1000),D(1000),P(1000),Z(3),R(1000)
Write (*,*) 'Chislo tochek=3'
a=0
b=5
HF=(b-a)/1000
HL=(b-a)/3
do i=1,1000
  x(i)=a+(i-1)*HF
  Y(i)=FUN(x(i))
end do
  OPEN(10,FILE='31.dat')
  D(1)=1
  do i=2,999
    D(i)=(Y(i+1)-Y(i-1))/(2*HF)
  end do
  D(1000)=5*FUN(5.)
  do i=2,999
    R(i)=(D(i+1)-D(i-1))/(2*HF)
  end do
  do i=2,999
    write(10,*) x(i),R(i)
  end do
  close (10)
  open (20,FILE='32.dat')
  do k=2,999
  P(k)=(Y(k-1)-2*Y(k)+Y(k+1))/(HL)**2
  end do
  do k=2,999
  write (20,*) X(k),P(k)
  end do
  close(20)
end program

function fun(x)
fun=exp(x)
return
end
