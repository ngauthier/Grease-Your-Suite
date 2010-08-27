!SLIDE
# Ruby Enterprise Edition
### [http://www.rubyenterpriseedition.com/](http://www.rubyenterpriseedition.com/)

!SLIDE
# RVM
### [http://rvm.beginrescueend.com/](http://rvm.beginrescueend.com/)

!SLIDE
# tcmalloc
### [http://code.google.com/p/google-perftools/wiki/GooglePerformanceTools](http://code.google.com/p/google-perftools/wiki/GooglePerformanceTools)
### *"The fastest malloc we've seen; works particularly well with threads"*

!SLIDE bullets incremental
# Hydra + Factory Girl
* lots of memory allocation
* lots of threads/forks

!SLIDE
# Garbage Collection
## REE provides tuning options
### [http://www.rubyenterpriseedition.com/documentation.html](http://www.rubyenterpriseedition.com/documentation.html)

!SLIDE
# Twitter's Settings
    export RUBY_HEAP_MIN_SLOTS=500000
    export RUBY_HEAP_SLOTS_INCREMENT=250000
    export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
    export RUBY_GC_MALLOC_LIMIT=50000000
!SLIDE
# My Settings
    @@@bash
    export RUBY_HEAP_MIN_SLOTS=1000000
    export RUBY_HEAP_SLOTS_INCREMENT=1000000
    export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
    export RUBY_GC_MALLOC_LIMIT=1000000000
    export RUBY_HEAP_FREE_MIN=500000
