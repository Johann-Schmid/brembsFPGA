
B
Command: %s
53*	vivadotcl2
phys_opt_designZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2

xc7a200tZ17-347h px� 
p
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2

xc7a200tZ17-349h px� 
R

Starting %s Task
103*constraints2
Initial Update TimingZ18-103h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:07 ; elapsed = 00:00:05 . Memory (MB): peak = 4537.832 ; gain = 0.629h px� 
�
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
8.002
4.93Z4-1435h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

4537.8322
0.000Z17-268h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
2Z32-721h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9722

-14102.725Z32-619h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 1ba4de1bb
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:02 ; elapsed = 00:00:00.872 . Memory (MB): peak = 4537.832 ; gain = 0.000h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9722

-14102.725Z32-619h px� 
V

Phase %s%s
101*constraints2
2 2
DSP Register OptimizationZ18-101h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
S
%s*common2:
8Phase 2 DSP Register Optimization | Checksum: 1ba4de1bb
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:01 . Memory (MB): peak = 4537.832 ; gain = 0.000h px� 
W

Phase %s%s
101*constraints2
3 2
Critical Path OptimizationZ18-101h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9722

-14102.725Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[521]!si_ad_change_buffer_reg_n_0_[521]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
pll0/inst/clk_out1_clk_wiz_0pll0/inst/clk_out1_clk_wiz_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[521]_i_1_n_0 si_ad_change_buffer[521]_i_1_n_02H
!si_ad_change_buffer[521]_i_1_comp	!si_ad_change_buffer[521]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[521]_i_4_n_0 si_ad_change_buffer[521]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9712

-14102.724Z32-619h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[521]_i_1_n_0 si_ad_change_buffer[521]_i_1_n_02L
#si_ad_change_buffer[521]_i_1_comp_1	#si_ad_change_buffer[521]_i_1_comp_18Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[521]ROTATE_LEFT02_in[521]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9692

-14102.501Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[434]!si_ad_change_buffer_reg_n_0_[434]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[434]_i_1_n_0 si_ad_change_buffer[434]_i_1_n_02H
!si_ad_change_buffer[434]_i_1_comp	!si_ad_change_buffer[434]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[434]_i_4_n_0 si_ad_change_buffer[434]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9682

-14102.211Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer_reg_n_0_[37] si_ad_change_buffer_reg_n_0_[37]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
si_ad_change_buffer[37]_i_4_n_0si_ad_change_buffer[37]_i_4_n_02<
si_ad_change_buffer[37]_i_4	si_ad_change_buffer[37]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
si_ad_change_buffer[37]_i_4_n_0si_ad_change_buffer[37]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9682

-14102.110Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[529]!si_ad_change_buffer_reg_n_0_[529]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[529]_i_1_n_0 si_ad_change_buffer[529]_i_1_n_02H
!si_ad_change_buffer[529]_i_1_comp	!si_ad_change_buffer[529]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[529]_i_4_n_0 si_ad_change_buffer[529]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9672

-14101.930Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[473]!si_ad_change_buffer_reg_n_0_[473]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[473]_i_4_n_0 si_ad_change_buffer[473]_i_4_n_02>
si_ad_change_buffer[473]_i_4	si_ad_change_buffer[473]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[473]_i_4_n_0 si_ad_change_buffer[473]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9662

-14101.915Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[505]!si_ad_change_buffer_reg_n_0_[505]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[505]_i_4_n_0 si_ad_change_buffer[505]_i_4_n_02>
si_ad_change_buffer[505]_i_4	si_ad_change_buffer[505]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[505]_i_4_n_0 si_ad_change_buffer[505]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9642

-14101.894Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[578]!si_ad_change_buffer_reg_n_0_[578]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[578]_i_4_n_0 si_ad_change_buffer[578]_i_4_n_02>
si_ad_change_buffer[578]_i_4	si_ad_change_buffer[578]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[578]_i_4_n_0 si_ad_change_buffer[578]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9632

-14101.813Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[363]!si_ad_change_buffer_reg_n_0_[363]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[363]_i_5_n_0 si_ad_change_buffer[363]_i_5_n_02>
si_ad_change_buffer[363]_i_5	si_ad_change_buffer[363]_i_58Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[363]_i_5_n_0 si_ad_change_buffer[363]_i_5_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9632

