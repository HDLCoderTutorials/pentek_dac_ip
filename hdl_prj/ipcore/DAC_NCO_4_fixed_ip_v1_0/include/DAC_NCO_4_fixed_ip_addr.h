/*
 * File Name:         hdl_prj\ipcore\DAC_NCO_4_fixed_ip_v1_0\include\DAC_NCO_4_fixed_ip_addr.h
 * Description:       C Header File
 * Created:           2020-09-08 13:47:21
*/

#ifndef DAC_NCO_4_FIXED_IP_H_
#define DAC_NCO_4_FIXED_IP_H_

#define  IPCore_Reset_DAC_NCO_4_fixed_ip                           0x0  //write 0x1 to bit 0 to reset IP core
#define  IPCore_Enable_DAC_NCO_4_fixed_ip                          0x4  //enabled (by default) when bit 0 is 0x1
#define  IPCore_PacketSize_AXI4_Stream_Master_DAC_NCO_4_fixed_ip   0x8  //Packet size for AXI4-Stream Master interface, the default value is 1024. The TLAST output signal of the AXI4-Stream Master interface is generated based on the packet size.
#define  IPCore_Timestamp_DAC_NCO_4_fixed_ip                       0xC  //contains unique IP timestamp (yymmddHHMM): 2009081347

#endif /* DAC_NCO_4_FIXED_IP_H_ */
