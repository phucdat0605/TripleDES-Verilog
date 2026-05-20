transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/IP.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/pc1.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/pc2.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/e_expand.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/sfunct.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/p_permutation.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/f_funct.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/IP_1.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/des_encrypt.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/des_decrypt.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/tdes_encrypt.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/tdes_decrypt.v}
vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/tripleDES.v}

vlog -vlog01compat -work work +incdir+D:/Ki\ 2\ nam\ 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES {D:/Ki 2 nam 3/HE_THONG_SO_HDL/THUCHANH-DAT/DoAnHDL/TripleDES/tripleDES_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  tripleDES_tb

add wave *
view structure
view signals
run -all
