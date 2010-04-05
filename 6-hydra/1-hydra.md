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
* parallel_specs
* tickle
* deep-test

!SLIDE
# tickle and parallel_specs
## pre-group files

!SLIDE
# tickle and parallel_specs
## cores get out of balance

!SLIDE bullets
# deep-test
* Sockets
* Multiple Databases
* Remote daemons
* => Difficult setup

!SLIDE center
![Hydra Logo](hydra.png)
## http://www.github.com/ngauthier/hydra

!SLIDE bullets
# Hydra
* Test::Unit
* Cucumber
* RSpec

!SLIDE bullets
# Hydra
* Pipes
* SSH
* => simple setup

!SLIDE
# Usage: Rakefile
    @@@ ruby
    require 'hydra'
    require 'hydra/tasks'

    Hydra::TestTask.new('hydra') do |t|
      t.add_files 'test/unit/**/*_test.rb'
      t.add_files 'test/functional/**/*_test.rb'
      t.add_files 'test/integration/**/*_test.rb'
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

!SLIDE bullets incremental
# Environment loading
## Simple Test::Unit project with:
* 1 unit test
* 1 functional test
* 1 integration test
* = 14s => 4s with Hydra

!SLIDE
# Workers are forked
## copy-on-write memory

!SLIDE bullets
# Caveats
* Transactional tests
* Independent tests
* => Factory Girl!
