
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/utils_1/imports/synth_1/traffic_light.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2~
jC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/utils_1/imports/synth_1/traffic_light.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
z
Command: %s
53*	vivadotcl2I
5synth_design -top traffic_light -part xc7s75fgga484-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7s752default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7s752default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7s75fgga484-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
46602default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1187.938 ; gain = 409.020
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2!
traffic_light2default:default2
 2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
LCD2default:default2
 2default:default2j
TC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/LCD.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
bin2bcd2default:default2
 2default:default2n
XC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/bin2bcd.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
bin2bcd2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/bin2bcd.v2default:default2
232default:default8@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
92default:default2
dac_d2default:default2
82default:default2
bin2bcd2default:default2j
TC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/LCD.v2default:default2
532default:default8@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
92default:default2
dac_d2default:default2
82default:default2
bin2bcd2default:default2j
TC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/LCD.v2default:default2
542default:default8@Z8-689h px� 
�
default block is never used226*oasys2j
TC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/LCD.v2default:default2
652default:default8@Z8-226h px� 
�
default block is never used226*oasys2j
TC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/LCD.v2default:default2
982default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
LCD2default:default2
 2default:default2
02default:default2
12default:default2j
TC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/LCD.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2%
oneshot_universal2default:default2
 2default:default2x
bC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/oneshot_universal.v2default:default2
232default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 4 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2%
oneshot_universal2default:default2
 2default:default2
02default:default2
12default:default2x
bC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/oneshot_universal.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys25
!oneshot_universal__parameterized02default:default2
 2default:default2x
bC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/oneshot_universal.v2default:default2
232default:default8@Z8-6157h px� 
Z
%s
*synth2B
.	Parameter WIDTH bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys25
!oneshot_universal__parameterized02default:default2
 2default:default2
02default:default2
12default:default2x
bC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/oneshot_universal.v2default:default2
232default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
842default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
1592default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
1992default:default8@Z8-155h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2772default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2782default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2792default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2802default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3002default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3012default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3022default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3032default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3212default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3222default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3232default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3242default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3422default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3432default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3442default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3452default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3612default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3622default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3632default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
3642default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4052default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4062default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4072default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4082default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4262default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4272default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4282default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4292default:default8@Z8-6090h px� 
�
-case statement is not full and has no default155*oasys2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2632default:default8@Z8-155h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4492default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4502default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4512default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4522default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4722default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4732default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4742default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4752default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4932default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4942default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4952default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4962default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5142default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5152default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5162default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5172default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5332default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5342default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5352default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5362default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5772default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5782default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5792default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5802default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
S_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5982default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
N_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
5992default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
W_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
6002default:default8@Z8-6090h px� 
�
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
E_YELLOW2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
6012default:default8@Z8-6090h px� 
�
-case statement is not full and has no default155*oasys2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
4352default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
traffic_light2default:default2
 2default:default2
