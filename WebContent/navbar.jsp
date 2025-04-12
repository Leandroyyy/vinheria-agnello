<%
    String title = "Agnello Grand Cru";
%>

<nav class="navbar navbar-expand-lg" style="background-color: #ECE4DC; color: #270400;">
    <div class="container">
        <a class="navbar-brand" href="#" style="color: #270400; font-family: 'Georgia', serif; font-size: 1.8rem;"><%= title %></a>
        <div class="collapse navbar-collapse justify-content-center" id="navbarNav">
            <ul class="navbar-nav">
            </ul>
        </div>
        <div class="d-flex dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: #270400; font-family: 'Georgia', serif; font-size: 1.2rem;">
                Minha Conta
                <i class="bi bi-chevron-down" style="font-size: 1rem; margin-left: 5px;"></i>
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown" style="background-color: #ECE4DC; border: none;">
                <li><a class="dropdown-item" href="#">Comprar</a></li>
                <li><a class="dropdown-item" href="#">Favoritos</a></li>
                <li><a class="dropdown-item" href="#">Configura��es</a></li>
            </ul>
        </div>
    </div>
</nav>
