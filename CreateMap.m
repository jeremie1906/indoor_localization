%构造一个存在障碍物的地图
%anchor表示每个基站的位置，维度为n*2，每一行代表一个基站的x和y坐标
%obstacle_pointA是n*2的矩阵，每行表示每个障碍物的点A
%obstacle_pointB是n*2的矩阵，每行表示每个障碍物的点B
%obstacle_pointA和obstacle_pointB的连线所构成的线段为障碍物
%plot_out为1时，输出地图，否则不输出地图
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