-14101.620Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[428]!si_ad_change_buffer_reg_n_0_[428]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[428]_i_1_n_0 si_ad_change_buffer[428]_i_1_n_02H
!si_ad_change_buffer[428]_i_1_comp	!si_ad_change_buffer[428]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[428]_i_4_n_0 si_ad_change_buffer[428]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14101.200Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[361]!si_ad_change_buffer_reg_n_0_[361]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[361]_i_1_n_0 si_ad_change_buffer[361]_i_1_n_02H
!si_ad_change_buffer[361]_i_1_comp	!si_ad_change_buffer[361]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[361]_i_4_n_0 si_ad_change_buffer[361]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14101.031Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[597]!si_ad_change_buffer_reg_n_0_[597]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[597]_i_1_n_0 si_ad_change_buffer[597]_i_1_n_02H
!si_ad_change_buffer[597]_i_1_comp	!si_ad_change_buffer[597]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[597]_i_4_n_0 si_ad_change_buffer[597]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14100.627Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer_reg_n_0_[21] si_ad_change_buffer_reg_n_0_[21]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2D
si_ad_change_buffer[21]_i_1_n_0si_ad_change_buffer[21]_i_1_n_02F
 si_ad_change_buffer[21]_i_1_comp	 si_ad_change_buffer[21]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
si_ad_change_buffer[21]_i_4_n_0si_ad_change_buffer[21]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14100.095Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[771]!si_ad_change_buffer_reg_n_0_[771]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[771]_i_1_n_0 si_ad_change_buffer[771]_i_1_n_02H
!si_ad_change_buffer[771]_i_1_comp	!si_ad_change_buffer[771]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[771]_i_4_n_0 si_ad_change_buffer[771]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14099.975Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[401]!si_ad_change_buffer_reg_n_0_[401]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[401]_i_4_n_0 si_ad_change_buffer[401]_i_4_n_02>
si_ad_change_buffer[401]_i_4	si_ad_change_buffer[401]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[401]_i_4_n_0 si_ad_change_buffer[401]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14099.945Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[395]!si_ad_change_buffer_reg_n_0_[395]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[395]_i_4_n_0 si_ad_change_buffer[395]_i_4_n_02>
si_ad_change_buffer[395]_i_4	si_ad_change_buffer[395]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[395]_i_4_n_0 si_ad_change_buffer[395]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14099.896Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[352]!si_ad_change_buffer_reg_n_0_[352]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[352]_i_1_n_0 si_ad_change_buffer[352]_i_1_n_02H
!si_ad_change_buffer[352]_i_1_comp	!si_ad_change_buffer[352]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[352]_i_4_n_0 si_ad_change_buffer[352]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14099.778Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[347]!si_ad_change_buffer_reg_n_0_[347]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[347]_i_1_n_0 si_ad_change_buffer[347]_i_1_n_02H
!si_ad_change_buffer[347]_i_1_comp	!si_ad_change_buffer[347]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[347]_i_4_n_0 si_ad_change_buffer[347]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14099.614Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[411]!si_ad_change_buffer_reg_n_0_[411]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[411]_i_4_n_0 si_ad_change_buffer[411]_i_4_n_02>
si_ad_change_buffer[411]_i_4	si_ad_change_buffer[411]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[411]_i_4_n_0 si_ad_change_buffer[411]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14099.593Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[657]!si_ad_change_buffer_reg_n_0_[657]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[657]_i_1_n_0 si_ad_change_buffer[657]_i_1_n_02H
!si_ad_change_buffer[657]_i_1_comp	!si_ad_change_buffer[657]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[657]_i_3_n_0 si_ad_change_buffer[657]_i_3_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14099.257Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[446]!si_ad_change_buffer_reg_n_0_[446]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[446]_i_4_n_0 si_ad_change_buffer[446]_i_4_n_02>
si_ad_change_buffer[446]_i_4	si_ad_change_buffer[446]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[446]_i_4_n_0 si_ad_change_buffer[446]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9622

-14099.177Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[602]!si_ad_change_buffer_reg_n_0_[602]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
pll0/inst/clk_out1_clk_wiz_0pll0/inst/clk_out1_clk_wiz_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[602]_i_4_n_0 si_ad_change_buffer[602]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[602]_i_7_n_0 si_ad_change_buffer[602]_i_7_n_02>
si_ad_change_buffer[602]_i_7	si_ad_change_buffer[602]_i_78Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[602]_i_7_n_0 si_ad_change_buffer[602]_i_7_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9612

