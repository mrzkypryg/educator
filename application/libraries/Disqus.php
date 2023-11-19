<?php if (!defined('BASEPATH')) {
    exit('No direct script access allowed');
}

class Disqus
{
    /*
     *  Local CI instance
     */
    private $CI;
    /*
     *  Disqus shortname config item
     */
    private $disqus_shortname;
    /*
     *  Disqus developer setting
     */
    private $disqus_developer;

    /*
     * Init Disqus library
     */
    public function __construct()
    {
        $this->CI = &get_instance();

        $this->CI->config->load('disqus');

        $this->disqus_shortname = $this->CI->config->item('disqus_shortname');
        $this->disqus_developer = $this->CI->config->item('disqus_developer');

        log_message('debug', 'Disqus library loaded');
    }

    /*
     * Get Diqsus html
     */
    public function get_html()
    {
        // Validate config items
        if (!in_array($this->disqus_developer, array(0, 1)) || strlen($this->disqus_shortname) == 0) {
            return "Disqus config items not setup correctly, please check library config settings";
        }

        return "<div id='disqus_thread'></div>
        <script>
            /**
            *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
            *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
            /*
            var disqus_config = function () {
            this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
            this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
            };
            */
            (function() { // DON'T EDIT BELOW THIS LINE
            var d = document, s = d.createElement('script');
            s.src = 'https://educator-3.disqus.com/embed.js';
            s.setAttribute('data-timestamp', +new Date());
            (d.head || d.body).appendChild(s);
            })();
        </script>
        <noscript>Please enable JavaScript to view the <a href='https://disqus.com/?ref_noscript'>comments powered by Disqus.</a></noscript
                <a href='http://disqus.com' class='dsq-brlink'>blog comments powered by <span class='logo-disqus'>Disqus</span></a>";
    }
}