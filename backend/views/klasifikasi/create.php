<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Klasifikasi */

$this->title = 'Create Klasifikasi';
$this->params['breadcrumbs'][] = ['label' => 'Klasifikasis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="klasifikasi-create">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
