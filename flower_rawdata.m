%% A nonlinear bit of Christmas cheer
% by Jason Conklin, Nov-Dec 2017

%% set up inputs and outputs

xx = (-1:0.01:1);

% allocate empty vectors

y_a(1,:) = nan(length(xx),1);
y_a(2,:) = nan(length(xx),1);
y_a(3,:) = nan(length(xx),1);
y_a(4,:) = nan(length(xx),1);
y_a(5,:) = nan(length(xx),1);

y_b(1,:) = nan(length(xx),1);
y_b(2,:) = nan(length(xx),1);
y_b(3,:) = nan(length(xx),1);
y_b(4,:) = nan(length(xx),1);
y_b(5,:) = nan(length(xx),1);

%% build some curves
% syms u m
% 
% f(u,m) = u * (m + (1-m)*u^2);
% g(u,m) = finverse(f);
% 
% yy0 = xx;
% 
% for i = 1:5
%     M = (0.2 * i) - 0.1;
%     y_a(i,:) = f(xx, M);
%     y_b(i,:) = g(xx, M);
% end

y_a = [-1,-0.972269100000000,-0.945072800000000,-0.918405700000000,-0.892262400000000,-0.866637500000000,-0.841525600000000,-0.816921300000000,-0.792819200000000,-0.769213900000000,-0.746100000000000,-0.723472100000000,-0.701324800000000,-0.679652700000000,-0.658450400000000,-0.637712500000000,-0.617433600000000,-0.597608300000000,-0.578231200000000,-0.559296900000000,-0.540800000000000,-0.522735100000000,-0.505096800000000,-0.487879700000000,-0.471078400000000,-0.454687500000000,-0.438701600000000,-0.423115300000000,-0.407923200000000,-0.393119900000000,-0.378700000000000,-0.364658100000000,-0.350988800000000,-0.337686700000000,-0.324746400000000,-0.312162500000000,-0.299929600000000,-0.288042300000000,-0.276495200000000,-0.265282900000000,-0.254400000000000,-0.243841100000000,-0.233600800000000,-0.223673700000000,-0.214054400000000,-0.204737500000000,-0.195717600000000,-0.186989300000000,-0.178547200000000,-0.170385900000000,-0.162500000000000,-0.154884100000000,-0.147532800000000,-0.140440700000000,-0.133602400000000,-0.127012500000000,-0.120665600000000,-0.114556300000000,-0.108679200000000,-0.103028900000000,-0.0976000000000000,-0.0923871000000000,-0.0873848000000000,-0.0825877000000000,-0.0779904000000000,-0.0735875000000000,-0.0693736000000000,-0.0653433000000000,-0.0614912000000000,-0.0578119000000000,-0.0543000000000000,-0.0509501000000000,-0.0477568000000000,-0.0447147000000000,-0.0418184000000000,-0.0390625000000000,-0.0364416000000000,-0.0339503000000000,-0.0315832000000000,-0.0293349000000000,-0.0272000000000000,-0.0251731000000000,-0.0232488000000000,-0.0214217000000000,-0.0196864000000000,-0.0180375000000000,-0.0164696000000000,-0.0149773000000000,-0.0135552000000000,-0.0121979000000000,-0.0109000000000000,-0.00965610000000000,-0.00846080000000000,-0.00730870000000000,-0.00619440000000000,-0.00511250000000000,-0.00405760000000000,-0.00302430000000000,-0.00200720000000000,-0.00100090000000000,0,0.00100090000000000,0.00200720000000000,0.00302430000000000,0.00405760000000000,0.00511250000000000,0.00619440000000000,0.00730870000000000,0.00846080000000000,0.00965610000000000,0.0109000000000000,0.0121979000000000,0.0135552000000000,0.0149773000000000,0.0164696000000000,0.0180375000000000,0.0196864000000000,0.0214217000000000,0.0232488000000000,0.0251731000000000,0.0272000000000000,0.0293349000000000,0.0315832000000000,0.0339503000000000,0.0364416000000000,0.0390625000000000,0.0418184000000000,0.0447147000000000,0.0477568000000000,0.0509501000000000,0.0543000000000000,0.0578119000000000,0.0614912000000000,0.0653433000000000,0.0693736000000000,0.0735875000000000,0.0779904000000000,0.0825877000000000,0.0873848000000000,0.0923871000000000,0.0976000000000000,0.103028900000000,0.108679200000000,0.114556300000000,0.120665600000000,0.127012500000000,0.133602400000000,0.140440700000000,0.147532800000000,0.154884100000000,0.162500000000000,0.170385900000000,0.178547200000000,0.186989300000000,0.195717600000000,0.204737500000000,0.214054400000000,0.223673700000000,0.233600800000000,0.243841100000000,0.254400000000000,0.265282900000000,0.276495200000000,0.288042300000000,0.299929600000000,0.312162500000000,0.324746400000000,0.337686700000000,0.350988800000000,0.364658100000000,0.378700000000000,0.393119900000000,0.407923200000000,0.423115300000000,0.438701600000000,0.454687500000000,0.471078400000000,0.487879700000000,0.505096800000000,0.522735100000000,0.540800000000000,0.559296900000000,0.578231200000000,0.597608300000000,0.617433600000000,0.637712500000000,0.658450400000000,0.679652700000000,0.701324800000000,0.723472100000000,0.746100000000000,0.769213900000000,0.792819200000000,0.816921300000000,0.841525600000000,0.866637500000000,0.892262400000000,0.918405700000000,0.945072800000000,0.972269100000000,1;-1,-0.976209300000000,-0.952834400000000,-0.929871100000000,-0.907315200000000,-0.885162500000000,-0.863408800000000,-0.842049900000000,-0.821081600000000,-0.800499700000000,-0.780300000000000,-0.760478300000000,-0.741030400000000,-0.721952100000000,-0.703239200000000,-0.684887500000000,-0.666892800000000,-0.649250900000000,-0.631957600000000,-0.615008700000000,-0.598400000000000,-0.582127300000000,-0.566186400000000,-0.550573100000000,-0.535283200000000,-0.520312500000000,-0.505656800000000,-0.491311900000000,-0.477273600000000,-0.463537700000000,-0.450100000000000,-0.436956300000000,-0.424102400000000,-0.411534100000000,-0.399247200000000,-0.387237500000000,-0.375500800000000,-0.364032900000000,-0.352829600000000,-0.341886700000000,-0.331200000000000,-0.320765300000000,-0.310578400000000,-0.300635100000000,-0.290931200000000,-0.281462500000000,-0.272224800000000,-0.263213900000000,-0.254425600000000,-0.245855700000000,-0.237500000000000,-0.229354300000000,-0.221414400000000,-0.213676100000000,-0.206135200000000,-0.198787500000000,-0.191628800000000,-0.184654900000000,-0.177861600000000,-0.171244700000000,-0.164800000000000,-0.158523300000000,-0.152410400000000,-0.146457100000000,-0.140659200000000,-0.135012500000000,-0.129512800000000,-0.124155900000000,-0.118937600000000,-0.113853700000000,-0.108900000000000,-0.104072300000000,-0.0993664000000000,-0.0947781000000000,-0.0903032000000000,-0.0859375000000000,-0.0816768000000000,-0.0775169000000000,-0.0734536000000000,-0.0694827000000000,-0.0656000000000000,-0.0618013000000000,-0.0580824000000000,-0.0544391000000000,-0.0508672000000000,-0.0473625000000000,-0.0439208000000000,-0.0405379000000000,-0.0372096000000000,-0.0339317000000000,-0.0307000000000000,-0.0275103000000000,-0.0243584000000000,-0.0212401000000000,-0.0181512000000000,-0.0150875000000000,-0.0120448000000000,-0.00901890000000000,-0.00600560000000000,-0.00300070000000000,0,0.00300070000000000,0.00600560000000000,0.00901890000000000,0.0120448000000000,0.0150875000000000,0.0181512000000000,0.0212401000000000,0.0243584000000000,0.0275103000000000,0.0307000000000000,0.0339317000000000,0.0372096000000000,0.0405379000000000,0.0439208000000000,0.0473625000000000,0.0508672000000000,0.0544391000000000,0.0580824000000000,0.0618013000000000,0.0656000000000000,0.0694827000000000,0.0734536000000000,0.0775169000000000,0.0816768000000000,0.0859375000000000,0.0903032000000000,0.0947781000000000,0.0993664000000000,0.104072300000000,0.108900000000000,0.113853700000000,0.118937600000000,0.124155900000000,0.129512800000000,0.135012500000000,0.140659200000000,0.146457100000000,0.152410400000000,0.158523300000000,0.164800000000000,0.171244700000000,0.177861600000000,0.184654900000000,0.191628800000000,0.198787500000000,0.206135200000000,0.213676100000000,0.221414400000000,0.229354300000000,0.237500000000000,0.245855700000000,0.254425600000000,0.263213900000000,0.272224800000000,0.281462500000000,0.290931200000000,0.300635100000000,0.310578400000000,0.320765300000000,0.331200000000000,0.341886700000000,0.352829600000000,0.364032900000000,0.375500800000000,0.387237500000000,0.399247200000000,0.411534100000000,0.424102400000000,0.436956300000000,0.450100000000000,0.463537700000000,0.477273600000000,0.491311900000000,0.505656800000000,0.520312500000000,0.535283200000000,0.550573100000000,0.566186400000000,0.582127300000000,0.598400000000000,0.615008700000000,0.631957600000000,0.649250900000000,0.666892800000000,0.684887500000000,0.703239200000000,0.721952100000000,0.741030400000000,0.760478300000000,0.780300000000000,0.800499700000000,0.821081600000000,0.842049900000000,0.863408800000000,0.885162500000000,0.907315200000000,0.929871100000000,0.952834400000000,0.976209300000000,1;-1,-0.980149500000000,-0.960596000000000,-0.941336500000000,-0.922368000000000,-0.903687500000000,-0.885292000000000,-0.867178500000000,-0.849344000000000,-0.831785500000000,-0.814500000000000,-0.797484500000000,-0.780736000000000,-0.764251500000000,-0.748028000000000,-0.732062500000000,-0.716352000000000,-0.700893500000000,-0.685684000000000,-0.670720500000000,-0.656000000000000,-0.641519500000000,-0.627276000000000,-0.613266500000000,-0.599488000000000,-0.585937500000000,-0.572612000000000,-0.559508500000000,-0.546624000000000,-0.533955500000000,-0.521500000000000,-0.509254500000000,-0.497216000000000,-0.485381500000000,-0.473748000000000,-0.462312500000000,-0.451072000000000,-0.440023500000000,-0.429164000000000,-0.418490500000000,-0.408000000000000,-0.397689500000000,-0.387556000000000,-0.377596500000000,-0.367808000000000,-0.358187500000000,-0.348732000000000,-0.339438500000000,-0.330304000000000,-0.321325500000000,-0.312500000000000,-0.303824500000000,-0.295296000000000,-0.286911500000000,-0.278668000000000,-0.270562500000000,-0.262592000000000,-0.254753500000000,-0.247044000000000,-0.239460500000000,-0.232000000000000,-0.224659500000000,-0.217436000000000,-0.210326500000000,-0.203328000000000,-0.196437500000000,-0.189652000000000,-0.182968500000000,-0.176384000000000,-0.169895500000000,-0.163500000000000,-0.157194500000000,-0.150976000000000,-0.144841500000000,-0.138788000000000,-0.132812500000000,-0.126912000000000,-0.121083500000000,-0.115324000000000,-0.109630500000000,-0.104000000000000,-0.0984295000000000,-0.0929160000000000,-0.0874565000000000,-0.0820480000000000,-0.0766875000000000,-0.0713720000000000,-0.0660985000000000,-0.0608640000000000,-0.0556655000000000,-0.0505000000000000,-0.0453645000000000,-0.0402560000000000,-0.0351715000000000,-0.0301080000000000,-0.0250625000000000,-0.0200320000000000,-0.0150135000000000,-0.0100040000000000,-0.00500050000000000,0,0.00500050000000000,0.0100040000000000,0.0150135000000000,0.0200320000000000,0.0250625000000000,0.0301080000000000,0.0351715000000000,0.0402560000000000,0.0453645000000000,0.0505000000000000,0.0556655000000000,0.0608640000000000,0.0660985000000000,0.0713720000000000,0.0766875000000000,0.0820480000000000,0.0874565000000000,0.0929160000000000,0.0984295000000000,0.104000000000000,0.109630500000000,0.115324000000000,0.121083500000000,0.126912000000000,0.132812500000000,0.138788000000000,0.144841500000000,0.150976000000000,0.157194500000000,0.163500000000000,0.169895500000000,0.176384000000000,0.182968500000000,0.189652000000000,0.196437500000000,0.203328000000000,0.210326500000000,0.217436000000000,0.224659500000000,0.232000000000000,0.239460500000000,0.247044000000000,0.254753500000000,0.262592000000000,0.270562500000000,0.278668000000000,0.286911500000000,0.295296000000000,0.303824500000000,0.312500000000000,0.321325500000000,0.330304000000000,0.339438500000000,0.348732000000000,0.358187500000000,0.367808000000000,0.377596500000000,0.387556000000000,0.397689500000000,0.408000000000000,0.418490500000000,0.429164000000000,0.440023500000000,0.451072000000000,0.462312500000000,0.473748000000000,0.485381500000000,0.497216000000000,0.509254500000000,0.521500000000000,0.533955500000000,0.546624000000000,0.559508500000000,0.572612000000000,0.585937500000000,0.599488000000000,0.613266500000000,0.627276000000000,0.641519500000000,0.656000000000000,0.670720500000000,0.685684000000000,0.700893500000000,0.716352000000000,0.732062500000000,0.748028000000000,0.764251500000000,0.780736000000000,0.797484500000000,0.814500000000000,0.831785500000000,0.849344000000000,0.867178500000000,0.885292000000000,0.903687500000000,0.922368000000000,0.941336500000000,0.960596000000000,0.980149500000000,1;-1,-0.984089700000000,-0.968357600000000,-0.952801900000000,-0.937420800000000,-0.922212500000000,-0.907175200000000,-0.892307100000000,-0.877606400000000,-0.863071300000000,-0.848700000000000,-0.834490700000000,-0.820441600000000,-0.806550900000000,-0.792816800000000,-0.779237500000000,-0.765811200000000,-0.752536100000000,-0.739410400000000,-0.726432300000000,-0.713600000000000,-0.700911700000000,-0.688365600000000,-0.675959900000000,-0.663692800000000,-0.651562500000000,-0.639567200000000,-0.627705100000000,-0.615974400000000,-0.604373300000000,-0.592900000000000,-0.581552700000000,-0.570329600000000,-0.559228900000000,-0.548248800000000,-0.537387500000000,-0.526643200000000,-0.516014100000000,-0.505498400000000,-0.495094300000000,-0.484800000000000,-0.474613700000000,-0.464533600000000,-0.454557900000000,-0.444684800000000,-0.434912500000000,-0.425239200000000,-0.415663100000000,-0.406182400000000,-0.396795300000000,-0.387500000000000,-0.378294700000000,-0.369177600000000,-0.360146900000000,-0.351200800000000,-0.342337500000000,-0.333555200000000,-0.324852100000000,-0.316226400000000,-0.307676300000000,-0.299200000000000,-0.290795700000000,-0.282461600000000,-0.274195900000000,-0.265996800000000,-0.257862500000000,-0.249791200000000,-0.241781100000000,-0.233830400000000,-0.225937300000000,-0.218100000000000,-0.210316700000000,-0.202585600000000,-0.194904900000000,-0.187272800000000,-0.179687500000000,-0.172147200000000,-0.164650100000000,-0.157194400000000,-0.149778300000000,-0.142400000000000,-0.135057700000000,-0.127749600000000,-0.120473900000000,-0.113228800000000,-0.106012500000000,-0.0988232000000000,-0.0916591000000000,-0.0845184000000000,-0.0773993000000000,-0.0703000000000000,-0.0632187000000000,-0.0561536000000000,-0.0491029000000000,-0.0420648000000000,-0.0350375000000000,-0.0280192000000000,-0.0210081000000000,-0.0140024000000000,-0.00700030000000000,0,0.00700030000000000,0.0140024000000000,0.0210081000000000,0.0280192000000000,0.0350375000000000,0.0420648000000000,0.0491029000000000,0.0561536000000000,0.0632187000000000,0.0703000000000000,0.0773993000000000,0.0845184000000000,0.0916591000000000,0.0988232000000000,0.106012500000000,0.113228800000000,0.120473900000000,0.127749600000000,0.135057700000000,0.142400000000000,0.149778300000000,0.157194400000000,0.164650100000000,0.172147200000000,0.179687500000000,0.187272800000000,0.194904900000000,0.202585600000000,0.210316700000000,0.218100000000000,0.225937300000000,0.233830400000000,0.241781100000000,0.249791200000000,0.257862500000000,0.265996800000000,0.274195900000000,0.282461600000000,0.290795700000000,0.299200000000000,0.307676300000000,0.316226400000000,0.324852100000000,0.333555200000000,0.342337500000000,0.351200800000000,0.360146900000000,0.369177600000000,0.378294700000000,0.387500000000000,0.396795300000000,0.406182400000000,0.415663100000000,0.425239200000000,0.434912500000000,0.444684800000000,0.454557900000000,0.464533600000000,0.474613700000000,0.484800000000000,0.495094300000000,0.505498400000000,0.516014100000000,0.526643200000000,0.537387500000000,0.548248800000000,0.559228900000000,0.570329600000000,0.581552700000000,0.592900000000000,0.604373300000000,0.615974400000000,0.627705100000000,0.639567200000000,0.651562500000000,0.663692800000000,0.675959900000000,0.688365600000000,0.700911700000000,0.713600000000000,0.726432300000000,0.739410400000000,0.752536100000000,0.765811200000000,0.779237500000000,0.792816800000000,0.806550900000000,0.820441600000000,0.834490700000000,0.848700000000000,0.863071300000000,0.877606400000000,0.892307100000000,0.907175200000000,0.922212500000000,0.937420800000000,0.952801900000000,0.968357600000000,0.984089700000000,1;-1,-0.988029900000000,-0.976119200000000,-0.964267300000000,-0.952473600000000,-0.940737500000000,-0.929058400000000,-0.917435700000000,-0.905868800000000,-0.894357100000000,-0.882900000000000,-0.871496900000000,-0.860147200000000,-0.848850300000000,-0.837605600000000,-0.826412500000000,-0.815270400000000,-0.804178700000000,-0.793136800000000,-0.782144100000000,-0.771200000000000,-0.760303900000000,-0.749455200000000,-0.738653300000000,-0.727897600000000,-0.717187500000000,-0.706522400000000,-0.695901700000000,-0.685324800000000,-0.674791100000000,-0.664300000000000,-0.653850900000000,-0.643443200000000,-0.633076300000000,-0.622749600000000,-0.612462500000000,-0.602214400000000,-0.592004700000000,-0.581832800000000,-0.571698100000000,-0.561600000000000,-0.551537900000000,-0.541511200000000,-0.531519300000000,-0.521561600000000,-0.511637500000000,-0.501746400000000,-0.491887700000000,-0.482060800000000,-0.472265100000000,-0.462500000000000,-0.452764900000000,-0.443059200000000,-0.433382300000000,-0.423733600000000,-0.414112500000000,-0.404518400000000,-0.394950700000000,-0.385408800000000,-0.375892100000000,-0.366400000000000,-0.356931900000000,-0.347487200000000,-0.338065300000000,-0.328665600000000,-0.319287500000000,-0.309930400000000,-0.300593700000000,-0.291276800000000,-0.281979100000000,-0.272700000000000,-0.263438900000000,-0.254195200000000,-0.244968300000000,-0.235757600000000,-0.226562500000000,-0.217382400000000,-0.208216700000000,-0.199064800000000,-0.189926100000000,-0.180800000000000,-0.171685900000000,-0.162583200000000,-0.153491300000000,-0.144409600000000,-0.135337500000000,-0.126274400000000,-0.117219700000000,-0.108172800000000,-0.0991331000000000,-0.0901000000000000,-0.0810729000000000,-0.0720512000000000,-0.0630343000000000,-0.0540216000000000,-0.0450125000000000,-0.0360064000000000,-0.0270027000000000,-0.0180008000000000,-0.00900010000000000,0,0.00900010000000000,0.0180008000000000,0.0270027000000000,0.0360064000000000,0.0450125000000000,0.0540216000000000,0.0630343000000000,0.0720512000000000,0.0810729000000000,0.0901000000000000,0.0991331000000000,0.108172800000000,0.117219700000000,0.126274400000000,0.135337500000000,0.144409600000000,0.153491300000000,0.162583200000000,0.171685900000000,0.180800000000000,0.189926100000000,0.199064800000000,0.208216700000000,0.217382400000000,0.226562500000000,0.235757600000000,0.244968300000000,0.254195200000000,0.263438900000000,0.272700000000000,0.281979100000000,0.291276800000000,0.300593700000000,0.309930400000000,0.319287500000000,0.328665600000000,0.338065300000000,0.347487200000000,0.356931900000000,0.366400000000000,0.375892100000000,0.385408800000000,0.394950700000000,0.404518400000000,0.414112500000000,0.423733600000000,0.433382300000000,0.443059200000000,0.452764900000000,0.462500000000000,0.472265100000000,0.482060800000000,0.491887700000000,0.501746400000000,0.511637500000000,0.521561600000000,0.531519300000000,0.541511200000000,0.551537900000000,0.561600000000000,0.571698100000000,0.581832800000000,0.592004700000000,0.602214400000000,0.612462500000000,0.622749600000000,0.633076300000000,0.643443200000000,0.653850900000000,0.664300000000000,0.674791100000000,0.685324800000000,0.695901700000000,0.706522400000000,0.717187500000000,0.727897600000000,0.738653300000000,0.749455200000000,0.760303900000000,0.771200000000000,0.782144100000000,0.793136800000000,0.804178700000000,0.815270400000000,0.826412500000000,0.837605600000000,0.848850300000000,0.860147200000000,0.871496900000000,0.882900000000000,0.894357100000000,0.905868800000000,0.917435700000000,0.929058400000000,0.940737500000000,0.952473600000000,0.964267300000000,0.976119200000000,0.988029900000000,1];
y_b = [-1,-0.996416201311005,-0.992807376262137,-0.989173086677517,-0.985512882025255,-0.981826298934516,-0.978112860688357,-0.974372076690839,-0.970603441906805,-0.966806436272630,-0.962980524076077,-0.959125153303276,-0.955239754950701,-0.951323742299830,-0.947376510152018,-0.943397434020892,-0.939385869279387,-0.935341150258290,-0.931262589292915,-0.927149475714235,-0.923001074780519,-0.918816626545134,-0.914595344655872,-0.910336415080675,-0.906038994754243,-0.901702210139480,-0.897325155697198,-0.892906892256891,-0.888446445280709,-0.883942803012041,-0.879394914499268,-0.874801687484338,-0.870161986144793,-0.865474628676734,-0.860738384704939,-0.855951972504927,-0.851114056020147,-0.846223241655708,-0.841278074828022,-0.836277036247478,-0.831218537908700,-0.826100918760033,-0.820922440020648,-0.815681280109879,-0.810375529149232,-0.805003182992608,-0.799562136734791,-0.794050177641930,-0.788464977440445,-0.782804083892457,-0.777064911576165,-0.771244731778426,-0.765340661393847,-0.759349650709569,-0.753268469937355,-0.747093694333918,-0.740821687726225,-0.734448584229906,-0.727970267915097,-0.721382350133889,-0.714680144175682,-0.707858636859406,-0.700912456602706,-0.693835837424939,-0.686622578239888,-0.679265996671006,-0.671758876471103,-0.664093407442462,-0.656261116522914,-0.648252788415972,-0.640058373782393,-0.631666882554688,-0.623066259355766,-0.614243237258546,-0.605183165160588,-0.595869802791635,-0.586285075717476,-0.576408780502528,-0.566218227233371,-0.555687802577837,-0.544788431004515,-0.533486904035143,-0.521745036410918,-0.509518592214469,-0.496755900754126,-0.483396047258067,-0.469366470288671,-0.454579714575870,-0.438928954111466,-0.422281678422509,-0.404470554254077,-0.385279796088911,-0.364424113889655,-0.341514826597312,-0.316002579993033,-0.287074699913191,-0.253458196724100,-0.213012416437201,-0.161845570564714,-0.0928059967739367,5.65979942426670e-73,0.0928059967739367,0.161845570564714,0.213012416437201,0.253458196724100,0.287074699913191,0.316002579993033,0.341514826597312,0.364424113889655,0.385279796088911,0.404470554254077,0.422281678422509,0.438928954111466,0.454579714575870,0.469366470288671,0.483396047258067,0.496755900754126,0.509518592214469,0.521745036410918,0.533486904035143,0.544788431004515,0.555687802577837,0.566218227233371,0.576408780502528,0.586285075717476,0.595869802791635,0.605183165160588,0.614243237258546,0.623066259355766,0.631666882554688,0.640058373782393,0.648252788415972,0.656261116522914,0.664093407442462,0.671758876471103,0.679265996671006,0.686622578239888,0.693835837424939,0.700912456602706,0.707858636859406,0.714680144175682,0.721382350133889,0.727970267915097,0.734448584229906,0.740821687726225,0.747093694333918,0.753268469937355,0.759349650709569,0.765340661393847,0.771244731778426,0.777064911576165,0.782804083892457,0.788464977440445,0.794050177641930,0.799562136734791,0.805003182992608,0.810375529149232,0.815681280109879,0.820922440020648,0.826100918760033,0.831218537908700,0.836277036247478,0.841278074828022,0.846223241655708,0.851114056020147,0.855951972504927,0.860738384704939,0.865474628676734,0.870161986144793,0.874801687484338,0.879394914499268,0.883942803012041,0.888446445280709,0.892906892256891,0.897325155697198,0.901702210139480,0.906038994754243,0.910336415080675,0.914595344655872,0.918816626545134,0.923001074780519,0.927149475714235,0.931262589292915,0.935341150258290,0.939385869279387,0.943397434020892,0.947376510152018,0.951323742299830,0.955239754950701,0.959125153303276,0.962980524076077,0.966806436272630,0.970603441906805,0.974372076690839,0.978112860688357,0.981826298934516,0.985512882025255,0.989173086677517,0.992807376262137,0.996416201311005,1;-1,-0.995818052062412,-0.991605175272411,-0.987360808385163,-0.983084373957462,-0.978775277705721,-0.974432907831540,-0.970056634312865,-0.965645808158592,-0.961199760624331,-0.956717802386858,-0.952199222674618,-0.947643288351409,-0.943049242950211,-0.938416305653820,-0.933743670218765,-0.929030503838621,-0.924275945942604,-0.919479106924944,-0.914639066800172,-0.909754873779095,-0.904825542759731,-0.899850053727045,-0.894827350054781,-0.889756336702078,-0.884635878296967,-0.879464797098091,-0.874241870825253,-0.868965830348500,-0.863635357224542,-0.858249081068220,-0.852805576745598,-0.847303361373955,-0.841740891112509,-0.836116557726137,-0.830428684902555,-0.824675524301452,-0.818855251311858,-0.812965960491575,-0.807005660659671,-0.800972269610016,-0.794863608410266,-0.788677395246818,-0.782411238771838,-0.776062630903419,-0.769628939024329,-0.763107397518369,-0.756495098576113,-0.749788982193530,-0.742985825277605,-0.736082229762311,-0.729074609626056,-0.721959176687654,-0.714731925041754,-0.707388613976144,-0.699924749191988,-0.692335562123406,-0.684615987124323,-0.676760636257495,-0.668763771382239,-0.660619273192848,-0.652320606807616,-0.643860783447744,-0.635232317674365,-0.626427179568778,-0.617436741143393,-0.608251716156361,-0.598862092368201,-0.589257055120540,-0.579424900931121,-0.569352939581060,-0.559027382914871,-0.548433218275925,-0.537554064154824,-0.526372005232003,-0.514867403547832,-0.503018682038057,-0.490802076144543,-0.478191348683668,-0.465157462691503,-0.451668206683177,-0.437687766869833,-0.423176241725394,-0.408089096488514,-0.392376559730011,-0.375982972682176,-0.358846117349838,-0.340896575922609,-0.322057218665727,-0.302242990931706,-0.281361287468310,-0.259313383154313,-0.235997651575749,-0.211315644202477,-0.185182453832472,-0.157542915715219,-0.128394584869137,-0.0978162175069227,-0.0659959656738213,-0.0332475788451765,0,0.0332475788451765,0.0659959656738213,0.0978162175069227,0.128394584869137,0.157542915715219,0.185182453832472,0.211315644202477,0.235997651575749,0.259313383154313,0.281361287468310,0.302242990931706,0.322057218665727,0.340896575922609,0.358846117349838,0.375982972682176,0.392376559730011,0.408089096488514,0.423176241725394,0.437687766869833,0.451668206683177,0.465157462691503,0.478191348683668,0.490802076144543,0.503018682038057,0.514867403547832,0.526372005232003,0.537554064154824,0.548433218275925,0.559027382914871,0.569352939581060,0.579424900931121,0.589257055120540,0.598862092368201,0.608251716156361,0.617436741143393,0.626427179568778,0.635232317674365,0.643860783447744,0.652320606807616,0.660619273192848,0.668763771382239,0.676760636257495,0.684615987124323,0.692335562123406,0.699924749191988,0.707388613976144,0.714731925041754,0.721959176687654,0.729074609626056,0.736082229762311,0.742985825277605,0.749788982193530,0.756495098576113,0.763107397518369,0.769628939024329,0.776062630903419,0.782411238771838,0.788677395246818,0.794863608410266,0.800972269610016,0.807005660659671,0.812965960491575,0.818855251311858,0.824675524301452,0.830428684902555,0.836116557726137,0.841740891112509,0.847303361373955,0.852805576745598,0.858249081068220,0.863635357224542,0.868965830348500,0.874241870825253,0.879464797098091,0.884635878296967,0.889756336702078,0.894827350054781,0.899850053727045,0.904825542759731,0.909754873779095,0.914639066800172,0.919479106924944,0.924275945942604,0.929030503838621,0.933743670218765,0.938416305653820,0.943049242950211,0.947643288351409,0.952199222674618,0.956717802386858,0.961199760624331,0.965645808158592,0.970056634312865,0.974432907831540,0.978775277705721,0.983084373957462,0.987360808385163,0.991605175272411,0.995818052062412,1;-1,-0.994981139887340,-0.989924113112388,-0.984828236257000,-0.979692807015473,-0.974517103497566,-0.969300383499722,-0.964041883742772,-0.958740819074336,-0.953396381633977,-0.948007739979098,-0.942574038169394,-0.937094394807595,-0.931567902034039,-0.925993624472511,-0.920370598124577,-0.914697829209526,-0.908974292946785,-0.903198932277538,-0.897370656522038,-0.891488339968883,-0.885550820392318,-0.879556897493333,-0.873505331260120,-0.867394840243110,-0.861224099739574,-0.854991739882399,-0.848696343627387,-0.842336444632999,-0.835910525026171,-0.829417013047384,-0.822854280567816,-0.816220640470939,-0.809514343890522,-0.802733577296537,-0.795876459419995,-0.788941038007287,-0.781925286394121,-0.774827099888673,-0.767644291953123,-0.760374590172300,-0.753015631997751,-0.745564960255218,-0.738020018403194,-0.730378145530063,-0.722636571077270,-0.714792409276056,-0.706842653285656,-0.698784169021402,-0.690613688662177,-0.682327803828019,-0.673922958420617,-0.665395441122060,-0.656741377550696,-0.647956722077420,-0.639037249311602,-0.629978545273215,-0.620775998277135,-0.611424789567321,-0.601919883753303,-0.592256019119650,-0.582427697901691,-0.572429176648634,-0.562254456829427,-0.551897275878614,-0.541351098930517,-0.530609111552160,-0.519664213860548,-0.508509016500509,-0.497135839068082,-0.485536711694142,-0.473703380656848,-0.461627319072440,-0.449299743924918,-0.436711640938138,-0.423853799069783,-0.410716856713990,-0.397291362033077,-0.383567850188523,-0.369536940588808,-0.355189457588230,-0.340516578312989,-0.325510011397062,-0.310162210296829,-0.294466624410535,-0.278417990321810,-0.262012663959446,-0.245248992154482,-0.228127718832997,-0.210652416819081,-0.192829930962913,-0.174670812267225,-0.156189716338350,-0.137405733630923,-0.118342614704130,-0.0990288524054573,-0.0794975858968170,-0.0597862997522319,-0.0399363052482244,-0.0199920095846681,0,0.0199920095846681,0.0399363052482244,0.0597862997522319,0.0794975858968170,0.0990288524054573,0.118342614704130,0.137405733630923,0.156189716338350,0.174670812267225,0.192829930962913,0.210652416819081,0.228127718832997,0.245248992154482,0.262012663959446,0.278417990321810,0.294466624410535,0.310162210296829,0.325510011397062,0.340516578312989,0.355189457588230,0.369536940588808,0.383567850188523,0.397291362033077,0.410716856713990,0.423853799069783,0.436711640938138,0.449299743924918,0.461627319072440,0.473703380656848,0.485536711694142,0.497135839068082,0.508509016500509,0.519664213860548,0.530609111552160,0.541351098930517,0.551897275878614,0.562254456829427,0.572429176648634,0.582427697901691,0.592256019119650,0.601919883753303,0.611424789567321,0.620775998277135,0.629978545273215,0.639037249311602,0.647956722077420,0.656741377550696,0.665395441122060,0.673922958420617,0.682327803828019,0.690613688662177,0.698784169021402,0.706842653285656,0.714792409276056,0.722636571077270,0.730378145530063,0.738020018403194,0.745564960255218,0.753015631997751,0.760374590172300,0.767644291953123,0.774827099888673,0.781925286394121,0.788941038007287,0.795876459419995,0.802733577296537,0.809514343890522,0.816220640470939,0.822854280567816,0.829417013047384,0.835910525026171,0.842336444632999,0.848696343627387,0.854991739882399,0.861224099739574,0.867394840243110,0.873505331260120,0.879556897493333,0.885550820392318,0.891488339968883,0.897370656522038,0.903198932277538,0.908974292946785,0.914697829209526,0.920370598124577,0.925993624472511,0.931567902034039,0.937094394807595,0.942574038169394,0.948007739979098,0.953396381633977,0.958740819074336,0.964041883742772,0.969300383499722,0.974517103497566,0.979692807015473,0.984828236257000,0.989924113112388,0.994981139887340,1;-1,-0.993727918069175,-0.987411230692585,-0.981049265264289,-0.974641335293127,-0.968186740092072,-0.961684764463289,-0.955134678379251,-0.948535736660241,-0.941887178648702,-0.935188227880890,-0.928438091756413,-0.921635961206272,-0.914781010360150,-0.907872396213735,-0.900909258297029,-0.893890718344652,-0.886815879969325,-0.879683828339811,-0.872493629864790,-0.865244331884263,-0.857934962370312,-0.850564529639204,-0.843132022077075,-0.835636407881648,-0.828076634822727,-0.820451630024473,-0.812760299772797,-0.805001529351539,-0.797174182911484,-0.789277103376651,-0.781309112392761,-0.773269010323231,-0.765155576298595,-0.756967568325777,-0.748703723464269,-0.740362758076909,-0.731943368163643,-0.723444229787427,-0.714863999602198,-0.706201315493736,-0.697454797345101,-0.688623047939358,-0.679704654013248,-0.670698187476607,-0.661602206813400,-0.652415258681429,-0.643135879728970,-0.633762598647811,-0.624293938483433,-0.614728419224289,-0.605064560693397,-0.595300885766622,-0.585435923943165,-0.575468215294759,-0.565396314820990,-0.555218797238784,-0.544934262234583,-0.534541340207828,-0.524038698534128,-0.513425048375740,-0.502699152065749,-0.491859831090347,-0.480905974690944,-0.469836549104215,-0.458650607453591,-0.447347300299926,-0.435925886852055,-0.424385746829496,-0.412726392959609,-0.400947484079901,-0.389048838802927,-0.377030449686144,-0.364892497832354,-0.352635367827894,-0.340259662905765,-0.327766220199588,-0.315156125932021,-0.302430730358419,-0.289591662263742,-0.276640842788607,-0.263580498339784,-0.250413172322357,-0.237141735416072,-0.223769394108390,-0.210299697192399,-0.196736539940274,-0.183084165673286,-0.169347164468469,-0.155530468770473,-0.141639345715190,-0.127679386019440,-0.113656489347711,-0.0995768461317394,-0.0854469158900132,-0.0712734021701690,-0.0570632243152027,-0.0428234863318090,-0.0285614432129572,-0.0142844651340678,1.13195988485334e-72,0.0142844651340678,0.0285614432129572,0.0428234863318090,0.0570632243152027,0.0712734021701690,0.0854469158900132,0.0995768461317394,0.113656489347711,0.127679386019440,0.141639345715190,0.155530468770473,0.169347164468469,0.183084165673286,0.196736539940274,0.210299697192399,0.223769394108390,0.237141735416072,0.250413172322357,0.263580498339784,0.276640842788607,0.289591662263742,0.302430730358419,0.315156125932021,0.327766220199588,0.340259662905765,0.352635367827894,0.364892497832354,0.377030449686144,0.389048838802927,0.400947484079901,0.412726392959609,0.424385746829496,0.435925886852055,0.447347300299926,0.458650607453591,0.469836549104215,0.480905974690944,0.491859831090347,0.502699152065749,0.513425048375740,0.524038698534128,0.534541340207828,0.544934262234583,0.555218797238784,0.565396314820990,0.575468215294759,0.585435923943165,0.595300885766622,0.605064560693397,0.614728419224289,0.624293938483433,0.633762598647811,0.643135879728970,0.652415258681429,0.661602206813400,0.670698187476607,0.679704654013248,0.688623047939358,0.697454797345101,0.706201315493736,0.714863999602198,0.723444229787427,0.731943368163643,0.740362758076909,0.748703723464269,0.756967568325777,0.765155576298595,0.773269010323231,0.781309112392761,0.789277103376651,0.797174182911484,0.805001529351539,0.812760299772797,0.820451630024473,0.828076634822727,0.835636407881648,0.843132022077075,0.850564529639204,0.857934962370312,0.865244331884263,0.872493629864790,0.879683828339811,0.886815879969325,0.893890718344652,0.900909258297029,0.907872396213735,0.914781010360150,0.921635961206272,0.928438091756413,0.935188227880890,0.941887178648702,0.948535736660241,0.955134678379251,0.961684764463289,0.968186740092072,0.974641335293127,0.981049265264289,0.987411230692585,0.993727918069175,1;-1,-0.991649281569855,-0.983263698041004,-0.974843109466312,-0.966387379249659,-0.957896374321279,-0.949369965318005,-0.940808026768459,-0.932210437283216,-0.923577079749961,-0.914907841533660,-0.906202614681745,-0.897461296134316,-0.888683787939342,-0.879869997472840,-0.871019837663994,-0.862133227225172,-0.853210090886779,-0.844250359636868,-0.835253970965430,-0.826220869113246,-0.817151005325203,-0.808044338107911,-0.798900833491497,-0.789720465295372,-0.780503215397808,-0.771249074009095,-0.761958039948050,-0.752630120921628,-0.743265333807351,-0.733863704938254,-0.724425270390037,-0.714950076270055,-0.705438179007784,-0.695889645646359,-0.686304554134758,-0.676682993620183,-0.667025064740148,-0.657330879913778,-0.647600563631774,-0.637834252744496,-0.628032096747556,-0.618194258064321,-0.608320912324673,-0.598412248639361,-0.588468469869249,-0.578489792888739,-0.568476448842630,-0.558428683395640,-0.548346756973811,-0.538230944996990,-0.528081538101554,-0.517898842352549,-0.507683179444388,-0.497434886889235,-0.487154318192215,-0.476841843012559,-0.466497847309818,-0.456122733474242,-0.445716920440481,-0.435280843783707,-0.424814955797326,-0.414319725551416,-0.403795638931100,-0.393243198654025,-0.382662924266201,-0.372055352115459,-0.361421035301829,-0.350760543604182,-0.340074463382537,-0.329363397455458,-0.318627964952065,-0.307868801138199,-0.297086557216372,-0.286281900099200,-0.275455512156081,-0.264608090932965,-0.253740348845129,-0.242853012842986,-0.231946824050991,-0.221022537379858,-0.210080921112325,-0.199122756462868,-0.188148837111785,-0.177159968714231,-0.166156968384826,-0.155140664158590,-0.144111894429018,-0.133071507364237,-0.122020360302228,-0.110959319126235,-0.0998892576215056,-0.0888110568146539,-0.0777256042969411,-0.0666337935328957,-0.0555365231557221,-0.0444346962510227,-0.0333292196304015,-0.0222210030965681,-0.0111109587015927,-2.26391976970668e-72,0.0111109587015927,0.0222210030965681,0.0333292196304015,0.0444346962510227,0.0555365231557221,0.0666337935328957,0.0777256042969411,0.0888110568146539,0.0998892576215056,0.110959319126235,0.122020360302228,0.133071507364237,0.144111894429018,0.155140664158590,0.166156968384826,0.177159968714231,0.188148837111785,0.199122756462868,0.210080921112325,0.221022537379858,0.231946824050991,0.242853012842986,0.253740348845129,0.264608090932965,0.275455512156081,0.286281900099200,0.297086557216372,0.307868801138199,0.318627964952065,0.329363397455458,0.340074463382537,0.350760543604182,0.361421035301829,0.372055352115459,0.382662924266201,0.393243198654025,0.403795638931100,0.414319725551416,0.424814955797326,0.435280843783707,0.445716920440481,0.456122733474242,0.466497847309818,0.476841843012559,0.487154318192215,0.497434886889235,0.507683179444388,0.517898842352549,0.528081538101554,0.538230944996990,0.548346756973811,0.558428683395640,0.568476448842630,0.578489792888739,0.588468469869249,0.598412248639361,0.608320912324673,0.618194258064321,0.628032096747556,0.637834252744496,0.647600563631774,0.657330879913778,0.667025064740148,0.676682993620183,0.686304554134758,0.695889645646359,0.705438179007784,0.714950076270055,0.724425270390037,0.733863704938254,0.743265333807351,0.752630120921628,0.761958039948050,0.771249074009095,0.780503215397808,0.789720465295372,0.798900833491497,0.808044338107911,0.817151005325203,0.826220869113246,0.835253970965430,0.844250359636868,0.853210090886779,0.862133227225172,0.871019837663994,0.879869997472840,0.888683787939342,0.897461296134316,0.906202614681745,0.914907841533660,0.923577079749961,0.932210437283216,0.940808026768459,0.949369965318005,0.957896374321279,0.966387379249659,0.974843109466312,0.983263698041004,0.991649281569855,1];
y_c = - y_a;
y_d = - y_b;

