<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\LogBookUser */

$this->title = 'Update Log Book User: ' . $model->tlbu_id;
$this->params['breadcrumbs'][] = ['label' => 'Log Book Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tlbu_id, 'url' => ['view', 'id' => $model->tlbu_id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="log-book-user-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
