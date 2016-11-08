package edu.tecii.android.ejemplotoolbar;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
    getMenuInflater().inflate(R.menu.menu1,menu);//la actividad que va a redenterizar, se le agrega al MAinactivity, lo va mostrar como el visor principal
       //obteniendo el contexto del menu y lo pone al inicio de la actividad
        return true;
    }
    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
       switch (item.getItemId()){
           case(R.id.hola):
               Toast.makeText(MainActivity.this,"Hola",Toast.LENGTH_SHORT).show();
               return   true;
           case(R.id.bye):
               Toast.makeText(MainActivity.this,"Bye",Toast.LENGTH_SHORT).show();
               return   true;
           case(R.id.inicio):
               Toast.makeText(MainActivity.this,"Inicio",Toast.LENGTH_SHORT).show();
               return   true;
           case(R.id.fin):
               Toast.makeText(MainActivity.this,"Fin",Toast.LENGTH_SHORT).show();
               return   true;
           default:
               return super.onOptionsItemSelected(item);
       }
    }
}
