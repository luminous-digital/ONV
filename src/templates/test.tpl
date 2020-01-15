{% extends "base/base.tpl" %}
{% block title %}
Test
{% endblock %}
{% set menu_item = 'about' %}
{% block content %}

<section class="l-section">
    <div class="l-inner">
        <br><br>
        <h2 class="t-h2">
            Table outside content example
        </h2>
    </div>
</section>

<div class="c-table-wrapper c-table-wrapper--offset">
    <div class="l-inner">
        {% block table %}
            {% import "components/table.tpl" as table with context %}
            {{ table.render(
                rows=5,
                cols=4
            ) }}
        {% endblock %}
    </div>
</div>

<section class="l-section">
    <div class="l-inner">
        <br><br>
        <h2 class="t-h2">
            Table outside content example, wider than container box
        </h2>
    </div>
</section>

<div class="c-table-wrapper c-table-wrapper--offset">
    <div class="l-inner">
        {% block table3 %}
            {% import "components/table.tpl" as table with context %}
            {{ table.render(
                rows=5,
                cols=14
            ) }}
        {% endblock %}
    </div>
</div>

<section class="l-section">
    <div class="l-inner">
        <div class="c-text-component">
            <div class="c-text-component__column">
                <h2 class="c-text-component__title t-h2">
                    Table in content example
                </h2>
            </div>
            <div class="c-text-component__column">
                <div class="c-wysiwyg">
                    {% block table2 %}
                        {% import "components/table.tpl" as table with context %}
                        {{ table.render(
                            rows=4,
                            cols=3
                        ) }}
                    {% endblock %}
                </div>
            </div>
        </div>
    </div>
</section>

<section class="l-section">
    <div class="l-inner">
        <br><br>
        <h2 class="t-h2">
            Table list example
        </h2>
    </div>
</section>

<div class="c-table-wrapper c-table-wrapper--offset">
    <div class="l-inner">
        {% block list_table %}
            {% import "components/list-table.tpl" as list_table with context %}
            {{ list_table.render(
                rows=5,
                cols=4
            ) }}
        {% endblock %}
    </div>
</div>

<section class="l-section">
    <div class="l-inner">
        <br><br>
        <h2 class="t-h2">
            Table list example, wider than container
        </h2>
    </div>
</section>

<div class="c-table-wrapper c-table-wrapper--offset">
    <div class="l-inner">
        {% block list_table2 %}
            {% import "components/list-table.tpl" as list_table with context %}
            {{ list_table.render(
                rows=5,
                cols=14
            ) }}
        {% endblock %}
    </div>
</div>

<section class="l-section">
    <div class="l-inner">
        <br><br>
    </div>
</section>

{% endblock %}
