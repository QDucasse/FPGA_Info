#### This file is a general .xdc for the Genesys ZU-3EG Rev. B
#### To use it in a project:
#### - uncomment the lines corresponding to used pins
#### - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

#set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
#set_property DCI_CASCADE {64} [get_iobanks 65]

## Crypto
#set_property -dict { PACKAGE_PIN AD15  IOSTANDARD LVCMOS33 } [get_ports { crypto_sda }]; #IO_L5P_HDGC_44/24 Sch=crypto_sda

# Sysclk is a 125 MHz PL reference clock generated by the external Ethernet PHY
# It connects to an HDGC pin, so it has direct connection only to BUFG primitives.
# When using it as input clock to CMT primitives (MMCM/PLL), it needs to go through
# BUFG first. Choose "Global Buffer" in Clocking Wizard IP customization.
# Might need CLOCK_DEDICATED_ROUTE FALSE
#set_property -dict { PACKAGE_PIN E12 IOSTANDARD LVCMOS18 } [get_ports { sysclk }];

## MIPI A Port
#set_property -dict { PACKAGE_PIN B8 IOSTANDARD LVCMOS12 } [get_ports { mipi_a_pwup_ls }]; #IO_L22N_T3U_N7_DBC_AD0N_66 Sch=mipi_a_pwup_ls
## Commented, since it will be defined in IP XDC.
##set_property PACKAGE_PIN G1 [get_ports mipi_a_clk_p] #IO_L1P_T0L_N0_DBC_66 Sch=mipi_a_clk_p
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_a_clk_p]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_a_clk_n]
##set_property PACKAGE_PIN E1 [get_ports mipi_a_lane_p[0]] #IO_L2P_T0L_N2_66 Sch=mipi_a_lane_p[0]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_a_lane_p[0]]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_a_lane_n[0]]
##set_property PACKAGE_PIN F2 [get_ports mipi_a_lane_p[1]] #IO_L3P_T0L_N4_AD15P_66 Sch=mipi_a_lane_p[1]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_a_lane_p[1]]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_a_lane_n[1]]]

## MIPI B Port
#set_property -dict { PACKAGE_PIN A9 IOSTANDARD LVCMOS12 } [get_ports { mipi_b_pwup_ls }]; #IO_L23P_T3U_N8_66 Sch=mipi_b_pwup_ls
## Commented, since it will be defined in IP XDC.
##set_property PACKAGE_PIN B5 [get_ports mipi_b_clk_p] #IO_L19P_T3L_N0_DBC_AD9P_66 Sch=mipi_b_clk_p
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_b_clk_p]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_b_clk_n]
##set_property PACKAGE_PIN C6 [get_ports mipi_b_lane_p[0]] #IO_L20P_T3L_N2_AD1P_66 Sch=mipi_b_lane_p[0]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_b_lane_p[0]]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_b_lane_n[0]]
##set_property PACKAGE_PIN A7 [get_ports mipi_b_lane_p[1]] #IO_L21P_T3L_N4_AD8P_66 Sch=mipi_b_lane_p[1]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_b_lane_p[1]]
##set_property IOSTANDARD MIPI_DPHY_DCI [get_ports mipi_b_lane_n[1]]

## Audio CODEC I2S, I2C
#set_property -dict { PACKAGE_PIN A11 IOSTANDARD LVCMOS18 } [get_ports { aud_scl }]; #IO_L11N_AD9N_45/25 Sch=aud_scl
#set_property -dict { PACKAGE_PIN D12 IOSTANDARD LVCMOS18 } [get_ports { aud_sda_io }]; #IO_L12P_AD8P_45/25 Sch=aud_sda
#set_property -dict { PACKAGE_PIN A10 IOSTANDARD LVCMOS18 } [get_ports { aud_lrclk }]; #IO_L10N_AD10N_45/25 Sch=aud_lrclk
#set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS18 } [get_ports { aud_bclk }]; #IO_L12N_AD8N_45/25 Sch=aud_bclk
#set_property -dict { PACKAGE_PIN C11 IOSTANDARD LVCMOS18 } [get_ports { aud_mclk }]; #IO_L9P_AD11P_45/25 Sch=aud_mclk
#set_property -dict { PACKAGE_PIN B11 IOSTANDARD LVCMOS18 } [get_ports { aud_adc_sdata }]; #IO_L10P_AD10P_45/25 Sch=aud_adc_sdata
#set_property -dict { PACKAGE_PIN D11 IOSTANDARD LVCMOS18 } [get_ports { aud_dac_sdata }]; #IO_L8N_HDGC_45/25 Sch=aud_dac_sdata

