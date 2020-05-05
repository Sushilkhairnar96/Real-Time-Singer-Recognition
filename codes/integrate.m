close all;

filt_num = 11;

p  = wavread('C:\Users\lenovo\Desktop\yash1.wav');
p1 = wavread('C:\Users\lenovo\Desktop\yash2.wav');
p2 = wavread('C:\Users\lenovo\Desktop\y1.wav');
p3 = wavread('C:\Users\lenovo\Desktop\y3.wav');
p6 = wavread('C:\Users\lenovo\Desktop\hundred.wav');
p7 = wavread('C:\Users\lenovo\Desktop\two.wav');
p8 = wavread('C:\Users\lenovo\Desktop\three.wav');
p9 = wavread('C:\Users\lenovo\Desktop\thousand.wav');
p5 = wavread('C:\Users\lenovo\Desktop\seeyoulater.wav');

% p11 = final_pitch(p1);
% p12 = final_pitch(p1);'
% p13 = final_pitch(p2);
% p14 = final_pitch(p3);
% disp('yash');
% p15 = final_pitch(p8);
% p16 = final_pitch(p7);
% p17 = final_pitch(p6);
% p18 = final_pitch(p5);

y1 = round(test1(p,filt_num),2);
% disp(y1);
y2 = round(test1(p1,filt_num),2);
% disp(y2);
y3 = round(test1(p2,filt_num),2);
% disp(y3);
y4 = round(test1(p3,filt_num),2);
% disp(y4);



        y11 = cat(1,y1(1),y2(1),y3(1),y4(1)); 
        y12 = cat(1,y1(2),y2(2),y3(2),y4(2)); 
        y13 = cat(1,y1(3),y2(3),y3(3),y4(3)); 
        y14 = cat(1,y1(4),y2(4),y3(4),y4(4)); 
        y15 = cat(1,y1(5),y2(5),y3(5),y4(5)); 
        y16 = cat(1,y1(6),y2(6),y3(6),y4(6)); 
        y17 = cat(1,y1(7),y2(7),y3(7),y4(7)); 
        y18 = cat(1,y1(8),y2(8),y3(8),y4(8)); 
        y19 = cat(1,y1(9),y2(9),y3(9),y4(9)); 
        y110 = cat(1,y1(10),y2(10),y3(10),y4(10)); 
        y111 = cat(1,y1(11),y2(11),y3(11),y4(11)); 
      
   

%%  Calculating eucledian distance

y1_e = zeros(4,4);
y2_e = zeros(4,4);
y3_e = zeros(4,4);
y4_e = zeros(4,4);
y5_e = zeros(4,4);
y6_e = zeros(4,4);
y7_e = zeros(4,4);
y8_e = zeros(4,4);
y9_e = zeros(4,4);
y10_e = zeros(4,4);
y11_e = zeros(4,4);


for i=1:4
    for j=1:4
        y1_e(j,i) = (sqrt(abs(y11(i)^2 - y11(j)^2)))/y11(i);
        y2_e(j,i) = (sqrt(abs(y12(i)^2 - y12(j)^2)))/y12(i);
        y3_e(j,i) = (sqrt(abs(y13(i)^2 - y13(j)^2)))/y13(i);
        y4_e(j,i) = (sqrt(abs(y14(i)^2 - y14(j)^2)))/y14(i);
        
%         y4_e(j,i) = ((y14(i) - y14(j))^2);
        
%         y5_e(j,i) = (((y15(i) - y15(j))^2));

        y5_e(j,i) = (sqrt(abs(y15(i)^2 - y15(j)^2)))/y15(i);
        y6_e(j,i) = (sqrt(abs(y16(i)^2 - y16(j)^2)))/y16(i);
        y7_e(j,i) = (sqrt(abs(y17(i)^2 - y17(j)^2)))/y17(i);
        y8_e(j,i) = (sqrt(abs(y18(i)^2 - y18(j)^2)))/y18(i);
        y9_e(j,i) = (sqrt(abs(y19(i)^2 - y19(j)^2)))/y19(i);
        y10_e(j,i) = (sqrt(abs(y110(i)^2 - y110(j)^2)))/y110(i);
        y11_e(j,i) = (sqrt(abs(y111(i)^2 - y111(j)^2)))/y111(i);
    end
