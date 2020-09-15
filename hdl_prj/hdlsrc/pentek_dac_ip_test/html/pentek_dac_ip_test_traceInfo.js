function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S1>/Bus
Selector */
	this.urlHashMap["pentek_dac_ip_test:39"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:234";
	/* <S1>/Constant1 */
	this.urlHashMap["pentek_dac_ip_test:46"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:290";
	/* <S1>/Pack Complex Vector */
	this.urlHashMap["pentek_dac_ip_test:93"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:158,159,160,161,162";
	/* <S1>/PipelineDelay */
	this.urlHashMap["pentek_dac_ip_test:54"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:220,222,223,224,225,226,227,228,229,230,231,276,277,278,279,280,281,282,283,284,285";
	/* <S1>/PipelineDelay1 */
	this.urlHashMap["pentek_dac_ip_test:55"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:182,202,203,204,205,206,207,208,209,210,211,256,257,258,259,260,261,262,263,264,265";
	/* <S1>/PipelineDelay2 */
	this.urlHashMap["pentek_dac_ip_test:56"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:178,188,189,190,191,192,193,194,195,196,197,242,243,244,245,246,247,248,249,250,251";
	/* <S1>/Switch */
	this.urlHashMap["pentek_dac_ip_test:31"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:200,214,217,218,271,272";
	/* <S1>/To Data Bus */
	this.urlHashMap["pentek_dac_ip_test:33"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:171,172,173,174,175,176";
	/* <S1>/To Data Bus1 */
	this.urlHashMap["pentek_dac_ip_test:26"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:164,165,166,167,168,169";
	/* <S1>/Vector NCO */
	this.urlHashMap["pentek_dac_ip_test:108"] = "DAC_NCO_4_ip_src_DAC_NCO_4xSampling_IQ.vhd:148,149,150,151,152,153,154,155,156";
	/* <S3>/pack_vector_complex */
	this.urlHashMap["pentek_dac_ip_test:101"] = "DAC_NCO_4_ip_src_Pack_Complex_Vector.vhd:49,50,51,52,53";
	/* <S4>/Bus
Creator */
	this.urlHashMap["pentek_dac_ip_test:36"] = "DAC_NCO_4_ip_src_To_Data_Bus.vhd:34";
	/* <S5>/Bus
Creator */
	this.urlHashMap["pentek_dac_ip_test:29"] = "DAC_NCO_4_ip_src_To_Data_Bus1.vhd:34";
	/* <S6>/For Each
Subsystem */
	this.urlHashMap["pentek_dac_ip_test:110"] = "DAC_NCO_4_ip_src_Vector_NCO.vhd:84,85,86,87,88,89,90,91,92,93,94,95";
	/* <S6>/Gain */
	this.urlHashMap["pentek_dac_ip_test:118"] = "DAC_NCO_4_ip_src_Vector_NCO.vhd:69,70";
	/* <S6>/Gain1 */
	this.urlHashMap["pentek_dac_ip_test:119"] = "DAC_NCO_4_ip_src_Vector_NCO.vhd:72,73,74,75,76,77,78";
	/* <S6>/Reshape */
	this.urlHashMap["pentek_dac_ip_test:120"] = "DAC_NCO_4_ip_src_Vector_NCO.vhd:84,85,86,87,88,89,90,91,92,93,94,95";
	/* <S6>/Selector */
	this.urlHashMap["pentek_dac_ip_test:121"] = "DAC_NCO_4_ip_src_Vector_NCO.vhd:101";
	/* <S7>:1 */
	this.urlHashMap["pentek_dac_ip_test:101:1"] = "DAC_NCO_4_ip_src_pack_vector_complex.vhd:50";
	/* <S7>:1:8 */
	this.urlHashMap["pentek_dac_ip_test:101:1:8"] = "msg=rtwMsg_optimizedSfObject&block=pentek_dac_ip_test:101:1:8";
	/* <S7>:1:13 */
	this.urlHashMap["pentek_dac_ip_test:101:1:13"] = "DAC_NCO_4_ip_src_pack_vector_complex.vhd:52,54,56,58";
	/* <S7>:1:14 */
	this.urlHashMap["pentek_dac_ip_test:101:1:14"] = "DAC_NCO_4_ip_src_pack_vector_complex.vhd:53,55,57,59";
	/* <S7>:1:17 */
	this.urlHashMap["pentek_dac_ip_test:101:1:17"] = "DAC_NCO_4_ip_src_pack_vector_complex.vhd:60";
	/* <S8>/Constant */
	this.urlHashMap["pentek_dac_ip_test:113"] = "DAC_NCO_4_ip_src_For_Each_Subsystem.vhd:74";
	/* <S8>/For Each */
	this.urlHashMap["pentek_dac_ip_test:114"] = "msg=rtwMsg_notTraceable&block=pentek_dac_ip_test:114";
	/* <S8>/NCO
HDL Optimized4 */
	this.urlHashMap["pentek_dac_ip_test:115"] = "DAC_NCO_4_ip_src_For_Each_Subsystem.vhd:62,63,64,65,66,67,68,69,70,71,72";
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
	this.rtwnameHashMap["<S1>/m_axis_ready"] = {sid: "pentek_dac_ip_test:13"};
	this.sidHashMap["pentek_dac_ip_test:13"] = {rtwname: "<S1>/m_axis_ready"};
	this.rtwnameHashMap["<S1>/nco_phase_inc_reg"] = {sid: "pentek_dac_ip_test:9"};
	this.sidHashMap["pentek_dac_ip_test:9"] = {rtwname: "<S1>/nco_phase_inc_reg"};
	this.rtwnameHashMap["<S1>/src_sel_reg"] = {sid: "pentek_dac_ip_test:32"};
	this.sidHashMap["pentek_dac_ip_test:32"] = {rtwname: "<S1>/src_sel_reg"};
	this.rtwnameHashMap["<S1>/Bus Selector"] = {sid: "pentek_dac_ip_test:39"};
	this.sidHashMap["pentek_dac_ip_test:39"] = {rtwname: "<S1>/Bus Selector"};
	this.rtwnameHashMap["<S1>/Constant1"] = {sid: "pentek_dac_ip_test:46"};
	this.sidHashMap["pentek_dac_ip_test:46"] = {rtwname: "<S1>/Constant1"};
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
	this.rtwnameHashMap["<S1>/Terminator"] = {sid: "pentek_dac_ip_test:45"};
	this.sidHashMap["pentek_dac_ip_test:45"] = {rtwname: "<S1>/Terminator"};
	this.rtwnameHashMap["<S1>/To Data Bus"] = {sid: "pentek_dac_ip_test:33"};
	this.sidHashMap["pentek_dac_ip_test:33"] = {rtwname: "<S1>/To Data Bus"};
	this.rtwnameHashMap["<S1>/To Data Bus1"] = {sid: "pentek_dac_ip_test:26"};
	this.sidHashMap["pentek_dac_ip_test:26"] = {rtwname: "<S1>/To Data Bus1"};
	this.rtwnameHashMap["<S1>/Vector NCO"] = {sid: "pentek_dac_ip_test:108"};
	this.sidHashMap["pentek_dac_ip_test:108"] = {rtwname: "<S1>/Vector NCO"};
	this.rtwnameHashMap["<S1>/m_axis_data"] = {sid: "pentek_dac_ip_test:4"};
	this.sidHashMap["pentek_dac_ip_test:4"] = {rtwname: "<S1>/m_axis_data"};
	this.rtwnameHashMap["<S1>/m_axis_valid"] = {sid: "pentek_dac_ip_test:5"};
	this.sidHashMap["pentek_dac_ip_test:5"] = {rtwname: "<S1>/m_axis_valid"};
	this.rtwnameHashMap["<S1>/s_axis_ready"] = {sid: "pentek_dac_ip_test:14"};
	this.sidHashMap["pentek_dac_ip_test:14"] = {rtwname: "<S1>/s_axis_ready"};
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
	this.rtwnameHashMap["<S6>/inc"] = {sid: "pentek_dac_ip_test:109"};
	this.sidHashMap["pentek_dac_ip_test:109"] = {rtwname: "<S6>/inc"};
	this.rtwnameHashMap["<S6>/For Each Subsystem"] = {sid: "pentek_dac_ip_test:110"};
	this.sidHashMap["pentek_dac_ip_test:110"] = {rtwname: "<S6>/For Each Subsystem"};
	this.rtwnameHashMap["<S6>/Gain"] = {sid: "pentek_dac_ip_test:118"};
	this.sidHashMap["pentek_dac_ip_test:118"] = {rtwname: "<S6>/Gain"};
	this.rtwnameHashMap["<S6>/Gain1"] = {sid: "pentek_dac_ip_test:119"};
	this.sidHashMap["pentek_dac_ip_test:119"] = {rtwname: "<S6>/Gain1"};
	this.rtwnameHashMap["<S6>/Reshape"] = {sid: "pentek_dac_ip_test:120"};
	this.sidHashMap["pentek_dac_ip_test:120"] = {rtwname: "<S6>/Reshape"};
	this.rtwnameHashMap["<S6>/Selector"] = {sid: "pentek_dac_ip_test:121"};
	this.sidHashMap["pentek_dac_ip_test:121"] = {rtwname: "<S6>/Selector"};
	this.rtwnameHashMap["<S6>/dataOut"] = {sid: "pentek_dac_ip_test:122"};
	this.sidHashMap["pentek_dac_ip_test:122"] = {rtwname: "<S6>/dataOut"};
	this.rtwnameHashMap["<S6>/validOut"] = {sid: "pentek_dac_ip_test:123"};
	this.sidHashMap["pentek_dac_ip_test:123"] = {rtwname: "<S6>/validOut"};
	this.rtwnameHashMap["<S7>:1"] = {sid: "pentek_dac_ip_test:101:1"};
	this.sidHashMap["pentek_dac_ip_test:101:1"] = {rtwname: "<S7>:1"};
	this.rtwnameHashMap["<S7>:1:8"] = {sid: "pentek_dac_ip_test:101:1:8"};
	this.sidHashMap["pentek_dac_ip_test:101:1:8"] = {rtwname: "<S7>:1:8"};
	this.rtwnameHashMap["<S7>:1:13"] = {sid: "pentek_dac_ip_test:101:1:13"};
	this.sidHashMap["pentek_dac_ip_test:101:1:13"] = {rtwname: "<S7>:1:13"};
	this.rtwnameHashMap["<S7>:1:14"] = {sid: "pentek_dac_ip_test:101:1:14"};
	this.sidHashMap["pentek_dac_ip_test:101:1:14"] = {rtwname: "<S7>:1:14"};
	this.rtwnameHashMap["<S7>:1:17"] = {sid: "pentek_dac_ip_test:101:1:17"};
	this.sidHashMap["pentek_dac_ip_test:101:1:17"] = {rtwname: "<S7>:1:17"};
	this.rtwnameHashMap["<S8>/inc"] = {sid: "pentek_dac_ip_test:111"};
	this.sidHashMap["pentek_dac_ip_test:111"] = {rtwname: "<S8>/inc"};
	this.rtwnameHashMap["<S8>/offset"] = {sid: "pentek_dac_ip_test:112"};
	this.sidHashMap["pentek_dac_ip_test:112"] = {rtwname: "<S8>/offset"};
	this.rtwnameHashMap["<S8>/Constant"] = {sid: "pentek_dac_ip_test:113"};
	this.sidHashMap["pentek_dac_ip_test:113"] = {rtwname: "<S8>/Constant"};
	this.rtwnameHashMap["<S8>/For Each"] = {sid: "pentek_dac_ip_test:114"};
	this.sidHashMap["pentek_dac_ip_test:114"] = {rtwname: "<S8>/For Each"};
	this.rtwnameHashMap["<S8>/NCO HDL Optimized4"] = {sid: "pentek_dac_ip_test:115"};
	this.sidHashMap["pentek_dac_ip_test:115"] = {rtwname: "<S8>/NCO HDL Optimized4"};
	this.rtwnameHashMap["<S8>/dataOut"] = {sid: "pentek_dac_ip_test:116"};
	this.sidHashMap["pentek_dac_ip_test:116"] = {rtwname: "<S8>/dataOut"};
	this.rtwnameHashMap["<S8>/validOut"] = {sid: "pentek_dac_ip_test:117"};
	this.sidHashMap["pentek_dac_ip_test:117"] = {rtwname: "<S8>/validOut"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
