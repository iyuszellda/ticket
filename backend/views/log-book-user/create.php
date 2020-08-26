<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\LogBookUser */

$this->title = 'Create Log Book User';
$this->params['breadcrumbs'][] = ['label' => 'Log Book Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="log-book-user-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
