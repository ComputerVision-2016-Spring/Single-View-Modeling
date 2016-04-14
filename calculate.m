function calculate()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
global dataType;
global paraLinesx;
global paraLinesy;
global paraLinesz;
switch dataType
    case 1
        [n,~]=size(paraLinesx);
        if(n<4)
            sx='undefined';
        else
            p1=double([paraLinesx(1,:),1]);
            p2=double([paraLinesx(2,:),1]);
            l1=cross(p1,p2);
            p3=double([paraLinesx(3,:),1]);
            p4=double([paraLinesx(4,:),1]);
            l2=cross(p3,p4);
            l1=l1./l1(3);
            l2=l2./l2(3);
            p=cross(l1,l2);
            p=p./p(3);
            x=p;
            sx=mat2str(int64(x));
        end
        
        [n,~]=size(paraLinesy);
        if(n<4)
            sy='undefined';
        else
            p1=double([paraLinesy(1,:),1]);
            p2=double([paraLinesy(2,:),1]);
            l1=cross(p1,p2);
            p3=double([paraLinesy(3,:),1]);
            p4=double([paraLinesy(4,:),1]);
            l2=cross(p3,p4);
            l1=l1./l1(3);
            l2=l2./l2(3);
            p=cross(l1,l2);
            p=p./p(3);
            y=p;
            sy=mat2str(int64(y));
        end
        
        [n,~]=size(paraLinesz);
        if(n<4)
            sz='undefined';
        else
            p1=double([paraLinesz(1,:),1]);
            p2=double([paraLinesz(2,:),1]);
            l1=cross(p1,p2);
            p3=double([paraLinesz(3,:),1]);
            p4=double([paraLinesz(4,:),1]);
            l2=cross(p3,p4);
            l1=l1./l1(3);
            l2=l2./l2(3);
            p=cross(l1,l2);
            p=p./p(3);
            z=p;
            sz=mat2str(int64(z)); 
        end
        if ~strcmp(sx,'undefined')&&~strcmp(sy,'undefined')
            l=cross(x,y);
            l=l./l(3);
            sl=mat2str(l);
        else
            sl='undefined';
        end
        text=findobj('Tag','info');
        str=sprintf(strcat('\nx:',sx,'\ny:',sy,'\nz:',sz,'\nvanishing line:',sl));
        set(text,'String',str);

end
