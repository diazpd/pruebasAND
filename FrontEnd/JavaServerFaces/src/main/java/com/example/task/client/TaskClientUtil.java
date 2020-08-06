package com.example.task.client;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Serializable;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.json.JsonValue;
import com.example.task.dto.Task;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Clase encargada de consumir el api rest del tareas.
 * 
 * @author publio.diaz
 *
 */
@ManagedBean
@SessionScoped
public class TaskClientUtil implements Serializable {

	private static final long serialVersionUID = -7199124477768497745L;
	private List<Task> listTasks = new ArrayList<Task>();
	private Task task;

	public TaskClientUtil() {
		getTasks();
	}

	public Task getTask() {
		return task;
	}

	public void setTask(Task task) {
		this.task = task;
	}

	public List<Task> getListTasks() {
		getTasks();
		return listTasks;
	}

	public void setListTasks(List<Task> listTasks) {
		this.listTasks = listTasks;
	}

	/**
	 * Metodo encargado de retornar el JWT de Autorizacion de consumo de api rest.
	 * 
	 * @return
	 * @throws Exception
	 */
	public String retornarTokenRadicado() throws Exception {
		String token = null;
		try {
			String URLService = "http://localhost:8080/user";
			String username = "admin";
			// cambiar cuando se ejecute el jar sprinBoot java -jar
			// pruebas-and-demo-0.0.1-SNAPSHOT.jar
			String passwd = "a294819b-f923-4e0e-80e1-c81ccbc9306b";
			String granttype = "password";

			// String url = "http://181.57.206.62/WS_Tierras/oauth/token";
			URL obj = new URL(URLService);
			HttpURLConnection con = (HttpURLConnection) obj.openConnection();

			// add reuqest header
			con.setRequestMethod("POST");

			String urlParameters = "user=" + username + "&password=" + passwd + "&grant_type=" + granttype;
			// Send post request
			con.setDoOutput(true);
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			wr.writeBytes(urlParameters);
			wr.flush();
			wr.close();

			int responseCode = con.getResponseCode();
			// System.out.println("Response Code : " + responseCode);

			if (responseCode == 200) {
				BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
				String inputLine;

				StringBuffer response = new StringBuffer();

				while ((inputLine = in.readLine()) != null) {
					response.append(inputLine);
				}
				in.close();

				token = response.toString();
				// System.out.println(token);
				token = token.substring(token.lastIndexOf("Bearer"), token.length() - 2);
			}
			return token;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return token;

	}

	/**
	 * Metodo encargado de traer topdas las tareas.
	 */
	public void getTasks() {

		List<Task> result = new ArrayList<Task>();
		try {

			String token = retornarTokenRadicado();

			URL url = new URL("http://localhost:8080/taskApp/tasks");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setInstanceFollowRedirects(false);
			connection.setRequestMethod("GET");
			connection.setRequestProperty("Content-Type", "application/json");
			connection.setRequestProperty("charset", "utf-8");
			connection.setRequestProperty("Authorization", "Bearer " + token);
			connection.connect();

			String line;
			BufferedReader reader = new BufferedReader(new InputStreamReader(connection.getInputStream()));

			while ((line = reader.readLine()) != null) {

				JsonArray lista = Json.createReader(new StringReader(line.replaceAll("\r?\n", ""))).readArray();

				for (Object o : lista) {
					if (o instanceof JsonObject) {

						Task tk = new Task();
						JsonObject tmp = (JsonObject) o;
						tk.setId(Long.parseLong(tmp.getJsonNumber("id") + ""));

						if (!tmp.isNull("title")) {
							tk.setTitle(tmp.getString("title"));
						}

						if (!tmp.isNull("description")) {
							tk.setDescription(tmp.getString("description"));

						}

						if (!tmp.isNull("complete")) {
							tk.setComplete(Boolean.parseBoolean(tmp.getBoolean("complete") + ""));

						}

						JsonValue jv = tmp.get("expiredDate");

						if (!tmp.isNull("expiredDate")) {
							String dateTmp = tmp.getJsonString("expiredDate").toString().substring(1, 11);

							if (dateTmp != null) {
								SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
								tk.setExpiredDate(formatter.parse(dateTmp));
							}
						}

						if (!tmp.isNull("personName")) {
							tk.setPersonName(tmp.getString("personName"));

						}
						result.add(tk);
					}
				}

			}
			listTasks = result;

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * Metodo encargado de crear un nueva tarea
	 * 
	 * @param tk
	 */
	public void createTask(Task tk) {

		try {

			ObjectMapper mapper = new ObjectMapper();
			String jsonString = mapper.writeValueAsString(tk);

			String token = retornarTokenRadicado();

			System.out.println("----" + jsonString + " --- " + token);

			URL url = new URL("http://localhost:8080/taskApp/createTask");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setInstanceFollowRedirects(false);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
			// connection.setRequestProperty("charset", "UTF-8");
			connection.setRequestProperty("Authorization", "Bearer " + token);

			JsonObject newJsonTask = null;
			InputStream is = null;

			OutputStreamWriter outStream = new OutputStreamWriter(connection.getOutputStream(), "UTF-8");

			System.out.println(jsonString);
			outStream.write(jsonString);
			outStream.close();
			connection.connect();
			is = connection.getInputStream();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void getTaskbyId(Task tk) {

		try {

			ObjectMapper mapper = new ObjectMapper();
			String jsonString = mapper.writeValueAsString(tk);

			String token = retornarTokenRadicado();

			URL url = new URL("http://localhost:8080/taskApp/taskById");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setInstanceFollowRedirects(false);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
			// connection.setRequestProperty("charset", "UTF-8");
			connection.setRequestProperty("Authorization", "Bearer " + token);

			JsonObject newJsonTask = null;
			InputStream is = null;

			OutputStreamWriter outStream = new OutputStreamWriter(connection.getOutputStream(), "UTF-8");

			System.out.println(jsonString);
			outStream.write(jsonString);
			outStream.close();
			connection.connect();

			is = connection.getInputStream();

			JsonReader theTask = Json.createReader(is);
			newJsonTask = theTask.readObject();

			System.out.println(newJsonTask);

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * Metodo encargado de actualizar una tarea pendiente
	 * 
	 * @param tk
	 */
	public void updateTaskbyId(Task tk) {

		try {

			ObjectMapper mapper = new ObjectMapper();
			String jsonString = mapper.writeValueAsString(tk);

			String token = retornarTokenRadicado();

			URL url = new URL("http://localhost:8080/taskApp/updateTaskbyId");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setInstanceFollowRedirects(false);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
			// connection.setRequestProperty("charset", "UTF-8");
			connection.setRequestProperty("Authorization", "Bearer " + token);
			InputStream is = null;

			OutputStreamWriter outStream = new OutputStreamWriter(connection.getOutputStream(), "UTF-8");

			System.out.println(jsonString);
			outStream.write(jsonString);
			outStream.close();
			connection.connect();

			is = connection.getInputStream();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	/**
	 * Metodo encargado de borrar una tarea
	 * 
	 * @param tk
	 */
	public void deleteTaskbyId(Task tk) {

		try {

			ObjectMapper mapper = new ObjectMapper();
			String jsonString = mapper.writeValueAsString(tk);

			String token = retornarTokenRadicado();

			URL url = new URL("http://localhost:8080/taskApp/deleteTaskById");
			HttpURLConnection connection = (HttpURLConnection) url.openConnection();
			connection.setDoOutput(true);
			connection.setInstanceFollowRedirects(false);
			connection.setRequestMethod("POST");
			connection.setRequestProperty("Content-Type", "application/json;charset=UTF-8");
			connection.setRequestProperty("Authorization", "Bearer " + token);

			InputStream is = null;

			OutputStreamWriter outStream = new OutputStreamWriter(connection.getOutputStream(), "UTF-8");

			// System.out.println(jsonString);
			outStream.write(jsonString);
			outStream.close();
			connection.connect();

			is = connection.getInputStream();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// main para efecto de pruebas
	/*
	 * public static void main(String[] args) { TaskClientUtil nc = new
	 * TaskClientUtil(); try { // String token = nc.retornarTokenRadicado(); //
	 * nc.getTasks();
	 * 
	 * Task tk = new Task(); tk.setId(10l); tk.setComplete(true);
	 * tk.setDescription("update new Task 111"); tk.setExpiredDate(new Date());
	 * tk.setPersonName("ivonne"); tk.setTitle("update The new task");
	 * 
	 * // nc.getTaskbyId(tk); // nc.updateTaskbyId(tk); nc.deleteTaskbyId(tk); //
	 * System.out.println(nc.getTaskbyId());
	 * 
	 * } catch (Exception e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } }
	 */
}