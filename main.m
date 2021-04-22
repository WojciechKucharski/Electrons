function kulki = main(n,s)
N=zeros(n,2); %macierz z umiejscowieniem punktów
for i=1:n %pętla przypisująca losowe miejsca na układzie
    th=2*pi*rand;
    r=rand;
    N(i,1:2)=[r*cos(th),r*sin(th)];
end
ang=0:0.01:2*pi; %przygotowanie obramówki
xp=cos(ang);
yp=sin(ang);

while 1 %pętla wyświetlająca
scatter(N(1:n,1),N(1:n,2),'filled'); %wyświetlenie punktów
axis equal;
hold on;
plot(xp,yp); %wyświetleie bariery
hold off;
N1=move(n,N,s); %przesuwanie kulek
N1=bariera(n,N1); %sprawdzanie czy punkty nie przykroczyły bariery
if(max(max(abs(N1-N))))<0.0001 %sprawdzenie czy wciąż się ruszają
    break; %przerwanie pętli w przypadku braku ruchu
end
N=N1;
pause(0.1);
end
end
