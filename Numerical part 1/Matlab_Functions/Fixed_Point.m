function [root,arr,tt,err, cdata]=Fixed_Point(F,G,x1,it,tolerance)

    arr = [];

    tt = 0;

    err = NaN;
    
    cdata = {};
    Ea = NaN;
    cdata(1, :)  = {"xi", "F(xi)", "G(xi)", "Ea", "ea"};
    cdata(2, :) = {x1, F(x1), G(x1), Ea, NaN};

    for ind=1:1:it

        tt = tt + 1;

        Xnew = G(x1);

        arr(end +1) = Xnew; 

        %fprintf(' >>>> %12.5f',G(x1));
        func_val = F(Xnew);
        if (func_val==0 )

           %fprintf('breaked from Xnew');

            break;

        end

        if ind>=2

            Ea = abs(Xnew-x1);
            err = abs(Ea/Xnew) * 100;
            cdata(ind + 2, :) = {Xnew, func_val, G(Xnew), Ea, err};
            if (err<tolerance)

               % fprintf('breaked from error');

                break;

            end

        end
        if ind == 1
            cdata(ind + 2, :) = {Xnew, func_val, G(Xnew), Ea, err};
        end
        

        x1=Xnew;

    end

    root=Xnew;

end