figure(1)
mu = [1 0.951 1.07 0.932 1.005 0.738 0.145];
sigma = [ 1 1.319 1.780 3.712 9.057 41.931 208.991];
plot(1:7,mu,'k-');
hold on
plot(1:7,sigma,'k--')
hold off
set(gca,'XTickLabel',{'0', '0.05','0.1','0.2','0.3','0.5','1.0'});
xlabel('\alpha');
ylabel('eref(\theta)');
legend('\theta = \mu', '\theta = \lambda',2)


figure(2)
hold on
IFm = inline('(1+a)^(3/2) * (x-m) * exp(-a/2 * (x-m)^2)'); % IF(x,mu)
x = 0:0.1:5;
IF = zeros(size(x));

a = 0;
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
legend('\alpha = 0 (MLE)',...
    ...'\alpha = 0.05',
    '\alpha = 0.1',...
    ...'\alpha = 0.2',
    '\alpha = 0.3',...
    ...'\alpha = 0.5',
    '\alpha = 1', 2)
xlabel('x')



figure(3)
hold on
IFl = inline('(1+a)^(2) * (-l + (1+a) * x)*exp(-a*x/l)'); % IF(x,lambda)
x = 0:0.1:10;
IF = zeros(size(x));
a = 0;
m = 1;
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