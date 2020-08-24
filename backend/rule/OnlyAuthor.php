<?php
namespace backend\rule;
use yii\rbac\Rule;
class OnlyAuthor extends Rule
{
    public function execute($user, $item, $params)
    {
        $model = $params['post'];
        return $user->id == $model->author_id;
    }
}