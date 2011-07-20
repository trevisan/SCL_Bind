#-------------------------------------------------
#
# Project created by QtCreator 2011-07-18T23:16:58
#
#-------------------------------------------------

QT       += core

QT       -= gui

TARGET = SCL_Bind
CONFIG   += console
CONFIG   -= app_bundle

TEMPLATE = app


SOURCES += main.cpp \
    SCL_Substation.cxx \
    SCL_IED.cxx \
    SCL_Enums.cxx \
    SCL_DataTypeTemplates.cxx \
    SCL_Communication.cxx \
    SCL_BaseTypes.cxx \
    SCL_BaseSimpleTypes.cxx \
    SCL.cxx

HEADERS += \
    SCL_Substation.hxx \
    SCL_IED.hxx \
    SCL_Enums.hxx \
    SCL_DataTypeTemplates.hxx \
    SCL_Communication.hxx \
    SCL_BaseTypes.hxx \
    SCL_BaseSimpleTypes.hxx \
    SCL.hxx

LIBS +=-L/usr/lib \
        -lxerces-c

INCLUDEPATH += /usr/include/xsd/
