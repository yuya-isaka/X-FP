
import serial
import csv
import pandas as pd
from openpyxl import Workbook

print('*****************************************************')
print('Measuring Frequency.......')

PORT = 'COM4'
BAUD = 19200
serial_port = serial.Serial(PORT, baudrate=BAUD, timeout=None)
serial_port.reset_input_buffer()
serial_port.flush()

frequency = []
ring_counter = 0
while(True):
    read_value = b''
    read_value = serial_port.read(4)
    tmp = int.from_bytes(read_value, byteorder='big')/1000000
    print(tmp)
    frequency.append(tmp)
    ring_counter += 1
    if(ring_counter > 8):
        break

with open ("fpga.csv", "w") as f:
    for item in frequency:
        f.write(format(item))
        f.write("\n")

file_name = "C:\...."
tmp_data = pd.read_csv(file_name, header=None)
data = pd.DataFrame(data=tmp_data)

work_book = Workbook()
sheet = work_book.active
sheet.title = 'sheet #1'
for y in range(20):
    for x in range(150):
        tmp = y * 150
        sheet.cell(row=x+1, column=y+1, value=data[0][x+tmp])

work_book.save('data_out.xlsx')
df = pd.read_excel("data_out.xlsx")
df.to_csv("output1.csv",index=False)

print("COMPLETED")