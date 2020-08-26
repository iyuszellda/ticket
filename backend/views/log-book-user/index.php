<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use kartik\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\LogBookUserSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Log Book Users';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="log-book-user-index">

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
                'content' =>'' ,
                'options' => ['class' => 'btn-group mr-2']
            ],
        ],
        'columns' => [
            'user_id',
            'tlbu_berita',
            'tlbu_datetime',
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

    <?php Pjax::end(); ?>

</div>
