<?php
defined('BASEPATH') or exit('No direct script access allowed');



class Materi extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->library('disqus');
        $this->load->model('m_materi');
        $this->list_materi['matematika_sd'] = $this->m_materi->matematika_sd()->result();
        $this->list_materi['matematika_smp'] = $this->m_materi->matematika_smp()->result();
        $this->list_materi['matematika_sma'] = $this->m_materi->matematika_sma()->result();
        $this->list_materi['ipa_sd'] = $this->m_materi->ipa_sd()->result();
        $this->list_materi['ipa_smp'] = $this->m_materi->ipa_smp()->result();
        $this->list_materi['ipa_sma'] = $this->m_materi->ipa_sma()->result();
        $this->list_materi['indo_sd'] = $this->m_materi->indo_sd()->result();
        $this->list_materi['indo_smp'] = $this->m_materi->indo_smp()->result();
        $this->list_materi['indo_sma'] = $this->m_materi->indo_sma()->result();
        $this->list_materi['inggris_sd'] = $this->m_materi->inggris_sd()->result();
        $this->list_materi['inggris_smp'] = $this->m_materi->inggris_smp()->result();
        $this->list_materi['inggris_sma'] = $this->m_materi->inggris_sma()->result();
        $this->list_materi['softskill_sd'] = $this->m_materi->softskill_sd()->result();
        $this->list_materi['softskill_smp'] = $this->m_materi->softskill_smp()->result();
        $this->list_materi['softskill_sma'] = $this->m_materi->softskill_sma()->result();
    }

    function generateMateri($materi){
    
        $data['materi'] = $this->list_materi[$materi];
        $data['user'] = $this->db->get_where('siswa', ['email' =>
            $this->session->userdata('email')])->row_array();
        $this->load->view('materi/'.str_replace('_', '-', $materi), $data);
        $this->load->view('template/footer');
    }

    public function belajar($id)
    {
        $where = array('id' => $id);
        $detail = $this->m_materi->belajar($id);
        $data['detail'] = $detail;
        $data['disqus'] = $this->disqus->get_html();
        $this->load->view('materi/belajar', $data);
    }

    public function matematika_sd()
    {
        $this->generateMateri('matematika_sd');
    }
    
    public function matematika_smp()
    {
        $this->generateMateri('matematika_smp');
    }

    public function matematika_sma()
    {
        $this->generateMateri('matematika_sma');
    }

    public function ipa_sd()
    {
        $this->generateMateri('ipa_sd');
    }

    public function ipa_smp()
    {
        $this->generateMateri('ipa_smp');
    }

    public function ipa_sma()
    {
        $this->generateMateri('ipa_sma');
    }

    public function indo_sd()
    {
        $this->generateMateri('indo_sd');
    }

    public function indo_smp()
    {
        $this->generateMateri('indo_smp');
    }

    public function indo_sma()
    {
        $this->generateMateri('indo_sma');
    }

    public function inggris_sd()
    {
        $this->generateMateri('inggris_sd');
    }
    
    public function inggris_smp()
    {
        $this->generateMateri('inggris_smp');
    }
    
    public function inggris_sma()
    {
        $this->generateMateri('inggris_sma');
    }
    
    public function softskill_sd()
    {
        $this->generateMateri('softskill_sd');
    }
    
    public function softskill_smp()
    {
        $this->generateMateri('softskill_smp');
    }
    
    public function softskill_sma()
    {
        $this->generateMateri('softskill_sma');
    }

}