-14099.107Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[177]!si_ad_change_buffer_reg_n_0_[177]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[177]_i_4_n_0 si_ad_change_buffer[177]_i_4_n_02>
si_ad_change_buffer[177]_i_4	si_ad_change_buffer[177]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[177]_i_4_n_0 si_ad_change_buffer[177]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9612

-14099.000Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[567]!si_ad_change_buffer_reg_n_0_[567]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[567]_i_4_n_0 si_ad_change_buffer[567]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9612

-14098.859Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[651]!si_ad_change_buffer_reg_n_0_[651]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[651]_i_4_n_0 si_ad_change_buffer[651]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[651]_i_9_n_0 si_ad_change_buffer[651]_i_9_n_02>
si_ad_change_buffer[651]_i_9	si_ad_change_buffer[651]_i_98Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[651]_i_9_n_0 si_ad_change_buffer[651]_i_9_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9612

-14098.830Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[470]!si_ad_change_buffer_reg_n_0_[470]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[470]_i_4_n_0 si_ad_change_buffer[470]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth20
ROTATE_LEFT02_in[470]ROTATE_LEFT02_in[470]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2H
!si_ad_change_buffer[470]_i_20_n_0!si_ad_change_buffer[470]_i_20_n_02@
si_ad_change_buffer[470]_i_20	si_ad_change_buffer[470]_i_208Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2H
!si_ad_change_buffer[470]_i_20_n_0!si_ad_change_buffer[470]_i_20_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9592

-14098.822Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[596]!si_ad_change_buffer_reg_n_0_[596]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[596]_i_4_n_0 si_ad_change_buffer[596]_i_4_n_02>
si_ad_change_buffer[596]_i_4	si_ad_change_buffer[596]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[596]_i_4_n_0 si_ad_change_buffer[596]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9542

-14098.811Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[261]!si_ad_change_buffer_reg_n_0_[261]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[261]_i_4_n_0 si_ad_change_buffer[261]_i_4_n_02>
si_ad_change_buffer[261]_i_4	si_ad_change_buffer[261]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[261]_i_4_n_0 si_ad_change_buffer[261]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9532

-14098.674Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[483]!si_ad_change_buffer_reg_n_0_[483]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
182
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[483]_i_4_n_0 si_ad_change_buffer[483]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9522

-14098.421Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[551]!si_ad_change_buffer_reg_n_0_[551]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
142
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[551]_i_4_n_0 si_ad_change_buffer[551]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9512

-14098.357Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[473]!si_ad_change_buffer_reg_n_0_[473]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
212
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[473]_i_4_n_0 si_ad_change_buffer[473]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14098.273Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[389]!si_ad_change_buffer_reg_n_0_[389]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[389]_i_4_n_0 si_ad_change_buffer[389]_i_4_n_02>
si_ad_change_buffer[389]_i_4	si_ad_change_buffer[389]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[389]_i_4_n_0 si_ad_change_buffer[389]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14098.242Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[407]!si_ad_change_buffer_reg_n_0_[407]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[407]_i_4_n_0 si_ad_change_buffer[407]_i_4_n_02>
si_ad_change_buffer[407]_i_4	si_ad_change_buffer[407]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[407]_i_4_n_0 si_ad_change_buffer[407]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14098.076Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[555]!si_ad_change_buffer_reg_n_0_[555]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[555]_i_4_n_0 si_ad_change_buffer[555]_i_4_n_02>
si_ad_change_buffer[555]_i_4	si_ad_change_buffer[555]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[555]_i_4_n_0 si_ad_change_buffer[555]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14098.021Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[382]!si_ad_change_buffer_reg_n_0_[382]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[382]_i_4_n_0 si_ad_change_buffer[382]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2H
!si_ad_change_buffer[382]_i_11_n_0!si_ad_change_buffer[382]_i_11_n_02@
si_ad_change_buffer[382]_i_11	si_ad_change_buffer[382]_i_118Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2H
!si_ad_change_buffer[382]_i_11_n_0!si_ad_change_buffer[382]_i_11_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14098.015Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[383]!si_ad_change_buffer_reg_n_0_[383]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[383]_i_4_n_0 si_ad_change_buffer[383]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[383]_i_9_n_0 si_ad_change_buffer[383]_i_9_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
222
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[383]ROTATE_LEFT02_in[383]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14097.620Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[585]!si_ad_change_buffer_reg_n_0_[585]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[585]_i_4_n_0 si_ad_change_buffer[585]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2H
!si_ad_change_buffer[585]_i_11_n_0!si_ad_change_buffer[585]_i_11_n_02@
si_ad_change_buffer[585]_i_11	si_ad_change_buffer[585]_i_118Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2H
!si_ad_change_buffer[585]_i_11_n_0!si_ad_change_buffer[585]_i_11_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14097.450Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[681]!si_ad_change_buffer_reg_n_0_[681]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[681]_i_4_n_0 si_ad_change_buffer[681]_i_4_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
212
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[681]ROTATE_LEFT02_in[681]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14097.353Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[655]!si_ad_change_buffer_reg_n_0_[655]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[655]_i_4_n_0 si_ad_change_buffer[655]_i_4_n_02>
si_ad_change_buffer[655]_i_4	si_ad_change_buffer[655]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[655]_i_4_n_0 si_ad_change_buffer[655]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14097.103Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer[382]_i_11_n_0!si_ad_change_buffer[382]_i_11_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
232
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[382]ROTATE_LEFT02_in[382]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14097.075Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[514]!si_ad_change_buffer_reg_n_0_[514]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[514]_i_4_n_0 si_ad_change_buffer[514]_i_4_n_08Z32-702h px� 
^
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
32
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[514]ROTATE_LEFT02_in[514]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14096.970Z32-619h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14096.970Z32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1312

