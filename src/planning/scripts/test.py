import os
import glob
# import readMap

# 目录路径
directory = "/home/cyun/las/src/hmi/config"
# 获取目录下所有.map文件的路径
map_files = glob.glob(os.path.join(directory, "*.map"))

# 遍历每个.map文件
for map_file in map_files:
    # 执行读取操作
    # x_list, y_list, head_list, vel_list = readMap.readMap(map_file)
    # 在这里可以对读取的数据进行处理或其他操作
    # ...

    # 示例：打印文件名和读取到的数据长度
    txt_file = os.path.splitext(map_file)[0] + ".txt"
    if os.path.exists(txt_file):
        print("Txt File:", txt_file)
    else:
        print("Txt File not found!")
        
    print("File:", map_file)
    # print("x_list length:", len(x_list))
    # print("y_list length:", len(y_list))
    # print("head_list length:", len(head_list))
    # print("vel_list length:", len(vel_list))
    print("---")