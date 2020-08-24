<?php


namespace backend\controllers;


class NewsController extends MainController{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => \app\modules\admin\components\AccessControl::className(),
            ],
        ];
    }
    public function actionIndex(){}
    public function actionUpdate(){}
    public function actionView(){}
    public function actionDownload(){}
    public function actionDownloadPdf(){}
    public function actionDelete(){}
}