end

for i=1:4
        y1_sum(i) = sum(y1_e(i,1:4));
        y2_sum(i) = sum(y2_e(i,1:4));
        y3_sum(i) = sum(y3_e(i,1:4));
        y4_sum(i) = sum(y4_e(i,1:4));
        y5_sum(i) = sum(y5_e(i,1:4));
        y6_sum(i) = sum(y6_e(i,1:4));
        y7_sum(i) = sum(y7_e(i,1:4));
        y8_sum(i) = sum(y8_e(i,1:4));
        y9_sum(i) = sum(y9_e(i,1:4));
        y10_sum(i) = sum(y10_e(i,1:4));
        y11_sum(i) = sum(y11_e(i,1:4));
        
end       
        
mfcc_final = zeros(1,11);
[y1_sum_min,mf1] = min(y1_sum);
mfcc_final(1) = y11(mf1); 
[y2_sum_min,mf2] = min(y2_sum);
mfcc_final(2) = y12(mf2); 
[y3_sum_min,mf3] = min(y3_sum);
mfcc_final(3) = y13(mf3); 
[y4_sum_min,mf4] = min(y4_sum);
mfcc_final(4) = y14(mf4); 
[y5_sum_min,mf5] = min(y5_sum);
mfcc_final(5) = y15(mf5); 
[y6_sum_min,mf6] = min(y6_sum);
mfcc_final(6) = y16(mf6); 
[y7_sum_min,mf7] = min(y7_sum);
mfcc_final(7) = y17(mf7); 
[y8_sum_min,mf8] = min(y8_sum);
mfcc_final(8) = y18(mf8); 
[y9_sum_min,mf9] = min(y9_sum);
mfcc_final(9) = y19(mf9); 
[y10_sum_min,mf10] = min(y10_sum);
mfcc_final(10) = y110(mf10); 
[y11_sum_min,mf11] = min(y11_sum);
mfcc_final(11) = y111(mf11); 
% disp('final mfcc');
% disp(mfcc_final);







% p11 = get_pitch(p);
% p12 = get_pitch(p3);
% p13 = get_pitch(p3);


a1 = round(test1(p5,filt_num),2);
% disp(a1);
a2 = round(test1(p6,filt_num),2);
% disp(a2);
a3 = round(test1(p7,filt_num),2);
% disp(a3);
a4 = round(test1(p8,filt_num),2);
% disp(a4);
a5 = round(test1(p9,filt_num),2);
% disp(a5);

        
        a11 = cat(1,a1(1),a2(1),a3(1),a4(1),a5(1)); 
        a12 = cat(1,a1(2),a2(2),a3(2),a4(2),a5(2)); 
        a13 = cat(1,a1(3),a2(3),a3(3),a4(3),a5(3)); 
        a14 = cat(1,a1(4),a2(4),a3(4),a4(4),a5(4)); 
        a15 = cat(1,a1(5),a2(5),a3(5),a4(5),a5(5)); 
        a16 = cat(1,a1(6),a2(6),a3(6),a4(6),a5(6)); 
        a17 = cat(1,a1(7),a2(7),a3(7),a4(7),a5(7)); 
        a18 = cat(1,a1(8),a2(8),a3(8),a4(8),a5(8)); 
        a19 = cat(1,a1(9),a2(9),a3(9),a4(9),a5(9)); 
        a110 = cat(1,a1(10),a2(10),a3(10),a4(10),a5(10)); 
        a111 = cat(1,a1(11),a2(11),a3(11),a4(11),a5(11)); 
      
   

%%  Calculating eucledian distance

