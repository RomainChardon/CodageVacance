package com.example.pretdelivres;

import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.android.volley.toolbox.JsonObjectRequest;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity  {

    private ArrayList<Livre> lesLivres=new ArrayList();
    final String connexion = "http://192.168.43.38/pretlivres/API/";
    private LivreAdapter adapter;
    private RecyclerView recyclerView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        recupererLesLivresHTTP();

        // set up the RecyclerView
        recyclerView = findViewById(R.id.listeLivres);
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        adapter = new LivreAdapter(this, lesLivres);
        recyclerView.setAdapter(adapter);
        ////ajout d'un listener
        recyclerView.addOnItemTouchListener(
                new RecyclerItemClickListener(this, recyclerView ,new RecyclerItemClickListener.OnItemClickListener() {
                    @Override public void onItemClick(View view, int position) {
                        // do whatever
                        Log.e("livre",lesLivres.get(position).getTitreLivre());
                        //ouverture page détail
                        Intent intent = new Intent(getApplicationContext(), DetailLivre.class);
                        intent.putExtra("url",connexion);
                        intent.putExtra("isbn",lesLivres.get(position).getIsbnLivre());
                        startActivity(intent);

                    }

                    @Override public void onLongItemClick(View view, int position) {
                        // do whatever
                    }
                })
        );
    }


    /**
     * requete http de récupération des livres
     */
    private void recupererLesLivresHTTP(){
        RequestQueue queue = Volley.newRequestQueue(this);
        String url =connexion+"?action=all";

        // Initialize a new JsonObjectRequest instance
        JsonObjectRequest jsonObjectRequest = new JsonObjectRequest
                (Request.Method.GET, url, null, new Response.Listener<JSONObject>() {

                    @Override
                    public void onResponse(JSONObject response) {
                        try{
                        // Get current json object<vw
                        JSONArray books = response.getJSONArray("livres");

                            for (int i=0;i<books.length() ;i++) {
                                JSONObject book = books.getJSONObject(i).getJSONObject("livre");
                                // Get the current student (json object) data
                                String isbn = book.getString("isbn");
                                String titre = book.getString("titre");
                                String editeur = book.getString("editeur");
                                String format = book.getString("format");
                                String section = book.getString("section");
                                String categorie = book.getString("categorie");
                                Auteur auteur =new Auteur(book.getJSONObject("auteur").getString("nom"), book.getJSONObject("auteur").getString("prenom"));
                                //récup les exemplaire et boucle
                                JSONArray lesExemplaires = book.getJSONArray("exemplaires");
                                ArrayList<Exemplaire> collectionExemplaires = new ArrayList();
                                for(int j=0;j<lesExemplaires.length();j++){
                                    JSONObject exemplaire = lesExemplaires.getJSONObject(j);
                                    collectionExemplaires.add(new Exemplaire(exemplaire.getString("id"),exemplaire.getString("statut")));
                                }
                                // Display the formatted json data in text view
                                lesLivres.add(new Livre( isbn, titre, editeur, format, categorie, auteur, collectionExemplaires) );
                            }
                            //prévenir l'adapteur que les données ont changé
                            adapter.notifyDataSetChanged();

                        }catch (JSONException e){
                            e.printStackTrace();
                        }
                    }
                }, new Response.ErrorListener() {

                    @Override
                    public void onErrorResponse(VolleyError error) {
                        // TODO: Handle error

                    }
                });

// Access the RequestQueue through your singleton class.
        MySingleton.getInstance(this).addToRequestQueue(jsonObjectRequest);

/*

        // Initialize a new JsonArrayRequest instance
        JsonArrayRequest jsonArrayRequest = new JsonArrayRequest(
                Request.Method.GET,
                url,
                null,
                new Response.Listener<JSONArray>() {
                    @Override
                    public void onResponse(JSONArray response) {
                        // Do something with response
                        //mTextView.setText(response.toString());
                        Log.e("array",response.toString());
                        // Process the JSON
                      /*  try{
                            // Get current json object<vw
                            JSONArray books = response.getJSONObject(0).getJSONArray("livres");
/*
                            for (int i=0;i<books.length() ;i++) {
                                JSONObject book = books.getJSONObject(i);
                                // Get the current student (json object) data
                                String title = book.getString("titre");
                                String author = book.getJSONObject("auteur").getString("prenom")+ " "+ book.getJSONObject("auteur").getString("nom");

                                // Display the formatted json data in text view
                                lesLivres.add(new Livre(title));
                            }
//Log.e("array",lesLivres.toString());
                        }catch (JSONException e){
                            e.printStackTrace();
                        }
                    }
                },
                new Response.ErrorListener(){
                    @Override
                    public void onErrorResponse(VolleyError error){
                        // Do something when error occurred
                        Log.e("erreur",error.getMessage());
                    }
                }
        );
        // Access the RequestQueue through your singleton class.
        MySingleton.getInstance(this).addToRequestQueue(jsonArrayRequest);
*/

    }


}



