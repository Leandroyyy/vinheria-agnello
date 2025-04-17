<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head><title>Contato</title></head>
<body>
    <h2>Fale conosco</h2>
    <form method="post" action="sendContact">
        Nome: <input type="text" name="name" /><br/>
        Email: <input type="email" name="email" /><br/>
        Mensagem:<br/>
        <textarea name="message" rows="5" cols="40"></textarea><br/>
        <input type="submit" value="Enviar"/>
    </form>
</body>
</html>
