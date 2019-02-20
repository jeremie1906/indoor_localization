%求线段是否存在交点
%lineout为0是不存在交点，lineout为1时存在交点
function lineout=LineSegmentIntersection(x1,y1,x2,y2,x3,y3,x4,y4)
[x,y,err]=LineIntersection(x1,y1,x2,y2,x3,y3,x4,y4);
if err==0
    if ( x>=min(x1,x2) && x<=max(x1,x2) ) && ( x>=min(x3,x4) && x<=max(x3,x4) ) && ( y>=min(y1,y2) && y<=max(y1,y2) ) && ( y>=min(y3,y4) && y<=max(y3,y4) )
        lineout=1;
    else
        lineout=0;
    end
else
    lineout=0;
end

;