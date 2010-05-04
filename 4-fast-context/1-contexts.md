!SLIDE
# Fast Context
## http://github.com/lifo/fast_context

!SLIDE
# Contexts in Shoulda
    @@@ ruby
    context 'A User' do
      setup { @user = Factory(:user) }
      should 'return its full name' do
        assert_equal 'John Doe', @user.full_name
      end
      should 'return its age' do
        assert_equal 30, @user.age
      end
    end

!SLIDE
# With Fast Context
    @@@ ruby
    context 'A User' do
      should 'return its full name and age' do
      @user = Factory(:user) 
      assert_equal 'John Doe', @user.full_name
      assert_equal 30, @user.age
    end

!SLIDE
# Caveat
## May change your coverage
