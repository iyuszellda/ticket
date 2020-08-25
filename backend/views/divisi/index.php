<?php

use yii\helpers\Html;
//use yii\grid\GridView;
use yii\widgets\Pjax;
use kartik\grid\GridView;
use yii\helpers\Url;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\DivisiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Divisis';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="divisi-index">

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
                        'onclick' => "redirect('".Url::to(['/admin/user/create'])."')",
                    ]) ,
                'options' => ['class' => 'btn-group mr-2']
            ],
        ],
        'columns' => [
            'td_name',
            'td_desc',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
