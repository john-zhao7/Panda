/****************************************************************************
** Meta object code from reading C++ file 'carmoniterwidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "src/carmoniterwidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'carmoniterwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_CarMoniterWidget_t {
    QByteArrayData data[11];
    char stringdata0[257];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_CarMoniterWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_CarMoniterWidget_t qt_meta_stringdata_CarMoniterWidget = {
    {
QT_MOC_LITERAL(0, 0, 16), // "CarMoniterWidget"
QT_MOC_LITERAL(1, 17, 28), // "SlotFunctionReceiveGpsImuMsg"
QT_MOC_LITERAL(2, 46, 0), // ""
QT_MOC_LITERAL(3, 47, 20), // "hmi::GpsImuInterface"
QT_MOC_LITERAL(4, 68, 3), // "msg"
QT_MOC_LITERAL(5, 72, 40), // "SlotFunctionReceiveGlobalPath..."
QT_MOC_LITERAL(6, 113, 32), // "hmi::GlobalPathPlanningInterface"
QT_MOC_LITERAL(7, 146, 42), // "SlotFunctionReceivePathSpeedC..."
QT_MOC_LITERAL(8, 189, 27), // "hmi::PathSpeedCtrlInterface"
QT_MOC_LITERAL(9, 217, 30), // "SlotFunctionReceiveMapFilePath"
QT_MOC_LITERAL(10, 248, 8) // "filePath"

    },
    "CarMoniterWidget\0SlotFunctionReceiveGpsImuMsg\0"
    "\0hmi::GpsImuInterface\0msg\0"
    "SlotFunctionReceiveGlobalPathPlanningMsg\0"
    "hmi::GlobalPathPlanningInterface\0"
    "SlotFunctionReceivePathSpeedCtrlDeliverMsg\0"
    "hmi::PathSpeedCtrlInterface\0"
    "SlotFunctionReceiveMapFilePath\0filePath"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_CarMoniterWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   34,    2, 0x0a /* Public */,
       5,    1,   37,    2, 0x0a /* Public */,
       7,    1,   40,    2, 0x0a /* Public */,
       9,    1,   43,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 6,    4,
    QMetaType::Void, 0x80000000 | 8,    4,
    QMetaType::Void, QMetaType::QString,   10,

       0        // eod
};

void CarMoniterWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<CarMoniterWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SlotFunctionReceiveGpsImuMsg((*reinterpret_cast< const hmi::GpsImuInterface(*)>(_a[1]))); break;
        case 1: _t->SlotFunctionReceiveGlobalPathPlanningMsg((*reinterpret_cast< const hmi::GlobalPathPlanningInterface(*)>(_a[1]))); break;
        case 2: _t->SlotFunctionReceivePathSpeedCtrlDeliverMsg((*reinterpret_cast< const hmi::PathSpeedCtrlInterface(*)>(_a[1]))); break;
        case 3: _t->SlotFunctionReceiveMapFilePath((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject CarMoniterWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_CarMoniterWidget.data,
    qt_meta_data_CarMoniterWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *CarMoniterWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *CarMoniterWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CarMoniterWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int CarMoniterWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
