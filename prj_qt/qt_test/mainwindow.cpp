#include "mainwindow.h"
#include "ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    bool ok;

    QString tempStr;
    QString valueStr = ui->lineEdit->text();  //从文本中获取字符串值

    int valueInt = valueStr.toInt(&ok);  //自带字符串转整型

    double area = valueInt*valueInt*3.1415926;

    ui->label_3->setText(tempStr.setNum(area));  //写回

}