## PMOD XADC
## Commented because pins are contrained by System Management Wizard. Only >2018.2 lets us select bank 43.
#set_property -dict { PACKAGE_PIN Y10   IOSTANDARD LVCMOS18 } [get_ports { ja1_r_n }]; #IO_L10N_AD2N_43/44 Sch=ja1_r_n
#set_property -dict { PACKAGE_PIN W10   IOSTANDARD LVCMOS18 } [get_ports { ja1_r_p }]; #IO_L10P_AD2P_43/44 Sch=ja1_r_p
#set_property -dict { PACKAGE_PIN AA10  IOSTANDARD LVCMOS18 } [get_ports { ja2_r_n }]; #IO_L9N_AD3N_43/44 Sch=ja2_r_n
#set_property -dict { PACKAGE_PIN AA11  IOSTANDARD LVCMOS18 } [get_ports { ja2_r_p }]; #IO_L9P_AD3P_43/44 Sch=ja2_r_p
#set_property -dict { PACKAGE_PIN AB9   IOSTANDARD LVCMOS18 } [get_ports { ja3_r_n }]; #IO_L12N_AD0N_43/44 Sch=ja3_r_n
#set_property -dict { PACKAGE_PIN AB10  IOSTANDARD LVCMOS18 } [get_ports { ja3_r_p }]; #IO_L12P_AD0P_43/44 Sch=ja3_r_p
#set_property -dict { PACKAGE_PIN AA8   IOSTANDARD LVCMOS18 } [get_ports { ja4_r_n }]; #IO_L11N_AD1N_43/44 Sch=ja4_r_n
#set_property -dict { PACKAGE_PIN Y9    IOSTANDARD LVCMOS18 } [get_ports { ja4_r_p }]; #IO_L11P_AD1P_43/44 Sch=ja4_r_p

## Platform MCU signals
#set_property -dict { PACKAGE_PIN AC14 IOSTANDARD LVCMOS33 } [get_ports { vadj_level[0] }]; #IO_L6P_HDGC_44/24 Sch=vadj_level[0]
#set_property -dict { PACKAGE_PIN AC13 IOSTANDARD LVCMOS33 } [get_ports { vadj_level[1] }]; #IO_L6N_HDGC_44/24 Sch=vadj_level[1]
#set_property -dict { PACKAGE_PIN G10  IOSTANDARD LVCMOS18 } [get_ports { vadj_auton }]; #IO_L3N_AD13N_45/25 Sch=vadj_auton
#set_property -dict { PACKAGE_PIN H11  IOSTANDARD LVCMOS18 } [get_ports { syzygy_detectedn }]; #IO_L3P_AD13P_45/25 Sch=syzygy_detectedn

##DisplayPort AUX channel over EMIO
#set_property -dict { PACKAGE_PIN K12  IOSTANDARD LVCMOS18 } [get_ports { dp_aux_din }]; #IO_L2N_AD14N_45/25 Sch=dp_aux_din
#set_property -dict { PACKAGE_PIN K13  IOSTANDARD LVCMOS18 } [get_ports { dp_aux_doe }]; #IO_L2P_AD14P_45/25 Sch=dp_aux_doe
#set_property -dict { PACKAGE_PIN J11  IOSTANDARD LVCMOS18 } [get_ports { dp_aux_dout }]; #IO_L1P_AD15P_45/25 Sch=dp_aux_dout
#set_property -dict { PACKAGE_PIN J10  IOSTANDARD LVCMOS18 } [get_ports { dp_aux_hotplug_detect }]; #IO_L1N_AD15N_45/25 Sch=dp_aux_hotplug_detect

## Mini PCIe Auxiliary
#set_property -dict { PACKAGE_PIN Y12  IOSTANDARD LVCMOS33 } [get_ports { pcie_w_disable2n }]; #IO_L12P_AD8P_44/24 Sch=pcie_w_disable2n
#set_property -dict { PACKAGE_PIN B3  IOSTANDARD LVCMOS12 } [get_ports { pcie_w_disable[1] }];  #IO_L9P_T1L_N4_AD12P_66 Sch=pcie_w_disable[1]

## USB 2.0 Overcurrent EMIO
#set_property -dict { PACKAGE_PIN D9 IOSTANDARD LVCMOS12 PULLUP true } [get_ports { usb20_ocn }];#IO_L18N_T2U_N11_AD2N_66 Sch=usb20_ocn

## Ethernet JTAG
#set_property -dict { PACKAGE_PIN F7  LVCMOS12  } [get_ports { eth_tms_ls }]; #IO_L16N_T2U_N7_QBC_AD3N_66 Sch=eth_tms_ls
#set_property -dict { PACKAGE_PIN F8  LVCMOS12  } [get_ports { eth_tdi_ls }]; #IO_L17P_T2U_N8_AD10P_66 Sch=eth_tdi_ls
#set_property -dict { PACKAGE_PIN E8  LVCMOS12  } [get_ports { eth_tck_ls }]; #IO_L17N_T2U_N9_AD10N_66 Sch=eth_tck_ls
#set_property -dict { PACKAGE_PIN E9  LVCMOS12  } [get_ports { eth_tdo_ls }]; #IO_L18P_T2U_N10_AD2P_66 Sch=eth_tdo_ls

