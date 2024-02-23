/****************************************************************************
** Meta object code from reading C++ file 'faultdetectwidget.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "src/faultdetectwidget.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'faultdetectwidget.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_FaultDetectWidget_t {
    QByteArrayData data[8];
    char stringdata0[159];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_FaultDetectWidget_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_FaultDetectWidget_t qt_meta_stringdata_FaultDetectWidget = {
    {
QT_MOC_LITERAL(0, 0, 17), // "FaultDetectWidget"
QT_MOC_LITERAL(1, 18, 33), // "SlotFunctionReceiveFaultDetec..."
QT_MOC_LITERAL(2, 52, 0), // ""
QT_MOC_LITERAL(3, 53, 28), // "hmi::FaultDiagnosisInterface"
QT_MOC_LITERAL(4, 82, 14), // "faultDetectMsg"
QT_MOC_LITERAL(5, 97, 31), // "SlotFunctionReceiveSelfCheckMsg"
QT_MOC_LITERAL(6, 129, 16), // "std_msgs::String"
QT_MOC_LITERAL(7, 146, 12) // "selfCheckMsg"

    },
    "FaultDetectWidget\0SlotFunctionReceiveFaultDetectMsg\0"
    "\0hmi::FaultDiagnosisInterface\0"
    "faultDetectMsg\0SlotFunctionReceiveSelfCheckMsg\0"
    "std_msgs::String\0selfCheckMsg"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_FaultDetectWidget[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   24,    2, 0x0a /* Public */,
       5,    1,   27,    2, 0x0a /* Public */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    4,
    QMetaType::Void, 0x80000000 | 6,    7,

       0        // eod
};

void FaultDetectWidget::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<FaultDetectWidget *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->SlotFunctionReceiveFaultDetectMsg((*reinterpret_cast< const hmi::FaultDiagnosisInterface(*)>(_a[1]))); break;
        case 1: _t->SlotFunctionReceiveSelfCheckMsg((*reinterpret_cast< const std_msgs::String(*)>(_a[1]))); break;
        default: ;
        }
    }
}

QT_INIT_METAOBJECT const QMetaObject FaultDetectWidget::staticMetaObject = { {
    &QWidget::staticMetaObject,
    qt_meta_stringdata_FaultDetectWidget.data,
    qt_meta_data_FaultDetectWidget,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *FaultDetectWidget::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *FaultDetectWidget::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_FaultDetectWidget.stringdata0))
        return static_cast<void*>(this);
    return QWidget::qt_metacast(_clname);
}

int FaultDetectWidget::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QWidget::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 2;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
