<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Klasifikasi */

$this->title = 'Update Klasifikasi: ' . $model->tk_id;
$this->params['breadcrumbs'][] = ['label' => 'Klasifikasis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tk_id, 'url' => ['view', 'id' => $model->tk_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="klasifikasi-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