4537.8322
0.000Z17-268h px� 
T
%s*common2;
9Phase 3 Critical Path Optimization | Checksum: 117a15fb0
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:04 . Memory (MB): peak = 4537.832 ; gain = 0.000h px� 
W

Phase %s%s
101*constraints2
4 2
Critical Path OptimizationZ18-101h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9502

-14096.970Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[702]!si_ad_change_buffer_reg_n_0_[702]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
pll0/inst/clk_out1_clk_wiz_0pll0/inst/clk_out1_clk_wiz_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[702]_i_1_n_0 si_ad_change_buffer[702]_i_1_n_02H
!si_ad_change_buffer[702]_i_1_comp	!si_ad_change_buffer[702]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[702]_i_4_n_0 si_ad_change_buffer[702]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9482

-14096.592Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[596]!si_ad_change_buffer_reg_n_0_[596]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[596]_i_1_n_0 si_ad_change_buffer[596]_i_1_n_02H
!si_ad_change_buffer[596]_i_1_comp	!si_ad_change_buffer[596]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[596]_i_4_n_0 si_ad_change_buffer[596]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9452

-14096.338Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[509]!si_ad_change_buffer_reg_n_0_[509]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[509]_i_1_n_0 si_ad_change_buffer[509]_i_1_n_02H
!si_ad_change_buffer[509]_i_1_comp	!si_ad_change_buffer[509]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[509]_i_4_n_0 si_ad_change_buffer[509]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9452

-14096.180Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[505]!si_ad_change_buffer_reg_n_0_[505]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[505]_i_1_n_0 si_ad_change_buffer[505]_i_1_n_02H
!si_ad_change_buffer[505]_i_1_comp	!si_ad_change_buffer[505]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[505]_i_4_n_0 si_ad_change_buffer[505]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9442

-14096.156Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[304]!si_ad_change_buffer_reg_n_0_[304]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[304]_i_1_n_0 si_ad_change_buffer[304]_i_1_n_02H
!si_ad_change_buffer[304]_i_1_comp	!si_ad_change_buffer[304]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[304]_i_4_n_0 si_ad_change_buffer[304]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9432

-14096.026Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[500]!si_ad_change_buffer_reg_n_0_[500]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[500]_i_1_n_0 si_ad_change_buffer[500]_i_1_n_02H
!si_ad_change_buffer[500]_i_1_comp	!si_ad_change_buffer[500]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[500]_i_4_n_0 si_ad_change_buffer[500]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9432

-14095.884Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[478]!si_ad_change_buffer_reg_n_0_[478]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[478]_i_1_n_0 si_ad_change_buffer[478]_i_1_n_02H
!si_ad_change_buffer[478]_i_1_comp	!si_ad_change_buffer[478]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[478]_i_4_n_0 si_ad_change_buffer[478]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9412

