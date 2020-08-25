<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\LogBookUser */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="log-book-user-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'tlbu_berita')->textInput() ?>

    <?= $form->field($model, 'tlbu_datetime')->textInput() ?>

    <?= $form->field($model, 'user_id')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
