require "../src/cryplot"

# The x coordinates used to evaluate the Bessel functions of first kind from 0th to 6th order.
x = [0.00, 0.16, 0.32, 0.48, 0.64, 0.80, 0.96, 1.12, 1.28, 1.44, 1.60, 1.76, 1.92, 2.08, 2.24, 2.40, 2.56, 2.72, 2.88, 3.04, 3.20, 3.36, 3.52, 3.68, 3.84, 4.00, 4.16, 4.32, 4.48, 4.64, 4.80, 4.96, 5.12, 5.28, 5.44, 5.60, 5.76, 5.92, 6.08, 6.24, 6.40, 6.56, 6.72, 6.88, 7.04, 7.20, 7.36, 7.52, 7.68, 7.84, 8.00, 8.16, 8.32, 8.48, 8.64, 8.80, 8.96, 9.12, 9.28, 9.44, 9.60, 9.76, 9.92, 10.08, 10.24, 10.40, 10.56, 10.72, 10.88, 11.04, 11.20, 11.36, 11.52, 11.68, 11.84, 12.00, 12.16, 12.32, 12.48, 12.64, 12.80, 12.96, 13.12, 13.28, 13.44, 13.60, 13.76, 13.92, 14.08, 14.24, 14.40, 14.56, 14.72, 14.88, 15.04, 15.20, 15.36, 15.52, 15.68, 15.84, 16.00]

