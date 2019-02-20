%�������߶εĽ���
%(x1,y1)�루x2,y2��Ϊֱ��1��������
%(x3,y3)�루x4,y4��Ϊֱ��2��������
function [x,y,err]=LineIntersection(x1,y1,x2,y2,x3,y3,x4,y4)
if x1~=x2 && x3~=x4 %����ֱ�ߴ���б�ʵ����
   A=(y1-y2)/(x1-x2)*x1-(y3-y4)/(x3-x4)*x3+y3-y1;
   B=(y1-y2)/(x1-x2)-(y3-y4)/(x3-x4);
   if B~=0  %����ֱ�߲�ƽ��
       x=A/B;
       y=(y1-y2)/(x1-x2)*(x-x1)+y1;
       err=0;
   else %����ֱ��ƽ��
       err=1;
       x=0;y=0;
   end
elseif x1==x2 && x3==x4  %��������б�ʣ�������ֱ��ƽ��
    err=1;
    x=0;y=0;
elseif x1==x2 &&x3~=x4 %ֱ��1������б�ʣ�ֱ��2����б��
    x=x1;
    y=(y3-y4)/(x3-x4)*(x-x3)+y3;
    err=0;
else   %ֱ��1����б�� ֱ��2������б��
    x=x3;
    y=(y1-y2)/(x1-x2)*(x-x1)+y1;
    err=0;
end
x=roundn(x,-2);
y=roundn(y,-2);