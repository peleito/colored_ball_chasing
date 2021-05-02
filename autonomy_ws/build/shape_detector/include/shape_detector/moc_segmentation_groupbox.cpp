/****************************************************************************
** Meta object code from reading C++ file 'segmentation_groupbox.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.5.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../../src/shape_detector/include/shape_detector/segmentation_groupbox.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'segmentation_groupbox.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.5.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_shape_detector__SegmentationGroupBox_t {
    QByteArrayData data[12];
    char stringdata0[250];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_shape_detector__SegmentationGroupBox_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_shape_detector__SegmentationGroupBox_t qt_meta_stringdata_shape_detector__SegmentationGroupBox = {
    {
QT_MOC_LITERAL(0, 0, 36), // "shape_detector::SegmentationG..."
QT_MOC_LITERAL(1, 37, 18), // "requestShapeChange"
QT_MOC_LITERAL(2, 56, 0), // ""
QT_MOC_LITERAL(3, 57, 4), // "text"
QT_MOC_LITERAL(4, 62, 22), // "requestMinRadiusChange"
QT_MOC_LITERAL(5, 85, 3), // "val"
QT_MOC_LITERAL(6, 89, 22), // "requestMaxRadiusChange"
QT_MOC_LITERAL(7, 112, 33), // "requestNormalDistanceWeightCh..."
QT_MOC_LITERAL(8, 146, 30), // "requestDistanceThresholdChange"
QT_MOC_LITERAL(9, 177, 26), // "requestMaxIterationsChange"
QT_MOC_LITERAL(10, 204, 33), // "requestOptimizeCoefficientsCh..."
QT_MOC_LITERAL(11, 238, 11) // "check_state"

    },
    "shape_detector::SegmentationGroupBox\0"
    "requestShapeChange\0\0text\0"
    "requestMinRadiusChange\0val\0"
    "requestMaxRadiusChange\0"
    "requestNormalDistanceWeightChange\0"
    "requestDistanceThresholdChange\0"
    "requestMaxIterationsChange\0"
    "requestOptimizeCoefficientsChange\0"
    "check_state"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_shape_detector__SegmentationGroupBox[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       7,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   49,    2, 0x08 /* Private */,
       4,    1,   52,    2, 0x08 /* Private */,
       6,    1,   55,    2, 0x08 /* Private */,
       7,    1,   58,    2, 0x08 /* Private */,
       8,    1,   61,    2, 0x08 /* Private */,
       9,    1,   64,    2, 0x08 /* Private */,
      10,    1,   67,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,
    QMetaType::Void, QMetaType::Double,    5,
    QMetaType::Void, QMetaType::Double,    5,
    QMetaType::Void, QMetaType::Double,    5,
    QMetaType::Void, QMetaType::Double,    5,
    QMetaType::Void, QMetaType::Int,    5,
    QMetaType::Void, QMetaType::Int,   11,

       0        // eod
};

void shape_detector::SegmentationGroupBox::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        SegmentationGroupBox *_t = static_cast<SegmentationGroupBox *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->requestShapeChange((*reinterpret_cast< const QString(*)>(_a[1]))); break;
        case 1: _t->requestMinRadiusChange((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 2: _t->requestMaxRadiusChange((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 3: _t->requestNormalDistanceWeightChange((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 4: _t->requestDistanceThresholdChange((*reinterpret_cast< double(*)>(_a[1]))); break;
        case 5: _t->requestMaxIterationsChange((*reinterpret_cast< int(*)>(_a[1]))); break;
        case 6: _t->requestOptimizeCoefficientsChange((*reinterpret_cast< int(*)>(_a[1]))); break;
        default: ;
        }
    }
}

const QMetaObject shape_detector::SegmentationGroupBox::staticMetaObject = {
    { &QGroupBox::staticMetaObject, qt_meta_stringdata_shape_detector__SegmentationGroupBox.data,
      qt_meta_data_shape_detector__SegmentationGroupBox,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *shape_detector::SegmentationGroupBox::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *shape_detector::SegmentationGroupBox::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_shape_detector__SegmentationGroupBox.stringdata0))
        return static_cast<void*>(const_cast< SegmentationGroupBox*>(this));
    return QGroupBox::qt_metacast(_clname);
}

int shape_detector::SegmentationGroupBox::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QGroupBox::qt_metacall(_c, _id, _a);
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
QT_END_MOC_NAMESPACE
