<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container my-5">
    <div class="text-white p-4 rounded-3 shadow" style="background-color: #512326">
        <h2 class="text-center mb-4">Fale Conosco</h2>
        <form action="Contact" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Nome</label>
                <input type="text" class="form-control rounded-3" id="name" name="name" placeholder="Seu nome completo" required>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">E-mail</label>
                <input type="email" class="form-control rounded-3" id="email" name="email" placeholder="seu@email.com" required>
            </div>
            <div class="mb-3">
                <label for="message" class="form-label">Mensagem</label>
                <textarea class="form-control rounded-3" id="message" name="message" rows="5" placeholder="Escreva sua dúvida aqui..." required></textarea>
            </div>
            <div class="d-grid gap-2">
                <button type="submit" class="btn btn-light rounded-3">Enviar Mensagem</button>
            </div>
        </form>
    </div>
</div>
