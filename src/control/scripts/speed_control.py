def speedControl(dspeed,diffdspeed,yaml_data):
    Speed_Kp = yaml_data['Speed_Kp']
    Speed_Kd = yaml_data['Speed_Kd']

    speedTorque = int((dspeed * Speed_Kp + diffdspeed * Speed_Kd))
    if speedTorque > 850:
        speedTorque = 850
    if speedTorque < -1500:
        speedTorque = -1500


    if speedTorque <= -10:
        acc_veh_mode = 2
    else:
        acc_veh_mode = 1

    if acc_veh_mode == 2:
        speedTorque_ACC = 0
        speedTorque_EBS = 0.008 * speedTorque
        if speedTorque_EBS < -1.1:
            speedTorque_EBS = -1.1
    else:
        speedTorque_ACC = speedTorque
        speedTorque_EBS = 0
    speedTorque_ACC = 0
    speedTorque_EBS = 0
    Target_speedlever_percentage = 20

    # return speedTorque_ACC,speedTorque_EBS,Target_speedlever_percentage
    return speedTorque_ACC, speedTorque_EBS