a1_e = zeros(5,5);
a2_e = zeros(5,5);
a3_e = zeros(5,5);
a4_e = zeros(5,5);
a5_e = zeros(5,5);
a6_e = zeros(5,5);
a7_e = zeros(5,5);
a8_e = zeros(5,5);
a9_e = zeros(5,5);
a10_e = zeros(5,5);
a11_e = zeros(5,5);


for i=1:4
    for j=1:4
        a1_e(j,i) = ((abs(a11(i) - a11(j))^2));
        a2_e(j,i) = ((abs(a12(i) - a12(j))^2));
        a3_e(j,i) = ((abs(a13(i) - a13(j))^2));
        
        a4_e(j,i) = ((abs(a14(i) - a14(j))^2));
        
        a5_e(j,i) = ((abs(a15(i) - a15(j))^2));
        
        a6_e(j,i) = ((abs(a16(i) - a16(j))^2));
        a7_e(j,i) = ((abs(a17(i) - a17(j))^2));
        a8_e(j,i) = ((abs(a18(i) - a18(j))^2));
        a9_e(j,i) = ((abs(a19(i) - a19(j))^2));
        a10_e(j,i) = ((abs(a110(i) - a110(j))^2));
        a11_e(j,i) = ((abs(a111(i) - a111(j))^2));
    end
end

for i=1:4
        a1_sum(i) = sqrt(sum(a1_e(i,1:4)));
        a2_sum(i) = sqrt(sum(a2_e(i,1:4)));
        a3_sum(i) = sqrt(sum(a3_e(i,1:4)));
        a4_sum(i) = sqrt(sum(a4_e(i,1:4)));
        a5_sum(i) = sqrt(sum(a5_e(i,1:4)));
        a6_sum(i) = sqrt(sum(a6_e(i,1:4)));
        a7_sum(i) = sqrt(sum(a7_e(i,1:4)));
        a8_sum(i) = sqrt(sum(a8_e(i,1:4)));
        a9_sum(i) = sqrt(sum(a9_e(i,1:4)));
        a10_sum(i) = sqrt(sum(a10_e(i,1:4)));
        a11_sum(i) = sqrt(sum(a11_e(i,1:4)));
        
end       
        
mfcc_final_a = zeros(1,10);
[a1_sum_min,mf1] = min(a1_sum);
mfcc_final_a(1) = a11(mf1); 
[a2_sum_min,mf2] = min(a2_sum);
mfcc_final_a(2) = a12(mf2); 
[a3_sum_min,mf3] = min(a3_sum);
mfcc_final_a(3) = a13(mf3); 
[a4_sum_min,mf4] = min(a4_sum);
mfcc_final_a(4) = a14(mf4); 
[a5_sum_min,mf5] = min(a5_sum);
mfcc_final_a(5) = a15(mf5); 
[a6_sum_min,mf6] = min(a6_sum);
mfcc_final_a(6) = a16(mf6); 
[a7_sum_min,mf7] = min(a7_sum);
mfcc_final_a(7) = a17(mf7); 
[a8_sum_min,mf8] = min(a8_sum);
mfcc_final_a(8) = a18(mf8); 
[a9_sum_min,mf9] = min(a9_sum);
mfcc_final_a(9) = a19(mf9); 
[a10_sum_min,mf10] = min(a10_sum);
mfcc_final_a(10) = a110(mf10); 
[a11_sum_min,mf11] = min(a11_sum);
mfcc_final_a(11) = a111(mf11); 
% disp('final mfcc aa');
% disp(mfcc_final_a);


count = 0;
for i=1:11
   mfcc_check(i) = mfcc_final(i)/mfcc_final_a(i);
   if(mfcc_check(i) > 0.9 && mfcc_check(i) < 1.1)
       count = count+1;
   end
end  
%    pitch_check = pitch1/pitch2;
% && mfcc_check > 0.9 && mfcci_check < 1.1
   if(count>=1 )
       disp('Singer matched! :) ');
   else
       disp('Different singer! :)')
   end
  

