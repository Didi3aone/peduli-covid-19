<?php 


    function updateHitApiSuhu()
    {
        $ci = &get_instance();
        $ci->db->set('value', '`value`+ 1', FALSE);
        $ci->db->where('tipe','API_SUHU');
        $ci->db->update('api_hit_count');
    }
?>