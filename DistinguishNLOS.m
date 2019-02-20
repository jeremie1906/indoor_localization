%判断在当前位置下每个基站与标签的测距是否为视距测距
%X为2*1的列向量，表示目标的位置
%返回值out为n*1的列向量，顺序与anchor的顺序一致，当为视距则返回0，为非视距则返回1
function out=DistinguishNLOS(X)
global indoorMap
out=zeros(1,length(indoorMap.anchor));
for N=1:length(indoorMap.anchor)
    for M=1:(length(indoorMap.obstacle_pointA)/2)
        outM=LineSegmentIntersection(X(1),X(2),indoorMap.anchor(N,1),indoorMap.anchor(N,2),indoorMap.obstacle_pointA(M,1),indoorMap.obstacle_pointA(M,2),indoorMap.obstacle_pointB(M,1),indoorMap.obstacle_pointB(M,2));
        out(N)=out(N) | outM;
    end
end
indoorMap.NLOSout=out;
indoorMap.tag=X;