-14095.624Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[522]!si_ad_change_buffer_reg_n_0_[522]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[522]_i_4_n_0 si_ad_change_buffer[522]_i_4_n_08Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[522]_i_4_n_0 si_ad_change_buffer[522]_i_4_n_02H
!si_ad_change_buffer[522]_i_4_comp	!si_ad_change_buffer[522]_i_4_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[522]ROTATE_LEFT02_in[522]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9412

-14095.596Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[489]!si_ad_change_buffer_reg_n_0_[489]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[489]_i_1_n_0 si_ad_change_buffer[489]_i_1_n_02H
!si_ad_change_buffer[489]_i_1_comp	!si_ad_change_buffer[489]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[489]_i_4_n_0 si_ad_change_buffer[489]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9392

-14095.538Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[588]!si_ad_change_buffer_reg_n_0_[588]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[588]_i_1_n_0 si_ad_change_buffer[588]_i_1_n_02H
!si_ad_change_buffer[588]_i_1_comp	!si_ad_change_buffer[588]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[588]_i_4_n_0 si_ad_change_buffer[588]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14095.229Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[576]!si_ad_change_buffer_reg_n_0_[576]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[576]_i_1_n_0 si_ad_change_buffer[576]_i_1_n_02H
!si_ad_change_buffer[576]_i_1_comp	!si_ad_change_buffer[576]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[576]_i_4_n_0 si_ad_change_buffer[576]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14095.001Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer_reg_n_0_[14] si_ad_change_buffer_reg_n_0_[14]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
si_ad_change_buffer[14]_i_4_n_0si_ad_change_buffer[14]_i_4_n_02<
si_ad_change_buffer[14]_i_4	si_ad_change_buffer[14]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
si_ad_change_buffer[14]_i_4_n_0si_ad_change_buffer[14]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14094.754Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[412]!si_ad_change_buffer_reg_n_0_[412]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[412]_i_3_n_0 si_ad_change_buffer[412]_i_3_n_02>
si_ad_change_buffer[412]_i_3	si_ad_change_buffer[412]_i_38Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[412]_i_3_n_0 si_ad_change_buffer[412]_i_3_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14094.594Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[381]!si_ad_change_buffer_reg_n_0_[381]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[381]_i_1_n_0 si_ad_change_buffer[381]_i_1_n_02H
!si_ad_change_buffer[381]_i_1_comp	!si_ad_change_buffer[381]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[381]_i_6_n_0 si_ad_change_buffer[381]_i_6_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14094.288Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[542]!si_ad_change_buffer_reg_n_0_[542]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[542]_i_1_n_0 si_ad_change_buffer[542]_i_1_n_02H
!si_ad_change_buffer[542]_i_1_comp	!si_ad_change_buffer[542]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[542]_i_4_n_0 si_ad_change_buffer[542]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14094.088Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[338]!si_ad_change_buffer_reg_n_0_[338]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[338]_i_4_n_0 si_ad_change_buffer[338]_i_4_n_02>
si_ad_change_buffer[338]_i_4	si_ad_change_buffer[338]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[338]_i_4_n_0 si_ad_change_buffer[338]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14094.067Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[411]!si_ad_change_buffer_reg_n_0_[411]8Z32-702h px� 
�
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2F
 si_ad_change_buffer[411]_i_1_n_0 si_ad_change_buffer[411]_i_1_n_02H
!si_ad_change_buffer[411]_i_1_comp	!si_ad_change_buffer[411]_i_1_comp8Z32-710h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[411]_i_4_n_0 si_ad_change_buffer[411]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14093.906Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[697]!si_ad_change_buffer_reg_n_0_[697]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[697]_i_4_n_0 si_ad_change_buffer[697]_i_4_n_02>
si_ad_change_buffer[697]_i_4	si_ad_change_buffer[697]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[697]_i_4_n_0 si_ad_change_buffer[697]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14093.881Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[401]!si_ad_change_buffer_reg_n_0_[401]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[401]_i_4_n_0 si_ad_change_buffer[401]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth20
ROTATE_LEFT02_in[401]ROTATE_LEFT02_in[401]2@
si_ad_change_buffer[401]_i_12	si_ad_change_buffer[401]_i_128Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[401]ROTATE_LEFT02_in[401]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14093.827Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[574]!si_ad_change_buffer_reg_n_0_[574]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[574]_i_4_n_0 si_ad_change_buffer[574]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth20
ROTATE_LEFT02_in[574]ROTATE_LEFT02_in[574]2@
si_ad_change_buffer[574]_i_11	si_ad_change_buffer[574]_i_118Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[574]ROTATE_LEFT02_in[574]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14093.684Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[233]!si_ad_change_buffer_reg_n_0_[233]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
pll0/inst/clk_out1_clk_wiz_0pll0/inst/clk_out1_clk_wiz_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[233]_i_4_n_0 si_ad_change_buffer[233]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[233]_i_9_n_0 si_ad_change_buffer[233]_i_9_n_02>
si_ad_change_buffer[233]_i_9	si_ad_change_buffer[233]_i_98Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[233]_i_9_n_0 si_ad_change_buffer[233]_i_9_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9352

