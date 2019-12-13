/-  publish
|_  com=comment:publish
::
::
++  grow
  |%
  ++  mime
    :-  /text/x-publish-comments
    (as-octs:mimes:html (of-wain:format txt))
  ++  txt
    ^-  wain
    :*  (cat 3 'author: ' (scot %p author.com))
        (cat 3 'date-created: ' (scot %da date-created.com))
        '-----'
        (to-wain:format content.com)
    ==
  --
++  grab
  |%
  ++  mime
    |=  [mite:eyre p=octs:eyre]
    (txt (to-wain:format q.p))
  ++  txt
    |=  txs=(pole @t)
    ^-  comment:publish
    ::  TODO: putting ~ instead of * breaks this but shouldn't
    ::
    ?>  ?=  $:  author=@t
                date-created=@t
                line=@t
                body=*
             ==
           txs
    ?>  =(line.txs '-----')
    ::
    :*  %+  rash  author.txs
        ;~(pfix (jest 'author: ~') fed:ag)
    ::
        %+  rash  date-created.txs
        ;~  pfix
          (jest 'date-created: ~')
          (cook year when:so)
        ==
    ::
        (of-wain:format (wain body.txs))
    ==
  ++  noun  comment:publish
  --
++  grad  %mime
--
