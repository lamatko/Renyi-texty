figure(1)
%mu = [1 1.289 1.396 1.440 1.556 1.718 1.643];
sigma = [ 1 358 371 351 376 337 352];
%plot(1:7,mu,'k-');

plot(1:7,sigma,'k-')

set(gca,'XTickLabel',{'0', '0.05','0.1','0.2','0.3','0.5','1.0'});
xlabel('\alpha');
ylabel('eref(\theta)');
legend('\theta = \lambda',4)



%((1+a)^(2+a/2) * (-1+2* (x-m)^2)* (exp(-(x-m)^2) *(x-m))^a)/((1+2* a)* (x-m)* gamma[a/2])

figure(2)
hold on
IFm = inline(' ((1+a)^(2+a/2) * (-1+2* (x-m)^2)* (exp(-(x-m)^2) *(x-m))^a)/((1+2* a)* (x-m)* gamma(a/2))'); % IF(x,mu)
x = 0:0.1:5;
IF = zeros(size(x));

a = 0.005;
m = 0;
for k=1:length(x)
    IF(k) = IFm(a,m,x(k));
end
plot(x,IF,'k')
% a = 0.05;
% for k=1:length(x)
%     IF(k) = IFm(a,m,x(k));
% end
% plot(x,IF,'k--')
a = 0.1;
for k=1:length(x)
    IF(k) = IFm(a,m,x(k));
end
plot(x,IF,'k--')
% a = 0.2;
% for k=1:length(x)
%     IF(k) = IFm(a,m,x(k));
% end
% plot(x,IF,'k:')
a = 0.3;
for k=1:length(x)
    IF(k) = IFm(a,m,x(k));
end
plot(x,IF,'k:')%,'LineWidth',2)
% a = 0.5;
% for k=1:length(x)
%     IF(k) = IFm(a,m,x(k));
% end
% plot(x,IF,'k--','LineWidth',2)
a = 1;
for k=1:length(x)
    IF(k) = IFm(a,m,x(k));
end
plot(x,IF,'k-.')%,'LineWidth',2)
hold off
legend('\alpha = 0.005',...
    ...'\alpha = 0.05',
    '\alpha = 0.1',...
    ...'\alpha = 0.2',
    '\alpha = 0.3',...
    ...'\alpha = 0.5',
    '\alpha = 1', 4)
xlabel('x')

%((1 + a)^(2 + a/2)*(a + 2*(1 + a)*(-1 + x^2/l^2))* ((e^(-(x^2/l^2))* x)/l^2)^a* l^( 1 + a))/(4 *gamma(2 + a/2))

figure(3)
hold on
IFl = inline('((1 + a)^(2 + a/2)*(a + 2*(1 + a)*(-1 + x^2/m^2))* ((exp(-x^2/m^2)* x)/m^2)^a* m^( 1 + a))/(4 *gamma(2 + a/2))'); % IF(x,lambda)
x = 0:0.1:4;
IF = zeros(size(x));
a = 0;
m = 1; % v tmto pripade spis l.
for k=1:length(x)
    IF(k) = IFl(a,m,x(k));
end
plot(x,IF,'k')
% a = 0.05;
% for k=1:length(x)
%     IF(k) = IFl(a,m,x(k));
% end
% plot(x,IF,'k--')
a = 0.1;
for k=1:length(x)
    IF(k) = IFl(a,m,x(k));
end
plot(x,IF,'k--')
% a = 0.2;
% for k=1:length(x)
%     IF(k) = IFl(a,m,x(k));
% end
% plot(x,IF,'k:')
a = 0.3;
for k=1:length(x)
    IF(k) = IFl(a,m,x(k));
end
plot(x,IF,'k:')%,'LineWidth',2)
% a = 0.5;
% for k=1:length(x)
%     IF(k) = IFl(a,m,x(k));
% end
% plot(x,IF,'k--','LineWidth',2)
a = 1;
for k=1:length(x)
    IF(k) = IFl(a,m,x(k));
end
plot(x,IF,'k-.')%,'LineWidth',2)
hold off
legend('\alpha = 0 (MLE)',...
    ...'\alpha = 0.05',
    '\alpha = 0.1',...
    ...'\alpha = 0.2',
    '\alpha = 0.3',...
    ...'\alpha = 0.5',
   '\alpha = 1', 2);
xlabel('x')


%(m^2 *(exp(-x^m)* x^(-1+m))^a *(1+a)^(2+a-a/m) *(m-m^2 *(-1+x^m) *(1+a)* log(x)+a *log(1+a)-a *psi(0,1+a-a/m)))/(gamma(1+a-a/m)* (m* (m+log(1+a)* (-2* m+2* a+(m+(-1+m)* a) *log(1+a)))-2 *m* (-m+a+(m+(-1+m) *a) *log(1+a))* psi(0,1+a-a/m)+m* (m+(-1+m) *a)* psi(0,1+a-a/m)^2+(m^2+(-1+m) *m* a+a^2)* psi(1,1+a-a/m)))


figure(4)
hold on
IFl = inline('(m^2 *(exp(-x^m)* x^(-1+m))^a *(1+a)^(2+a-a/m) *(m-m^2 *(-1+x^m) *(1+a)* log(x)+a *log(1+a)-a *psi(0,1+a-a/m)))/(gamma(1+a-a/m)* (m* (m+log(1+a)* (-2* m+2* a+(m+(-1+m)* a) *log(1+a)))-2 *m* (-m+a+(m+(-1+m) *a) *log(1+a))* psi(0,1+a-a/m)+m* (m+(-1+m) *a)* psi(0,1+a-a/m)^2+(m^2+(-1+m) *m* a+a^2)* psi(1,1+a-a/m)))'); % IF(x,k)
x = 0:0.1:2.5;
IF = zeros(size(x));
a = 0;
m = 2; % v tmto pripade spis l.
for k=1:length(x)
    IF(k) = IFl(a,m,x(k));
end
plot(x,IF,'k')
% a = 0.05;
% for k=1:length(x)
%     IF(k) = IFl(a,m,x(k));
% end
% plot(x,IF,'k--')
a = 0.1;
for k=1:length(x)
    IF(k) = IFl(a,m,x(k));
end
plot(x,IF,'k--')
% a = 0.2;
% for k=1:length(x)
%     IF(k) = IFl(a,m,x(k));
% end
% plot(x,IF,'k:')
a = 0.3;
for k=1:length(x)
    IF(k) = IFl(a,m,x(k));
end
plot(x,IF,'k:')%,'LineWidth',2)
% a = 0.5;
% for k=1:length(x)
%     IF(k) = IFl(a,m,x(k));
% end
% plot(x,IF,'k--','LineWidth',2)
a = 1;
for k=1:length(x)
    IF(k) = IFl(a,m,x(k));
end
plot(x,IF,'k-.')%,'LineWidth',2)
hold off
legend('\alpha = 0',...
    ...'\alpha = 0.05',
    '\alpha = 0.1',...
    ...'\alpha = 0.2',
    '\alpha = 0.3',...
    ...'\alpha = 0.5',
   '\alpha = 1', 3);
xlabel('x')



