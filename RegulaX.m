clear
f = input('funcion: ','s'); 
F = inline(f); 
a = input('lim. inferior del int: '); 
b = input('lim. superior del int: '); 
tolx = input('tol. en x: '); 
ex = 999; 
i = 0; 
xant = 1; 
if F(a)*F(b) < 0 
  while (ex > tolx)
    i = i+1; 
    ya = F(a); 
    yb = F(b); 
    xsol = (a*yb-b*ya)/(yb-ya);
    ex = abs(xsol-xant);
    xant = xsol;  
    if F(xsol)*ya < 0
      b = xsol; 
    else
      a = xsol; 
    end
  end
else
  res = ['no se cumple bolzano en [',num2str(a),',',num2str(b),']'];
  disp(res) 
end 
res1 = ['la raiz es: ',num2str(xant)]; disp(res1) 
res2 = ['cant. de interaciones: ',num2str(i)]; disp(res2) 
res3 = ['error en x: ',num2str(ex)]; disp(res3)
