%����һ�������ϰ���ĵ�ͼ
%anchor��ʾÿ����վ��λ�ã�ά��Ϊn*2��ÿһ�д���һ����վ��x��y����
%obstacle_pointA��n*2�ľ���ÿ�б�ʾÿ���ϰ���ĵ�A
%obstacle_pointB��n*2�ľ���ÿ�б�ʾÿ���ϰ���ĵ�B
%obstacle_pointA��obstacle_pointB�����������ɵ��߶�Ϊ�ϰ���
%plot_outΪ1ʱ�������ͼ�����������ͼ
function CreateMap(anchor,obstacle_pointA,obstacle_pointB,plot_out)
global indoorMap
indoorMap.anchor=anchor;
indoorMap.obstacle_pointA=obstacle_pointA;
indoorMap.obstacle_pointB=obstacle_pointB;

if plot_out==1
    plot(indoorMap.anchor(:,1),indoorMap.anchor(:,2),'kh')
    hold on
    for N=1:(length(indoorMap.obstacle_pointA)/2)
       plot([indoorMap.obstacle_pointA(N,1),indoorMap.obstacle_pointB(N,1)],[indoorMap.obstacle_pointA(N,2),indoorMap.obstacle_pointB(N,2)],'k','LineWidth',3)
    end
    hold off
end