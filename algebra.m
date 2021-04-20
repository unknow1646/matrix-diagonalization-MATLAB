%Autores: Hernan Diaz, Gina Ozimisa
%MATLAB R2015a
%Objetivo: desarrollar la diagonalización de la matriz de una
%transformación dada.
opcion = input('\nMenu\n-------------------------------------n\ ingrese opcion XDD\n1.R2->R2\n\2.R3->R3\n\3.R4->R4\n\');
if (opcion==1)
    disp('R2->R2');
    str =input('Ingrese la transformación [ , ]\n','s'); %str=cadena de caracteres que contendra la transformación ingresada
    x=1; %base canonica (1,0)
    y=0;
    a=eval(str); %evalúa la base en la transformación lineal
    x=0; %base canonica (0,1)
    y=1;
    b=eval(str);
    disp('T(1,0)=');
    disp(a);
    disp('T(0,1)=');
    disp(b);
    M=vertcat(a,b);%toma los vectores anteriormente sacados y los situa en la matriz M
    M=M';%como situa los vectores de forma horizontal la transponemos para que los vectores queden en vertical
    disp('La matriz de transfomación es:');
    disp(M);
    disp('El polinomio caracteristico es:');
    polinomio=poly(M);%implícitamente calcula la resta entre el producto de la lambda con la matriz identidad y la matriz asociada a la transformación lineal
    disp(polinomio);
    coef=eig(M);%devuelve un vector que contiene los valores propios de la matriz M.
    disp('Los valores propios son:');
    disp(coef);
    [V,D]=eig(M);%devuelve la matriz diagonal D de valores propios y la matriz V cuyas columnas son los vectores propios correctos correspondientes
    disp('Los vectores propios son:');
    disp(V);
        if length(V)~=rank(V)
            disp('no es diagonalizable');
        else
            disp('es diagonalizable');
            disp('La matriz diagonalizada es:');
            disp(D);
        end
    break;
elseif(opcion == 2);
    disp('R3->R3');
    str =input('Ingrese la transformación [ , , ]\n','s');
    x=1;
    y=0;
    z=0;
    a=eval(str);
    x=0;
    y=1;
    z=0;
    b=eval(str);
    x=0;
    y=0;
    z=1;
    c=eval(str);
    disp('T(1,0,0)=');
    disp(a);
    disp('T(0,1,0)=');
    disp(b);
    disp('T(0,0,1)=');
    disp(c);
    M=vertcat(a,b,c);
    M=M';
    disp('La matriz de transfomación es:');
    disp(M);
    disp('El polinomio caracteristico es:');
    polinomio=poly(M);
    disp(polinomio);
    coef=eig(M);
    disp('Los valores propios son:');
    disp(coef);
    [V,D]=eig(M);
    disp('Los vectores propios son:');
    disp(V);
        if length(V)~=rank(V)
            disp('no es diagonalizable');
        else
            disp('es diagonalizable');
            disp('La matriz diagonalizada es:');
            disp(D);
        end
    break;
elseif(opcion == 3);
    disp('R4->R4');
    str =input('Ingrese la transformación [ , , , ]\n','s');
    x=1;
    y=0;
    z=0;
    t=0;
    a=eval(str);
    x=0;
    y=1;
    z=0;
    t=0;
    b=eval(str);
    x=0;
    y=0;
    z=1;
    t=0;
    c=eval(str);
    x=0;
    y=0;
    z=0;
    t=1;
    d=eval(str);
    disp('T(1,0,0,0)=');
    disp(a);
    disp('T(0,1,0,0)=');
    disp(b);
    disp('T(0,0,1,0)=');
    disp(c);
    disp('T(0,0,0,1)=');
    disp(d);
    M=vertcat(a,b,c,d);
    M=M';
    disp('La matriz de transfomación es:');
    disp(M);
    disp('El polinomio caracteristico es:');
    polinomio=poly(M);
    disp(polinomio);
    coef=eig(M);
    disp('Los valores propios son:');
    disp(coef);
    [V,D]=eig(M);
    disp('Los vectores propios son:');
    disp(V);
        if length(V)~=rank(V)
            disp('no es diagonalizable');
        else
            disp('es diagonalizable');
            disp('La matriz diagonalizada es:');
            disp(D);
        end
    break;
else
    disp('no está dentro de las opciones');
end