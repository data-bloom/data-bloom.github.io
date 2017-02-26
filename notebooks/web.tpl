{%- extends 'basic.tpl' -%} {% from 'mathjax.tpl' import mathjax %}



<!DOCTYPE html>
<html>

<head>
    {%- block header -%}
    <meta charset="utf-8" />
    <title>{{resources['metadata']['name']}}</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.10/require.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/style.css" rel="stylesheet" type="text/css">
    <link rel="shortcut icon" href="bloom.ico" type="image/x-icon">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    {% for css in resources.inlining.css -%}
    <style type="text/css">
        {
            {
                css
            }
        }
    </style>
    {% endfor %}

    <!-- Can put analytics code here, if desired -->

    <style type="text/css">
        /* Overrides of notebook CSS for static HTML export */
        
        body {
            overflow: visible;
            padding: 8px;
        }
        
        div#notebook {
            overflow: visible;
            border-top: none;
        }
        
        @media print {
            div.cell {
                display: block;
                page-break-inside: avoid;
            }
            div.output_wrapper {
                display: block;
                page-break-inside: avoid;
            }
            div.output {
                display: block;
                page-break-inside: avoid;
            }
        }
    </style>

    <link rel="stylesheet" href="ipynb.css">

    <!-- Loading mathjax macro -->
    {{ mathjax() }} {%- endblock header -%}
</head>


<body>
    {% block body %}
    <!-- Navigation -->
    <div class="container row">
        <a class="pull-right navbar-brand" href="http://data-bloom.com">Data Bloom</a>
    </div>
    <div tabindex="-1" id="notebook" class="border-box-sizing">
        <div class="container" id="notebook-container">
            {{ super() }}
        </div>
    </div>
    <footer>
        <div class="container row">
            <div class="pull-right"> <span class="copyright">Copyright © 2017. <a href="http://data-bloom.com">Data-Bloom</a></span></div>
        </div>
    </footer>
    {%- endblock body %}
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/five.js"></script>
</body>


{% block footer %}

</html>
{% endblock footer %}