%% setup fill vectors

phi = (1+sqrt(5))/2;
scale = 0.9;
X = [xx,fliplr(xx)];

Y_ab = [y_a(1,:),fliplr(y_b(1,:))];
Y_cd = [y_c(1,:),fliplr(y_d(1,:))];

%% plotting...
gspec = [52 98 36]./255; % green
rspec = [204 44 27]./255; % red
pspec = [255 252 252]./255; % pink
lspec = [250 255 245]./255; % lime
auspec = [197 164 54]./255; % gold

fig1 = figure('units','normalized','outerposition',[0 0 1 1]);

ax1 = axes('Parent',fig1);
hold(ax1,'on');

pp0_f1 = fill(X,Y_ab,lspec);
rotate(pp0_f1,[0 0 1],45);
pp0_f2 = fill(X,Y_cd,lspec);
rotate(pp0_f2,[0 0 1],45);
pp0 = plot(xx,[y_a; y_b; y_c; y_d],'color',gspec);
rotate(pp0,[0 0 1],45)

pp1_f1 = fill(scale.*X,(scale/phi).*Y_ab,pspec);
pp1_f1.LineStyle = 'none';
pp1_f2 = fill(scale.*X,(scale/phi).*Y_cd,pspec);
pp1_f2.LineStyle = 'none';
pp2 = plot(scale*xx,(scale/phi)*[y_a; y_b; y_c; y_d],'color',rspec);

set(ax1,'DataAspectRatio',[1 1 1],'XTick',zeros(1,0),'YTick',zeros(1,0));
ax1.XColor = [1 1 1];
ax1.YColor = [1 1 1];
H = title(ax1,'Happy Holidays!');
H.Color = auspec;

%% Print to PDF
% set(fig1,'Units','Inches');
% 
% pos = get(fig1,'Position');
% 
% print(fig1,'HolidayFlower','-dpdf','-fillpage');
