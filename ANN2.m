function [Y,Xf,Af] = ANN2(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 16-Aug-2016 15:56:30.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = Qx3 matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = Qx3 matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [-34.6132379608848;-34.6819970862544;-2.90675190670927];
x1_step1.gain = [0.0288073694894568;0.0288085701010635;0.235923927417175];
x1_step1.ymin = -1;

% Layer 1
b1 = [-6.5454455051279288;7.0376963469610585;5.9749601389904354;-6.1260038845064795;-6.4296741935906248;-5.7627466997022117;-5.6817384363393222;-5.7620815731677295;-5.330965135727646;-5.368580066530221;5.0679962237189908;5.0185019323693529;4.7802526097292466;-4.6481837934038861;-4.9186885410238546;-4.6705822986024206;4.8220972412573415;-4.4729578153199068;4.198411268955323;4.3089552956745347;4.1666504117846941;-3.5802849254757847;-3.2936470840983647;2.9556883530217339;3.050229331578358;3.0856356290373879;-3.1848225153975283;-2.6417420576857396;3.0803044315542065;-2.7627080299458875;-2.2547270203170906;-1.9098341424736627;-1.7840213698895022;2.4411378719878676;-2.2126323198349938;1.5580142208238803;2.4279686815324619;1.2957521977405524;-1.9390517655418609;-0.83774215723965739;1.0389934439578128;1.2347405875293234;0.42315047177143461;-0.6899368743253953;0.78624571599395043;-0.45114541972603112;-0.56209766072466805;-0.14751769628285116;0.13590433630634707;-0.36491176603012015;0.40607864977336494;0.74295344905557081;-0.81082491605070428;0.011666728574328863;0.26943115124777678;0.034777855781015304;0.66896290191778163;-1.3628873385127345;-1.3175001858698938;1.0159672710530039;-1.4567464805159169;1.6634063206628691;2.38991330856719;1.645135718369038;2.2074195762476272;-1.5504154319897152;-1.8815724460483283;2.4414046688744406;-2.337045397148815;3.265893138211204;-2.6565963850123264;-3.3050233983501123;-3.2060807582794175;3.2020948099526332;-2.6776408297754042;-3.4431868925131282;-3.7592681063073448;-3.7347471868742272;-3.8909650863597793;-3.8194083877114036;-3.9072443298002675;4.3211409158963834;-4.0224580511082806;-4.9157865579298292;-4.0223448179626384;4.7849302530797289;-5.2113934974955258;5.1052117389928444;-5.5286521736436587;4.940735955698746;5.5492604736707429;-5.1057859719710237;-5.7033329255091987;-5.5199198512901546;5.9572687365245995;-5.8969154703224076;-6.2109483070879605;6.1964718257304803;6.3854348117519315;6.330718773545791];
IW1_1 = [3.6716428624920505 -4.5681454350817594 2.7096379161892781;-3.8753120174993061 -3.086224058085985 2.9675070336951261;-6.1349594079937768 2.7837115979718092 -0.1558062430401109;6.2721273360635825 1.4328259075490777 0.71998039011591308;1.9378794655332479 -2.3700914173571355 5.2081297529351405;1.0743485823866503 -4.6389820499969421 -5.4953287933360535;2.0511114302417752 5.9039762352141629 0.64642489495874411;5.2905174570538893 -3.7622080485056282 -1.1926599748944471;4.6384436347483682 3.5419326521459369 2.7178150969046868;2.6733237076677034 -4.3299215286364054 -3.9530037889842768;-1.9499022517654869 4.4802856874931454 4.9266138752990933;-3.0168259232823971 5.2187302469512442 -2.4712789889592637;-2.8173312250856366 5.8402218879415235 0.11005320623597507;3.3231742442893508 0.26385762529858209 5.6906877268910208;4.3901580846988297 -1.0588449190988929 4.4845400297580831;4.3612263308963568 3.2888765194563718 -3.1384524343050555;-3.537879103984491 -2.0738342830987495 -4.6954545435345691;5.2544475149085068 -1.8254290264946023 3.3052448702457484;-6.0841854593472995 -1.7787391636776064 1.0545458866962258;-2.0657129172431716 5.7815780187138568 0.0099816442623662481;-4.1114880896737338 -4.2820359889669639 -1.6900116924253135;1.9951234691635902 4.2282906852618467 -3.9054782025527439;3.638830018164116 -5.584684601541408 -0.97071061435527328;-4.7079798616693616 0.6548766099107679 4.8249556249758587;-5.7981934002633819 -3.405390801388263 0.43546768636916;-2.2073384403554486 2.5275594019649481 -5.0847041298568225;4.2336686100356795 4.4076545185627163 1.8115932701281552;6.312121250120847 -0.13876597668711466 -1.7207304975500863;-3.3023211440493605 4.864584128892532 1.6605517156000542;1.3156059515016427 2.0505626897644058 6.0092184165061679;3.4919442837282881 -3.3812274224693191 4.9259493339344074;2.9771995480774289 0.51616581007039097 5.9078597989895538;3.9704672613225953 -3.1228257515563858 -3.7440611938684247;-3.5537640082702739 -4.1018393820429004 3.4305767221715033;1.0968199850694926 4.5293995115786636 -4.281159744708253;-0.1230426454763114 -4.6894396531913447 -4.5940072721028846;-3.0561114997295391 4.8995417149848208 -2.4484910138062452;-3.9196536589198439 -2.6949386309112642 3.8717991611570355;3.8345708197637096 1.1963711227053486 4.8458635003338975;5.5876292176882796 -3.2142709155740379 -1.0957768091233779;-3.6150864002995684 -4.4039920558924912 -2.9287806241477079;-3.7725904822087348 2.476901572825509 4.5746158394096472;-3.4969872182514594 -4.8153539438088693 2.5449850549618493;6.1683816770445574 0.63486143628189462 1.5595346760835416;-4.9942218218413501 -0.52126278073802834 -3.6997696364927917;2.0271151417124766 -1.5666208497872831 6.9432307979632188;3.0745097195353939 -2.5874742563653514 -5.1416451356168986;3.6933949929259682 -4.7609855753931445 -1.8090008030724383;3.1325050021448679 4.9818048092097378 -2.3040436281941341;2.085010426679188 4.1405805369707673 4.3508629089431166;3.6787725583659894 -1.8447689993891054 4.6607959209013172;0.78877028998308374 -2.6964032852719373 6.0752375528809859;-1.3211506446737407 5.0034729615599831 4.0341638403755518;-4.04699155406563 -3.1910505454325082 3.7264589032425746;3.7104728253825106 -3.9139497480173215 -3.3522153652839362;2.0876273042172091 -1.3548249013520499 6.3980381730720897;4.1050158210055772 -3.6583933478057533 -3.3937181548489539;-3.1860135751584457 -3.2191323716198594 4.5442916067599812;-4.897057944668096 -0.49338067455000129 3.276732900937299;3.6791375407508644 -1.3572522235846793 -4.8825876519527371;-3.7596396220483164 -5.0028293773042778 -0.61584784822614025;1.9017348697711154 -0.81587257613543807 -6.3062974268629732;5.3148071761108229 2.7621674672920946 0.60471711771316106;3.5202402299988695 -3.93189282611405 3.4879088620169472;3.4386290403011772 4.4146326063400023 -2.9359560080400398;-3.1911525666901213 4.0747770352406114 -3.6839692998532017;-0.50716410827637914 5.7858818547527067 2.7524849349480562;5.4930219702935563 -2.7842685852720752 2.0519046586584064;-2.5256891161271056 4.4194588491744895 -3.7214930050974617;5.907024510985309 2.7726644666582478 -1.0886005728794967;-3.4350680343494346 -3.8691979585371694 4.0272325760968197;-2.5718116334933043 5.4658327223591643 0.36952486708091714;-2.5596563240457333 5.2763973134131854 2.5453883673633348;1.6972724025878421 5.2165047049815145 3.9537702091764548;-3.6337338182423058 -0.18824386166351928 -5.5905099571511156;-3.5554018971837005 -4.7867601435983094 2.6813940015641866;-3.5237458102790402 2.9012505766256709 4.1630355317586529;-3.6840808474082283 4.8740097153806854 1.3126208295629662;-3.9536138159219991 3.9334840205438977 1.2829344794340443;-1.3976556457588758 -6.4064251385216684 -0.15684524396028193;-5.5597119278037885 -3.3953651673917631 0.20553131870910199;0.080639838010652554 1.6221277820131232 -6.2309784123114893;-4.687420062500756 0.43546510177088671 -4.5972797137136201;-1.7201110088852034 -5.1316351920921086 2.7209760109237662;-3.4511189862688774 -5.2423633553324018 -2.7969663737106543;3.3537016917110227 4.5641930538222866 2.815281983171757;-1.1528947628130124 4.2900286825065983 -4.4108464866915034;1.4062423474872547 -5.8660132035111969 -2.0229458596104291;-1.6316914256909416 5.8249186825721466 1.849250569063162;6.2916447065835754 -0.36275287476293838 1.9928853783404363;4.7707749875968366 2.7383131159787077 -2.4029359256192073;-4.5562998085002429 -4.5526972754963611 0.86097853909603739;-2.7927087021010184 5.267906040519315 1.429965027852929;-5.1354956344831519 3.7860779723412068 -0.80890901363033207;2.9255270731596297 5.0166042896938814 -3.0661900210922504;-4.5254195217935784 2.0755912560405809 -4.26048623910446;-3.4837023588169962 -0.73076668266004841 5.1618620011616381;0.33427342788932407 -3.6028695521361085 5.426570754961074;3.9555327812237064 -4.6157441936696104 -1.6787158037500243;0.57998450902026155 -4.409515531615849 -4.9448521401627641];

% Layer 2
b2 = [-0.12525956031103749;-0.27123889840410342;-0.60701662848577076];
LW2_1 = [-0.12844779524260605 0.91390588330788303 -0.33052491937922412 -0.17571567492642573 -0.22523068560022549 0.27405154856860958 -0.08699179866029734 -0.096270056307306714 0.49127294780904068 -0.88728267297819674 -0.61223045460196146 -0.15465151582356568 -0.56966876327959082 0.2836604778521582 -0.76095208813050685 0.093923558598607515 -0.32036706528931808 0.23414117239139867 0.201839065664982 0.56328400604257023 -0.11147684639273364 0.10716514923888067 -0.0067462654908969563 0.033865831548931559 -0.075226261482391948 0.23548216945195063 0.11304442689986544 0.029227872286128647 -0.033961449648724114 0.028195872732341695 0.07122424237782983 0.18093371449936108 0.12369543956874364 -0.1017581763930567 -0.063345331218221654 -0.012254545667762679 0.094104481705119702 0.019295492847418234 -0.0042823811029690552 -0.40849508912233751 -0.042196358239491791 -0.2528415075188572 -0.076322194631125967 -0.20980178409460648 -0.10001405534854726 0.20489160633067138 -0.30845677362961244 -0.28669254530084043 -0.075590936708190198 -0.083044649124326964 -0.089342344094355403 0.039215611472380445 -0.14199608538554387 -0.049099552584173062 0.38042837535422741 -0.35697718324408662 0.25070025869881563 0.20670378967626774 0.26562142126861438 0.012343406165257172 0.18056238974634556 -0.19003411979380241 -0.021817830839390775 0.016613602539733485 0.055678270514751133 0.12044536419255988 -0.080056002037230553 -0.18999617719439063 -0.10318016960635612 -0.03575495382262437 0.13307268496691138 -0.11838537600260234 0.1437222025765075 0.073623569748316936 -0.015416805551634634 -0.075452266800285647 -0.40352117971029383 0.11462287745404193 -0.097152237429856819 -0.2428629354090093 -0.010250018348240797 -0.0882861798774804 -0.029982363218397416 0.52162879894430025 0.19171233614282615 0.2745141195171501 -0.58028214270407796 -0.43222148766611901 -0.47250273793826841 0.10319393984244854 -0.0074271143742070597 0.15384774005472301 0.46890813272957399 0.30124386218002902 0.39855867421395719 -0.070620454098762164 0.29219505918023986 0.14163106899786029 0.26959691059157254 -0.54377484038291701;1.2783688963449078 -0.35073301635873827 0.81185860191976944 -0.8787077326924666 0.23551407366424876 -0.79952649763211492 -0.67721768761927659 0.044305689789912402 -1.113636863565916 -0.6925759001106494 -0.93407047377823604 0.13616790016750607 0.066340046786869417 -0.25888801306295695 1.7185198565326356 -0.37627479854964385 -0.17481719963744285 -0.13206987562187772 -0.35851422923845561 0.23105122931610128 -0.1389672532202389 -0.12678670952879389 0.89479086472963609 0.25636102176193643 0.018852017570587035 -1.3861179868913929 -0.022129460084333981 -0.38503161492439192 0.6384370721349174 -0.53486540822981987 -0.64417105174868039 -0.43238498039940532 -0.09439390003011304 0.41858569277705765 -0.16584747315280646 0.43568998701139977 -0.117669233914404 -0.068253227989709939 0.23743094475552476 0.22780495234147935 -0.034772720077435433 -0.14430535000037939 0.0323011956393882 0.066105396374507325 0.48366409758015483 -0.88581337521243175 0.021725415585835749 0.17938128653091326 0.40484977422365831 0.2942494002267067 -0.029951775348094501 -0.70449550883784051 0.78316801124722102 0.26657956359619311 -0.11424698800886769 1.1189698154194256 -0.13215946203843218 0.0076461512086347314 -0.17786223274366331 -0.2572639878467165 -0.22878630780225737 0.047820206397731109 0.15410457041962006 -0.0096746600813533284 0.72465893714339935 -0.27755131927794108 -0.18805898717666558 0.40497390302065228 0.53606462243000153 -0.33819100063844415 0.62120146817721755 0.039875195466650908 -0.1953052216662218 -0.62737815998074642 -0.38326642951802087 0.26577891692837291 0.34240838637170856 0.10280000010638134 -0.33929649621175567 0.44675472816182571 -0.013392471019973528 0.38663587960446488 -0.22113243362305449 0.28931730537915795 -0.70480756768591246 0.28984071689632096 1.4146555743360563 1.1716059976699609 0.0072042491878584938 0.34648367840627797 0.67066388685541811 -0.25049095341695282 -0.15922492663006108 -0.8571829546779135 0.73895034235865975 0.88117359981102661 -0.28923305830903995 -1.1304350147238884 0.50281099273101426 -1.413445162352156;-1.0180341589676323 0.11052314292755809 0.94315224287291233 0.29746771156576124 0.054970709822355898 1.4377363545789559 -0.26149434537371186 1.2010897774780989 0.53694491160627289 -0.01448657996717552 0.11801613281430332 0.68545672057826046 -0.17389500587608528 -0.22954688985939059 -1.0905638858569258 -0.27128952264225559 -0.53851885419609569 0.6005627689068932 -0.16696821669474418 0.68790354842450618 0.21375360345629668 0.32914406062067963 -0.77432958642921823 -0.2702129922759352 0.30372460171517057 0.26412350052377975 -0.1944950419617536 -0.067421161883520278 -0.6639612714106099 0.099248441783943486 0.35190770979489233 -0.17248456926865993 -0.49335824510011594 -0.036566132944007637 0.55141638393431069 -0.64084291273375427 0.087580009564392033 -0.66979720352608652 -0.94062626313355169 0.074504980684079375 -0.28994948825538341 -0.7554709322755373 0.74992504920691805 0.069361719267917246 -0.81189267880130567 0.8648011221369476 -0.65374182600715147 0.23947369190072901 -0.43644146981729492 0.63042400768958695 0.70733028327904568 0.76504030285101154 -0.39995240453469788 0.1344004549489084 -0.54393539995340545 -0.39453616592400181 0.23756492384078698 -0.69692486532015019 0.13580003852456735 0.483968420087388 -0.73825285922903883 -0.96146786812698992 -0.57720735503753151 -0.51633808062572439 -1.0812871703198959 0.040228307281580319 -0.22470275465634656 -0.10220865246827769 -0.0757781692349207 0.82716355970204858 -0.6698211902021497 -0.030607392041011074 -0.11393972363563508 1.2291349339194553 0.5463437869008172 0.49087696656915097 0.0049619364174519698 -0.4009388111113561 -0.32902495718231906 0.25762088191402416 -0.13991221406270216 0.48982225041556876 -0.096604533228969239 0.50141527892392235 0.41624357990253691 -0.33857054796150443 -0.25563690746306494 -0.30488146974865538 1.2749901643212738 -0.98862001887612805 0.89580053054725539 0.67413187531983976 -0.25260820450717864 0.4394146128386423 0.63963891596767475 0.4046062613931613 0.55496932645513086 -0.4653964138171745 0.85923219629353598 1.2577038124304862];

% Output 1
y1_step1.ymin = -1;
y1_step1.gain = [0.424424803310045;1.27362094474728;0.636698976209099];
y1_step1.xoffset = [-1.5706923599559;0.000434292038222803;-1.57064942249198];

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},1); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    X{1,ts} = X{1,ts}';
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1);
    Y{1,ts} = Y{1,ts}';
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings)
x = bsxfun(@minus,y,settings.ymin);
x = bsxfun(@rdivide,x,settings.gain);
x = bsxfun(@plus,x,settings.xoffset);
end
