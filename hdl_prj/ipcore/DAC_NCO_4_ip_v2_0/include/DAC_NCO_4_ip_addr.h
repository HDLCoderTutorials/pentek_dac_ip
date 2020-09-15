/*
 * File Name:         hdl_prj\ipcore\DAC_NCO_4_ip_v2_0\include\DAC_NCO_4_ip_addr.h
 * Description:       C Header File
 * Created:           2020-09-15 17:55:25
*/

#ifndef DAC_NCO_4_IP_H_
#define DAC_NCO_4_IP_H_

#define  IPCore_Reset_DAC_NCO_4_ip                           0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_DAC_NCO_4_ip                          0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_PacketSize_AXI4_Stream_Master_DAC_NCO_4_ip   0x8  //Packet size for AXI4-Stream Master interface, the default value is 1024. The TLAST output signal of the AXI4-Stream Master interface is generated based on the packet size.
#define  IPCore_Timestamp_DAC_NCO_4_ip                       0xC  //contains unique IP timestamp (yymmddHHMM): 2009151755
#define  nco_phase_inc_reg_Data_DAC_NCO_4_ip                 0x100  //data register for Inport nco_phase_inc_reg
#define  src_sel_reg_Data_DAC_NCO_4_ip                       0x104  //data register for Inport src_sel_reg

#endif /* DAC_NCO_4_IP_H_ */
