import serial
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
    if(ring_counter > 149):  #1499
        break

# write sheet
work_book = Workbook()
sheet = work_book.active
sheet.title = 'sheet #1'
for x in range(1):
    for y in range(150):
        tmp = x * 150
        sheet.cell(column=x+1, row=y+1, value=frequency[y+tmp])

# save sheet
work_book.save('data_out.xlsx')
df = pd.read_excel('data_out.xlsx')

path_now = os.getcwd()
p_file = pathlib.Path(path_now)
# parent = p_file.parents[1]
parent = p_file
path = str(parent) + R'/frequency/xor1_2.csv'
df.to_csv(path, index=False)

print('COMPLETED')