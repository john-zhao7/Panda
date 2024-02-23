/****************************************************************************
** Meta object code from reading C++ file 'nodemanagewidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "src/nodemanagewidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'nodemanagewidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_NodeManageWidget_t {
    QByteArrayData data[11];
    char stringdata0[155];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_NodeManageWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_NodeManageWidget_t qt_meta_stringdata_NodeManageWidget = {
    {
QT_MOC_LITERAL(0, 0, 16), // "NodeManageWidget"
QT_MOC_LITERAL(1, 17, 28), // "SlotFunctionReceiveGPSImuMsg"
QT_MOC_LITERAL(2, 46, 0), // ""
QT_MOC_LITERAL(3, 47, 20), // "hmi::GpsImuInterface"
QT_MOC_LITERAL(4, 68, 9), // "gpsImuMsg"
QT_MOC_LITERAL(5, 78, 11), // "OnActionAdd"
QT_MOC_LITERAL(6, 90, 12), // "OnActionEdit"
QT_MOC_LITERAL(7, 103, 14), // "OnActionDelete"
QT_MOC_LITERAL(8, 118, 10), // "OnActionUp"
QT_MOC_LITERAL(9, 129, 12), // "OnActionDown"
QT_MOC_LITERAL(10, 142, 12) // "OnActionSave"

    },
    "NodeManageWidget\0SlotFunctionReceiveGPSImuMsg\0"
    "\0hmi::GpsImuInterface\0gpsImuMsg\0"
    "OnActionAdd\0OnActionEdit\0OnActionDelete\0"
    "OnActionUp\0OnActionDown\0OnActionSave"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_NodeManageWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   49,    2, 0x0a /* Public */,
       5,    0,   52,    2, 0x08 /* Private */,
       6,    0,   53,    2, 0x08 /* Private */,
       7,    0,   54,    2, 0x08 /* Private */,
       8,    0,   55,    2, 0x08 /* Private */,
       9,    0,   56,    2, 0x08 /* Private */,
      10,    0,   57,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void NodeManageWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<NodeManageWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SlotFunctionReceiveGPSImuMsg((*reinterpret_cast< const hmi::GpsImuInterface(*)>(_a[1]))); break;
        case 1: _t->OnActionAdd(); break;
        case 2: _t->OnActionEdit(); break;
        case 3: _t->OnActionDelete(); break;
        case 4: _t->OnActionUp(); break;
        case 5: _t->OnActionDown(); break;
        case 6: _t->OnActionSave(); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject NodeManageWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_NodeManageWidget.data,
    qt_meta_data_NodeManageWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *NodeManageWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *NodeManageWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_NodeManageWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int NodeManageWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 7)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 7;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 7)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 7;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
