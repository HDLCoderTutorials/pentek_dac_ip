function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Bus
Selector */
	this.urlHashMap["pentek_dac_ip_test:39"] = "msg=&block=pentek_dac_ip_test:39";
	/* <S1>/Constant */
	this.urlHashMap["pentek_dac_ip_test:103"] = "msg=&block=pentek_dac_ip_test:103";
	/* <S1>/Constant2 */
	this.urlHashMap["pentek_dac_ip_test:104"] = "msg=&block=pentek_dac_ip_test:104";
	/* <S1>/Pack Complex Vector */
	this.urlHashMap["pentek_dac_ip_test:93"] = "msg=&block=pentek_dac_ip_test:93";
	/* <S1>/PipelineDelay */
	this.urlHashMap["pentek_dac_ip_test:54"] = "msg=&block=pentek_dac_ip_test:54";
	/* <S1>/PipelineDelay1 */
	this.urlHashMap["pentek_dac_ip_test:55"] = "msg=&block=pentek_dac_ip_test:55";
	/* <S1>/PipelineDelay2 */
	this.urlHashMap["pentek_dac_ip_test:56"] = "msg=&block=pentek_dac_ip_test:56";
	/* <S1>/Switch */
	this.urlHashMap["pentek_dac_ip_test:31"] = "msg=&block=pentek_dac_ip_test:31";
	/* <S1>/To Data Bus */
	this.urlHashMap["pentek_dac_ip_test:33"] = "msg=&block=pentek_dac_ip_test:33";
	/* <S1>/To Data Bus1 */
	this.urlHashMap["pentek_dac_ip_test:26"] = "msg=&block=pentek_dac_ip_test:26";
	/* <S1>/Vector NCO */
	this.urlHashMap["pentek_dac_ip_test:75"] = "msg=&block=pentek_dac_ip_test:75";
	/* <S3>/pack_vector_complex */
	this.urlHashMap["pentek_dac_ip_test:101"] = "msg=&block=pentek_dac_ip_test:101";
	/* <S4>/Bus
Creator */
	this.urlHashMap["pentek_dac_ip_test:36"] = "msg=&block=pentek_dac_ip_test:36";
	/* <S5>/Bus
Creator */
	this.urlHashMap["pentek_dac_ip_test:29"] = "msg=&block=pentek_dac_ip_test:29";
	/* <S6>/For Each
Subsystem */
	this.urlHashMap["pentek_dac_ip_test:78"] = "msg=&block=pentek_dac_ip_test:78";
	/* <S6>/Gain */
	this.urlHashMap["pentek_dac_ip_test:87"] = "msg=&block=pentek_dac_ip_test:87";
	/* <S6>/Gain1 */
	this.urlHashMap["pentek_dac_ip_test:88"] = "msg=&block=pentek_dac_ip_test:88";
	/* <S6>/Reshape */
	this.urlHashMap["pentek_dac_ip_test:89"] = "msg=&block=pentek_dac_ip_test:89";
	/* <S6>/Selector */
	this.urlHashMap["pentek_dac_ip_test:90"] = "msg=&block=pentek_dac_ip_test:90";
	/* <S7>:1 */
	this.urlHashMap["pentek_dac_ip_test:101:1"] = "msg=&block=pentek_dac_ip_test:101:1";
	/* <S8>/Constant */
	this.urlHashMap["pentek_dac_ip_test:82"] = "msg=&block=pentek_dac_ip_test:82";
	/* <S8>/For Each */
	this.urlHashMap["pentek_dac_ip_test:83"] = "msg=rtwMsg_notTraceable&block=pentek_dac_ip_test:83";
	/* <S8>/NCO
HDL Optimized4 */
	this.urlHashMap["pentek_dac_ip_test:84"] = "msg=&block=pentek_dac_ip_test:84";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "pentek_dac_ip_test"};
	this.sidHashMap["pentek_dac_ip_test"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S1>/s_axis_data"] = {sid: "pentek_dac_ip_test:2"};
	this.sidHashMap["pentek_dac_ip_test:2"] = {rtwname: "<S1>/s_axis_data"};
	this.rtwnameHashMap["<S1>/s_axis_valid"] = {sid: "pentek_dac_ip_test:3"};
	this.sidHashMap["pentek_dac_ip_test:3"] = {rtwname: "<S1>/s_axis_valid"};
	this.rtwnameHashMap["<S1>/Bus Selector"] = {sid: "pentek_dac_ip_test:39"};
	this.sidHashMap["pentek_dac_ip_test:39"] = {rtwname: "<S1>/Bus Selector"};
	this.rtwnameHashMap["<S1>/Constant"] = {sid: "pentek_dac_ip_test:103"};
	this.sidHashMap["pentek_dac_ip_test:103"] = {rtwname: "<S1>/Constant"};
	this.rtwnameHashMap["<S1>/Constant2"] = {sid: "pentek_dac_ip_test:104"};
	this.sidHashMap["pentek_dac_ip_test:104"] = {rtwname: "<S1>/Constant2"};
	this.rtwnameHashMap["<S1>/Pack Complex Vector"] = {sid: "pentek_dac_ip_test:93"};
	this.sidHashMap["pentek_dac_ip_test:93"] = {rtwname: "<S1>/Pack Complex Vector"};
	this.rtwnameHashMap["<S1>/PipelineDelay"] = {sid: "pentek_dac_ip_test:54"};
	this.sidHashMap["pentek_dac_ip_test:54"] = {rtwname: "<S1>/PipelineDelay"};
	this.rtwnameHashMap["<S1>/PipelineDelay1"] = {sid: "pentek_dac_ip_test:55"};
	this.sidHashMap["pentek_dac_ip_test:55"] = {rtwname: "<S1>/PipelineDelay1"};
	this.rtwnameHashMap["<S1>/PipelineDelay2"] = {sid: "pentek_dac_ip_test:56"};
	this.sidHashMap["pentek_dac_ip_test:56"] = {rtwname: "<S1>/PipelineDelay2"};
	this.rtwnameHashMap["<S1>/Switch"] = {sid: "pentek_dac_ip_test:31"};
	this.sidHashMap["pentek_dac_ip_test:31"] = {rtwname: "<S1>/Switch"};
	this.rtwnameHashMap["<S1>/To Data Bus"] = {sid: "pentek_dac_ip_test:33"};
	this.sidHashMap["pentek_dac_ip_test:33"] = {rtwname: "<S1>/To Data Bus"};
	this.rtwnameHashMap["<S1>/To Data Bus1"] = {sid: "pentek_dac_ip_test:26"};
	this.sidHashMap["pentek_dac_ip_test:26"] = {rtwname: "<S1>/To Data Bus1"};
	this.rtwnameHashMap["<S1>/Vector NCO"] = {sid: "pentek_dac_ip_test:75"};
	this.sidHashMap["pentek_dac_ip_test:75"] = {rtwname: "<S1>/Vector NCO"};
	this.rtwnameHashMap["<S1>/m_axis_data"] = {sid: "pentek_dac_ip_test:4"};
	this.sidHashMap["pentek_dac_ip_test:4"] = {rtwname: "<S1>/m_axis_data"};
	this.rtwnameHashMap["<S1>/m_axis_valid"] = {sid: "pentek_dac_ip_test:5"};
	this.sidHashMap["pentek_dac_ip_test:5"] = {rtwname: "<S1>/m_axis_valid"};
	this.rtwnameHashMap["<S3>/u"] = {sid: "pentek_dac_ip_test:100"};
	this.sidHashMap["pentek_dac_ip_test:100"] = {rtwname: "<S3>/u"};
	this.rtwnameHashMap["<S3>/pack_vector_complex"] = {sid: "pentek_dac_ip_test:101"};
	this.sidHashMap["pentek_dac_ip_test:101"] = {rtwname: "<S3>/pack_vector_complex"};
	this.rtwnameHashMap["<S3>/y"] = {sid: "pentek_dac_ip_test:102"};
	this.sidHashMap["pentek_dac_ip_test:102"] = {rtwname: "<S3>/y"};
	this.rtwnameHashMap["<S4>/data"] = {sid: "pentek_dac_ip_test:34"};
	this.sidHashMap["pentek_dac_ip_test:34"] = {rtwname: "<S4>/data"};
	this.rtwnameHashMap["<S4>/valid"] = {sid: "pentek_dac_ip_test:35"};
	this.sidHashMap["pentek_dac_ip_test:35"] = {rtwname: "<S4>/valid"};
	this.rtwnameHashMap["<S4>/Bus Creator"] = {sid: "pentek_dac_ip_test:36"};
	this.sidHashMap["pentek_dac_ip_test:36"] = {rtwname: "<S4>/Bus Creator"};
	this.rtwnameHashMap["<S4>/bus"] = {sid: "pentek_dac_ip_test:37"};
	this.sidHashMap["pentek_dac_ip_test:37"] = {rtwname: "<S4>/bus"};
	this.rtwnameHashMap["<S5>/data"] = {sid: "pentek_dac_ip_test:27"};
	this.sidHashMap["pentek_dac_ip_test:27"] = {rtwname: "<S5>/data"};
	this.rtwnameHashMap["<S5>/valid"] = {sid: "pentek_dac_ip_test:28"};
	this.sidHashMap["pentek_dac_ip_test:28"] = {rtwname: "<S5>/valid"};
	this.rtwnameHashMap["<S5>/Bus Creator"] = {sid: "pentek_dac_ip_test:29"};
	this.sidHashMap["pentek_dac_ip_test:29"] = {rtwname: "<S5>/Bus Creator"};
	this.rtwnameHashMap["<S5>/bus"] = {sid: "pentek_dac_ip_test:30"};
	this.sidHashMap["pentek_dac_ip_test:30"] = {rtwname: "<S5>/bus"};
	this.rtwnameHashMap["<S6>/inc"] = {sid: "pentek_dac_ip_test:76"};
	this.sidHashMap["pentek_dac_ip_test:76"] = {rtwname: "<S6>/inc"};
	this.rtwnameHashMap["<S6>/For Each Subsystem"] = {sid: "pentek_dac_ip_test:78"};
	this.sidHashMap["pentek_dac_ip_test:78"] = {rtwname: "<S6>/For Each Subsystem"};
	this.rtwnameHashMap["<S6>/Gain"] = {sid: "pentek_dac_ip_test:87"};
	this.sidHashMap["pentek_dac_ip_test:87"] = {rtwname: "<S6>/Gain"};
	this.rtwnameHashMap["<S6>/Gain1"] = {sid: "pentek_dac_ip_test:88"};
	this.sidHashMap["pentek_dac_ip_test:88"] = {rtwname: "<S6>/Gain1"};
	this.rtwnameHashMap["<S6>/Reshape"] = {sid: "pentek_dac_ip_test:89"};
	this.sidHashMap["pentek_dac_ip_test:89"] = {rtwname: "<S6>/Reshape"};
	this.rtwnameHashMap["<S6>/Selector"] = {sid: "pentek_dac_ip_test:90"};
	this.sidHashMap["pentek_dac_ip_test:90"] = {rtwname: "<S6>/Selector"};
	this.rtwnameHashMap["<S6>/dataOut"] = {sid: "pentek_dac_ip_test:91"};
	this.sidHashMap["pentek_dac_ip_test:91"] = {rtwname: "<S6>/dataOut"};
	this.rtwnameHashMap["<S6>/validOut"] = {sid: "pentek_dac_ip_test:92"};
	this.sidHashMap["pentek_dac_ip_test:92"] = {rtwname: "<S6>/validOut"};
	this.rtwnameHashMap["<S7>:1"] = {sid: "pentek_dac_ip_test:101:1"};
	this.sidHashMap["pentek_dac_ip_test:101:1"] = {rtwname: "<S7>:1"};
	this.rtwnameHashMap["<S8>/inc"] = {sid: "pentek_dac_ip_test:79"};
	this.sidHashMap["pentek_dac_ip_test:79"] = {rtwname: "<S8>/inc"};
	this.rtwnameHashMap["<S8>/offset"] = {sid: "pentek_dac_ip_test:80"};
	this.sidHashMap["pentek_dac_ip_test:80"] = {rtwname: "<S8>/offset"};
	this.rtwnameHashMap["<S8>/Constant"] = {sid: "pentek_dac_ip_test:82"};
	this.sidHashMap["pentek_dac_ip_test:82"] = {rtwname: "<S8>/Constant"};
	this.rtwnameHashMap["<S8>/For Each"] = {sid: "pentek_dac_ip_test:83"};
	this.sidHashMap["pentek_dac_ip_test:83"] = {rtwname: "<S8>/For Each"};
	this.rtwnameHashMap["<S8>/NCO HDL Optimized4"] = {sid: "pentek_dac_ip_test:84"};
	this.sidHashMap["pentek_dac_ip_test:84"] = {rtwname: "<S8>/NCO HDL Optimized4"};
	this.rtwnameHashMap["<S8>/dataOut"] = {sid: "pentek_dac_ip_test:85"};
	this.sidHashMap["pentek_dac_ip_test:85"] = {rtwname: "<S8>/dataOut"};
	this.rtwnameHashMap["<S8>/validOut"] = {sid: "pentek_dac_ip_test:86"};
	this.sidHashMap["pentek_dac_ip_test:86"] = {rtwname: "<S8>/validOut"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
