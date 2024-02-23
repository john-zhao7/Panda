"""
    Name: Hao Jinbo
    date: 2023.3
    function: 用于换道和横向规划的库函数
"""
import math
import numpy as np
import time
import base_class

class proOffset():
    # t gap 0.5 to 0.2
    def __init__(self):
        self.current_offset = 0.0
        self.desire_offset = 0.0
        self.old_offset = 0.0
        self.tick = 0.0
        self.max_tick = 100.0    # real time is 0.06s

        # set v @ 4m/s
        self.v = 4.0

        # calculate per tick distance according to v
        self.tick_dis = self.v / self.max_tick

        # dHead_offset
        self.dHead_offset = 0
        self.dHead_alpha = 0.12

    def costfunction(self,jerk_d_sum,t,d,kappa_max,cur_speed,target_flag):
        k1 = 0.3
        k2 = 0.5
        k3 = 0.1
        k4 = 0.1
        if(target_flag == 0):
            d = d
        elif(target_flag ==-1):
            d = d + 3.5
        else:
            d = d - 1
        cf = k1 * (d**2)/(2.25) + k2 * ((t/10)-0.5)/(1-0.5) + k3 *(jerk_d_sum/0.05)/2.72 +k4 * ((kappa_max*cur_speed**2)/0.05-3)/32
        # print((d**2)/(2.25),((t/10)-0.5)/(1-0.5),(jerk_d_sum/0.05)/2.72,((kappa_max*cur_speed**2)/0.05-3)/32)
        return cf, d**2,t,jerk_d_sum,kappa_max*cur_speed**2

    def polynomial(self, t, T):
        return 10 * (t**3) / (T**3) - 15 * (t**4) / (T**4) + 6 * (t**5) / (T**5)

    def get_best(self,fps):
        okind = []
        for i, _ in enumerate(fps):
            # if not self.check_collision(ob_list,fps[i]):
            #     continue
            okind.append(i)
        return [fps[i] for i in okind]

    def one_step(self, target_flag,cur_speed):
        if (target_flag == 0):
            target_offset_list = np.arange(-1.4,1.4,0.3)  #  -1.4  -1.4 0.3
        elif(target_flag == 1):
            target_offset_list = np.arange(1.0,1.1,0.02)  #  3.5 to 3.9 gap 0.08    1.0 - 1.1 0.02
        elif(target_flag == -1):
                target_offset_list = np.arange(-1.1,-1.0,0.02)
        else:
            pass
        t_list = np.arange(5,6,0.2)
        # vlaue
        value=[]
        cf_d = []
        cf_t = []
        cf_jerk = []
        cf_kappa = []
        frenet_paths = []

        for target_offset in target_offset_list:
            for t in t_list:
                # jerk_ddd_sum : every line points jerk in lon sum
                jerk_ddd_sum = 0.0
                # x
                x = []
                y = []
                kappa = []
                fp = base_class.Frenet_path()

                for dt in np.arange(0,t,0.2):
                    jerk_ddd_sum = + (60 /(t**3) - 360 * dt / ( t**4) + 360 * (dt**2) / (t**5))**2
                    x.append(cur_speed * dt)
                    y.append((10 * (dt**3) / (t**3) - 15 * (dt**4) / (t**4) + 6 * (dt**5) / (t**5))*target_offset)
                for i in range(len(x)-1):
                    l = (math.sqrt(x[i+1]-x[i])**2 + (y[i+1]-y[i])**2)
                    s = x[i+1] - x[i]
                    if(x[i+1]-x[i] == 0):
                        s = 0.01
                    theta = math.atan((y[i+1]-y[i])/(s))
                    # kappa.append(math.sqrt(2*(1-math.cos(theta)))/l)
                    # kappa.append(2*(1-math.cos(theta))/l)
                    kappa.append(math.sqrt(2 * (1 - math.cos(theta))) / l)
                fp.x = x
                fp.y = y
                fp.offset = target_offset
                fp.change_time = t
                # plt.plot(x,y,'-.')
                kappa_max = max(kappa)
                a0,a1,a2,a3,a4 = self.costfunction(jerk_ddd_sum,t,target_offset,kappa_max,cur_speed,target_flag)
                value.append(a0)
                fp.costfunction = a0
                frenet_paths.append(fp)

        fplist = self.get_best(frenet_paths)
        mincost = float("inf")
        bestpath = None
        for fp in fplist:
            if mincost >= fp.costfunction:
                mincost = fp.costfunction
                bestpath = fp

        target_offset = bestpath.offset
        target_offset_time = bestpath.change_time
        offset_temp = self.current_offset

        # if change desire offset during lane changing

        if(self.desire_offset != target_offset):
            self.old_offset = self.current_offset
            self.desire_offset = target_offset
            self.tick = 0
        # get target_time
        # calculate next step offset
        if(self.tick <= self.max_tick * target_offset_time):
            self.tick = self.tick + 1
            alpha = self.polynomial(self.tick, self.max_tick * target_offset_time)
            A = self.desire_offset - self.old_offset
            self.current_offset = A * alpha + self.old_offset
        #print self.current_offset

        # calculate dHead with offset in a step(arctan)
        self.dHead_offset =  math.atan2(self.current_offset - offset_temp, self.tick_dis) / 3.1415926 * 360 * self.dHead_alpha

        #print self.dHead_offset
        return self.current_offset,self.dHead_offset,target_offset,target_offset_time

# 利用五次多项式向右换道
def lanechange_right():
    global content
    content = {'Stop': 0, 'LC': 0, 'lux4Spd': 0, 'offset': -1.4,  # TODO  no change right 2022-10-31
               'offset_time': 10}
    print("Send:  " + str(content))
    time.sleep(0.05)

#向左换道
def lanechange_left():
    global content
    content = {'Stop': 0, 'LC': 0, 'lux4Spd': 0, 'offset': 1.4,
               'offset_time': 10}
    print("Send:  " + str(content))
    time.sleep(0.05)

#从左换回
def lanechange_back_from_left():
    global content
    global from_left_to_mid
    content = {'Stop': 0, 'LC': 0, 'lux4Spd': 0, 'offset': -0.01,
               'offset_time': 10}
    print("Send:  " + str(content))
    from_left_to_mid = 1
    time.sleep(0.05)

#从右换回
def lanechange_back_from_right():
    global content
    global from_right_to_mid
    content = {'Stop': 0, 'LC': 0, 'lux4Spd': 0, 'offset': -0.01,
               'offset_time': 10}
    print("Send:  " + str(content))
    from_right_to_mid = 1
    time.sleep(0.05)