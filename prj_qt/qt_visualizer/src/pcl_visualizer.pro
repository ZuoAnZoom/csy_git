#-------------------------------------------------
#
# Project created by QtCreator 2014-05-01T14:24:33
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = pcl_visualizer
TEMPLATE = app


SOURCES += main.cpp\
        pclviewer.cpp

HEADERS  += pclviewer.h

FORMS    += pclviewer.ui


#以下为添加的内容，从而包含 pcl 库
#VTK
INCLUDEPATH += /usr/include/vtk-6.2

#PCL
INCLUDEPATH += /usr/include/pcl-1.7\
#               /usr/include/eigen3
#LIBS        += -L/usr/local/lib\
#                -lpcl_io
#                -lpcl_common
#                -lpcl_features
#                -lpcl_fileters
#                -lpcl_io
#                -lpcl_io_ply
#                -lpcl_kdtree
#                -lpcl_keypoints
#                -lpcl_ml
#                -lpcl_octree
#                -lpcl_outofcore
#                -lpcl_people
#                -lpcl_recognition
#                -lpcl_registration
#                -lpcl_sample_consensus
#                -lpcl_search
#                -lpcl_segmentation
#                -lpcl_stereo
#                -lpcl_surface
#                -lpcl_tracking
#                -lpcl_visualization#

##boost
#INCLUDEPATH += /usr/include/boost
#LIBS        += -L/usr/lib/x86_64-linux-gnu -lboost_system -lboost_filesystem\