## PMOD JB
#set_property -dict { PACKAGE_PIN AE13  IOSTANDARD LVCMOS33 } [get_ports { jb[0] }]; #IO_L8N_HDGC_AD4N_46/26 Sch=jb[1]
#set_property -dict { PACKAGE_PIN AG14  IOSTANDARD LVCMOS33 } [get_ports { jb[1] }]; #IO_L2N_AD10N_46/26 Sch=jb[2]
#set_property -dict { PACKAGE_PIN AH14  IOSTANDARD LVCMOS33 } [get_ports { jb[2] }]; #IO_L1P_AD11P_46/26 Sch=jb[3]
#set_property -dict { PACKAGE_PIN AG13  IOSTANDARD LVCMOS33 } [get_ports { jb[3] }]; #IO_L8P_HDGC_AD4P_46/26 Sch=jb[4]
#set_property -dict { PACKAGE_PIN AE14  IOSTANDARD LVCMOS33 } [get_ports { jb[4] }]; #IO_L6P_HDGC_AD6P_46/26 Sch=jb[7]
#set_property -dict { PACKAGE_PIN AF13  IOSTANDARD LVCMOS33 } [get_ports { jb[5] }]; #IO_L2P_AD10P_46/26 Sch=jb[8]
#set_property -dict { PACKAGE_PIN AE15  IOSTANDARD LVCMOS33 } [get_ports { jb[6] }]; #IO_L5P_HDGC_AD7P_46/26 Sch=jb[9]
#set_property -dict { PACKAGE_PIN AH13  IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L1N_AD11N_46/26 Sch=jb[10]

## PMOD JC
#set_property -dict { PACKAGE_PIN E13  IOSTANDARD LVCMOS33 } [get_ports { jc[0] }]; #IO_L6N_HDGC_AD6N_46/26 Sch=jc[1]
#set_property -dict { PACKAGE_PIN G13  IOSTANDARD LVCMOS33 } [get_ports { jc[1] }]; #IO_L7P_HDGC_AD5P_46/26 Sch=jc[2]
#set_property -dict { PACKAGE_PIN B13  IOSTANDARD LVCMOS33 } [get_ports { jc[2] }]; #IO_L3P_AD9P_46/26 Sch=jc[3]
#set_property -dict { PACKAGE_PIN D14  IOSTANDARD LVCMOS33 } [get_ports { jc[3] }]; #IO_L5N_HDGC_AD7N_46/26 Sch=jc[4]
#set_property -dict { PACKAGE_PIN F13  IOSTANDARD LVCMOS33 } [get_ports { jc[4] }]; #IO_L7N_HDGC_AD5N_46/26 Sch=jc[7]
#set_property -dict { PACKAGE_PIN C13  IOSTANDARD LVCMOS33 } [get_ports { jc[5] }]; #IO_L4N_AD8N_46/26 Sch=jc[8]
#set_property -dict { PACKAGE_PIN C14  IOSTANDARD LVCMOS33 } [get_ports { jc[6] }]; #IO_L4P_AD8P_46/26 Sch=jc[9]
#set_property -dict { PACKAGE_PIN A13  IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L3N_AD9N_46/26 Sch=jc[10]

## PMOD JD
#set_property -dict {PACKAGE_PIN E15  IOSTANDARD LVCMOS33 } [get_ports { jd[0] }]; #IO_L4P_AD12P_44/24 Sch=jd[1]
#set_property -dict {PACKAGE_PIN A14  IOSTANDARD LVCMOS33 } [get_ports { jd[1] }]; #IO_L2P_AD14P_44/24 Sch=jd[2]
#set_property -dict {PACKAGE_PIN B15  IOSTANDARD LVCMOS33 } [get_ports { jd[2] }]; #IO_L2N_AD14N_44/24 Sch=jd[3]
#set_property -dict {PACKAGE_PIN F15  IOSTANDARD LVCMOS33 } [get_ports { jd[3] }]; #IO_L3P_AD13P_44/24 Sch=jd[4]
#set_property -dict {PACKAGE_PIN E14  IOSTANDARD LVCMOS33 } [get_ports { jd[4] }]; #IO_L1N_AD15N_44/24 Sch=jd[7]
#set_property -dict {PACKAGE_PIN B14  IOSTANDARD LVCMOS33 } [get_ports { jd[5] }]; #IO_L4N_AD12N_44/24 Sch=jd[8]
#set_property -dict {PACKAGE_PIN D15  IOSTANDARD LVCMOS33 } [get_ports { jd[6] }]; #IO_L1P_AD15P_44/24 Sch=jd[9]
#set_property -dict {PACKAGE_PIN A15  IOSTANDARD LVCMOS33 } [get_ports { jd[7] }]; #IO_L3N_AD13N_44/24 Sch=jd[10]

