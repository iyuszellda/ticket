<?php
namespace backend\controllers\members\gold;

use backend\controllers\MainController;
use Yii;
class UsersController extends MainController
{
    public function behaviors()
    {
        return [
            'access' => [
                'class' => \app\modules\admin\components\AccessControl::className(),
            ],
        ];
    }

    public function actionAjax(){
        $response = Yii::$app->response;
        $response->format = \yii\web\Response::FORMAT_JSON;
        $response->data = ['error_code' => 1, 'error_desc' => 'Success'];
    }
    public function actionAjaxDownload(){

    }
    public function actionIndex(){
        return $this->render('index');
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