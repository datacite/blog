<% wrap_layout :layout do %>
  <div class="wrapper">
    <div class="section section-white">
      <div class="container-fluid">
        <div class="row row-section">
          <div class="col-md-8 col-md-offset-2 post-content">
            <a name="topofpage"></a>
            <div class="post-meta">
              <h1><%= current_page.data.title %></h1>
              <%= current_page.data.date.strftime("%B %-d, %Y") %> by <%= author_string(current_page.data.author) %>
              • <span class="post-reading-time"></span> read
              <% if current_page.data.doi.present? %>
                <p><%= link_to("https://doi.org/" + current_page.data.doi, "https://doi.org/" + current_page.data.doi) %></p>
              <% end %>
            </div>

            <%= yield %>

            <hr width="80%">
          </div>
        </div>
        <div class="row">
          <div class="col-md-5 col-md-offset-2 post-content">
            <%= partial "includes/infobox.html.erb" %>
          </div>
          <div class="col-md-2 col-md-offset-1">
             <%= partial "includes/social.html.erb" %>
          </div>
        </div>
        <% if ENV['SITE_DISQUS'] %>
          <div class="row">
            <div class="col-md-8 col-md-offset-2 post-content">
              <%= partial "includes/disqus.html.erb" %>
            </div>
          </div>
        <% end %>
      </div>
    </div>
  </div>
<% end %>
