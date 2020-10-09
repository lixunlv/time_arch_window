require 'window'

RSpec.describe Window, '#print' do
  context 'print' do
    it 'print with all sub children' do
      win = Window.new('WINDOW窗口')
      frame = Frame.new('Frame1')
      frame.addChildren([Label.new('用户名'), TextBox.new('文本框'), Label.new('密码'), PasswordBox.new('密码框'), CheckBox.new('复选框'), TextBox.new('记住用户名'), LinkLabel.new('忘记密码')])
      win.addChildren([Picture.new('LOGO图片'), Button.new('登录'), Button.new('注册'), frame])
      expect do
        win.print
      end.to output(%Q{print WinForm(WINDOW窗口)
print Picture(LOGO图片)
print Button(登录)
print Button(注册)
print WinForm(Frame1)
print Label(用户名)
print TextBox(文本框)
print Label(密码)
print PasswordBox(密码框)
print CheckBox(复选框)
print TextBox(记住用户名)
print LinkLabel(忘记密码)
}).to_stdout
    end
  end
end
