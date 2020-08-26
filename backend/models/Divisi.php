<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tbl_divisi".
 *
 * @property int $td_id
 * @property string $td_name
 * @property string|null $td_desc
 */
class Divisi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tbl_divisi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['td_name'], 'required'],
            [['td_name', 'td_desc'], 'string', 'max' => 45],
            [['td_name'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'td_id' => 'ID',
            'td_name' => 'Name',
            'td_desc' => 'Desc',
        ];
    }
}
