
<!DOCTYPE html>
<html>
  <head>
    <title>Workspace</title>
    <script src="https://code.jquery.com/jquery-2.1.4.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <!-- Application CSS -->
    <link rel="stylesheet" type="text/css" href="css/application.css">
    <!-- Application JS -->
    <script src="js/application.js"></script>
  </head>
  <body>
    <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/ideas">The Idea app</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/ideas">Home</a></li>
            <li class="active"><a href="/new">New Idea</a></li>
            <li class="active"><a href="/about">About Me</a></li>
          </ul>
          <p class="navbar-text pull-right">
        </div>
      </div>
    </nav>
    <div class="container">
      <% @flash.each do |type, content| %>
        <% if content.respond_to?('each') %>
          <% content.each do |item| %>
            <%= render 'alert',
                       type:    type,
                       content: item %>
          <% end %>
        <% end %>
      <% end if @flash %>

      <%= yield %>
    </div>
    <footer>
      <div class="container">
        Ruby Girls 2016
      </div>
    </footer>
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.js"></script>
  </body>
</html>