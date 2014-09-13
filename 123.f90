        program deritativ
        DIMENSION X(1000),Y(1000),D(1000),Z(3),P(1000),W(3)
        Write (*,*) 'Chislo tochek=3'
        Write(*,*) 'Vvedite interval'
        Read (*,*) a,b
        HF=(b-a)/1000
          OPEN(10,FILE='12.dat')
          do i=1,1000
            X(i)=a+(i-1)*HF
            Y(K)=fun(X(K))
            D(i)=(fun(X(i)+HF)-fun(X(i)))/HF
            write (10,*) X(i),D(i)
          end do
          close (10)
          open (20,FILE='22.dat')
          do k=2,999
          P(k)=(Y(K+1)-Y(k-1))/(2*HF)
            write(20,*) X(k),P(k)
            end do
          close(20)
        end program

        function fun(x)
          fun=exp(sin(x))
          return
        end
