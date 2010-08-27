!SLIDE center
# System Usage
![Pre-hydra usage](pre-hydra-usage.png)

!SLIDE bullets
# System Usage
* 1 core: testing
* 3 cores: goofing off

!SLIDE
# Multi-core testing

!SLIDE bullets
# Existing solutions
* parallel_tests
* tickle
* deep-test
* specjour

!SLIDE
# tickle, parallel_tests, specjour
## pre-group files

!SLIDE
# tickle, parallel_tests, specjour
## cores get out of balance

!SLIDE
# tickle
## Test::Unit

!SLIDE
# parallel_tests
## Local only
## Multiple databases

!SLIDE
# specjour
## RSpec

!SLIDE
# specjour
## Bonjour for networking = LAN (or tunnel)
## Need to run daemon

!SLIDE bullets
# deep-test
* Sockets
* Multiple Databases
* Remote daemons
* => Difficult setup
* (Very powerful)

!SLIDE center
![Hydra Logo](hydra.png)
## [http://www.github.com/ngauthier/hydra](http://www.github.com/ngauthier/hydra)

!SLIDE bullets
# Hydra
* Test::Unit
* Cucumber
* RSpec
* JSLint

!SLIDE 
# Hydra
## Pipes (local)

!SLIDE 
# Hydra
## SSH & Rsync (remote)

!SLIDE 
# Hydra
## Simple Setup

!SLIDE 
# Hydra
## deadlock retry

!SLIDE 
# Hydra
## load balancing

!SLIDE 
# Hydra
## test AI

!SLIDE 
# Hydra
## cross-framework ruby-prof

!SLIDE
# Usage: Rakefile
    @@@ ruby
    Hydra::TestTask.new('hydra') do |t|
      t.add_files 'test/unit/**/*_test.rb'
      t.add_files 'test/functional/**/*_test.rb'
      t.add_files 'test/integration/**/*_test.rb'
    end

!SLIDE
# Test::Unit + Cucumber
    @@@ruby
    Hydra::TestTask.new('hydra') do |t|
      t.add_files 'test/unit/**/*_test.rb'
      t.add_files 'test/functional/**/*_test.rb'
      t.add_files 'test/integration/**/*_test.rb'
      t.add_files 'features/**/*.feature'
    end

!SLIDE
# Configuration: hydra.yml
    @@@ yaml
    workers:
    - type: local
      runners: 2

!SLIDE bullets incremental 
# Environment loading
* Test::Unit: 4 environment loads
* Cucumber: 2 environment loads
* RSpec: 1 environment load
* Hydra: 1 environment load (for all frameworks)

!SLIDE
# Workers are forked
## copy-on-write memory

!SLIDE bullets
# Caveats
* Transactional tests
* Independent tests
* => Factory Girl!
