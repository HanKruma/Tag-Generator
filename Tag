<?php

namespace Main;

/**
 * Description of Tag
 *
 * @author HanKrum
 */
class Tag {

    private $_tags = ['doctype', 'br', 'hr', 'input', 'meta', 'base', 'basefont', 'img', 'source'];

    public function __call($name, $arguments) {
        $attr = null;
        $text = null;
        if (\in_array($name, $this->_tags)) {
            $name = $name == $this->_tags[0] ? '!' . $name . ' html' : $name;
            foreach ($arguments as $v) {
                $attr .= ' ' . $v;
            }
            return '<' . $name . $attr . '>' . "\n";
        }
        $br = 0;
        $count = \count($arguments);
        foreach ($arguments as $v) {
            $br ++;
            if ($br == $count) {
                $text = $v;
            } else {
                if (!$v) {
                    $space = null;
                } else {
                    $space = ' ';
                }
                $attr .= $space . $v;
            }
        }
        return '<' . $name . $attr . '>' . $text . '</' . $name . '>' . "\n";
    }

}
