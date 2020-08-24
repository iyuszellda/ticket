<?php
namespace backend\controllers;

class ArticleController extends MainController
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => \app\modules\admin\components\AccessControl::className(),
            ],
        ];
    }

    public function actionIndex(){
        echo "index";
    }
    public function actionDelete(){
        echo "delete";
    }
    public function actionUpdate(){
        echo "update";
    }
    public function actionCreate(){
        echo "create";
    }
    public function actionView(){
        echo "view";
    }
}