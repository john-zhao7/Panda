/****************************************************************************
** Meta object code from reading C++ file 'datareceiverthread.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "src/datareceiverthread.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'datareceiverthread.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_DataReceiverThread_t {
    QByteArrayData data[27];
    char stringdata0[595];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_DataReceiverThread_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_DataReceiverThread_t qt_meta_stringdata_DataReceiverThread = {
    {
QT_MOC_LITERAL(0, 0, 18), // "DataReceiverThread"
QT_MOC_LITERAL(1, 19, 29), // "SIGFaultDiagnosisDataReceived"
QT_MOC_LITERAL(2, 49, 0), // ""
QT_MOC_LITERAL(3, 50, 28), // "hmi::FaultDiagnosisInterface"
QT_MOC_LITERAL(4, 79, 28), // "SIGSelfCheckDataDataReceived"
QT_MOC_LITERAL(5, 108, 16), // "std_msgs::String"
QT_MOC_LITERAL(6, 125, 18), // "SIGHmiDataReceived"
QT_MOC_LITERAL(7, 144, 30), // "hmi::HmiStartEndPointInterface"
QT_MOC_LITERAL(8, 175, 21), // "SIGGpsImuDataReceived"
QT_MOC_LITERAL(9, 197, 20), // "hmi::GpsImuInterface"
QT_MOC_LITERAL(10, 218, 33), // "SIGGlobalPathPlanningDataRece..."
QT_MOC_LITERAL(11, 252, 32), // "hmi::GlobalPathPlanningInterface"
QT_MOC_LITERAL(12, 285, 28), // "SIGPathSpeedCtrlDataReceived"
QT_MOC_LITERAL(13, 314, 27), // "hmi::PathSpeedCtrlInterface"
QT_MOC_LITERAL(14, 342, 22), // "SIGCameraImageReceived"
QT_MOC_LITERAL(15, 365, 26), // "sensor_msgs::ImageConstPtr"
QT_MOC_LITERAL(16, 392, 21), // "SIGCarOriDataReceived"
QT_MOC_LITERAL(17, 414, 20), // "hmi::CarOriInterface"
QT_MOC_LITERAL(18, 435, 22), // "faultDiagnosisCallback"
QT_MOC_LITERAL(19, 458, 3), // "msg"
QT_MOC_LITERAL(20, 462, 21), // "SelfCheckDataCallback"
QT_MOC_LITERAL(21, 484, 11), // "hmiCallback"
QT_MOC_LITERAL(22, 496, 14), // "gpsImuCallback"
QT_MOC_LITERAL(23, 511, 26), // "globalPathPlanningCallback"
QT_MOC_LITERAL(24, 538, 21), // "pathSpeedCtrlCallback"
QT_MOC_LITERAL(25, 560, 19), // "CameraImageCallback"
QT_MOC_LITERAL(26, 580, 14) // "carOriCallback"

    },
    "DataReceiverThread\0SIGFaultDiagnosisDataReceived\0"
    "\0hmi::FaultDiagnosisInterface\0"
    "SIGSelfCheckDataDataReceived\0"
    "std_msgs::String\0SIGHmiDataReceived\0"
    "hmi::HmiStartEndPointInterface\0"
    "SIGGpsImuDataReceived\0hmi::GpsImuInterface\0"
    "SIGGlobalPathPlanningDataReceived\0"
    "hmi::GlobalPathPlanningInterface\0"
    "SIGPathSpeedCtrlDataReceived\0"
    "hmi::PathSpeedCtrlInterface\0"
    "SIGCameraImageReceived\0"
    "sensor_msgs::ImageConstPtr\0"
    "SIGCarOriDataReceived\0hmi::CarOriInterface\0"
    "faultDiagnosisCallback\0msg\0"
    "SelfCheckDataCallback\0hmiCallback\0"
    "gpsImuCallback\0globalPathPlanningCallback\0"
    "pathSpeedCtrlCallback\0CameraImageCallback\0"
    "carOriCallback"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_DataReceiverThread[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      16,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       8,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   94,    2, 0x06 /* Public */,
       4,    1,   97,    2, 0x06 /* Public */,
       6,    1,  100,    2, 0x06 /* Public */,
       8,    1,  103,    2, 0x06 /* Public */,
      10,    1,  106,    2, 0x06 /* Public */,
      12,    1,  109,    2, 0x06 /* Public */,
      14,    1,  112,    2, 0x06 /* Public */,
      16,    1,  115,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
      18,    1,  118,    2, 0x08 /* Private */,
      20,    1,  121,    2, 0x08 /* Private */,
      21,    1,  124,    2, 0x08 /* Private */,
      22,    1,  127,    2, 0x08 /* Private */,
      23,    1,  130,    2, 0x08 /* Private */,
      24,    1,  133,    2, 0x08 /* Private */,
      25,    1,  136,    2, 0x08 /* Private */,
      26,    1,  139,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 5,    2,
    QMetaType::Void, 0x80000000 | 7,    2,
    QMetaType::Void, 0x80000000 | 9,    2,
    QMetaType::Void, 0x80000000 | 11,    2,
    QMetaType::Void, 0x80000000 | 13,    2,
    QMetaType::Void, 0x80000000 | 15,    2,
    QMetaType::Void, 0x80000000 | 17,    2,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,   19,
    QMetaType::Void, 0x80000000 | 5,   19,
    QMetaType::Void, 0x80000000 | 7,   19,
    QMetaType::Void, 0x80000000 | 9,   19,
    QMetaType::Void, 0x80000000 | 11,   19,
    QMetaType::Void, 0x80000000 | 13,   19,
    QMetaType::Void, 0x80000000 | 15,   19,
    QMetaType::Void, 0x80000000 | 17,   19,

       0        // eod
};

