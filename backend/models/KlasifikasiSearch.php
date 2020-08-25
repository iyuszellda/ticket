<?php

namespace backend\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\Klasifikasi;

/**
 * KlasifikasiSearch represents the model behind the search form of `backend\models\Klasifikasi`.
 */
class KlasifikasiSearch extends Klasifikasi
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['tk_id'], 'integer'],
            [['tk_kode', 'tk_name', 'tk_uraian'], 'safe'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Klasifikasi::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'tk_id' => $this->tk_id,
        ]);

        $query->andFilterWhere(['like', 'tk_kode', $this->tk_kode])
            ->andFilterWhere(['like', 'tk_name', $this->tk_name])
            ->andFilterWhere(['like', 'tk_uraian', $this->tk_uraian]);

        return $dataProvider;
    }
}
