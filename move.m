function W = move(n,N,B)
Ntmp=N;
B=B/(10*n^2); %odpowiednie zmniejszenie si³y odpychania
for i=1:n
    for j=1:n
        if j ~= i
            Vector=N(i,1:2)-N(j,1:2);
            Ntmp(i,1:2)=Ntmp(i,1:2)+Vector*B/(norm(Vector)^3); %obliczanie wektorów przesuniêcia
        end
    end
end
W=Ntmp;
end