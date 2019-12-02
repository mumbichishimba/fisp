/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package zm.co.farmer.fisp.webservice;

import com.google.gson.Gson;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.json.JSONArray;
import org.json.JSONObject;
import zm.co.farmer.fisp.entity.InventoryItem;
import zm.co.farmer.fisp.webservice.entity.InventoryResponse;

/**
 *
 * @author mumbi
 */
public class InventoryWebService {
    
     public InventoryResponse[] sendInventoryItemsToFarmer(InventoryItem[] inventoryItems){
         
        Client client = ClientBuilder.newClient();
        
        String remoteUrl = getRemoteUrl();
        
        WebTarget webTarget = client.target("http://172.17.2.109:8089/farmnetwebservice/rest/InventoryItem");
        Invocation.Builder invocationBuilder = webTarget.request(MediaType.APPLICATION_JSON);
         
        Response response
                = invocationBuilder
                        .post(Entity.entity(inventoryItems, MediaType.APPLICATION_JSON));
        
        String r = response.readEntity(String.class);
        
        client.close();
        
        return getResponsesFromJson(r);
     }
     
     private InventoryResponse[] getResponsesFromJson(String r) {

        JSONArray array = new JSONArray(r);

        InventoryResponse[] inventoryResponses = new InventoryResponse[array.length()];

        for (int i = 0; i < array.length(); i++) {
            JSONObject jo = array.getJSONObject(i);
            String o = jo.toString();

            Gson gson = new Gson();

            InventoryResponse ir = gson.fromJson(o, InventoryResponse.class);

            inventoryResponses[i] = ir;
        }

        return inventoryResponses;
    }

    private String getRemoteUrl() {
        
        return "";
    }
}