void DataReceiverThread::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<DataReceiverThread *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SIGFaultDiagnosisDataReceived((*reinterpret_cast< const hmi::FaultDiagnosisInterface(*)>(_a[1]))); break;
        case 1: _t->SIGSelfCheckDataDataReceived((*reinterpret_cast< const std_msgs::String(*)>(_a[1]))); break;
        case 2: _t->SIGHmiDataReceived((*reinterpret_cast< const hmi::HmiStartEndPointInterface(*)>(_a[1]))); break;
        case 3: _t->SIGGpsImuDataReceived((*reinterpret_cast< const hmi::GpsImuInterface(*)>(_a[1]))); break;
        case 4: _t->SIGGlobalPathPlanningDataReceived((*reinterpret_cast< const hmi::GlobalPathPlanningInterface(*)>(_a[1]))); break;
        case 5: _t->SIGPathSpeedCtrlDataReceived((*reinterpret_cast< const hmi::PathSpeedCtrlInterface(*)>(_a[1]))); break;
        case 6: _t->SIGCameraImageReceived((*reinterpret_cast< const sensor_msgs::ImageConstPtr(*)>(_a[1]))); break;
        case 7: _t->SIGCarOriDataReceived((*reinterpret_cast< const hmi::CarOriInterface(*)>(_a[1]))); break;
        case 8: _t->faultDiagnosisCallback((*reinterpret_cast< const hmi::FaultDiagnosisInterface(*)>(_a[1]))); break;
        case 9: _t->SelfCheckDataCallback((*reinterpret_cast< const std_msgs::String(*)>(_a[1]))); break;
        case 10: _t->hmiCallback((*reinterpret_cast< const hmi::HmiStartEndPointInterface(*)>(_a[1]))); break;
        case 11: _t->gpsImuCallback((*reinterpret_cast< const hmi::GpsImuInterface(*)>(_a[1]))); break;
        case 12: _t->globalPathPlanningCallback((*reinterpret_cast< const hmi::GlobalPathPlanningInterface(*)>(_a[1]))); break;
        case 13: _t->pathSpeedCtrlCallback((*reinterpret_cast< const hmi::PathSpeedCtrlInterface(*)>(_a[1]))); break;
        case 14: _t->CameraImageCallback((*reinterpret_cast< const sensor_msgs::ImageConstPtr(*)>(_a[1]))); break;
        case 15: _t->carOriCallback((*reinterpret_cast< const hmi::CarOriInterface(*)>(_a[1]))); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (DataReceiverThread::*)(const hmi::FaultDiagnosisInterface );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataReceiverThread::SIGFaultDiagnosisDataReceived)) {
                *result = 0;
                return;
            }
        }
        {
            using _t = void (DataReceiverThread::*)(const std_msgs::String );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataReceiverThread::SIGSelfCheckDataDataReceived)) {
                *result = 1;
                return;
            }
        }
        {
            using _t = void (DataReceiverThread::*)(const hmi::HmiStartEndPointInterface );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataReceiverThread::SIGHmiDataReceived)) {
                *result = 2;
                return;
            }
        }
        {
            using _t = void (DataReceiverThread::*)(const hmi::GpsImuInterface );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataReceiverThread::SIGGpsImuDataReceived)) {
                *result = 3;
                return;
            }
        }
        {
            using _t = void (DataReceiverThread::*)(const hmi::GlobalPathPlanningInterface );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataReceiverThread::SIGGlobalPathPlanningDataReceived)) {
                *result = 4;
                return;
            }
        }
        {
            using _t = void (DataReceiverThread::*)(const hmi::PathSpeedCtrlInterface );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataReceiverThread::SIGPathSpeedCtrlDataReceived)) {
                *result = 5;
                return;
            }
        }
        {
            using _t = void (DataReceiverThread::*)(const sensor_msgs::ImageConstPtr & );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataReceiverThread::SIGCameraImageReceived)) {
                *result = 6;
                return;
            }
        }
        {
            using _t = void (DataReceiverThread::*)(const hmi::CarOriInterface );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&DataReceiverThread::SIGCarOriDataReceived)) {
                *result = 7;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject DataReceiverThread::staticMetaObject = { {
    &QThread::staticMetaObject,
    qt_meta_stringdata_DataReceiverThread.data,
    qt_meta_data_DataReceiverThread,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *DataReceiverThread::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *DataReceiverThread::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_DataReceiverThread.stringdata0))
        return static_cast<void*>(this);
    return QThread::qt_metacast(_clname);
}

