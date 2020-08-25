<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tbl_log_book_user".
 *
 * @property int $tlbu_id
 * @property resource $tlbu_berita
 * @property string $tlbu_datetime
 * @property int $user_id
 *
 * @property User $user
 */
class LogBookUser extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tbl_log_book_user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tlbu_berita', 'tlbu_datetime', 'user_id'], 'required'],
            [['tlbu_berita'], 'string'],
            [['tlbu_datetime'], 'safe'],
            [['user_id'], 'integer'],
            [['user_id'], 'exist', 'skipOnError' => true, 'targetClass' => \common\models\User::className(), 'targetAttribute' => ['user_id' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'tlbu_id' => 'ID',
            'tlbu_berita' => 'Berita',
            'tlbu_datetime' => 'Hari',
            'user_id' => 'User',
        ];
    }

    /**
     * Gets query for [[User]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUser()
    {
        return $this->hasOne(User::className(), ['id' => 'user_id']);
    }
}
