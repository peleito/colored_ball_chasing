/****************************************************************************
** Meta object code from reading C++ file 'visualizer.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/object_detection_2d_vis/include/object_detection_2d_vis/visualizer.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'visualizer.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_object_detection_2d_vis__Visualizer_t {
    QByteArrayData data[6];
    char stringdata0[102];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_object_detection_2d_vis__Visualizer_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_object_detection_2d_vis__Visualizer_t qt_meta_stringdata_object_detection_2d_vis__Visualizer = {
    {
QT_MOC_LITERAL(0, 0, 35), // "object_detection_2d_vis::Visu..."
QT_MOC_LITERAL(1, 36, 14), // "mousePressSlot"
QT_MOC_LITERAL(2, 51, 0), // ""
QT_MOC_LITERAL(3, 52, 18), // "const QMouseEvent*"
QT_MOC_LITERAL(4, 71, 13), // "mouseMoveSlot"
QT_MOC_LITERAL(5, 85, 16) // "mouseReleaseSlot"

    },
    "object_detection_2d_vis::Visualizer\0"
    "mousePressSlot\0\0const QMouseEvent*\0"
    "mouseMoveSlot\0mouseReleaseSlot"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_object_detection_2d_vis__Visualizer[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x08 /* Private */,
       4,    1,   32,    2, 0x08 /* Private */,
       5,    1,   35,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 3,    2,
    QMetaType::Void, 0x80000000 | 3,    2,

       0        // eod
};

void object_detection_2d_vis::Visualizer::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Visualizer *_t = static_cast<Visualizer *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->mousePressSlot((*reinterpret_cast< const QMouseEvent*(*)>(_a[1]))); break;
        case 1: _t->mouseMoveSlot((*reinterpret_cast< const QMouseEvent*(*)>(_a[1]))); break;
        case 2: _t->mouseReleaseSlot((*reinterpret_cast< const QMouseEvent*(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject object_detection_2d_vis::Visualizer::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_object_detection_2d_vis__Visualizer.data,
      qt_meta_data_object_detection_2d_vis__Visualizer,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *object_detection_2d_vis::Visualizer::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *object_detection_2d_vis::Visualizer::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_object_detection_2d_vis__Visualizer.stringdata0))
        return static_cast<void*>(const_cast< Visualizer*>(this));
    return QObject::qt_metacast(_clname);
}

int object_detection_2d_vis::Visualizer::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
