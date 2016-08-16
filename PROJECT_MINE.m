% ================= PROJECT BASE===========================
clc; clear; close all;
%% Initializations
 r_humerous = 36.57  ;      %Avg. length of humerus is 14.4 inch = 36.57 cm
 r_ulna_radius = 33.4 ;     %Avg. length of ulna is 33.4 cm
 
 angle_shoulder = 0;%-pi;        % angle of shoulder_elevation
 angle_elbow = 0;           % angle of elbow elevation
 
 angle_shoulder_max = +pi;      % in radians
 angle_shoulder_min = -pi/2;    % in    "
 angle_elbow_max = +2.26893;    % in    "
 angle_elbow_min = 0;           % in    "
 
 %origin offsets
    offset_x = 0;% + 70;
    offset_y = 0;% + 70;
 
 marker_wrist = [r_humerous*cos(angle_shoulder)  r_humerous*sin(angle_shoulder)]; % FORMULA : (x,y) = ( rad*cos(angle), rad*sin(angle) )
 marker_elbow =  [ r_ulna_radius*cos(angle_elbow) r_ulna_radius*sin(angle_elbow) ];% """""""""""""""""""""""""""""""""""""""""""""""
 marker_shoulder = [offset_x  offset_y] ; % Always at origin.
 
 %% visualize the initial setup
 hold on;
    plot( marker_shoulder , offset_y + marker_elbow, '-r');
    plot(offset_x + marker_elbow, offset_y + marker_wrist, '-b');
    text(r_humerous*cos(angle_shoulder),  r_humerous*sin(angle_shoulder), 'Marker_WRIST');
    text( r_ulna_radius*cos(angle_elbow), r_ulna_radius*sin(angle_elbow), 'Marker_elbow');
    text(0, 0, ' Marker_shoulder');
    xlabel(' x-coordinates ---->');
    ylabel(' y-coordinates ---->');
    title('Initial setup visualization');
    legend('Humerus', 'Ulna');
 hold off;   