-14093.604Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[616]!si_ad_change_buffer_reg_n_0_[616]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[616]_i_4_n_0 si_ad_change_buffer[616]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth20
ROTATE_LEFT02_in[616]ROTATE_LEFT02_in[616]2@
si_ad_change_buffer[616]_i_11	si_ad_change_buffer[616]_i_118Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[616]ROTATE_LEFT02_in[616]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9342

-14093.585Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[328]!si_ad_change_buffer_reg_n_0_[328]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[328]_i_4_n_0 si_ad_change_buffer[328]_i_4_n_02>
si_ad_change_buffer[328]_i_4	si_ad_change_buffer[328]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[328]_i_4_n_0 si_ad_change_buffer[328]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9342

-14093.541Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer_reg_n_0_[35] si_ad_change_buffer_reg_n_0_[35]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2D
si_ad_change_buffer[35]_i_4_n_0si_ad_change_buffer[35]_i_4_n_02<
si_ad_change_buffer[35]_i_4	si_ad_change_buffer[35]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
si_ad_change_buffer[35]_i_4_n_0si_ad_change_buffer[35]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9342

-14093.538Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[242]!si_ad_change_buffer_reg_n_0_[242]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[242]_i_4_n_0 si_ad_change_buffer[242]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer[242]_i_13_n_0!si_ad_change_buffer[242]_i_13_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
212
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[242]ROTATE_LEFT02_in[242]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9322

-14093.263Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[661]!si_ad_change_buffer_reg_n_0_[661]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[661]_i_4_n_0 si_ad_change_buffer[661]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth20
ROTATE_LEFT02_in[661]ROTATE_LEFT02_in[661]2@
si_ad_change_buffer[661]_i_11	si_ad_change_buffer[661]_i_118Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[661]ROTATE_LEFT02_in[661]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9322

-14093.237Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[476]!si_ad_change_buffer_reg_n_0_[476]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[476]_i_4_n_0 si_ad_change_buffer[476]_i_4_n_02>
si_ad_change_buffer[476]_i_4	si_ad_change_buffer[476]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[476]_i_4_n_0 si_ad_change_buffer[476]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9322

-14093.114Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[651]!si_ad_change_buffer_reg_n_0_[651]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
202
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[651]_i_4_n_0 si_ad_change_buffer[651]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9312

-14093.112Z32-619h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
152
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2D
si_ad_change_buffer[35]_i_4_n_0si_ad_change_buffer[35]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9312