# The evaluation of the Bessel functions at the previous x coordinates.
J0 = [1.000000000000000000e+00, 9.936102327211342455e-01, 9.745633747111134282e-01, 9.432241506503378226e-01, 9.001918039460019560e-01, 8.462873527504801707e-01, 7.825361488125408549e-01, 7.101461285204617724e-01, 6.304822412235855378e-01, 5.450376245098231820e-01, 4.554021676393806839e-01, 3.632291611632363360e-01, 2.702007716058131281e-01, 1.779931040548034527e-01, 8.824162206109108231e-02, 2.507683297243825174e-03, -7.775307874953449327e-02, -1.512198414689265302e-01, -2.167325227611207050e-01, -2.733140023179435052e-01, -3.201881696571229896e-01, -3.567934306311790760e-01, -3.827914086958546513e-01, -3.980706872880427349e-01, -4.027455526643344830e-01, -3.971498098638474583e-01, -3.818258554608895960e-01, -3.575092969065711279e-01, -3.251095070901190431e-01, -2.856865920278469639e-01, -2.404253272911834327e-01, -1.906066831755050817e-01, -1.375776082691220203e-01, -8.271977493890782240e-02, -2.741800761350903295e-02, 2.697088468511476406e-02, 7.914816624230103237e-02, 1.279014500109916519e-01, 1.721305651588151964e-01, 2.108704533615528287e-01, 2.433106048234065788e-01, 2.688106301815360033e-01, 2.869116583113798247e-01, 2.973433503241693088e-01, 3.000264243354708871e-01, 2.950706914009578741e-01, 2.827687078602996729e-01, 2.635852507390633592e-01, 2.381429184667438748e-01, 2.072042467649886643e-01, 1.716508071375539013e-01, 1.324598211982369600e-01, 9.067887664279165871e-02, 4.739936886869831195e-02, 3.729315285999294967e-03, -3.923380317654204946e-02, -8.042952702812998511e-02, -1.188596067515189786e-01, -1.536113100959331235e-01, -1.838783149377158088e-01, -2.089787183688724403e-01, -2.283697671071412139e-01, -2.416589974631566662e-01, -2.486115628809831002e-01, -2.491536212747517409e-01, -2.433717507142071912e-01, -2.315084581305014710e-01, -2.139539393088958630e-01, -1.912343372745207160e-01, -1.639968281608026879e-01, -1.329919368595744722e-01, -9.905354749644508516e-02, -6.307712463054845897e-02, -2.599669891908107031e-02, 1.123880498680778113e-02, 4.768931079683363938e-02, 8.244682030235099546e-02, 1.146575663556245184e-01, 1.435425573394158993e-01, 1.684160263528610424e-01, 1.887013547806833669e-01, 2.039441063239981478e-01, 2.138218822441483036e-01, 2.181507896104400435e-01, 2.168883997121466289e-01, 2.101331613692484779e-01, 1.981203214925236766e-01, 1.812144907554882334e-01, 1.598990735705112243e-01, 1.347628567502398289e-01, 1.064841184903417837e-01, 7.581267704609752356e-02, 4.355034535534538231e-02, 1.053029282226344322e-02, -2.240416223963804035e-02, -5.442079684403915152e-02, -8.471923566100394987e-02, -1.125506999538566089e-01, -1.372362712386958894e-01, -1.581832290465066404e-01, -1.748990739836292219e-01]
J1 = [0.000000000000000000e+00, 7.974427292107769127e-02, 1.579607195158227728e-01, 2.331540376105754875e-01, 3.038932463489217861e-01, 3.688420460941699286e-01, 4.267870638325514387e-01, 4.766633554260069072e-01, 5.175765990614300538e-01, 5.488214901791829137e-01, 5.698959352616804752e-01, 5.805107380872188694e-01, 5.805945751578127645e-01, 5.702941645870439613e-01, 5.499696422778881377e-01, 5.201852681819310042e-01, 4.816956912792456080e-01, 4.354281021988859468e-01, 3.824606947954961589e-01, 3.239979403797176305e-01, 2.613432487805046889e-01, 1.958696473915640113e-01, 1.289891515383607412e-01, 6.212152596372564478e-02, -3.336852592055256778e-03, -6.604332802354924425e-02, -1.247378115447640018e-01, -1.782694994576819736e-01, -2.256208719293136822e-01, -2.659284489960774822e-01, -2.984998580995578132e-01, -3.228268554524583167e-01, -3.385940393305315044e-01, -3.456830947031249712e-01, -3.441725130491267159e-01, -3.343328362910072959e-01, -3.166175770477659412e-01, -2.916500664427175149e-01, -2.602065732007244336e-01, -2.231961215939915477e-01, -1.816375090241832413e-01, -1.366340850003721352e-01, -8.934690062514449860e-02, -4.096687040311361439e-02, 7.313394441734941132e-03, 5.432742022236682761e-02, 9.896172554932844423e-02, 1.401810785219362587e-01, 1.770515816300098910e-01, 2.087610662315214360e-01, 2.346363468539146846e-01, 2.541569640391036500e-01, 2.669651310770672081e-01, 2.728716926309137647e-01, 2.718579996968898405e-01, 2.640737032396775485e-01, 2.498305658502283644e-01, 2.295924845806760206e-01, 2.039620065007019534e-01, 1.736636994188235639e-01, 1.395248117406856225e-01, 1.024537159523842694e-01, 6.341667835371410378e-02, 2.341353236442240970e-02, -1.654714674283729037e-02, -5.547276184899811724e-02, -9.241071350049503974e-02, -1.264711465503575716e-01, -1.568478880039847756e-01, -1.828370892035179607e-01, -2.038531458647006578e-01, -2.194415396320996969e-01, -2.292883229675148071e-01, -2.332260533764702604e-01, -2.312360711206125075e-01, -2.234471044906274628e-01, -2.101302762283630554e-01, -1.916906716174709702e-01, -1.686557110169812634e-01, -1.416606452284784323e-01, -1.114315592776024683e-01, -7.876632738513783538e-02, -4.451400778780157524e-02, -9.553199614912674664e-03, 2.523009548582650502e-02, 5.896455724873755216e-02, 9.081503298081045061e-02, 1.200029025496036905e-01, 1.458248310840943029e-01, 1.676694624846479797e-01, 1.850316616145775972e-01, 1.975239769911860399e-01, 2.048850672671956863e-01, 2.069849119801216997e-01, 2.038267080060865988e-01, 1.955454358660210501e-01, 1.824031624476773472e-01, 1.647812268000417579e-01, 1.431695314727947643e-01, 1.181532315769018987e-01, 9.039717566130427151e-02]
J2 = [0.000000000000000000e+00, 3.193178792337117867e-03, 1.269112226277925408e-02, 2.825100606039337298e-02, 4.947459089437857699e-02, 7.581776248494473402e-02, 1.066035675052747211e-01, 1.410384347402646177e-01, 1.782311948098989907e-01, 2.172144451834864265e-01, 2.569677514377197713e-01, 2.964421321176944346e-01, 3.345852441835749924e-01, 3.703666695865849290e-01, 4.028027014013088603e-01, 4.309800401876986986e-01, 4.540778375614452078e-01, 4.713875636739897623e-01, 4.823302274802151457e-01, 4.864705420414418002e-01, 4.835277001449385104e-01, 4.733825064594910925e-01, 4.560806993426504974e-01, 4.318323861813719300e-01, 4.010076086059723988e-01, 3.641281458520728154e-01, 3.218557537566761328e-01, 2.749771212317183577e-01, 2.243859035502468735e-01, 1.710622605640204352e-01, 1.160503864163676957e-01, 6.043456404144929850e-02, 5.314311655633137572e-03, -4.822079123651831084e-02, -9.911600453690519452e-02, -1.463754690747602061e-01, -1.890848249394419534e-01, -2.264318778632611051e-01, -2.577248326590534933e-01, -2.824076718211654957e-01, -3.000723263934638174e-01, -3.104673634133567894e-01, -3.135029977831489956e-01, -3.092523242785628068e-01, -2.979487554599780097e-01, -2.799797413391893475e-01, -2.558769346131995470e-01, -2.263030490045058463e-01, -1.920357357505954876e-01, -1.539488727263352286e-01, -1.129917204240752371e-01, -7.016644765924098803e-02, -2.650456628772741852e-02, 1.695716241217757117e-02, 5.920077723642890033e-02, 9.925055391283239825e-02, 1.361952783339845374e-01, 1.692088358262286152e-01, 1.975686390831533634e-01, 2.206714715942462157e-01, 2.380463874815152703e-01, 2.493643810318101339e-01, 2.544446180989861084e-01, 2.532571050167811699e-01, 2.459217566765413421e-01, 2.327039118970921638e-01, 2.140064290584380302e-01, 1.903585761465157178e-01, 1.624020049208470262e-01, 1.308741670732088691e-01, 9.658958938373506109e-02, 6.041947361755427987e-02, 2.327012411535491279e-02, -1.393926912483506309e-02, -5.029895213555989758e-02, -8.493049487860487856e-02, -1.170077209978054589e-01, -1.457761818779412244e-01, -1.705707161562398100e-01, -1.908306854080000226e-01, -2.061125359178087590e-01, -2.160994037599761886e-01, -2.206075541630204973e-01, -2.195895244922040079e-01, -2.131339212172319864e-01, -2.014619029503164904e-01, -1.849204620476384564e-01, -1.639726944121543961e-01, -1.391853191551569169e-01, -1.112137749405982534e-01, -8.078527659942821848e-02, -4.868026262423132133e-02, -1.571270034621553846e-02, 1.729025986323678293e-02, 4.950877766597934493e-02, 8.015045945798929261e-02, 1.084696474380452691e-01, 1.337853941291197446e-01, 1.554976910694094994e-01, 1.731015663668225568e-01, 1.861987209412922506e-01]
J3 = [0.000000000000000000e+00, 8.519688735027151048e-05, 6.783087689179150958e-04, 2.271012892702670670e-03, 5.322946740944365165e-03, 1.024676633055360449e-02, 1.739446743942656484e-02, 2.704534007493814007e-02, 3.939588471950435100e-02, 5.455196866383484056e-02, 7.252344333261900866e-02, 9.322138036208633960e-02, 1.164580168913019603e-01, 1.419494307717730497e-01, 1.693208959387348944e-01, 1.981147987975668545e-01, 2.278009299105124841e-01, 2.577889032040401318e-01, 2.874423989270246116e-01, 3.160948780958638960e-01, 3.430663764006682270e-01, 3.676809555364015103e-01, 3.892843704419243767e-01, 4.072615024942872197e-01, 4.210531115566097937e-01, 4.301714738756219347e-01, 4.342144978492603058e-01, 4.328779450426063491e-01, 4.259654286706055504e-01, 4.133959149995433680e-01, 3.952085134465308514e-01, 3.715644070987883518e-01, 3.427458453114948789e-01, 3.091521922512171505e-01, 2.712930979484611260e-01, 2.297789298090357202e-01, 1.853086708398201665e-01, 1.386555543729464657e-01, 9.065076224082081746e-02, 4.216556273427012058e-02, -5.907694971731636789e-03, -5.267528293460151112e-02, -9.726202662672990551e-02, -1.388309925495391783e-01, -1.766024600439951853e-01, -2.098717209663609196e-01, -2.380252769695455906e-01, -2.605550407583755446e-01, -2.770701940001116803e-01, -2.873064094592435169e-01, -2.911322070659522754e-01, -2.885522815191237100e-01, -2.797077110230900554e-01, -2.648730311157356798e-01, -2.444502324578023966e-01, -2.189598150974809976e-01, -1.890291023082709965e-01, -1.553780829025055710e-01, -1.188031103441703207e-01, -8.015883857380397270e-02, -4.033881695672091733e-02, -2.551991360686349910e-04, 3.918195797652224144e-02, 7.708531883271296792e-02, 1.126103329446112578e-01, 1.449742664248027946e-01, 1.734737548105094451e-01, 1.975004660080126595e-01, 2.165545074601785136e-01, 2.302552656793182551e-01, 2.383494277874631528e-01, 2.407160021734920663e-01, 2.373682271742352523e-01, 2.284523310734445367e-01, 2.142431818856260495e-01, 1.951369395310925126e-01, 1.716408943211902294e-01, 1.443607424363212155e-01, 1.139856096848531203e-01, 8.127118782088350868e-02, 4.702139180328721718e-02, 1.206898054563900792e-02, -2.274439287165589893e-02, -5.658822342490780338e-02, -8.866281013381221987e-02, -1.182180581164777033e-01, -1.445709812504727965e-01, -1.671214928979238845e-01, -1.853661149349911663e-01, -1.989092869061643287e-01, -2.074720162255298817e-01, -2.108976755143265047e-01, -2.091548227960585982e-01, -2.023369926620472992e-01, -1.906594799034325161e-01, -1.744532096928659570e-01, -1.541558584273530486e-01, -1.303004551172789183e-01, -1.035017531387616985e-01, -7.444071481760326792e-02, -4.384749542598120192e-02]
J4 = [0.000000000000000000e+00, 1.704483298062775014e-06, 2.716715443164670636e-05, 1.366550983900052211e-04, 4.280348019748087072e-04, 1.032984994207302451e-03, 2.111853991141337313e-03, 3.847315661189678552e-03, 6.437014812777689353e-03, 1.008542424915877603e-02, 1.499516105960151634e-02, 2.135802820760002510e-02, 2.934605860174360759e-02, 3.910284225506809042e-02, 5.073541272030240162e-02, 6.430695680621832666e-02, 7.983059191631831919e-02, 9.726442868786328022e-02, 1.165081036177527951e-01, 1.374009278846053672e-01, 1.597217556063144639e-01, 1.831906284269401164e-01, 2.074722048197202851e-01, 2.321809331027920309e-01, 2.568878782012304351e-01, 2.811290649613600312e-01, 3.044151566028336364e-01, 3.262422468830124545e-01, 3.461035098478855154e-01, 3.635014226250443126e-01, 3.779602553917958963e-01, 3.890385090619237762e-01, 3.963409758187749765e-01, 3.995301006129015065e-01, 3.983363331565314414e-01, 3.925671795844413170e-01, 3.821146903975878861e-01, 3.669611559439500681e-01, 3.471828217124951488e-01, 3.229514821425790716e-01, 2.945338623574654258e-01, 2.622887509731724465e-01, 2.266619025807115884e-01, 1.881787842644297715e-01, 1.474352951952093704e-01, 1.050866405338885534e-01, 6.183458925759174885e-02, 1.841338882495084997e-02, -2.442535331199180426e-02, -6.592848145165723650e-02, -1.053574348753889556e-01, -1.420043475754088069e-01, -1.752077253154624981e-01, -2.043673259374622075e-01, -2.289578831099027545e-01, -2.485413369338421719e-01, -2.627772664868445740e-01, -2.714312587884033512e-01, -2.743809949091255973e-01, -2.716198859420029810e-01, -2.632581480794658479e-01, -2.495212657466064354e-01, -2.307458531938315627e-01, -2.073729866639758279e-01, -1.799391397168081941e-01, -1.490649120366290270e-01, -1.154417956433758524e-01, -7.981727054501611129e-02, -4.297856330677799624e-02, -5.735435725753339035e-03, 3.109760407383447070e-02, 6.671925992478308642e-02, 1.003591608712259275e-01, 1.312949186488647779e-01, 1.588681321451676787e-01, 1.824989646441511348e-01, 2.016989517483927519e-01, 2.160817382592664926e-01, 2.253714900431884327e-01, 2.294087808925965866e-01, 2.281538133255996692e-01, 2.216868947533275902e-01, 2.102061549839095989e-01, 1.940225560773360114e-01, 1.735523095503515301e-01, 1.493068773106939751e-01, 1.218807899907462244e-01, 9.193756816304927970e-02, 6.019407699535954392e-02, 2.740368214305707525e-02, -5.661396827875905813e-03, -3.822812014266144254e-02, -6.954062416304747363e-02, -9.887775690438488363e-02, -1.255697403934125378e-01, -1.490135685472784854e-01, -1.686867796362300775e-01, -1.841592814167275494e-01, -1.951029537500581224e-01, -2.012988068280359144e-01, -2.026415317260352178e-01]
J5 = [0.000000000000000000e+00, 2.727755286725624990e-08, 8.700918732527827913e-07, 6.572080464084812992e-06, 2.748828374074567337e-05, 8.308361151942142192e-05, 2.043158200845798323e-04, 4.354860764167111319e-04, 8.354578603562065869e-04, 1.478166053713934067e-03, 2.452361965388557847e-03, 3.860566036095576352e-03, 5.817227282629795770e-03, 8.446116363104253302e-03, 1.187700663377370090e-02, 1.624172388982765905e-02, 2.166966982798228247e-02, 2.828294587791084155e-02, 3.619122223339998196e-02, 4.548651107415020711e-02, 5.623801261511794658e-02, 6.848720738488454918e-02, 8.224336778471275089e-02, 9.747965642482592230e-02, 1.141299680292870988e-01, 1.320866560470982942e-01, 1.511992648484969670e-01, 1.712743640000094214e-01, 1.920765532006185050e-01, 2.133306757332917580e-01, 2.347252455397958182e-01, 2.559170591301210274e-01, 2.765369294053409699e-01, 2.961964450410578542e-01, 3.144956272817320819e-01, 3.310313267401660542e-01, 3.454061769346074007e-01, 3.572378996053644507e-01, 3.661687400124623015e-01, 3.718747989869850556e-01, 3.740750229185634268e-01, 3.725396133896898276e-01, 3.670976249371008526e-01, 3.576435323918994436e-01, 3.441425682203694825e-01, 3.266346548929037752e-01, 3.052367870321452958e-01, 2.801437522742807329e-01, 2.516271176334535786e-01, 2.200324487942870999e-01, 1.857747721905633198e-01, 1.493323329157817403e-01, 1.112387443736068682e-01, 7.207366702379019996e-02, 3.245219254122581193e-02, -6.986854842375531116e-03, -4.559345705498305673e-02, -8.271951252591838721e-02, -1.177322300947310635e-01, -1.500275054448426404e-01, -1.790429731095006249e-01, -2.042704285250841745e-01, -2.252673234554186665e-01, -2.416670542803128208e-01, -2.531877858483676524e-01, -2.596395833760558602e-01, -2.609296606009456898e-01, -2.570655932804127297e-01, -2.481563922445740866e-01, -2.344113785240670433e-01, -2.161368534490099580e-01, -1.937306078602645254e-01, -1.676743654581061838e-01, -1.385243046016193802e-01, -1.068998493551073514e-01, -7.347096310165841804e-02, -3.894421553935288605e-02, -4.047925384849489043e-03, 3.048329418898559906e-02, 6.392424312379783868e-02, 9.557474152521255872e-02, 1.247747816477730726e-01, 1.509188776179422320e-01, 1.734692813028210490e-01, 1.919677562947357530e-01, 2.060456330051212148e-01, 2.154319056636973262e-01, 2.199591757502510347e-01, 2.195672950459909012e-01, 2.143046139528256289e-01, 2.043267957655988398e-01, 1.898932138974795680e-01, 1.713610053161414848e-01, 1.491769083048511413e-01, 1.238670648005535252e-01, 9.602501572061412916e-02, 6.629816070014989127e-02, 3.537299046948120390e-02, 3.959429796895318383e-03, -2.722534923696033962e-02, -5.747327043703640004e-02]
J6 = [0.000000000000000000e+00, 3.637561407399986847e-10, 2.321660750278203107e-08, 2.632446117617594579e-07, 1.469631474342027998e-06, 5.560149785465380226e-06, 1.643580140636582046e-05, 4.095287824523976059e-05, 8.999972125517573186e-05, 1.796177905213194642e-04, 3.321012240769706395e-04, 5.770060883975714058e-04, 9.520001619532347239e-04, 1.503486413702336552e-03, 2.286938323330183018e-03, 3.366892734730254737e-03, 4.816555849237468684e-03, 6.716989980926488073e-03, 9.155862470441467754e-03, 1.222575328036240756e-02, 1.602203381592903417e-02, 2.064034593283529256e-02, 2.617372638685000821e-02, 3.270943761684361184e-02, 4.032558020837129914e-02, 4.908757515638553781e-02, 5.904461466759167859e-02, 7.022618830219450048e-02, 8.263879640349515443e-02, 9.626296473118771402e-02, 1.110506728161116952e-01, 1.269233037004171560e-01, 1.437702144260317727e-01, 1.614480149951625920e-01, 1.797806287584171603e-01, 1.985601895944265616e-01, 2.175488112249941430e-01, 2.364812420380845714e-01, 2.550683954132652587e-01, 2.730017213622046857e-01, 2.899583609527898731e-01, 3.056070011452571289e-01, 3.196143250042599027e-01, 3.316519314214705916e-01, 3.414035801178154639e-01, 3.485726023729223133e-01, 3.528893061665187014e-01, 3.541181966461671160e-01, 3.520648293972178378e-01, 3.465821151178397619e-01, 3.375759001135931192e-01, 3.250096575212197969e-01, 3.089081392260477066e-01, 2.893598578051393422e-01, 2.665182911437289359e-01, 2.406017291584154338e-01, 2.118917117379795489e-01, 1.807300389134928464e-01, 1.475143676518722580e-01, 1.126924437334831941e-01, 7.675505109040270391e-02, 4.022779389713490583e-02, 3.661857775062713795e-03, -3.237607512204877802e-02, -6.731455740073831462e-02, -1.005885335172708589e-01, -1.316506859863075807e-01, -1.599827231867121669e-01, -1.851063560356613902e-01, -2.065937114880754266e-01, -2.240769375104504912e-01, -2.372567668440300481e-01, -2.459098253313874993e-01, -2.498944945064155709e-01, -2.491551670734677981e-01, -2.437247672288664624e-01, -2.337254447906237376e-01, -2.193673919807352379e-01, -2.009457735456038063e-01, -1.788358037376932552e-01, -1.534860465090273351e-01, -1.254100570621446697e-01, -9.517652265316096927e-02, -6.339809726497079578e-02, -3.071915754533982926e-02, 2.197264604836329880e-03, 3.468309493926637760e-02, 6.607908108282066484e-02, 9.574860414525900032e-02, 1.230911310260620756e-01, 1.475550049984306611e-01, 1.686492835337874696e-01, 1.859543506006435809e-01, 1.991310554963547086e-01, 2.079281611384614092e-01, 2.121879209950509049e-01, 2.118496446753901641e-01, 2.069511567192283408e-01, 1.976281003042005269e-01, 1.841110863501568828e-01, 1.667207377028874504e-01]

Cryplot.plot {
  # Set the width and height of the plot in points (72 points = 1 inch)
  size(360, 200)

  # Set the font name and size
  font_name("Palatino")
  font_size(12)

  # Set the x and y labels
  xlabel("x")
  ylabel("J_v(x)")

  # Set some options for the legend
  legend
    .at_top
    .font_size(10)
    .display_horizontal
    .display_expand_width_by(2)

  # Plot the Besel functions
  draw_curve(x, J0).label("J_0")
  draw_curve(x, J1).label("J_1")
  draw_curve(x, J2).label("J_2")
  draw_curve(x, J3).label("J_3")
  draw_curve(x, J4).label("J_4")
  draw_curve(x, J5).label("J_5")
  draw_curve(x, J6).label("J_6")

  # Show the plot in a pop-up window
  show

  # Save the plot to a PDF file
  save("example-bessel-functions.pdf")
}
