# FPGA Issues and Solutions

This is a list of different issues I encountered while trying to set up the Zedboard-7000 and Nexys-A7.



## Zedboard-7000

1. ***SDK* or *Vitis* is not launching** : When launching the *SDK* or *Vitis* in the latest versions of Vivado, you might encounter an error such as:

   ```bash
   $ vitis
   ****** Xilinx Software Development Kit
   ****** SDK v2015.4 (64-bit)
   **** SW Build 1412921 on Wed Nov 18 09:44:32 MST 2015
   ** Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
   
   Launching SDK with command /opt/Xilinx/Vitis/2019.2/eclipse/lnx64.o/eclipse -vmargs -Xms64m -Xmx512m
   /opt/Xilinx/Vitis/2019.2/lib/lnx64.o/libstdc++.so.6: version `GLIBCXX_3.4.26' not found (required by /usr/lib/x86_64-linux-gnu/libproxy.so.1)
   Failed to load module: /usr/lib/x86_64-linux-gnu/gio/modules/libgiolibproxy.so
   ```

   This error comes from the fact that *Vitis* fails to find the correct library. This problem can be solved by copying the system library to the directory it is looking in. This can be done as follows:

   ```bash
   $ cd /opt/Xilinx/Vitis/2019.2/lib/lnx64.o/
   $ sudo mv libstdc++.so.6 libstdc++.so.6.orig
   $ sudo ln -s /usr/lib/x86_64-linux-gnu/libstdc++.so.6  libstdc++.so.6
   ```

   The corresponding forum answer is **[1]**.

   

2. **Platform issue when exporting your design from *Vivado* to *Vitis*:** When exporting your hardware design from *Vivado* to *Vitis*, you might have an issue running it. The error message will look like:

   ```vivado
   Platform <platform_name>.xpfm is invalid
   ```

   The error comes from the fact that you have to update the hardware specification for *Vitis* to find and understand it. This can be done as follows:

   - Export the `.xsa` by going over to `File > Export > Export Hardware` in *Vivado*

   - In *Vitis*, right click on the `Platform Project` and select `Update Hardware Specification`

   - Reboot *Vitis* if you ever have the following error

     ```vivado
     Hw specification provided does not have the HwDb
     ```

   - When rebooting, click on your project `.pjr` and then on `Navigate to BSP settings`

   - Click on `Reset BSP sources`

   - Go to the project menu, clean everything and rebuild

   The corresponding forum answer is **[2]**.

3. 

 



## Nexys-A7





[1]: https://forums.xilinx.com/t5/Embedded-Development-Tools/GLIBCXX-3-4-20-not-found/td-p/673213	"Missing library"
[2]: https://forums.xilinx.com/t5/Vitis-Acceleration-SDAccel-SDSoC/Updating-BSP-in-Vitis/td-p/1072961	"Platform invalid"





