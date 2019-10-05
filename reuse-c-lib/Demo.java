
class Demo {
   
   native void nativePrintHello();   
      
   public static void main(String args[]) {
      System.loadLibrary("Bridge");

      Demo demo = new Demo();
      demo.nativePrintHello();
   } 
}
