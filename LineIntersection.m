%求两条线段的交点
%(x1,y1)与（x2,y2）为直线1的两个点
%(x3,y3)与（x4,y4）为直线2的两个点
function [x,y,err]=LineIntersection(x1,y1,x2,y2,x3,y3,x4,y4)
if x1~=x2 && x3~=x4 %两条直线存在斜率的情况
   A=(y1-y2)/(x1-x2)*x1-(y3-y4)/(x3-x4)*x3+y3-y1;
   B=(y1-y2)/(x1-x2)-(y3-y4)/(x3-x4);
   if B~=0  %两条直线不平行
       x=A/B;
       y=(y1-y2)/(x1-x2)*(x-x1)+y1;
       err=0;
   else %两条直线平行
       err=1;
       x=0;y=0;
   end
elseif x1==x2 && x3==x4  %都不存在斜率，则两条直线平行
    err=1;
    x=0;y=0;
elseif x1==x2 &&x3~=x4 %直线1不存在斜率，直线2存在斜率
    x=x1;
    y=(y3-y4)/(x3-x4)*(x-x3)+y3;
    err=0;
else   %直线1存在斜率 直线2不存在斜率
    x=x3;
    y=(y1-y2)/(x1-x2)*(x-x1)+y1;
    err=0;
end
x=roundn(x,-2);
y=roundn(y,-2);