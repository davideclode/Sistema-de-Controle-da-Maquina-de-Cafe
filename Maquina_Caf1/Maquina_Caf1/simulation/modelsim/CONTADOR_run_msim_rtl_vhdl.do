transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Patrick/Desktop/Maquina_Caf1/Maquina_Caf1/CAFETEIRA.vhd}
vcom -93 -work work {C:/Users/Patrick/Desktop/Maquina_Caf1/Maquina_Caf1/CONTADOR.vhd}
vcom -93 -work work {C:/Users/Patrick/Desktop/Maquina_Caf1/Maquina_Caf1/CONTROLE_DISPLAYS.vhd}
vcom -93 -work work {C:/Users/Patrick/Desktop/Maquina_Caf1/Maquina_Caf1/CONTROLE_SENSORES.vhd}
vcom -93 -work work {C:/Users/Patrick/Desktop/Maquina_Caf1/Maquina_Caf1/CONTROLE_PEDIDO.vhd}
vcom -93 -work work {C:/Users/Patrick/Desktop/Maquina_Caf1/Maquina_Caf1/maquina_estados.vhd}

