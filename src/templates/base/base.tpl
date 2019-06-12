<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8">
        <title>{% block title %} {{ title }} {% endblock %}</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
        {% include "base/head-links.tpl" %}
    </head>
    <body class="{% block bodyClass %}{% endblock %}">
        {% block header %}
            {% import "layout/header.tpl" as l_header with context %}
            {{ l_header.render() }}
        {% endblock %}
        {% block content %}
        {% endblock %}
        {% block cookie_bar %}
            {% import "components/cookie-bar.tpl" as cookie_bar with context %}
            {{ cookie_bar.render() }}
        {% endblock %}
        {% block footer %}
            {% import "layout/footer.tpl" as l_footer with context %}
            {{ l_footer.render() }}
        {% endblock %}
        <script src="./static/js/app.js"></script>
    </body>
</html>
