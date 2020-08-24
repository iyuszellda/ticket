<?php
use yii\helpers\Url;
$urlRestrictedAction2 = Url::to(['/members/gold/users/ajax']);

$js = <<<JS
$.post("$urlRestrictedAction2")
    .done(function(data){
        if(data.error_code==1)
            $("#notif").html('<div class="alert alert-success" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>Succes<div>');
        else
            $("#notif").html('<div class="alert alert-danger" role="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">×</a>Failed<div>');
    });
JS;
$this->registerJs($js);

