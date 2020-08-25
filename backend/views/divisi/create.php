<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Divisi */

$this->title = 'Create Divisi';
$this->params['breadcrumbs'][] = ['label' => 'Divisis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="divisi-create">
    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