-14092.595Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[507]!si_ad_change_buffer_reg_n_0_[507]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[507]_i_4_n_0 si_ad_change_buffer[507]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth20
ROTATE_LEFT02_in[507]ROTATE_LEFT02_in[507]8Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
212
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2H
!si_ad_change_buffer[508]_i_13_n_0!si_ad_change_buffer[508]_i_13_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14092.529Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[464]!si_ad_change_buffer_reg_n_0_[464]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[464]_i_4_n_0 si_ad_change_buffer[464]_i_4_n_08Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[464]_i_7_n_0 si_ad_change_buffer[464]_i_7_n_02>
si_ad_change_buffer[464]_i_7	si_ad_change_buffer[464]_i_78Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[464]_i_7_n_0 si_ad_change_buffer[464]_i_7_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14092.003Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[334]!si_ad_change_buffer_reg_n_0_[334]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[334]_i_4_n_0 si_ad_change_buffer[334]_i_4_n_08Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[334]_i_9_n_0 si_ad_change_buffer[334]_i_9_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
212
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[334]ROTATE_LEFT02_in[334]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14091.728Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[583]!si_ad_change_buffer_reg_n_0_[583]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[583]_i_4_n_0 si_ad_change_buffer[583]_i_4_n_02>
si_ad_change_buffer[583]_i_4	si_ad_change_buffer[583]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[583]_i_4_n_0 si_ad_change_buffer[583]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14091.670Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[431]!si_ad_change_buffer_reg_n_0_[431]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[431]_i_3_n_0 si_ad_change_buffer[431]_i_3_n_02>
si_ad_change_buffer[431]_i_3	si_ad_change_buffer[431]_i_38Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[431]_i_3_n_0 si_ad_change_buffer[431]_i_3_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14091.560Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[406]!si_ad_change_buffer_reg_n_0_[406]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[406]_i_4_n_0 si_ad_change_buffer[406]_i_4_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
242
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[406]ROTATE_LEFT02_in[406]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14091.209Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[449]!si_ad_change_buffer_reg_n_0_[449]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[449]_i_3_n_0 si_ad_change_buffer[449]_i_3_n_02>
si_ad_change_buffer[449]_i_3	si_ad_change_buffer[449]_i_38Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[449]_i_3_n_0 si_ad_change_buffer[449]_i_3_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14091.166Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[389]!si_ad_change_buffer_reg_n_0_[389]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[389]_i_4_n_0 si_ad_change_buffer[389]_i_4_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
202
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[389]ROTATE_LEFT02_in[389]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14091.094Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[451]!si_ad_change_buffer_reg_n_0_[451]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[451]_i_4_n_0 si_ad_change_buffer[451]_i_4_n_02>
si_ad_change_buffer[451]_i_4	si_ad_change_buffer[451]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[451]_i_4_n_0 si_ad_change_buffer[451]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14091.004Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[342]!si_ad_change_buffer_reg_n_0_[342]8Z32-702h px� 
�
(Processed net %s.  Re-placed instance %s337*physynth2F
 si_ad_change_buffer[342]_i_4_n_0 si_ad_change_buffer[342]_i_4_n_02>
si_ad_change_buffer[342]_i_4	si_ad_change_buffer[342]_i_48Z32-663h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth2F
 si_ad_change_buffer[342]_i_4_n_0 si_ad_change_buffer[342]_i_4_n_08Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14090.963Z32-619h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2H
!si_ad_change_buffer_reg_n_0_[550]!si_ad_change_buffer_reg_n_0_[550]8Z32-702h px� 
�
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
 si_ad_change_buffer[550]_i_4_n_0 si_ad_change_buffer[550]_i_4_n_08Z32-702h px� 
_
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12
net2
122
pinsZ32-608h px� 
�
;Processed net %s. Optimization improves timing on the net.
394*physynth20
ROTATE_LEFT02_in[550]ROTATE_LEFT02_in[550]8Z32-735h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14090.958Z32-619h px� 
v
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2	
-17.9302

-14090.958Z32-619h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.1192

4537.8322
0.000Z17-268h px� 
S
%s*common2:
8Phase 4 Critical Path Optimization | Checksum: 9c6f5ea2
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:07 . Memory (MB): peak = 4537.832 ; gain = 0.000h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:012
00:00:00.0042

4537.8322
0.000Z17-268h px� 
{
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2	
-17.9302

-14090.958Z32-603h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.042  |         11.767  |            0  |              0  |                    81  |           0  |           2  |  00:00:06  |
|  Total          |          0.042  |         11.767  |            0  |              0  |                    81  |           0  |           3  |  00:00:06  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

4537.8322
0.000Z17-268h px� 
O
%s*common26
4Ending Physical Synthesis Task | Checksum: 9c6f5ea2
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:12 ; elapsed = 00:00:07 . Memory (MB): peak = 4537.832 ; gain = 0.000h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
4522
12
02
0Z4-41h px� 
O
%s completed successfully
29*	vivadotcl2
phys_opt_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
phys_opt_design: 2

00:00:192

00:00:122

4537.8322
0.629Z17-268h px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0092

4537.8322
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:032

00:00:012

4537.8322
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

4537.8322
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.0192

4537.8322
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0292

4537.8322
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0032

4537.8322
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:032

00:00:012

4537.8322
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2A
?D:/brembsFPGA/flySimulator.runs/impl_1/flySimulator_physopt.dcpZ17-1381h px� 


End Record