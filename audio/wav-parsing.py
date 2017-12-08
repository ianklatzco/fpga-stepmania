import wave
import binascii
import sys

if len(sys.argv) != 2:
    print("usage: script filename.wav")
    sys.exit()

wave_obj = wave.open(sys.argv[1],'rb')
# print( wave_obj.getsampwidth() )
# >>> 2 bytes
for x in range(0,wave_obj.getnframes()):
    data =  binascii.hexlify(wave_obj.readframes(1)) 
    print( "mem["+str(x)+"] <= 16'h"+data.decode('utf-8')+";" )
