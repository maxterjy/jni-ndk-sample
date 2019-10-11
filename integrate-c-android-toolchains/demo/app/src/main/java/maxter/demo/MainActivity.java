package maxter.demo;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        System.loadLibrary("Bridge");//Bridge --> libBridge.so

        Bridge bridge = new Bridge();
        bridge.nativePrintHello();
    }
}
