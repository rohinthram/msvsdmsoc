v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -240 40 -220 {
lab=#net1}
N 40 -160 40 -120 {
lab=GND}
N 40 -120 50 -120 {
lab=GND}
N 50 -120 310 -120 {
lab=GND}
N 310 -210 310 -120 {
lab=GND}
N 160 -210 160 -120 {
lab=GND}
N 160 -290 160 -270 {
lab=#net2}
N 90 -240 120 -240 {
lab=#net1}
N 90 -320 90 -240 {
lab=#net1}
N 90 -320 120 -320 {
lab=#net1}
N 40 -280 90 -280 {
lab=#net1}
N 40 -280 40 -240 {
lab=#net1}
N 160 -380 160 -350 {
lab=#net3}
N 160 -380 310 -380 {
lab=#net3}
N 310 -380 310 -270 {
lab=#net3}
N 160 -120 160 -110 {
lab=GND}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 140 -240 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} 40 -190 0 0 {name=V1 value=3}
C {vsource.sym} 310 -240 0 0 {name=V2 value=1.8}
C {/usr/local/share/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 140 -320 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {gnd.sym} 160 -110 0 0 {name=l1 lab=GND}
C {code.sym} 400 -250 0 0 {name=spice only_toplevel=false value="

.lib ~/Downloads/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.control
	.tran 0 0 3 
	plot
.endc

.save all

"}
