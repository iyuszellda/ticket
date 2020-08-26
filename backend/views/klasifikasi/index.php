<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use yii\helpers\Url;
use kartik\grid\GridView;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\KlasifikasiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Klasifikasis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="klasifikasi-index">

    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'hover' => true,
        'filterSelector' => "input[name='".$dataProvider->getPagination()->pageSizeParam."'],input[name='".$dataProvider->getPagination()->pageParam."']",
        'panel' => [
            'type' => GridView::TYPE_PRIMARY,
            'heading' => '<h4>'.Html::encode($this->title).'</h4>',
        ],
        'toolbar' =>  [
            [
                'content' =>
                    Html::button('<i class="glyphicon glyphicon-plus"></i>', [
                        'class' => 'btn btn-success',
                        'title' => Yii::t('kvgrid', 'Add '. 'Tahun Ajarans'),
                        'onclick' => "redirect('".Url::to(['/klasifikasi/create'])."')",
                    ]) ,
                'options' => ['class' => 'btn-group mr-2']
            ],
        ],
        'columns' => [
            'tk_kode',
            'tk_name',
            'tk_uraian',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
