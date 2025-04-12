<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
    .header-container {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 4rem;
        background-color: #f9f7f4;
        font-family: 'Georgia', serif;
        color: #2e2e2e;
        position: relative;
    }

    .header-text {
        max-width: 50%;
        margin-left: 80px;
        z-index: 2;
    }

    .header-text h1 {
        font-size: 3rem;
        margin: 0;
    }

    .header-text p {
        font-size: 1.1rem;
        margin: 1rem 0 2.5rem 0;
    }

    .btn-vinho {
        padding: 0.8rem 1.5rem;
        background-color: #fff;
        border: 1px solid #ccc;
        cursor: pointer;
        font-weight: bold;
        text-decoration: none;
        color: #000;
    }

    .image-overlay-container {
        position: relative;
        width: 400px;
        margin-right: 80px;
    }

    .background-img {
        width: 100%;
        display: block;
    }

    .wine-img {
        position: absolute;
        bottom: -30px;
        left: -130px;
        height: 350px;
    }

    .top-right-decoration {
        position: absolute;
        top: 0;
        left: 0;
        width: 250px;
        z-index: 1;
    }

    .benefits-wrapper {
        position: relative;
        background-color: #f9f7f4;
        padding: 1rem 2rem;
        font-family: 'Georgia', serif;
    }

    .benefits-container {
        display: flex;
        justify-content: space-between;
        background-color: #fff;
        padding: 1.5rem 2rem;
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.05);
        position: relative;
        z-index: 2;
    }

    .benefit {
        flex: 1;
        padding: 0 1.5rem;
        border-right: 1px solid #ddd;
    }

    .benefit:last-child {
        border-right: none;
    }

    .benefit h3 {
        font-size: 1rem;
        font-weight: bold;
        margin-bottom: 0.5rem;
    }

    .benefit p {
        font-size: 0.9rem;
        color: #444;
        margin: 0;
    }

    .leaf-decoration {
        position: absolute;
        bottom: -10px;
        left: -30px;
        width: 240px;
        z-index: 1;
    }
</style>

<!-- Imagem decorativa do canto superior esquerdo -->
<img src="/VinheriaAgnello/images/Frame_207.png" class="top-right-decoration" alt="Decoração canto direito" />

<!-- Header com imagem e texto -->
<div class="header-container">
    <div class="header-text">
        <h1>Vinheria<br>Agnello</h1>
        <p>
            Descubra nossa sofisticada seleção de vinhos, elaborados com cuidado e expertise. Do vinhedo à garrafa, cada etapa é um testemunho de qualidade e tradição. Explore nossa coleção e encontre o vinho perfeito para você.
        </p>
        <a class="btn-vinho" href="#">Adquira nosso vinho</a>
    </div>

    <div class="image-overlay-container">
        <img src="images/image_125.png" class="background-img" alt="Fundo vinhedo">
        <img src="images/Group_45.png" class="wine-img" alt="Garrafa de vinho">
    </div>
</div>

<!-- NOVO BLOCO DE BENEFÍCIOS COM A FOLHA -->
<div class="benefits-wrapper">
    <!-- Folha decorativa no canto inferior esquerdo -->
    <img src="images/image_121.png" class="leaf-decoration" alt="Folha decorativa" />

    <div class="benefits-container">
        <div class="benefit">
            <h3>Atendimento Personalizado</h3>
            <p>Equipe especializada para escolher os vinhos perfeitos para você.</p>
        </div>
        <div class="benefit">
            <h3>Conservação Exclusiva</h3>
            <p>Adega climatizada em condições ideais para cada rótulo.</p>
        </div>
        <div class="benefit">
            <h3>Rótulos Selecionados</h3>
            <p>Vinhos provenientes das melhores safras e vinícolas renomadas.</p>
        </div>
    </div>
</div>