package com.example.pretdelivres;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

/**
 * Classe chargée d'afficher toutes les informations de détail d'un livre
 */
public class DetailLivre extends AppCompatActivity {
    String connexion;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail_livre);


        //récupérer l'isbn saisi
        String isbn = getIntent().getStringExtra("isbn");
        connexion = getIntent().getStringExtra("url");
        //faire la requete et afficher le résultat
        rechercheLivreHTTP(isbn);

        ((Button)findViewById(R.id.btRetour)).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                //fermer l'activity
                finish();

            }
        });
    }



    private void rechercheLivreHTTP(String isbn){
        RequestQueue queue = Volley.newRequestQueue(this);
        String url =connexion+"?id="+isbn;


        // Initialize a new JsonObjectRequest instance
        JsonObjectRequest jsonObjectRequest = new JsonObjectRequest
                (Request.Method.GET, url, null, new Response.Listener<JSONObject>() {

                    @Override
                    public void onResponse(JSONObject response) {
                        try{
                            JSONObject book = response;

                            // Get the current student (json object) data
                            String isbn = book.getString("isbn");
                            String title = book.getString("titre");
                            String author = book.getJSONObject("auteur").getString("prenom")+ " "+ book.getJSONObject("auteur").getString("nom");

                            // Display the formatted json data in text view
                            ((TextView)findViewById(R.id.tvISBN)).setText(isbn);
                            ((TextView)findViewById(R.id.tvTitre)).setText(title);
                            ((TextView)findViewById(R.id.tvAuteur)).setText(author);


                        }catch (JSONException e){
                            e.printStackTrace();
                        }
                    }
                }, new Response.ErrorListener() {

                    @Override
                    public void onErrorResponse(VolleyError error){
                        // Do something when error occurred
                        Log.e("erreur",url);
                    }
                }
        );
        // Access the RequestQueue through your singleton class.
        MySingleton.getInstance(this).addToRequestQueue(jsonObjectRequest);


    }

}