## Buttons
#set_property -dict { PACKAGE_PIN B10  IOSTANDARD LVCMOS18 } [get_ports { btn[2] }]; #IO_L9N_AD11N_45/25 Sch=btn[2]
#set_property -dict { PACKAGE_PIN H12  IOSTANDARD LVCMOS18 } [get_ports { btn[3] }]; #IO_L4N_AD12N_45/25 Sch=btn[3]
#set_property -dict { PACKAGE_PIN J12  IOSTANDARD LVCMOS18 } [get_ports { btn[4] }]; #IO_L4P_AD12P_45/25 Sch=btn[4]
#set_property -dict { PACKAGE_PIN F12  IOSTANDARD LVCMOS18 } [get_ports { btn[5] }]; #IO_L6P_HDGC_45/25 Sch=btn[5]
#set_property -dict { PACKAGE_PIN A12  IOSTANDARD LVCMOS18 } [get_ports { btn[6] }]; #IO_L11P_AD9P_45/25 Sch=btn[6]

## Switches
#set_property -dict { PACKAGE_PIN AB14  IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L8N_HDGC_44/24 Sch=sw[0]
#set_property -dict { PACKAGE_PIN Y13   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; #IO_L10N_AD10N_44/24 Sch=sw[1]
#set_property -dict { PACKAGE_PIN W12   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L11P_AD9P_44/24 Sch=sw[2]
#set_property -dict { PACKAGE_PIN AB15  IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L8P_HDGC_44/24 Sch=sw[3]

## LED
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { ld[0] }]; #IO_L12P_AD0P_46/26 Sch=ld[1]
#set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { ld[1] }]; #IO_L12N_AD0N_46/26 Sch=ld[2]
#set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { ld[2] }]; #IO_L11P_AD1P_46/26 Sch=ld[3]
#set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { ld[3] }]; #IO_L11N_AD1N_46/26 Sch=ld[4]

## RGB LED
#set_property -dict { PACKAGE_PIN A8    IOSTANDARD LVCMOS12 } [get_ports { ld5_b }]; #IO_L23N_T3U_N9_66 Sch=ld5_b
#set_property -dict { PACKAGE_PIN B9    IOSTANDARD LVCMOS12 } [get_ports { ld5_g }]; #IO_L24N_T3U_N11_66 Sch=ld5_g
#set_property -dict { PACKAGE_PIN C9    IOSTANDARD LVCMOS12 } [get_ports { ld5_r }]; #IO_L24P_T3U_N10_66 Sch=ld5_r

## GTH reference clock jitter filter auxiliary
#set_property -dict { PACKAGE_PIN C4  IOSTANDARD LVCMOS12 } [get_ports { clkgth_intrn_ls }]; #IO_L11N_T1U_N9_GC_66 Sch=clkgth_intrn_ls
#set_property -dict { PACKAGE_PIN D6  IOSTANDARD LVCMOS12 } [get_ports { clkgth_loln_ls }]; #IO_L13N_T2L_N1_GC_QBC_66 Sch=clkgth_loln_ls
#set_property -dict { PACKAGE_PIN G8  IOSTANDARD LVCMOS12 } [get_ports { clkgth_rst }]; #IO_L16P_T2U_N6_QBC_AD3P_66 Sch=clkgth_rst

## MUX I2C
#set_property -dict { PACKAGE_PIN F6   IOSTANDARD LVCMOS12 } [get_ports { fpga_mux_rst }]; #IO_L15N_T2L_N5_AD11N_66 Sch=fpga_mux_rst
#set_property -dict { PACKAGE_PIN G15  IOSTANDARD LVCMOS33 PULLUP true } [get_ports { mux_scl_ls }]; #IO_L9P_AD3P_46/26 Sch=mux_scl_ls
#set_property -dict { PACKAGE_PIN G14  IOSTANDARD LVCMOS33 PULLUP true } [get_ports { mux_sda_ls }]; #IO_L9N_AD3N_46/26 Sch=mux_sda_ls

