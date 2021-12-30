let g:startify_bookmarks = [ 
            \ {'1': '/Users/dogukanaydogdu/projects/email-data-publisher'},
            \ {'2': '/Users/dogukanaydogdu/projects/callisto'},
            \ {'3': '/Users/dogukanaydogdu/projects/email-service'},
            \ {'4': '/Users/dogukanaydogdu/projects/honey-badger'},
            \ {'5': '/Users/dogukanaydogdu/projects/carrier-service'},
            \ {'6': '/Users/dogukanaydogdu/projects/coupon-reader'},
            \]

let g:startify_lists = [
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]