int DataReceiverThread::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QThread::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 16)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 16;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 16)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 16;
    }
    return _id;
}

// SIGNAL 0
void DataReceiverThread::SIGFaultDiagnosisDataReceived(const hmi::FaultDiagnosisInterface _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}

// SIGNAL 1
void DataReceiverThread::SIGSelfCheckDataDataReceived(const std_msgs::String _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 1, _a);
}

// SIGNAL 2
void DataReceiverThread::SIGHmiDataReceived(const hmi::HmiStartEndPointInterface _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 2, _a);
}

// SIGNAL 3
void DataReceiverThread::SIGGpsImuDataReceived(const hmi::GpsImuInterface _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 3, _a);
}

// SIGNAL 4
void DataReceiverThread::SIGGlobalPathPlanningDataReceived(const hmi::GlobalPathPlanningInterface _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 4, _a);
}

// SIGNAL 5
void DataReceiverThread::SIGPathSpeedCtrlDataReceived(const hmi::PathSpeedCtrlInterface _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 5, _a);
}

// SIGNAL 6
void DataReceiverThread::SIGCameraImageReceived(const sensor_msgs::ImageConstPtr & _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 6, _a);
}

// SIGNAL 7
void DataReceiverThread::SIGCarOriDataReceived(const hmi::CarOriInterface _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 7, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
