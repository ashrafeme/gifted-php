{"changed":true,"filter":false,"title":"dbconn.php","tooltip":"/dbconn.php","value":"<?php\n\nclass Database {\n\n    private $link;\n    private $host, $username, $password, $database;\n\n    public function __construct($host, $username, $password, $database){\n        $this->host        = $host;\n        $this->username    = $username;\n        $this->password    = $password;\n        $this->database    = $database;\n\n        $this->link = mysql_connect($this->host, $this->username, $this->password)\n            OR die(\"There was a problem connecting to the database.\");\n\n        mysql_select_db($this->database, $this->link)\n            OR die(\"There was a problem selecting the database.\");\n\n        return true;\n    }\n\n    public function query($query) {\n        $result = mysql_query($query);\n        if (!$result) die('Invalid query: ' . mysql_error());\n        return $result;\n    }\n\n    public function __destruct() {\n        mysql_close($this->link)\n            OR die(\"There was a problem disconnecting from the database.\");\n    }\n\n}\n\n?>","undoManager":{"mark":7,"position":8,"stack":[[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":31,"column":1},"action":"insert","lines":["class Database {","","    private $link;","    private $host, $username, $password, $database;","","    public function __construct($host, $username, $password, $database){","        $this->host        = $host;","        $this->username    = $username;","        $this->password    = $password;","        $this->database    = $database;","","        $this->link = mysql_connect($this->host, $this->username, $this->password)","            OR die(\"There was a problem connecting to the database.\");","","        mysql_select_db($this->database, $this->link)","            OR die(\"There was a problem selecting the database.\");","","        return true;","    }","","    public function query($query) {","        $result = mysql_query($query);","        if (!$result) die('Invalid query: ' . mysql_error());","        return $result;","    }","","    public function __destruct() {","        mysql_close($this->link)","            OR die(\"There was a problem disconnecting from the database.\");","    }","","}"]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":1,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":1,"column":0},"end":{"row":2,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":0,"column":0},"end":{"row":0,"column":5},"action":"insert","lines":["<?php"]}]}],[{"group":"doc","deltas":[{"start":{"row":33,"column":1},"end":{"row":34,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":34,"column":0},"end":{"row":34,"column":1},"action":"insert","lines":["?"]}]}],[{"group":"doc","deltas":[{"start":{"row":34,"column":1},"end":{"row":34,"column":2},"action":"insert","lines":[">"]}]}],[{"group":"doc","deltas":[{"start":{"row":33,"column":1},"end":{"row":34,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"remove","lines":["?>"]},{"start":{"row":35,"column":0},"end":{"row":35,"column":2},"action":"insert","lines":["?>"]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":13,"column":22},"end":{"row":13,"column":35},"isBackwards":true},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425046119914}