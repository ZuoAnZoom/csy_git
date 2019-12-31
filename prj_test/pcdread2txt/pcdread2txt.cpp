#include <iostream>
#include <fstream>  // 文件操作加上这个
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
using namespace std;  //还有加上这个
 
int main (int argc, char** argv)
{
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>); // 创建点云指针
 
  if (pcl::io::loadPCDFile<pcl::PointXYZ> ("/home/csy/prj_test/pcdread2txt/test_pcd.pcd", *cloud) == -1) //* load the file 读入pcd格式文件，如果文件不存在，返回-1
  {
    PCL_ERROR ("Couldn't read file test_pcd.pcd \n");
    return (-1);
  }

  ofstream outfile("Result.txt",ios::out);   // 创建一个 Result.txt，并向其写入数据

    outfile << "Loaded "
            << cloud->width * cloud->height
            << " data points from test_pcd.pcd with the following fields: "
            << std::endl;
            //<< "SIZE "<< cloud->points.size() << endl;// 此行可以打印出 SiZE
            
            //<< "FIELDS " <<

  for (std::size_t i = 0; i < cloud->points.size(); ++i)
      outfile << "    " << cloud->points[i].x
              << " "    << cloud->points[i].y
              << " "    << cloud->points[i].z << std::endl;

  outfile.close();  // Remember to close it !!
 
  return (0);
}