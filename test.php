<?php

$ob = new \Main\Tag();
echo $ob->input('class="doc"', 'placeholder="Title"', 'name="title"');
echo $ob->span(null, 'Text');
exit($ob->button('class="submit"', 'Write');
