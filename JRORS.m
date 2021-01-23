% JRORS Problem
function W = JRORS(xqn,user_profile,alloted_bs,gunt,U,sig2,B,Iq,wq,Rc,Rqn,Tgq,Tbq,Tavg,PBS,PC)
W = 0;
for u = U
     n = alloted_bs(u);
     spunt = sum(user_profile);
     sgunt = sum(gunt);
     x = user_profile(u)*gunt(u,n)/(sig2 + (spunt*sgunt(n)) - (user_profile(u)*gunt(u,n)));
     vun = B*log2(1+x); % Uplink rate from mobile user u to BS n
     if xqn(u) == 1
            tqup = Iq/vun; % Uplink transmission time of request q to BS n
     else
            tqup = Iq/vun; % Uplink transmission time of request q to BS n
     end
     if xqn(u) == 1
            tqpro = wq/Rqn(u,1); % Process time of request q at BS
     else
            tqpro = wq/Rc; % Process time of request q at BS 
     end
     tq = tqup + tqpro ; % Total response time of request q
     alpha = 0.15;
     if tq <= Tgq
            kq = 1; % Edge system utility
     elseif Tgq < tq & tq <= Tavg
            kq = 1 - 1/(1 + exp(alpha*(Tavg - tq)/(Tavg - Tgq)));
     elseif tq > Tbq
            kq = 0;
     else
            kq = 1/(1 + exp(alpha*(tq - Tavg)/(Tbq - Tavg)));
     end
     if xqn(u) == 1
            eprot = PBS*tqpro;
     else
            eprot = PC*tqpro;
     end
     cq = 10*alpha*(exp(((user_profile(u) * tqup) + eprot)/10) - exp((user_profile(u) * tqup)/10)); % Edge system cost for processing request q 
     epsilon = 0.99;
     eq = epsilon*kq + (1-epsilon)*eprot; % Extra cost of offloading to macro BS
     W = W + (xqn(u)*(kq - cq)) - ((1-xqn(u))*eq); % System Welfare
end
end