/****************************************************************************
** Meta object code from reading C++ file 'normal_estimation_groupbox.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/shape_detector/include/shape_detector/normal_estimation_groupbox.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'normal_estimation_groupbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_shape_detector__NormalEstimationGroupBox_t {
    QByteArrayData data[4];
    char stringdata0[79];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_shape_detector__NormalEstimationGroupBox_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_shape_detector__NormalEstimationGroupBox_t qt_meta_stringdata_shape_detector__NormalEstimationGroupBox = {
    {
QT_MOC_LITERAL(0, 0, 40), // "shape_detector::NormalEstimat..."
QT_MOC_LITERAL(1, 41, 32), // "requestNumNearestNeighborsChange"
QT_MOC_LITERAL(2, 74, 0), // ""
QT_MOC_LITERAL(3, 75, 3) // "val"

    },
    "shape_detector::NormalEstimationGroupBox\0"
    "requestNumNearestNeighborsChange\0\0val"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_shape_detector__NormalEstimationGroupBox[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   19,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, QMetaType::Int,    3,

       0        // eod
};

void shape_detector::NormalEstimationGroupBox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        NormalEstimationGroupBox *_t = static_cast<NormalEstimationGroupBox *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->requestNumNearestNeighborsChange((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject shape_detector::NormalEstimationGroupBox::staticMetaObject = {
    { &QGroupBox::staticMetaObject, qt_meta_stringdata_shape_detector__NormalEstimationGroupBox.data,
      qt_meta_data_shape_detector__NormalEstimationGroupBox,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *shape_detector::NormalEstimationGroupBox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *shape_detector::NormalEstimationGroupBox::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_shape_detector__NormalEstimationGroupBox.stringdata0))
        return static_cast<void*>(const_cast< NormalEstimationGroupBox*>(this));
    return QGroupBox::qt_metacast(_clname);
}

int shape_detector::NormalEstimationGroupBox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
