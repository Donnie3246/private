clear
width=20;   Phase=pi/2*2;
length=width;
I_sin=zeros(width,length);
lamda=fix(width/5);
tx=1:width;
y=(sin(2*pi/lamda*tx+Phase)+1)/2;
for i=1:width
    I_sin(:,i)=y;
end
figure(1)
imshow(I_sin')
I_sin

%%
figure(2)
N=80;
M=[N,1];
delt=10;
r=normrnd(0,delt,M);
P_phase=rand(M)*2*pi;
X_p=r.*sin(P_phase);Y_p=r.*cos(P_phase);
plot(X_p,Y_p,'bo')

hold on
tt=0:0.01:2*pi;
plot(delt*sin(tt)/1,delt*cos(tt)/1)
axis([-10,10,-10,10]*2)
axis equal
hold off