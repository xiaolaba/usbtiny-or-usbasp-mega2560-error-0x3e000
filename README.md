# usbtiny-or-usbasp-mega2560-error-0x3e000
avrdude: verification error, first mismatch at byte 0x3e000, mega2560 and the usbtiny programmer  

output and the message,
```
5.4.0

avrdude: AVR device initialized and ready to accept instructions

Reading | ################################################## | 100% 0.02s

avrdude: Device signature = 0x1e9801 (probably m2560)
avrdude: NOTE: "flash" memory has been specified, an erase cycle will be performed
         To disable this feature, specify the -D option.
avrdude: erasing chip
avrdude: reading input file "stk500boot_v2_mega2560.hex"
avrdude: input file stk500boot_v2_mega2560.hex auto detected as Intel Hex
avrdude: writing flash (261386 bytes):

Writing | ################################################## | 100% 0.23s

avrdude: 261386 bytes of flash written
avrdude: verifying flash memory against stk500boot_v2_mega2560.hex:
avrdude: load data flash data from input file stk500boot_v2_mega2560.hex:
avrdude: input file stk500boot_v2_mega2560.hex auto detected as Intel Hex
avrdude: input file stk500boot_v2_mega2560.hex contains 261386 bytes
avrdude: reading on-chip flash data:

Reading | ################################################## | 100% 0.22s

avrdude: verifying ...
avrdude: verification error, first mismatch at byte 0x3e000
         0xff != 0x0d
avrdude: verification error; content mismatch

avrdude: safemode: Fuses OK (E:FD, H:D8, L:FF)

avrdude done.  Thank you.

請按任意鍵繼續 . . .
```


this is why, look at the soruce code of usbtiny
https://forum.arduino.cc/t/help-bricked-my-ardunio-mega2560-rev-3/100686/17
bootloader for Mega2560 is addressed at 0x0003e000
usbtiny or usbasp only designed with address of uint (16bit) 0x0000ffff

unless change the usbtiny firmware design, this could be no solution.
question,
why burn bootloader has no error ?
why verifying is seeing the error ?
