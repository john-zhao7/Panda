#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Time    : 2023/6/1 16:53
# @Author  : GuoFan
# @File    : Read_config_demo.py

import yaml

# 读取 YAML 文件


def pathControl(CTE,diffCTE,dHead,diffdHead,yaml_data):
    CTE_Kp = yaml_data['CTE_Kp']
    CTE_Kd = yaml_data['CTE_Kd']
    Head_Kp = yaml_data['Head_Kp']
    Head_Kd = yaml_data['Head_Kd']


    wheelAngle = (int((CTE* CTE_Kp + diffCTE * CTE_Kd + dHead * Head_Kp + diffdHead * Head_Kd)))
    

    
    if wheelAngle > 700:
        wheelAngle = 700
    if wheelAngle < -700:
        wheelAngle = -700
    return wheelAngle



