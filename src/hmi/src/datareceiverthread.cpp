#include "datareceiverthread.h"
#include <QDebug>
DataReceiverThread::DataReceiverThread()
{

}

DataReceiverThread::~DataReceiverThread()
{

}

void DataReceiverThread::run()
{
    // Initialize ROS node
    ros::NodeHandle nh;

    // Create ROS subscribers
    ros::Subscriber faultDiagnosisSub = nh.subscribe("fault_diagnosis_data", 10, &DataReceiverThread::faultDiagnosisCallback, this);
    ros::Subscriber SelfCheckDataSub = nh.subscribe("from_vcu_self_check", 10, &DataReceiverThread::SelfCheckDataCallback, this);
    ros::Subscriber hmiSub = nh.subscribe("hmi_start_end_point_data", 10, &DataReceiverThread::hmiCallback, this);
    ros::Subscriber gpsImuSub = nh.subscribe("gps_imu", 10, &DataReceiverThread::gpsImuCallback, this);
    ros::Subscriber globalPathPlanningSub = nh.subscribe("global_path_planning_data", 10, &DataReceiverThread::globalPathPlanningCallback, this);
    ros::Subscriber pathSpeedCtrlSub = nh.subscribe("path_speed_tracking_data", 10, &DataReceiverThread::pathSpeedCtrlCallback, this);
    //ros::Subscriber cameraImageSub = nh.subscribe("camera/image", 10, &DataReceiverThread::CameraImageCallback, this);
    ros::Subscriber cameraImageSub = nh.subscribe("usb_cam/image_raw", 10, &DataReceiverThread::CameraImageCallback, this);
    ros::Subscriber carOriSub = nh.subscribe("car_ori_data", 10, &DataReceiverThread::carOriCallback, this);
    // Spin ROS node
    ros::spin();

}

void DataReceiverThread::faultDiagnosisCallback(const hmi::FaultDiagnosisInterface msg)
{
    //优化收取同样的数据刷新界面一次
//    if(faultDiagnosisMsg == msg)
//    {
//        return;
//    }
//    else
//    {
//        faultDiagnosisMsg = msg;
//    }
    emit SIGFaultDiagnosisDataReceived(msg);
}

void DataReceiverThread::SelfCheckDataCallback(const std_msgs::String msg)
{
    emit SIGSelfCheckDataDataReceived(msg);
}

void DataReceiverThread::hmiCallback(const hmi::HmiStartEndPointInterface msg)
{
    emit SIGHmiDataReceived(msg);
}

void DataReceiverThread::gpsImuCallback(const hmi::GpsImuInterface msg)
{
    emit SIGGpsImuDataReceived(msg);
}

void DataReceiverThread::globalPathPlanningCallback(const hmi::GlobalPathPlanningInterface msg)
{
    emit SIGGlobalPathPlanningDataReceived(msg);
}

void DataReceiverThread::pathSpeedCtrlCallback(const hmi::PathSpeedCtrlInterface msg)
{

    emit SIGPathSpeedCtrlDataReceived(msg);
}

void DataReceiverThread::CameraImageCallback(const sensor_msgs::ImageConstPtr& msg)
{
    emit SIGCameraImageReceived(msg);
}

void DataReceiverThread::carOriCallback(const hmi::CarOriInterface msg)
{
    emit SIGCarOriDataReceived(msg);
}
