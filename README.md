# IWR6843AOP_ros_docker
* 2022.08.25 Update  

docker image for ti iwr6843aop mmwave sensor.  
The mmwave demo code is written for Ubuntu 18.04 (melodic). Since my current Ubuntu version is 20.04, docker comes in handy to run the mmwave demo.

## Steps:
1. Install docker 
2. If Dockerfile modified, run:
```
$ source build.sh
```
3. After Docker Image built sucessfully, we can launch the docker container:
```
$ source docker_run.sh
```
4. If seperate terminals are needed (ex. one for running roscore, another for rviz ...), run:
```
$ source docker_join.sh
```

## Setup the mmwave radar:
The documentations for the TI IWR6843AOPEVM aren't really friendly to read, and the links point around to different sources. After trying around, I think the link below (TI Resource Explorer) has the best step-by-step instructions.
1. Re-flash the TI mmwave with out-of-box demo. (download Industrial Toolblox (4.12.0), then find the .bin file in 
```
/mmwave_industrial_toolbox_4_12_0/labs/Out_Of_Box_Demo/prebuilt_binaries/out_of_box_6843_aop.bin
```
2. ~~Install Uniflash were you can locate the .bin file in the demo folder. Although the sensor name is IWR6843AOPEVM as listed on the box, there is only XWR68XX.bin to use.~~
3. Open the UNIFLASH ("Develop in the cloud" should work without problem)
4. Select your board (IWR6843AOP)
5. Flick the switch on the back of the mmwave radar to "OFF" before flashing (Read data-sheet for details or specific sensors)
6. Drag in the .bin file to Meta Image 1 and select the correct COM port below (quick setting) *Note use the "enchancement port"
7. If flash failed, turn off the power and press the RST button on the mmwave sensor. (Just do this if anything has failed, works most of the time)
8. Flick the switch on the back of the mmwave radar to "ON" for operation mode
9. Open the MMWAVE-SDK ("Develop in the cloud" should work without problem)
10. Select the correct platform ~~(mine is IWR6843AOPEVM but only XWR68XX works for me, not sure why ...)~~. Match the SDK version with the version you've flashed in step 5.
11. Modify the settings according to your desire (frame rates too high might cause the sensor to fail in ROS (Might be the sensor overheating))
12. Press "SEND CONFIG TO MMWAVE DEVICE". A connection window should pop out where you should select the correct COM ports.
13. Press "SEND CONFIG TO MMWAVE DEVICE" and see the results in the "Plots" bar (top-right). 
14. You can further tune some parameters according to your needs and export the .cfg file by pressing the "EXPORT TUNED PROFILE" button.
15. The MMWAVE-SDK page seems to fail quite often. If something doesn't work, try it tomorrow or download the installer.

## Inside the docker container:
1. Inside catkin_ws, run:
```
$ source /devel/setup.bash
```
* catkin_ws is volumed (linked) with the local directory (/home/< user >/catkin_ws_melodic, this can be modified in the docker_run.sh file, line 50:) 
```
-v "/local/directory:/container/directory
```
2. Place in the generated .cfg file for the mmwave radar inside the /cfg directory and rename the file accordingly.
3. run the demo code for the mmwave sensor:
```
$ roslaunch ti_mmwave_rospkg 6843AOP_multi_3d_0.launch
```
```
$ roslaunch ti_mmwave_rospkg 6843AOP_multi_2d_0.launch
```
*Note: futher details about this demo code can be found at the offical website from Texus Instruments: https://dev.ti.com/tirex/explore/node?node=ADINBw2NDaxb6JeW7V-lMQ__VLyFKFf__LATEST

4. I wrote a launch file to combine the results of the mmwave radar and a RPlidar. The launch file is located inside the mmwave package, we can see the results with. Note that the RPlidar is set to ttyUSB0 and the mmwave radar is set to ttyUSB1 and ttyUSB2. If these setting don't match your current settings, be sure to modify the launch file (/launch/6843AOP_3d_rplidar.launch):
```
$ roslaunch ti_mmwave_rospkg 6843AOP_3d_rplidar.launch
```

## Troble-shooting

The official documents of the IWR6843AOP mmwave radar were kind of out of data and contained much misleading data. Correct information can be found at the TI Recource Explorer. Where the tutorials are properly written and trouble-shooting solutions are given. In the original datasheet. My current mmwave radar (IWR6843AOP) was stated as not supported and the photo of the sensor looked like AWR6843AOP. This caused quite a confusion when flashing the radar and in later operations.  
Also, other labs and experiments can be found in the Industrial toolbox, where a GUI is given to run the mmwave locally without using ROS. The GUI is located in the /tools/Visualizer directory, and the specific steps can be found in the labs.