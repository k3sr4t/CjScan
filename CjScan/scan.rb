payloads = ['package main;import"os/exec";import"net";func main(){c,_:=net.Dial("tcp"','cmd:=exec.Command("/bin/bash");cmd.Stdin=c;cmd.Stdout=c;cmd.Stderr=c;cmd.Run()}', 'spawn("sh",[:in,:out,:err]=>TCPSocket.new', 'import os,pty,socket;s=socket.socket();s.connect((','[os.dup2(s.fileno(),f)for f in(0,1,2)];pty.spawn("/bin/bash")', 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((', 'loop{c.gets.chomp!;(exit! if $_=="exit");($_=~/cd (.+)/i?(Dir.chdir($1)):(IO.popen($_,?r){|io|c.print io.read}))rescue c.puts "failed: #{$_}"}','os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn(','int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn', 'nc', 'while True: d=c.recv(1024).decode();p=sp.Popen(d,shell=True,stdout=sp.PIPE,stderr=sp.PIPE,stdin=sp.PIPE);c.sendall(p.stdout.read()+p.stderr.read())', '-i 5<> /dev/tcp/']



def meeter():
  banner = "Pardus/linux crontab virüs tarayıcı"
  puts banner
end


def scann(file_path):
  begin
    # dosyayı okuma modunda açıyorum
    file = File.open(file_path, "r")
    content = file.read

    # kontrolt
    if payloads.any? { |payload| content.include?(payload) }
      situation = true
      puts "A suspicious crontab detected. Please delete it if the crontab is not trusted and please make a AV scan"
    else
      situation = false
      puts "No suspicious cronjob detected."
    end

    # Close the file
    file.close
  rescue Errno::ENOENT
    puts "File not found. Please provide a valid file path."
  end
end


def whoami
  `whoami`.chomp
end




#use
meeter()
file_path = "/var/spool/cron/crontabs/#{whoami}"
scann(file_path)  
