import math
x_coords = []
y_coords = []
class Vehicle:
    def __init__(self, x, y, yaw, v):
        self.x = x
        self.y = y
        self.yaw = yaw
        self.v = v
        self.dt = 0.001

    def update(self, a, delta):
        L = 3.581  # 车辆的轴距,front-back

        self.x = self.x + self.v * math.cos(self.yaw) * self.dt
        self.y = self.y + self.v * math.sin(self.yaw) * self.dt
        self.yaw = self.yaw + self.v / L * math.tan(-delta/24) * self.dt
        self.v = self.v + a * self.dt

        print(f"x: {self.x}")
        print(f"y: {self.y}")
        print(f"yaw: {math.degrees(self.yaw)}")
        print(f"v: {self.v}")
        print("---")

        #1.GPS(x,y,yaw,v)->Vehc to init first point is the plan[0]
        #2,Vech,x,y,v ->control
        #3.wheel_angle *k->sheer angle(1080 -> 45,kp=24)
        #4.sheer angle ->vech upgrade x,y,v
        #5.4-2 