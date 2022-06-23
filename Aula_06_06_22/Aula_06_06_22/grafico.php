<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<head>
<?php

$dados = [22 ,22, 18 ,17 ,16 , 15 ];
$semana = ['segunda','terça','quarta','quinta','sexta','sabado'];
$tam = count($dados);
echo $tam;
?>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Dia da semana', '°c'],
            <?php
          for($i=0;$i<$tam;$i++){
              ?>
             ['<?= $semana[$i]; ?>',  <?= $dados[$i]; ?>],
              <?php
         }
          ?>
        ]);

        var options = {
          title: 'Company Performance',
          vAxis: {minValue: 0}
        };

        var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
  </head>
  <body>
    <div id="chart_div" style="width: 100%; height: 500px;"></div>
  </body>
</body>
</html>
 