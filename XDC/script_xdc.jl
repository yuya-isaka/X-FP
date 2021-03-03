# 次回30から
# パラメータ ---------------------------------------------------
ring = ARGS[1] # 使うリング
clb = ARGS[2] # clbのスタート位置 x座標 2の倍数
# -------------------------------------------------------------
flag = false
clb = parse(Int, clb)

if 0 <= clb <= 12 || 28 <= clb <= 38 || 48 <= clb <= 54
    left = 0
    limit = 150
elseif 14 <= clb <= 26
    left = 100
    limit = 50
elseif 56 <= clb <= 62
    left = 0
    limit = 100
elseif 40 <= clb <= 46
    left = 0
    limit = 125
    global flag = true
end

right = left + limit

ring_file = "../verilog_ring/ring_xor_p$(ring).v"
cp(ring_file, "../verilog_ring/ring_xor_new.v", force=true)

top_file = "../verilog_top/top_$(limit).v"
cp(top_file, "../verilog_top/top.v", force=true)

file = open("xor.xdc", "w")

# 最初の宣言
initial = "# Clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]
set_property PACKAGE_PIN A18 [get_ports tx]
set_property IOSTANDARD LVCMOS33 [get_ports tx]
###
set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells < LUTLP-1>]]
set_property SEVERITY {Warning}  [get_drc_checks LUTLP-1]
set_property SEVERITY {Warning} [get_drc_checks NSTD-1]"
write(file, initial)
write(file, "\n")
write(file, "\n")

# ROの初期値設定(XORにする)
for i in 0:limit-1
    for j in 0:14
        tmp = "set_property INIT 64'h6996966996696996 [get_cells ro$(i)/ro$(j)]\n"
        write(file, tmp)
    end
    write(file, "\n")
end
write(file, "\n")

# ROの配置を指定
count = clb
data1 = ["ro0", "ro1", "ro2", "ro3"]
data2 = ["ro4", "ro5", "ro6", "ro7"]
data3 = ["ro8", "ro9", "ro10", "ro11"]
data4 = ["ro12", "ro13", "ro14", "X_7_inst"]
for i in left:right-1
    if flag
        if i == 100
            global left += 25
        end
        if 100 <= i <= 124
            i += 25
        end
    end
    for data in data1
        tmp = "set_property LOC SLICE_X$(count)Y$(i) [get_cells ro$(i-left)/$(data)]\n"
        write(file, tmp)
    end
    global count += 1
    for data in data2
        tmp = "set_property LOC SLICE_X$(count)Y$(i) [get_cells ro$(i-left)/$(data)]\n"
        write(file, tmp)
    end
    global count += 1
    for data in data3
        tmp = "set_property LOC SLICE_X$(count)Y$(i) [get_cells ro$(i-left)/$(data)]\n"
        write(file, tmp)
    end
    global count += 1
    for data in data4
        tmp = "set_property LOC SLICE_X$(count)Y$(i) [get_cells ro$(i-left)/$(data)]\n"
        write(file, tmp)
    end
    global count += 1
    write(file, "\n")

    global count = clb
end
write(file, "\n")

close(file)

file = open("../isaka_uart.py", "w")
python_file = "import serial
import csv
import pandas as pd
from openpyxl import Workbook
import os
import pathlib

print()
print('*****************************************************')
print('Measuring Frequency.......')

PORT = '/dev/ttyUSB1' #comport
BAUD = 19200  #bps
serial_port = serial.Serial(PORT, baudrate=BAUD, timeout=None)
serial_port.reset_input_buffer()  #ノイズデータがある場合があるのでバッファをクリアする
serial_port.flush()

frequency = []
ring_counter = 0
while(True):
    read_value = b''  #バイナリ形式で受け取っている
    read_value = serial_port.read(4)
    tmp = int.from_bytes(read_value, byteorder='big')/1000000  #for MHz e.g for 1s=1000000
    tmp *= 100
    print(f'{ring_counter}: {tmp}')
    frequency.append(tmp)
    ring_counter += 1
    if(ring_counter > $(limit-1)):  #1499
        break

# write sheet
work_book = Workbook()
sheet = work_book.active
sheet.title = 'sheet #1'
for x in range(1):
    for y in range($(limit)):
        tmp = x * $(limit)
        sheet.cell(column=x+1, row=y+1, value=frequency[y+tmp])

# save sheet
work_book.save('data_out.xlsx')
df = pd.read_excel('data_out.xlsx')

path_now = os.getcwd()
p_file = pathlib.Path(path_now)
# parent = p_file.parents[1]
parent = p_file
path = str(parent) + R'/frequency/xor$(ring)_$(clb).csv'
df.to_csv(path, index=False)

print('COMPLETED')"

write(file, python_file)
close(file)