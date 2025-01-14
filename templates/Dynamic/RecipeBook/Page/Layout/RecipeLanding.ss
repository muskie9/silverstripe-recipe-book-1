<% base_tag %>
<div class="container">
    <!-- Page Title and Content -->
    <div class="row mb-4">
        <div class="col-12">
            <h1 class="mb-3">$Title</h1>
            <% if $Content %>
                <p class="lead">$Content</p>
            <% end_if %>
        </div>
    </div>

    <!-- Top-Level Recipe Categories -->
    <% loop $Children %>
        <div class="row mb-5">
            <!-- Category Title -->
            <div class="col-12">
                <h2 class="mb-4">$Title</h2>
            </div>

            <!-- Recipes in Category -->
            <% loop $RecipeList.Limit(3).Sort('Title') %>
                <div class="col-md-4 mb-4">
                    <div class="card h-100">
                        <a href="$Link" class="text-decoration-none">
                            <% if $Image %>
                                <img src="$Image.URL" class="card-img-top" alt="$Image.Title">
                            <% else %>
                                <img src="https://via.placeholder.com/150" class="card-img-top" alt="No Image">
                            <% end_if %>
                        </a>
                        <div class="card-body">
                            <% if $PrimaryCategory %>
                                <p class="text-uppercase text-muted small mb-1">$PrimaryCategory.Title</p>
                            <% end_if %>
                            <h5 class="card-title">
                                <a href="$Link" class="text-decoration-none">$Title</a>
                            </h5>
                            <div class="d-flex align-items-center text-muted">
                                <% if $PrepTime %>
                                    <div class="me-4">
                                        <i class="bi bi-alarm"></i> Prep: $PrepTime 
                                    </div>
                                <% end_if %>
                                <% if $CookTime %>
                                    <div class="me-4">
                                        <i class="bi bi-clock"></i> Cook: $CookTime 
                                    </div>
                                <% end_if %>
                                <% if $Servings %>
                                    <div>
                                        <i class="bi bi-people"></i> Servings: $Servings
                                    </div>
                                <% end_if %>
                            </div>
                        </div>
                        <div class="card-footer">
                            <a href="$Link" class="btn btn-primary btn-block">View Recipe</a>
                        </div>
                    </div>
                </div>
            <% end_loop %>

            <!-- View All Button -->
            <div class="col-12 text-center">
                <a href="$Link" class="btn btn-secondary mt-3">View All $Title</a>
            </div>
        </div>
    <% end_loop %>
</div>

<!-- Elemental Area -->
<div>
    $ElementalArea
</div>