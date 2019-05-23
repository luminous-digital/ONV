{% macro render() %}

    {% block standfirst %}
        {% import "../components/standfirst.tpl" as standfirst with context %}
        {{ standfirst.render(
            paragraph='1 Our industrial chemicals portfolio includes methanol, bio-methanol, and diesel exhaust fluid, each of which plays an increasingly important role in developing cleaner fuels.'
        ) }}
    {% endblock %}

    <section class="l-section">
        <div class="l-inner">
            {% block text_component %}
                {% import "../components/text-component.tpl" as text_component with context %}
                {{ text_component.render(
                    secTitle='Industrial chemical products',
                    firstParagraph='
                    <p>
                        The global market for methanol is robust and growing with limited supply coming onstream. Fast-growing consumption of Diesel Exhaust Fuel (DEF) in the US, Europe and China and a strong demand for melamine at stable market prices. We produce a diversified portfolio of industrial chemicals, primarily including:
                    </p>
                    <br>
                    <table cellspacing="0">
                        <thead>
                            <tr valign="bottom">
                                <th><h3 class="t-h3">Product</h3></th>
                                <th><h3 class="t-h3">Metric tons<br>sold 2018</h3></th>
                                <th><h3 class="t-h3">Metric tons<br>sold 2017</h3></th>
                                <th><h3 class="t-h3">Increase</h3></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Methanol</td>
                                <td>1,285,000</td>
                                <td>1,285,000</td>
                                <td>+9%</td>
                            </tr>
                            <tr>
                                <td>Melamine</td>
                                <td>153,000</td>
                                <td>153,000</td>
                                <td>+5%</td>
                            </tr>
                            <tr>
                                <td>DEF</td>
                                <td>1,285,000</td>
                                <td>1,285,000</td>
                                <td>+9%</td>
                            </tr>
                            <tr>
                                <td>Ammonia</td>
                                <td>153,000</td>
                                <td>153,000</td>
                                <td>+5%</td>
                            </tr>
                        </tbody>
                        <tfoot>
                            <tr>
                                <td>Total</td>
                                <td>153,000</td>
                                <td>153,000</td>
                                <td>+5%</td>
                            </tr>
                        </tfoot>
                    </table>
                    ',
                    noPadding='true'
                ) }}
            {% endblock %}

            {% block text_component_2 %}
                {% import "../components/text-component.tpl" as text_component with context %}
                {{ text_component.render(
                    secTitle='Our<br>facilities',
                    firstParagraph='
                    <p>
                        Our Fertilizer & Chemicals Group began in 2005 as a single minority investment in Egypt Basic Industries Corporation (EBIC).
                        <br><br>
                        Today, our production facilities include OCI Nitrogen and BioMCN in the Netherlands, Egyptian Fertilizers Company (EFC) and EBIC in Egypt, Sorfert Algerie in Algeria, and Iowa Fertilizer Company, OCI Beaumont and Natgasoline in the United States.
                        <br><br>
                        Our plants are strategically located on the Red Sea (south of Suez Canal), Mediterranean and Atlantic coasts, making them easily accessible from sea via key ports. Good road links enable swift distribution inland and to other ports.
                        <br><br>
                        Click on our interactive locations map below for more information about each production facility.
                    </p>
                    ',
                    noPadding='true'
                ) }}
            {% endblock %}
        </div>
    </section>

    {% block map %}
        {% import "../components/map.tpl" as map with context %}
        {{ map.render() }}
    {% endblock %}

    <section class="l-section">
        <div class="l-inner">
            {% block text_component_3 %}
                {% import "../components/text-component.tpl" as text_component with context %}
                {{ text_component.render(
                    secTitle='Sales and<br>distribution',
                    firstParagraph='
                    <p>
                        Through our strategically located trading and distribution operations, we are able to directly reach our customers through a wide-reaching network developed across Europe and the Americas.<br><br>
                        Our trading operations are optimally organized by product and split between three entities: OCI Fertilizer Trading (OFT) and OCI Fertilizer Trade & Supply (OFTS), and N-7 LLC. Located in Dubai, UAE, OFT focuses on trading granular urea and AS. Located in Geleen, the Netherlands, OFTS focuses on ammonia and UAN. N-7 LLC is a 50/50 joint venture with Dakota Gasification Company, through which we jointly trade our North American nitrogen fertilizer and DEF products. We additionally trade various nitrogen fertilizer products and AS in Brazil through FITCO, a 50/50 joint venture with Fertipar, Brazil’s largest fertilizer compounder and distributor.
                    </p>
                    ',
                    noPadding='true'
                ) }}
            {% endblock %}
            {% block text_component_4 %}
                {% import "../components/text-component.tpl" as text_component with context %}
                {{ text_component.render(
                    secTitle='Global distribution reach',
                    firstParagraph='
                    <p>
                        We benefit from strategic access to ports in Europe, North Africa, and the Gulf Coast. OCI Terminal Europoort, our wholly owned ammonia terminal, is located at the port of Rotterdam in the Netherlands; OCI Beaumont has access to jetties on the Gulf Coast; EFC and EBIC are located directly at Sokhna Port on the Red Sea in Egypt, and Sorfert has direct access to two ports in Algeria on the Mediterranean.<br><br>
                        With branches in Europe, North Africa, the Americas and the Middle East and sales in over 60 countries, our global presence with centralized management allows us to mitigate the effects of regional demand seasonality and maximize freight advantages across locations and product mix.
                    </p>
                    ',
                    noPadding='true'
                ) }}
            {% endblock %}
        </div>
    </section>

    {% block contacts %}
        {% import "../components/contacts.tpl" as contacts with context %}
        {{ contacts.render(
            secTitle='Contacts',
            firstTitle='For fertilizer and melamine product information and sales enquiries, please contact:',
            firstContent='
                <a href="#">
                    fertilizersales@oci.nl
                </a>
            ',
            secondTitle='For methanol product information and sales enquiries, please contact:',
            secondContent='
                <a href="#">
                    methanolsales@oci.nl
                </a>
            '
        ) }}
    {% endblock %}

{% endmacro %}
