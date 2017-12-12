%% A nonlinear bit of Christmas cheer
% by Jason Conklin, Nov-Dec 2017

%% set up inputs and outputs

xx = (-1:0.01:1);

% allocate empty vectors

y_a(1,:) = nan(length(xx),1);
y_a(2,:) = nan(length(xx),1);
y_a(3,:) = nan(length(xx),1);
y_a(4,:) = nan(length(xx),1);
y_a(5,:) = nan(length(xx),1);

y_b(1,:) = nan(length(xx),1);
y_b(2,:) = nan(length(xx),1);
y_b(3,:) = nan(length(xx),1);
y_b(4,:) = nan(length(xx),1);
y_b(5,:) = nan(length(xx),1);

%% build some curves
syms u m

f(u,m) = u * (m + (1-m)*u^2);
g(u,m) = finverse(f);

yy0 = xx;

for i = 1:5
    M = (0.2 * i) - 0.1;
    y_a(i,:) = f(xx, M);
    y_b(i,:) = g(xx, M);
end

y_c = - y_a;
y_d = - y_b;

%% setup fill vectors

scale = 0.9;
X = [xx,fliplr(xx)];

Y_ab = [y_a(1,:),fliplr(y_b(1,:))];
Y_cd = [y_c(1,:),fliplr(y_d(1,:))];

%% plotting...
gspec = [52 98 36]./255; % green
rspec = [204 44 27]./255; % red
pspec = [255 252 252]./255; % pink
lspec = [250 255 245]./255; % lime
auspec = [197 164 54]./255; % gold

fig1 = figure('units','normalized','outerposition',[0 0 1 1]);

ax1 = axes('Parent',fig1);
hold(ax1,'on');

pp0_f1 = fill(X,Y_ab,lspec);
rotate(pp0_f1,[0 0 1],45);
pp0_f2 = fill(X,Y_cd,lspec);
rotate(pp0_f2,[0 0 1],45);
pp0 = plot(xx,[y_a; y_b; y_c; y_d],'color',gspec);
rotate(pp0,[0 0 1],45)

pp1_f1 = fill(scale.*X,(scale/phi).*Y_ab,pspec);
pp1_f1.LineStyle = 'none';
pp1_f2 = fill(scale.*X,(scale/phi).*Y_cd,pspec);
pp1_f2.LineStyle = 'none';
pp2 = plot(scale*xx,(scale/phi)*[y_a; y_b; y_c; y_d],'color',rspec);

set(ax1,'DataAspectRatio',[1 1 1],'XTick',zeros(1,0),'YTick',zeros(1,0));
ax1.XColor = [1 1 1];
ax1.YColor = [1 1 1];
H = title(ax1,'Happy Holidays!');
H.Color = auspec;

%% Print to PDF
% set(fig1,'Units','Inches');
% 
% pos = get(fig1,'Position');
% 
% print(fig1,'HolidayFlower','-dpdf','-fillpage');