## SYZYGY
#set_property -dict { PACKAGE_PIN AB1  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_d_p[0] }]; #IO_L18P_T2U_N10_AD2P_64 Sch=syzygy_d_p[0]
#set_property -dict { PACKAGE_PIN AE2  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_d_p[1] }]; #IO_L22P_T3U_N6_DBC_AD0P_64 Sch=syzygy_d_p[1]
#set_property -dict { PACKAGE_PIN AE3  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_d_p[2] }]; #IO_L21P_T3L_N4_AD8P_64 Sch=syzygy_d_p[2]
#set_property -dict { PACKAGE_PIN AE5  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_d_p[3] }]; #IO_L12P_T1U_N10_GC_64 Sch=syzygy_d_p[3]
#set_property -dict { PACKAGE_PIN AD7  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_d_p[4] }]; #IO_L4P_T0U_N6_DBC_AD7P_64 Sch=syzygy_d_p[4]
#set_property -dict { PACKAGE_PIN AG6  IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_d_p[5] }]; #IO_L10P_T1U_N6_QBC_AD4P_64 Sch=syzygy_d_p[5]
#set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_d_p[6] }];  #IO_L3P_T0L_N4_AD15P_65 Sch=syzygy_d_p[6]
#set_property -dict { PACKAGE_PIN U9   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_d_p[7] }]; #IO_L2P_T0L_N2_65 Sch=syzygy_d_p[7]
#set_property -dict { PACKAGE_PIN AE10  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[16] }]; #IO_L4P_AD8P_43/44 Sch=syzygy_s[16]
#set_property -dict { PACKAGE_PIN AC12  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[17] }]; #IO_L6P_HDGC_AD6P_43/44 Sch=syzygy_s[17]
#set_property -dict { PACKAGE_PIN AF10  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[18] }]; #IO_L4N_AD8N_43/44 Sch=syzygy_s[18]
#set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[19] }]; #IO_L6N_HDGC_AD6N_43/44 Sch=syzygy_s[19]
#set_property -dict { PACKAGE_PIN AF11  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[20] }]; #IO_L2P_AD10P_43/44 Sch=syzygy_s[20]
#set_property -dict { PACKAGE_PIN AE12  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[21] }]; #IO_L5P_HDGC_AD7P_43/44 Sch=syzygy_s[21]
#set_property -dict { PACKAGE_PIN AF12  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[22] }]; #IO_L5N_HDGC_AD7N_43/44 Sch=syzygy_s[22]
#set_property -dict { PACKAGE_PIN AH12  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[23] }]; #IO_L3P_AD9P_43/44 Sch=syzygy_s[23]
#set_property -dict { PACKAGE_PIN AG11  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[24] }]; #IO_L2N_AD10N_43/44 Sch=syzygy_s[24]
#set_property -dict { PACKAGE_PIN AG10  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[25] }]; #IO_L1P_AD11P_43/44 Sch=syzygy_s[25]
#set_property -dict { PACKAGE_PIN AH11  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[26] }]; #IO_L3N_AD9N_43/44 Sch=syzygy_s[26]
#set_property -dict { PACKAGE_PIN AH10  IOSTANDARD LVCMOS18 } [get_ports { syzygy_s[27] }]; #IO_L1N_AD11N_43/44 Sch=syzygy_s[27]
#set_property -dict { PACKAGE_PIN AD4   IOSTANDARD LVDS   DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_in_clk_n }]; #IO_L13N_T2L_N1_GC_QBC_64 Sch=syzygy_in_clk_n
#set_property -dict { PACKAGE_PIN AD5   IOSTANDARD LVDS   DIFF_TERM_ADV TERM_100 } [get_ports { syzygy_in_clk_p }]; #IO_L13P_T2L_N0_GC_QBC_64 Sch=syzygy_in_clk_p
#set_property -dict { PACKAGE_PIN Y8    IOSTANDARD LVDS } [get_ports { syzygy_out_clk_n }]; #IO_L1N_T0L_N1_DBC_65 Sch=syzygy_out_clk_n
#set_property -dict { PACKAGE_PIN W8    IOSTANDARD LVDS } [get_ports { syzygy_out_clk_p }]; #IO_L1P_T0L_N0_DBC_65 Sch=syzygy_out_clk_p

