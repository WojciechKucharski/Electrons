function kulki = main(n,s)
N=zeros(n,2); %macierz z umiejscowieniem punkt�w
for i=1:n %p�tla przypisuj�ca losowe miejsca na uk�adzie
    th=4*pi*rand-2*pi;
    r=rand;
    N(i,1:2)=[r*cos(th),r*sin(th)];
end
ang=0:0.01:2*pi; %przygotowanie obram�wki
xp=cos(ang);
yp=sin(ang);

while 1 %p�tla wy�wietlaj�ca
scatter(N(1:n,1),N(1:n,2),'filled'); %wy�wietlenie punkt�w
axis equal;
hold on;
plot(xp,yp); %wy�wietleie bariery
hold off;
N1=move(n,N,s); %przesuwanie kulek
N1=bariera(n,N1); %sprawdzanie czy punkty nie przykroczy�y bariery
if(max(max(abs(N1-N))))<0.0001 %sprawdzenie czy wci�� si� ruszaj�
    break; %przerwanie p�tli w przypadku braku ruchu
end
N=N1;
pause(0.1);
end
end