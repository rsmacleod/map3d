TEMPLATE = app

TARGET = map3d

QT += opengl

INCLUDEPATH += ../thirdparty/cutil
INCLUDEPATH += ../thirdparty/fi
INCLUDEPATH += ../thirdparty/fids
INCLUDEPATH += ../thirdparty/gfilelib
INCLUDEPATH += ../thirdparty/MatlabIO
INCLUDEPATH += $$QMAKE_INCDIR_QT/../src/3rdparty/zlib

CONFIG += console link_prl

include (../options.pri)

LIBS += -lMatlabIO
LIBS += -lfids -lfi -lgfilelib -lcutil
win32 {
    LIB_DIR=/release
    debug {
        LIB_DIR=/debug
    }
    PRE_TARGETDEPS *= ../thirdparty/fids$$LIB_DIR/fids.lib
    PRE_TARGETDEPS *= ../thirdparty/fi$$LIB_DIR/fi.lib
    PRE_TARGETDEPS *= ../thirdparty/gfilelib$$LIB_DIR/gfilelib.lib
    PRE_TARGETDEPS *= ../thirdparty/cutil$$LIB_DIR/cutil.lib
    PRE_TARGETDEPS *= ../thirdparty/MatlabIO$$LIB_DIR/MatlabIO.lib
} else {
    PRE_TARGETDEPS *= ../thirdparty/fids/libfids.a
    PRE_TARGETDEPS *= ../thirdparty/fi/libfi.a
    PRE_TARGETDEPS *= ../thirdparty/gfilelib/libgfilelib.a
    PRE_TARGETDEPS *= ../thirdparty/cutil/libcutil.a
    PRE_TARGETDEPS *= ../thirdparty/MatlabIO/libMatlabIO.a
}

unix {
    LIBS += -lz
}

QMAKE_LIBDIR += ../thirdparty/cutil$$LIB_DIR
QMAKE_LIBDIR += ../thirdparty/fi$$LIB_DIR
QMAKE_LIBDIR += ../thirdparty/fids$$LIB_DIR
QMAKE_LIBDIR += ../thirdparty/gfilelib$$LIB_DIR
QMAKE_LIBDIR += ../thirdparty/MatlabIO$$LIB_DIR
QMAKE_LIBDIR += $$QMAKE_INCDIR_QT/../src/3rdparty/zlib

include (../options.pri)

FORMS += forms/FileDialog.ui \
         forms/FileDialogWidget.ui \
         forms/FidDialog.ui \
         forms/ContourDialog.ui \
         forms/ImageControlDialog.ui \
         forms/ScaleDialog.ui \


macx {
  ICON = map3d-icon.icns
}

# files that need to be moc'ed
HEADERS += GeomWindow.h \
           MainWindow.h \
           ContourDialog.h \
           FileDialog.h \
           FidDialog.h \
           ImageControlDialog.h \
           ScaleDialog.h \
           regressiontest.h \
           dialogs.h \
           

SOURCES += Ball.cc \
           BallAux.cc \
           BallMath.cc \
           colormaps.cc \
           Contour_Info.cc \
           ContourDialog.cc \
           dialogs.cc \
           dot.cc \
           drawlandmarks.cc \
           FidDialog.cc \
           FileDialog.cc \
           GenericWindow.cc \
           GeomWindow.cc \
           GeomWindowHandle.cc \
           GeomWindowMenu.cc \
           GeomWindowRepaint.cc \
           LegendWindow.cc \
           lock.cc \
           MainWindow.cc \
           map3d-struct.cc \
           map3d.cc \
           Map3d_Geom.cc \
           map3dmath.cc \
           MeshList.cc \
           ParseCommandLineOptions.cc \
           ProcessCommandLineOptions.cc \
           PickWindow.cc \
           readfiles.cc \
           regressiontest.cc \
           reportstate.cc \
           ImageControlDialog.cc \
           savescreen.cc \
           savestate.cc \
           ScaleDialog.cc \
           scalesubs.cc \
           Surf_Data.cc \
           texture.cc \
           Transforms.cc \
           usage.cc \
           WindowManager.cc
           
