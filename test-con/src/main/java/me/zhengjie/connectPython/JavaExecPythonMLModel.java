package me.zhengjie.connectPython;


import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Properties;

public class JavaExecPythonMLModel {

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
            File file = new File("E:\\GitHubProjects\\algorithmic-engineering-java-v1\\test-con\\src\\main\\resources\\config\\prop.properties");
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
            //定义process(处理)对象  Define process object
            Process proc = Runtime.getRuntime().exec(args);
            //获取输出流  Get the output stream
            BufferedReader in = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            //定义变量准备接收返回结果 Define variables ready to receive return results
            String line = null;
            //循环输出结果 Loop output result
            while ((line = in.readLine()) != null) {
                System.out.println(line);
                //当遇到某种输出，退出循环 When encountering some kind of output exit loop
                if("success".equals(in.readLine())||"fail".equals(in.readLine())){
                    System.out.println(line);
                    in.close();
                    break;
                }

            }
            /**
             * 获取脚本执行返回码 若返回0 证明执行成功 若返回1 证明未能执行 其他编码可以自查
             * Get the script execution return code. If it returns 0, it proves that the execution is successful.
             * If it returns 1, it proves that it failed to execute. Other codes can be self-checked.
             */
            int r = proc.waitFor();
            System.out.println("end.................return code:"+r);


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
            String[] args1 = new String[] { python3Url, sciptsUrl+"firstMethod.py", trainDataUrl, modelUrl, modelName1 };
            String[] args2 = new String[] { python3Url, sciptsUrl+"secondMethod.py", modelUrl+modelName1, predictDataUrl,trainDataUrl,predictSavePath };

            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String date1 = df.format(System.currentTimeMillis());
            System.out.println(date1);

            /**
             * 把数组传给那个函数即可
             * Pass the array to that function.
             */
            executepy(args1);
            executepy(args2);

            String date2 = df.format(System.currentTimeMillis());
            System.out.println(date2);

        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
        }
    }
}
