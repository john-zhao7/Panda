/****************************************************************************
** Meta object code from reading C++ file 'mapcollectwidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "src/mapcollectwidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'mapcollectwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_MapCollectWidget_t {
    QByteArrayData data[16];
    char stringdata0[362];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_MapCollectWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_MapCollectWidget_t qt_meta_stringdata_MapCollectWidget = {
    {
QT_MOC_LITERAL(0, 0, 16), // "MapCollectWidget"
QT_MOC_LITERAL(1, 17, 18), // "SIGNodeDataDeliver"
QT_MOC_LITERAL(2, 36, 0), // ""
QT_MOC_LITERAL(3, 37, 24), // "hmi::NodePointsInterface"
QT_MOC_LITERAL(4, 62, 28), // "SlotFunctionReceiveGPSImuMsg"
QT_MOC_LITERAL(5, 91, 20), // "hmi::GpsImuInterface"
QT_MOC_LITERAL(6, 112, 9), // "gpsImuMsg"
QT_MOC_LITERAL(7, 122, 26), // "OnActionStartCollectPoints"
QT_MOC_LITERAL(8, 149, 25), // "OnActionStopCollectPoints"
QT_MOC_LITERAL(9, 175, 24), // "OnActionClearCollectInfo"
QT_MOC_LITERAL(10, 200, 25), // "OnActionSaveCollectPoints"
QT_MOC_LITERAL(11, 226, 18), // "OnActionNodeManage"
QT_MOC_LITERAL(12, 245, 31), // "OnActionNodeDataInsectionImport"
QT_MOC_LITERAL(13, 277, 26), // "OnActionNodeDataSiteImport"
QT_MOC_LITERAL(14, 304, 23), // "OnActionNodeDataDeliver"
QT_MOC_LITERAL(15, 328, 33) // "OnDoubleSpinBoxSpeedEditFinis..."

    },
    "MapCollectWidget\0SIGNodeDataDeliver\0"
    "\0hmi::NodePointsInterface\0"
    "SlotFunctionReceiveGPSImuMsg\0"
    "hmi::GpsImuInterface\0gpsImuMsg\0"
    "OnActionStartCollectPoints\0"
    "OnActionStopCollectPoints\0"
    "OnActionClearCollectInfo\0"
    "OnActionSaveCollectPoints\0OnActionNodeManage\0"
    "OnActionNodeDataInsectionImport\0"
    "OnActionNodeDataSiteImport\0"
    "OnActionNodeDataDeliver\0"
    "OnDoubleSpinBoxSpeedEditFinishing"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_MapCollectWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
      11,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       1,       // signalCount

 // signals: name, argc, parameters, tag, flags
       1,    1,   69,    2, 0x06 /* Public */,

 // slots: name, argc, parameters, tag, flags
       4,    1,   72,    2, 0x0a /* Public */,
       7,    0,   75,    2, 0x08 /* Private */,
       8,    0,   76,    2, 0x08 /* Private */,
       9,    0,   77,    2, 0x08 /* Private */,
      10,    0,   78,    2, 0x08 /* Private */,
      11,    0,   79,    2, 0x08 /* Private */,
      12,    0,   80,    2, 0x08 /* Private */,
      13,    0,   81,    2, 0x08 /* Private */,
      14,    0,   82,    2, 0x08 /* Private */,
      15,    0,   83,    2, 0x08 /* Private */,

 // signals: parameters
    QMetaType::Void, 0x80000000 | 3,    2,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 5,    6,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void MapCollectWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<MapCollectWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SIGNodeDataDeliver((*reinterpret_cast< const hmi::NodePointsInterface(*)>(_a[1]))); break;
        case 1: _t->SlotFunctionReceiveGPSImuMsg((*reinterpret_cast< const hmi::GpsImuInterface(*)>(_a[1]))); break;
        case 2: _t->OnActionStartCollectPoints(); break;
        case 3: _t->OnActionStopCollectPoints(); break;
        case 4: _t->OnActionClearCollectInfo(); break;
        case 5: _t->OnActionSaveCollectPoints(); break;
        case 6: _t->OnActionNodeManage(); break;
        case 7: _t->OnActionNodeDataInsectionImport(); break;
        case 8: _t->OnActionNodeDataSiteImport(); break;
        case 9: _t->OnActionNodeDataDeliver(); break;
        case 10: _t->OnDoubleSpinBoxSpeedEditFinishing(); break;
        default: ;
        }
    } else if (_c == QMetaObject::IndexOfMethod) {
        int *result = reinterpret_cast<int *>(_a[0]);
        {
            using _t = void (MapCollectWidget::*)(const hmi::NodePointsInterface );
            if (*reinterpret_cast<_t *>(_a[1]) == static_cast<_t>(&MapCollectWidget::SIGNodeDataDeliver)) {
                *result = 0;
                return;
            }
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject MapCollectWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_MapCollectWidget.data,
    qt_meta_data_MapCollectWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *MapCollectWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *MapCollectWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_MapCollectWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int MapCollectWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 11)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 11;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 11)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 11;
    }
    return _id;
}

// SIGNAL 0
void MapCollectWidget::SIGNodeDataDeliver(const hmi::NodePointsInterface _t1)
{
    void *_a[] = { nullptr, const_cast<void*>(reinterpret_cast<const void*>(&_t1)) };
    QMetaObject::activate(this, &staticMetaObject, 0, _a);
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