## FMC connector
#set_property -dict { PACKAGE_PIN M6   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { fmc_clk0_m2c_p }]; #IO_L14P_T2L_N2_GC_65 Sch=fmc_clk0_m2c_p
#set_property -dict { PACKAGE_PIN L3   IOSTANDARD LVDS DIFF_TERM_ADV TERM_100 } [get_ports { fmc_clk1_m2c_p }]; #IO_L12P_T1U_N10_GC_65 Sch=fmc_clk1_m2c_p
#set_property -dict { PACKAGE_PIN L6   IOSTANDARD LVDS } [get_ports { fmc_la00_cc_n }]; #IO_L13N_T2L_N1_GC_QBC_65 Sch=fmc_la00_cc_n
#set_property -dict { PACKAGE_PIN L7   IOSTANDARD LVDS } [get_ports { fmc_la00_cc_p }]; #IO_L13P_T2L_N0_GC_QBC_65 Sch=fmc_la00_cc_p
#set_property -dict { PACKAGE_PIN H3   IOSTANDARD LVDS } [get_ports { fmc_la01_cc_n }]; #IO_L7N_T1L_N1_QBC_AD13N_65 Sch=fmc_la01_cc_n
#set_property -dict { PACKAGE_PIN H4   IOSTANDARD LVDS } [get_ports { fmc_la01_cc_p }]; #IO_L7P_T1L_N0_QBC_AD13P_65 Sch=fmc_la01_cc_p
#set_property -dict { PACKAGE_PIN H6   IOSTANDARD LVDS } [get_ports { fmc_la_n[02] }]; #IO_L20N_T3L_N3_AD1N_65 Sch=fmc_la_n[02]
#set_property -dict { PACKAGE_PIN J6   IOSTANDARD LVDS } [get_ports { fmc_la_p[02] }]; #IO_L20P_T3L_N2_AD1P_65 Sch=fmc_la_p[02]
#set_property -dict { PACKAGE_PIN K3   IOSTANDARD LVDS } [get_ports { fmc_la_n[03] }]; #IO_L11N_T1U_N9_GC_65 Sch=fmc_la_n[03]
#set_property -dict { PACKAGE_PIN K4   IOSTANDARD LVDS } [get_ports { fmc_la_p[03] }]; #IO_L11P_T1U_N8_GC_65 Sch=fmc_la_p[03]
#set_property -dict { PACKAGE_PIN J2   IOSTANDARD LVDS } [get_ports { fmc_la_n[04] }]; #IO_L9N_T1L_N5_AD12N_65 Sch=fmc_la_n[04]
#set_property -dict { PACKAGE_PIN K2   IOSTANDARD LVDS } [get_ports { fmc_la_p[04] }]; #IO_L9P_T1L_N4_AD12P_65 Sch=fmc_la_p[04]
#set_property -dict { PACKAGE_PIN T6   IOSTANDARD LVDS } [get_ports { fmc_la_n[05] }]; #IO_L6N_T0U_N11_AD6N_65 Sch=fmc_la_n[05]
#set_property -dict { PACKAGE_PIN R6   IOSTANDARD LVDS } [get_ports { fmc_la_p[05] }]; #IO_L6P_T0U_N10_AD6P_65 Sch=fmc_la_p[05]
#set_property -dict { PACKAGE_PIN K1   IOSTANDARD LVDS } [get_ports { fmc_la_n[06] }]; #IO_L17N_T2U_N9_AD10N_65 Sch=fmc_la_n[06]
#set_property -dict { PACKAGE_PIN L1   IOSTANDARD LVDS } [get_ports { fmc_la_p[06] }]; #IO_L17P_T2U_N8_AD10P_65 Sch=fmc_la_p[06]
#set_property -dict { PACKAGE_PIN J9   IOSTANDARD LVDS } [get_ports { fmc_la_n[07] }]; #IO_L23N_T3U_N9_65 Sch=fmc_la_n[07]
#set_property -dict { PACKAGE_PIN K9   IOSTANDARD LVDS } [get_ports { fmc_la_p[07] }]; #IO_L23P_T3U_N8_I2C_SCLK_65 Sch=fmc_la_p[07]
#set_property -dict { PACKAGE_PIN T7   IOSTANDARD LVDS } [get_ports { fmc_la_n[08] }]; #IO_L5N_T0U_N9_AD14N_65 Sch=fmc_la_n[08]
#set_property -dict { PACKAGE_PIN R7   IOSTANDARD LVDS } [get_ports { fmc_la_p[08] }]; #IO_L5P_T0U_N8_AD14P_65 Sch=fmc_la_p[08]
#set_property -dict { PACKAGE_PIN L8   IOSTANDARD LVDS } [get_ports { fmc_la_n[09] }]; #IO_L18N_T2U_N11_AD2N_65 Sch=fmc_la_n[09]
#set_property -dict { PACKAGE_PIN M8   IOSTANDARD LVDS } [get_ports { fmc_la_p[09] }]; #IO_L18P_T2U_N10_AD2P_65 Sch=fmc_la_p[09]
#set_property -dict { PACKAGE_PIN H1   IOSTANDARD LVDS } [get_ports { fmc_la_n[10] }]; #IO_L8N_T1L_N3_AD5N_65 Sch=fmc_la_n[10]
#set_property -dict { PACKAGE_PIN J1   IOSTANDARD LVDS } [get_ports { fmc_la_p[10] }]; #IO_L8P_T1L_N2_AD5P_65 Sch=fmc_la_p[10]
#set_property -dict { PACKAGE_PIN J4   IOSTANDARD LVDS } [get_ports { fmc_la_n[11] }]; #IO_L19N_T3L_N1_DBC_AD9N_65 Sch=fmc_la_n[11]
#set_property -dict { PACKAGE_PIN J5   IOSTANDARD LVDS } [get_ports { fmc_la_p[11] }]; #IO_L19P_T3L_N0_DBC_AD9P_65 Sch=fmc_la_p[11]
#set_property -dict { PACKAGE_PIN H7   IOSTANDARD LVDS } [get_ports { fmc_la_n[12] }]; #IO_L21N_T3L_N5_AD8N_65 Sch=fmc_la_n[12]
#set_property -dict { PACKAGE_PIN J7   IOSTANDARD LVDS } [get_ports { fmc_la_p[12] }]; #IO_L21P_T3L_N4_AD8P_65 Sch=fmc_la_p[12]
#set_property -dict { PACKAGE_PIN N6   IOSTANDARD LVDS } [get_ports { fmc_la_n[13] }]; #IO_L15N_T2L_N5_AD11N_65 Sch=fmc_la_n[13]
#set_property -dict { PACKAGE_PIN N7   IOSTANDARD LVDS } [get_ports { fmc_la_p[13] }]; #IO_L15P_T2L_N4_AD11P_65 Sch=fmc_la_p[13]
#set_property -dict { PACKAGE_PIN P6   IOSTANDARD LVDS } [get_ports { fmc_la_n[14] }]; #IO_L16N_T2U_N7_QBC_AD3N_65 Sch=fmc_la_n[14]
#set_property -dict { PACKAGE_PIN P7   IOSTANDARD LVDS } [get_ports { fmc_la_p[14] }]; #IO_L16P_T2U_N6_QBC_AD3P_65 Sch=fmc_la_p[14]
#set_property -dict { PACKAGE_PIN T8   IOSTANDARD LVDS } [get_ports { fmc_la_n[15] }]; #IO_L4N_T0U_N7_DBC_AD7N_65 Sch=fmc_la_n[15]
#set_property -dict { PACKAGE_PIN R8   IOSTANDARD LVDS } [get_ports { fmc_la_p[15] }]; #IO_L4P_T0U_N6_DBC_AD7P_SMBALERT_65 Sch=fmc_la_p[15]
#set_property -dict { PACKAGE_PIN K7   IOSTANDARD LVDS } [get_ports { fmc_la_n[16] }]; #IO_L22N_T3U_N7_DBC_AD0N_65 Sch=fmc_la_n[16]
#set_property -dict { PACKAGE_PIN K8   IOSTANDARD LVDS } [get_ports { fmc_la_p[16] }]; #IO_L22P_T3U_N6_DBC_AD0P_65 Sch=fmc_la_p[16]
#set_property -dict { PACKAGE_PIN AD1  IOSTANDARD LVDS } [get_ports { fmc_la_n[17] }]; #IO_L16N_T2U_N7_QBC_AD3N_64 Sch=fmc_la17_cc_n
#set_property -dict { PACKAGE_PIN AD2  IOSTANDARD LVDS } [get_ports { fmc_la_p[17] }]; #IO_L16P_T2U_N6_QBC_AD3P_64 Sch=fmc_la17_cc_p
#set_property -dict { PACKAGE_PIN AH9  IOSTANDARD LVDS } [get_ports { fmc_la_n[18] }]; #IO_L10N_T1U_N7_QBC_AD4N_64 Sch=fmc_la18_cc_n
#set_property -dict { PACKAGE_PIN AG9  IOSTANDARD LVDS } [get_ports { fmc_la_p[18] }]; #IO_L10P_T1U_N6_QBC_AD4P_64 Sch=fmc_la18_cc_p
#set_property -dict { PACKAGE_PIN AC3  IOSTANDARD LVDS } [get_ports { fmc_la_n[19] }]; #IO_L17N_T2U_N9_AD10N_64 Sch=fmc_la_n[19]
#set_property -dict { PACKAGE_PIN AC4  IOSTANDARD LVDS } [get_ports { fmc_la_p[19] }]; #IO_L17P_T2U_N8_AD10P_64 Sch=fmc_la_p[19]
#set_property -dict { PACKAGE_PIN AB3  IOSTANDARD LVDS } [get_ports { fmc_la_n[20] }]; #IO_L15N_T2L_N5_AD11N_64 Sch=fmc_la_n[20]
#set_property -dict { PACKAGE_PIN AB4  IOSTANDARD LVDS } [get_ports { fmc_la_p[20] }]; #IO_L15P_T2L_N4_AD11P_64 Sch=fmc_la_p[20]
#set_property -dict { PACKAGE_PIN AG1  IOSTANDARD LVDS } [get_ports { fmc_la_n[21] }]; #IO_L24N_T3U_N11_64 Sch=fmc_la_n[21]
#set_property -dict { PACKAGE_PIN AF1  IOSTANDARD LVDS } [get_ports { fmc_la_p[21] }]; #IO_L24P_T3U_N10_64 Sch=fmc_la_p[21]
#set_property -dict { PACKAGE_PIN AC8  IOSTANDARD LVDS } [get_ports { fmc_la_n[22] }]; #IO_L3N_T0L_N5_AD15N_64 Sch=fmc_la_n[22]
#set_property -dict { PACKAGE_PIN AB8  IOSTANDARD LVDS } [get_ports { fmc_la_p[22] }]; #IO_L3P_T0L_N4_AD15P_64 Sch=fmc_la_p[22]
#set_property -dict { PACKAGE_PIN AH1  IOSTANDARD LVDS } [get_ports { fmc_la_n[23] }]; #IO_L23N_T3U_N9_64 Sch=fmc_la_n[23]
#set_property -dict { PACKAGE_PIN AH2  IOSTANDARD LVDS } [get_ports { fmc_la_p[23] }]; #IO_L23P_T3U_N8_64 Sch=fmc_la_p[23]
#set_property -dict { PACKAGE_PIN AF6  IOSTANDARD LVDS } [get_ports { fmc_la_n[24] }]; #IO_L11N_T1U_N9_GC_64 Sch=fmc_la_n[24]
#set_property -dict { PACKAGE_PIN AF7  IOSTANDARD LVDS } [get_ports { fmc_la_p[24] }]; #IO_L11P_T1U_N8_GC_64 Sch=fmc_la_p[24]
#set_property -dict { PACKAGE_PIN AH3  IOSTANDARD LVDS } [get_ports { fmc_la_n[25] }]; #IO_L20N_T3L_N3_AD1N_64 Sch=fmc_la_n[25]
#set_property -dict { PACKAGE_PIN AG3  IOSTANDARD LVDS } [get_ports { fmc_la_p[25] }]; #IO_L20P_T3L_N2_AD1P_64 Sch=fmc_la_p[25]
#set_property -dict { PACKAGE_PIN AD9  IOSTANDARD LVDS } [get_ports { fmc_la_n[26] }]; #IO_L1N_T0L_N1_DBC_64 Sch=fmc_la_n[26]
#set_property -dict { PACKAGE_PIN AC9  IOSTANDARD LVDS } [get_ports { fmc_la_p[26] }]; #IO_L1P_T0L_N0_DBC_64 Sch=fmc_la_p[26]
#set_property -dict { PACKAGE_PIN AH4  IOSTANDARD LVDS } [get_ports { fmc_la_n[27] }]; #IO_L19N_T3L_N1_DBC_AD9N_64 Sch=fmc_la_n[27]
#set_property -dict { PACKAGE_PIN AG4  IOSTANDARD LVDS } [get_ports { fmc_la_p[27] }]; #IO_L19P_T3L_N0_DBC_AD9P_64 Sch=fmc_la_p[27]
#set_property -dict { PACKAGE_PIN AE8  IOSTANDARD LVDS } [get_ports { fmc_la_n[28] }]; #IO_L2N_T0L_N3_64 Sch=fmc_la_n[28]
#set_property -dict { PACKAGE_PIN AE9  IOSTANDARD LVDS } [get_ports { fmc_la_p[28] }]; #IO_L2P_T0L_N2_64 Sch=fmc_la_p[28]
#set_property -dict { PACKAGE_PIN AH7  IOSTANDARD LVDS } [get_ports { fmc_la_n[29] }]; #IO_L9N_T1L_N5_AD12N_64 Sch=fmc_la_n[29]
#set_property -dict { PACKAGE_PIN AH8  IOSTANDARD LVDS } [get_ports { fmc_la_p[29] }]; #IO_L9P_T1L_N4_AD12P_64 Sch=fmc_la_p[29]
#set_property -dict { PACKAGE_PIN AC7  IOSTANDARD LVDS } [get_ports { fmc_la_n[30] }]; #IO_L5N_T0U_N9_AD14N_64 Sch=fmc_la_n[30]
#set_property -dict { PACKAGE_PIN AB7  IOSTANDARD LVDS } [get_ports { fmc_la_p[30] }]; #IO_L5P_T0U_N8_AD14P_64 Sch=fmc_la_p[30]
#set_property -dict { PACKAGE_PIN AG8  IOSTANDARD LVDS } [get_ports { fmc_la_n[31] }]; #IO_L8N_T1L_N3_AD5N_64 Sch=fmc_la_n[31]
#set_property -dict { PACKAGE_PIN AF8  IOSTANDARD LVDS } [get_ports { fmc_la_p[31] }]; #IO_L8P_T1L_N2_AD5P_64 Sch=fmc_la_p[31]
#set_property -dict { PACKAGE_PIN AC2  IOSTANDARD LVDS } [get_ports { fmc_la_n[32] }]; #IO_L14N_T2L_N3_GC_64 Sch=fmc_la_n[32]
#set_property -dict { PACKAGE_PIN AB2  IOSTANDARD LVDS } [get_ports { fmc_la_p[32] }]; #IO_L14P_T2L_N2_GC_64 Sch=fmc_la_p[32]
#set_property -dict { PACKAGE_PIN AC6  IOSTANDARD LVDS } [get_ports { fmc_la_n[33] }]; #IO_L6N_T0U_N11_AD6N_64 Sch=fmc_la_n[33]
#set_property -dict { PACKAGE_PIN AB6  IOSTANDARD LVDS } [get_ports { fmc_la_p[33] }]; #IO_L6P_T0U_N10_AD6P_64 Sch=fmc_la_p[33]

#set_property -dict {PACKAGE_PIN W11 IOSTANDARD LVCMOS33 } [get_ports { fmc_prsntn_m2c }]; #IO_L11N_AD9N_44/24

#set_property PROHIBIT true [get_bels IOB_X1Y168/PAD]
#set_property PROHIBIT true [get_bels IOB_X1Y116/PAD]

#set_property IOSTANDARD ANALOG [get_ports Vp_Vn_0_v_p]




