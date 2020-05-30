package me.zhengjie.connectPython;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Properties;


public class JavaExeclPythonTest {

    /**
     * 全局静态变量
     * Global static variable
     */

    public static String modelUrl;
    public static String trainDataUrl;
    public static String predictDataUrl;
    public static String sciptsUrl;
    public static String python3Url;
    public static String modelName1;
    public static String predictSavePath;

    static{

        InputStream in = null;
        try {
            /**
             * 使用类class加载资源文件的方式
             * @1 -  class对象加载，InputStream inStream = DaoFactory.class.getResourceAsStream("dao.properties");
             * @2 - class对象加载，inStream=DaoFactory.class.getResourceAsStream("/com/jdbc/dao/dao.properties")
             * @3 - classLoader对象加载，inStream=DaoFactory.class.getClassLoader().getResourceAsStream("com/jdbc/dao/dao.properties");
             * */

            //创建Properties对象  Create a Properties object
            Properties prop = new Properties();
            //读取属性文件prop.properties。Read the property file prop.properties)
            // @1 - 以文件的形式读取
            String propFileAbsolutePath = "E:\\GitHubProjects\\algorithmic-engineering-java-v1\\test-con\\src\\main\\resources\\config\\propTest.properties";
            File file = new File(propFileAbsolutePath);
            in = new FileInputStream(file);

            // @2 - 以资源的形式读取
            // E:\GitHubProjects\algorithmic-engineering-java-v1\test-con\src\main\resources\config\prop.properties
            //in = JavaExecPythonMLModel.class.getResourceAsStream("\\prop02.properties");
            //in = JavaExecPythonMLModel.class.getClassLoader().getResourceAsStream("\\src\\main\\resources\\config\\prop.properties");
            //加载属性列表  Load attribute list
            prop.load(new InputStreamReader(in, "utf-8"));
            //读取属性列表  Read attribute list
            modelUrl = prop.getProperty("modelUrl");
            trainDataUrl = prop.getProperty("trainDataUrl");
            predictDataUrl = prop.getProperty("predictDataUrl");
            sciptsUrl = prop.getProperty("sciptsUrl");
            python3Url = prop.getProperty("python3Url");
            modelName1 = prop.getProperty("modelName1");
            predictSavePath = prop.getProperty("predictSavePath");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 执行py
    public static void executepy(String[] args)throws IOException, InterruptedException{


        try {
            /**
             * java调用exe，shell程序的方法
             * @1 - 使用Runtime的exec()方法
             * @2 - 使用ProcessBuilder的start()方法
             * 设置启动参数、环境变量和工作目录。这两种方法都会返回一个用于管理操作系统进程的Process对象
             *
             * 缓存区
             * 当Runtime对象调用exec(cmd)后，JVM会启动一个子进程，该进程会与JVM进程建立三个
             * 管道连接：标准输入，标准输出和标准错误流。
             * */
            //定义process(处理)对象  Define process object
            Process proc = Runtime.getRuntime().exec(args);
            //获取输出流 - 程序在cmd中运行时产生的输出字符
            BufferedReader out = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            //定义变量准备接收返回结果 Define variables ready to receive return results
            String line = null;
            //循环输出结果 Loop output result
            while ((line = out.readLine()) != null) {
                System.out.println("输出001");
                System.out.println(line);
                //当遇到某种输出，退出循环 When encountering some kind of output exit loop
                if("success".equals(out.readLine())||"fail".equals(out.readLine())){
                    System.out.println("输出002");
                    System.out.println(line);
                    out.close();
                    break;
                }

            }
            /**
             * 获取脚本执行返回码 若返回0 证明执行成功 若返回1 证明未能执行 其他编码可以自查
             */
            // 从结果缓存区中读取
            int r = proc.waitFor();
            System.out.println("end.........return code:"+r);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {
        try {
            /**
             * 定义脚本输入源数组:
             * python3源,python脚本路径,python需要的变量(若干)
             *
             * Define the script input source array:
             * python3 source, python script path, python required variables (several)
             *
             */
            String[] args1 = new String[] { python3Url, sciptsUrl+"pythonTest.py", trainDataUrl };
            // String[] args2 = new String[] { python3Url, sciptsUrl+"secondMethod.py", modelUrl+modelName1, predictDataUrl,trainDataUrl,predictSavePath };

            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String date1 = df.format(System.currentTimeMillis());
            System.out.println(date1);

            /**
             * 把数组传给那个函数即可
             * Pass the array to that function.
             */
            executepy(args1);
            // executepy(args2);

            String date2 = df.format(System.currentTimeMillis());
            System.out.println(date2);

        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
