%�ж��ڵ�ǰλ����ÿ����վ���ǩ�Ĳ���Ƿ�Ϊ�Ӿ���
%XΪ2*1������������ʾĿ���λ��
%����ֵoutΪn*1����������˳����anchor��˳��һ�£���Ϊ�Ӿ��򷵻�0��Ϊ���Ӿ��򷵻�1
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
