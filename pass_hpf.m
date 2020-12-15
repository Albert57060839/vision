function out=pass_hpf(ff,D0,n)
 [M,N]=size(ff);
 new1 = zeros(M,N);
  for i=1:M
     for j=1:N
         dist=sqrt((i-84)^2 + (j-55)^2);
         new1(i,j)= ( 1 + (dist/D0)^(2*n))^(-1);       
     end
  end
   new2 = zeros(M,N);
  for i=1:M
     for j=1:N
         dist=sqrt((i-43)^2 + (j-55)^2);
         new2(i,j)= ( 1 + (dist/D0)^(2*n))^(-1);       
     end
  end
   new3 = zeros(M,N);
  for i=1:M
     for j=1:N
         dist=sqrt((i-165)^2 + (j-55)^2);
         new3(i,j)= ( 1 + (dist/D0)^(2*n))^(-1);       
     end
  end
   new4 = zeros(M,N);
  for i=1:M
     for j=1:N
         dist=sqrt((i-206)^2 + (j-55)^2);
         new4(i,j)= ( 1 + (dist/D0)^(2*n))^(-1);       
     end
  end
   new5 = zeros(M,N);
  for i=1:M
     for j=1:N
         dist=sqrt((i-39)^2 + (j-111)^2);
         new5(i,j)= ( 1 + (dist/D0)^(2*n))^(-1);       
     end
  end
   new6 = zeros(M,N);
  for i=1:M
     for j=1:N
         dist=sqrt((i-80)^2 + (j-111)^2);
         new6(i,j)= ( 1 + (dist/D0)^(2*n))^(-1);       
     end
  end
   new7 = zeros(M,N);
  for i=1:M
     for j=1:N
         dist=sqrt((i-160)^2 + (j-111)^2);
         new7(i,j)= ( 1 + (dist/D0)^(2*n))^(-1);       
     end
  end
   new8 = zeros(M,N);
  for i=1:M
     for j=1:N
         dist=sqrt((i-202)^2 + (j-111)^2);
         new8(i,j)= ( 1 + (dist/D0)^(2*n))^(-1);       
     end
  end
  new = new1+new2+new3+new4+new5+new6+new7+new8;
  new=1-new;
  out = new.*ff;
  figure;
  imshow(new,[]);title('Butterworth Notch Filter');



