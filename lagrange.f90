        program polinom
        Dimension X(1000),Y(1000),Z(1000),F(100)
        n=10
        a=-1.
        b=1.
        HL=(b-a)/n
        HF=(b-a)/1000
            open (10, file='1.dat')
            do i=1,1000
            X(i)=a+(i-1)*HF
            Y(i)=fun(X(i))
            write (10,*) X(i),Y(i)
            end do
            close (10)
               open (20,file='2.dat')
               do i=1,n
               Z(i)=a+(i-1)*HL
               F(i)=fun(Z(i))
               end do
               do k=1,1000
                P=0
                 do i=1,n
                 O=1
                   do j=1,n
                   IF(i.ne.j)then
                   O=O*(X(k)-Z(j))/(Z(i)-Z(j))
                   end if
                   end do
                  P=P+O*F(i)
                 end do
                write (20,*) X(k),P
                end do
                close(20)
        end

                function fun(x)
                  fun=1/(x*x+25)
                  return
                end
                