02default:default2
12default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
232default:default8@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2#
is_S_YELLOW_reg2default:default2!
traffic_light2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2512default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2#
is_N_YELLOW_reg2default:default2!
traffic_light2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2522default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2#
is_W_YELLOW_reg2default:default2!
traffic_light2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2532default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2#
is_E_YELLOW_reg2default:default2!
traffic_light2default:default2t
^C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/sources_1/new/traffic_light.v2default:default2
2542default:default8@Z8-7137h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1304.242 ; gain = 525.324
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1304.242 ; gain = 525.324
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1304.242 ; gain = 525.324
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0132default:default2
1304.2422default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2v
`C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/constrs_1/new/traffic_light.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2v
`C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/constrs_1/new/traffic_light.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2t
`C:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.srcs/constrs_1/new/traffic_light.xdc2default:default23
.Xil/traffic_light_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1408.6452default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0082default:default2
1408.6452default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7s75fgga484-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_LCD_reg2default:default2
LCD2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                   DELAY |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_            FUNCTION_SET |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_              DISP_ONOFF |                              010 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_              ENTRY_MODE |                              011 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                   LINE1 |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2s
_                   LINE2 |                              101 |                              101
2default:defaulth p
x
� 
�
%s
*synth2s
_                 DELAY_T |                              110 |                              110
2default:defaulth p
x
� 
�
%s
*synth2s
_              CLEAR_DISP |                              111 |                              111
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
state_LCD_reg2default:default2

sequential2default:default2
LCD2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:14 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 7     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                6 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 35    
2default:defaulth p
x
� 
?
%s
*synth2'
+---Multipliers : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	               9x32  Multipliers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 12    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    9 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  18 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 8     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    4 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 9     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 308   
2default:defaulth p
x
� 
X
%s
*synth2@
,	  18 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  16 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   9 Input    1 Bit        Muxes := 48    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 140 (col length:80)
BRAMs: 180 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
e
%s
*synth2M
9DSP Report: Generating DSP cnt0, operation Mode is: A*B.
2default:defaulth p
x
� 
a
%s
*synth2I
5DSP Report: operator cnt0 is absorbed into DSP cnt0.
2default:defaulth p
x
� 
a
%s
*synth2I
5DSP Report: operator cnt0 is absorbed into DSP cnt0.
2default:defaulth p
x
� 
p
%s
*synth2X
DDSP Report: Generating DSP cnt0, operation Mode is: (PCIN>>17)+A*B.
2default:defaulth p
x
� 
a
%s
*synth2I
5DSP Report: operator cnt0 is absorbed into DSP cnt0.
2default:defaulth p
x
� 
a
%s
*synth2I
5DSP Report: operator cnt0 is absorbed into DSP cnt0.
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:15 ; elapsed = 00:00:22 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
%s*synth2p
\
DSP: Preliminary Mapping Report (see note below. The ' indicates corresponding REG is set)
2default:defaulth px� 
�
%s*synth2�
�+--------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name   | DSP Mapping    | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth px� 
�
%s*synth2�
�+--------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth px� 
�
%s*synth2�
�|traffic_light | A*B            | 18     | 10     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�|traffic_light | (PCIN>>17)+A*B | 16     | 10     | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth px� 
�
%s*synth2�
�+--------------+----------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the DSPs inferred at the current stage of the synthesis flow. Some DSP may be reimplemented as non DSP primitives later in the synthesis flow. Multiple instantiated DSPs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:30 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:30 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:00:21 ; elapsed = 00:00:30 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:34 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:34 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:34 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:34 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:34 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:34 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
i
%s
*synth2Q
=
DSP Final Report (the ' indicates corresponding REG is set)
2default:defaulth p
x
� 
�
%s
*synth2�
+--------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name   | DSP Mapping  | A Size | B Size | C Size | D Size | P Size | AREG | BREG | CREG | DREG | ADREG | MREG | PREG | 
2default:defaulth p
x
� 
�
%s
*synth2�
+--------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|traffic_light | A*B          | 17     | 8      | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|traffic_light | PCIN>>17+A*B | 15     | 8      | -      | -      | 48     | 0    | 0    | -    | -    | -     | 0    | 0    | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------+--------------+--------+--------+--------+--------+--------+------+------+------+------+-------+------+------+

2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|      |Cell    |Count |
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
E
%s*synth2-
|1     |BUFG    |     1|
2default:defaulth px� 
E
%s*synth2-
|2     |CARRY4  |   516|
2default:defaulth px� 
E
%s*synth2-
|3     |DSP48E1 |     2|
2default:defaulth px� 
E
%s*synth2-
|4     |LUT1    |    43|
2default:defaulth px� 
E
%s*synth2-
|5     |LUT2    |   741|
2default:defaulth px� 
E
%s*synth2-
|6     |LUT3    |   996|
2default:defaulth px� 
E
%s*synth2-
|7     |LUT4    |   140|
2default:defaulth px� 
E
%s*synth2-
|8     |LUT5    |   220|
2default:defaulth px� 
E
%s*synth2-
|9     |LUT6    |   301|
2default:defaulth px� 
E
%s*synth2-
|10    |MUXF7   |     3|
2default:defaulth px� 
E
%s*synth2-
|11    |FDCE    |   244|
2default:defaulth px� 
E
%s*synth2-
|12    |FDPE    |    47|
2default:defaulth px� 
E
%s*synth2-
|13    |FDRE    |     4|
2default:defaulth px� 
E
%s*synth2-
|14    |IBUF    |     8|
2default:defaulth px� 
E
%s*synth2-
|15    |OBUF    |    35|
2default:defaulth px� 
E
%s*synth2-
+------+--------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:34 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:33 . Memory (MB): peak = 1408.645 ; gain = 525.324
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:24 ; elapsed = 00:00:34 . Memory (MB): peak = 1408.645 ; gain = 629.727
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
1408.6452default:default2
0.0002default:defaultZ17-268h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
5212default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' contains a large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
310*netlist2!
traffic_light2default:default2!
traffic_light2default:defaultZ29-101h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1408.6452default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
c3028f352default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
422default:default2
642default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:252default:default2
00:00:392default:default2
1408.6452default:default2
1011.6482default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2n
ZC:/git/ECE_exp2/traffic_light_5/traffic_light/traffic_light.runs/synth_1/traffic_light.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
pExecuting : report_utilization -file traffic_light_utilization_synth.rpt -pb traffic_light_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Dec  6 17:37:16 20232default:defaultZ17-206h px� 


End Record