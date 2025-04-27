package br.com.vinheriaagnello.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import software.amazon.awssdk.auth.credentials.AwsBasicCredentials;
import software.amazon.awssdk.auth.credentials.StaticCredentialsProvider;
import software.amazon.awssdk.regions.Region;
import software.amazon.awssdk.services.dynamodb.DynamoDbClient;
import software.amazon.awssdk.services.dynamodb.model.AttributeValue;
import software.amazon.awssdk.services.dynamodb.model.PutItemRequest;

@WebServlet("/sendContact")
public class ContactServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;

  private DynamoDbClient dynamoDb;

  @Override
  public void init() throws ServletException {
    System.out.println("Iniciado servlet");
    AwsBasicCredentials awsCreds = AwsBasicCredentials.create(
    	    "AKIA5FTY6LUL4B3GV7PI",
    	    "05I7deH3Ynlw3mknmNTI3WqvC9fGblrEZ0mLn4UT"
    	);

	dynamoDb = DynamoDbClient.builder()
	    .region(Region.SA_EAST_1)
	    .credentialsProvider(StaticCredentialsProvider.create(awsCreds))
	    .build();

  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    System.out.println("Iniciado post");
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String message = request.getParameter("message");

    // Gera ID aleatório
    String id = UUID.randomUUID().toString();

    Map<String, AttributeValue> item = new HashMap<>();
    item.put("id", AttributeValue.fromS(id));
    item.put("name", AttributeValue.fromS(name));
    item.put("email", AttributeValue.fromS(email));
    item.put("message", AttributeValue.fromS(message));

    PutItemRequest putReq = PutItemRequest.builder()
        .tableName("ContactMessages")
        .item(item)
        .build();

    try {
      dynamoDb.putItem(putReq);
      response.setContentType("text/html");
      response.getWriter().println("<h3>Mensagem enviada com sucesso!</h3>");
    } catch (Exception e) {
      response.setContentType("text/html");
      response.getWriter().println("<h3>Erro ao enviar mensagem: " + e.getMessage() + "</h3>");
      e.printStackTrace();
    }
  }
}
