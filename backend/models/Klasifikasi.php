<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "tbl_klasifikasi".
 *
 * @property int $tk_id
 * @property string $tk_kode
 * @property string $tk_name
 * @property string $tk_uraian
 */
class Klasifikasi extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'tbl_klasifikasi';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tk_kode', 'tk_name', 'tk_uraian'], 'required'],
            [['tk_kode'], 'string', 'max' => 45],
            [['tk_name'], 'string', 'max' => 75],
            [['tk_uraian'], 'string', 'max' => 100],
            [['tk_kode'], 'unique'],
            [['tk_name'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'tk_id' => 'ID',
            'tk_kode' => 'Kode',
            'tk_name' => 'Name',
            'tk_uraian' => 'Uraian',
        ];
    }
}
