function W=bariera(n,N)
for i=1:n
    Tmp=norm(N(i,1:2));
    if Tmp>1 %sprawdzenie czy punkt nie jest poza ko³em
        N(i,1:2)=N(i,1:2)/norm(N(i,1:2)); %korekta po³o¿enia punktu
    end
    
end
W=N;
end