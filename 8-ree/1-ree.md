!SLIDE
# Ruby Enterprise Edition
## http://www.rubyenterpriseedition.com/

!SLIDE
# RVM
## http://rvm.beginrescueend.com/

!SLIDE bullets incremental
# Install
* gem install rvm
* rvm-install
* rvm install ree

!SLIDE
# tcmalloc
## http://code.google.com/p/google-perftools/wiki/GooglePerformanceTools
### *"The fastest malloc we've seen; works particularly well with threads"*

!SLIDE bullets incremental
# Hydra + Factory Girl
* lots of memory allocation
* lots of threads/forks

!SLIDE
# Garbage Collection
## REE provides tuning options
### http://www.rubyenterpriseedition.com/documentation.html

!SLIDE
# RUBY_HEAP_MIN_SLOTS
## Initial heap slots allocated
### Default: 10,000
### My Setting: 1,000,000

!SLIDE
# RUBY_HEAP_SLOTS_INCREMENT
## Number of heap slots to allocate when more are needed
### Default: 10,000
### My Setting: 1,000,000

!SLIDE
# RUBY_HEAP_SLOTS_GROWTH_FACTOR
## Slots increment growth factor
### Default: 1.8
### My Setting: 1

!SLIDE
# RUBY_GC_MALLOC_LIMIT
## Garbage collection trigger limit
### Default: 8,000,000
### My Setting: 1,000,000,000

!SLIDE
# RUBY_HEAP_FREE_MIN
## Less than this many free slots after GC triggers allocation
### Default: 4096
### My Setting: 500,000

!SLIDE
# Set in your profile
    @@@bash
    export RUBY_HEAP_MIN_SLOTS=1000000
    export RUBY_HEAP_SLOTS_INCREMENT=1000000
    export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
    export RUBY_GC_MALLOC_LIMIT=1000000000
    export RUBY_HEAP_FREE_MIN=500000
