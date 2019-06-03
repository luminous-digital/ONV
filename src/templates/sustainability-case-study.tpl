{% extends "base/base.tpl" %}
{% block title %}
Sustainability - case study
{% endblock %}
{% set menu_item = 'sustainability' %}
{% block content %}

    {% block header_panel_short %}
        {% import "components/header-panel-short.tpl" as header_panel_short with context %}
        {{
            header_panel_short.render(
                pageTitle='Supporting local<br>STEM programmes',
                bgPhoto='img-header-panel-case-study.jpg'
            )
        }}
    {% endblock %}

    {% block standfirst %}
        {% import "components/standfirst.tpl" as standfirst with context %}
        {{ standfirst.render(
            paragraph='Throughout our history, we have invested company resources in educational programs that improve the communities in which we operate. We believe that the key to encouraging tangible improvements our communities is a high-quality, well-rounded education that promotes critical thinking and entrepreneurship.'
        ) }}
    {% endblock %}

    <section class="l-section">
        <div class="l-inner">
            {% block text_component %}
                {% import "components/text-component.tpl" as text_component with context %}
                {{ text_component.render(
                    secTitle='Building the Dream',
                    firstParagraph='
                    <p>
                        Accordingly, all our sites have endowed time and resources into the entire education value chain, from donating school supplies to needy children and rewarding high achievers to funding university scholarships and providing on-site training opportunities. Our local operations have worked hard to encourage students of all ages to pursue an education in fields of science, technology, engineering and mathematics (STEM) through various initiatives. In 2018, more than 2,600 students and young professionals benefited from the training or education opportunities availed through the programs we participated in.
                        <br><br>
                        IFCo continued its longstanding support for Southeastern Iowa Community College’s Building the Dream program through a $50,000 donation, part of the plant’s $250,000 pledge made in 2014. This initiative is helping the school build its industrial technologies training centre, health professions centre and make other critical investments to enhance facilities and training programs for students.
                    </p>
                    <br><br>
                    <img src="./static/img/img-case-study.jpg" alt="Case study" />
                    <br><br>
                    <h3>
                        EFC and EBIC Summer Internship Program
                    </h3>
                    <p>
                        EFC and EBIC jointly run a summer internship program for university students, welcoming approximately 50-70 students per year on-site to train in a variety of technical and non-technical roles. In 2018, the facilities welcomed 76 interns. Over the last 5 years more than 300 students from a wide range of local Egyptian universities trained on-site.
                    </p>
                    <h3>
                        Girlsday
                    </h3>
                    <p>
                        OCI Nitrogen participated in Girlsday, an initiative by the VHTO (National Expert Organization on Girls/Women and Science/Technology) that aims introduce girls to science, technology and ICT at a young age. This national event takes place annually in April and allows girls to participate in interesting STEM activities and meet female employees who work in STEM fields.
                    </p>
                    '
                ) }}
            {% endblock %}
            {% block quote %}
                {% import "components/text-quote.tpl" as quote with context %}
                {{ quote.render(
                    quote='During Girlsday, middle school and high school aged participants were introduced to Engineering and Chemistry through a number of fun and interesting workshops and activities. A total of 150 girls took part, divided over two days.'
                ) }}
            {% endblock %}
            {% block text_component_2 %}
                {% import "components/text-component.tpl" as text_component_2 with context %}
                {{ text_component_2.render(
                    firstParagraph='
                    <p>
                        The girls were hosted by and interacted with female operators, technicians, laboratory technicians, technologists, engineers, and plant managers. In addition to leading the activities, each employee explained her reasons for choosing her respective career path.
                    </p>
                    <br>
                    <h3>
                        Flint Hills Junior Achievement Luncheon
                    </h3>
                    <p>
                        OCI Beaumont engineers participated in the seventh annual engineering job shadow lunch, where they worked with 180 high school freshmen and sophomores to conduct science experiments and watch sponsor-led demonstrations. The event is one of the largest job shadowing events in the area and is designed to spark student interest in engineering as a career path.
                    </p>
                    ',
                    noPadding='true'
                ) }}
            {% endblock %}
        </div>
    </section>

    {% block hr %}
        {% import "components/hr.tpl" as hr with context %}
        {{
            hr.render(
                hasSpacing='small'
            )
        }}
    {% endblock %}

    {% block quick_links %}
        {% import "components/quick-links.tpl" as quick_links with context %}
        {{
            quick_links.render(
                secTitle='Related links'
            )
        }}
    {% endblock %}


{% endblock %}