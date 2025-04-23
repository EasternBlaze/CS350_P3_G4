
_sh:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return 0;
}

int
main(void)
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	push   -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
      11:	eb 0e                	jmp    21 <main+0x21>
      13:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      17:	90                   	nop
    if(fd >= 3){
      18:	83 f8 02             	cmp    $0x2,%eax
      1b:	0f 8f 96 00 00 00    	jg     b7 <main+0xb7>
  while((fd = open("console", O_RDWR)) >= 0){
      21:	83 ec 08             	sub    $0x8,%esp
      24:	6a 02                	push   $0x2
      26:	68 19 13 00 00       	push   $0x1319
      2b:	e8 13 0e 00 00       	call   e43 <open>
      30:	83 c4 10             	add    $0x10,%esp
      33:	85 c0                	test   %eax,%eax
      35:	79 e1                	jns    18 <main+0x18>
      37:	eb 2e                	jmp    67 <main+0x67>
      39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      40:	80 3d 82 19 00 00 20 	cmpb   $0x20,0x1982
      47:	0f 84 8d 00 00 00    	je     da <main+0xda>
      4d:	8d 76 00             	lea    0x0(%esi),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
      50:	e8 a6 0d 00 00       	call   dfb <fork>
  if(pid == -1)
      55:	83 f8 ff             	cmp    $0xffffffff,%eax
      58:	0f 84 c1 00 00 00    	je     11f <main+0x11f>
    if(fork1() == 0)
      5e:	85 c0                	test   %eax,%eax
      60:	74 63                	je     c5 <main+0xc5>
    wait();
      62:	e8 a4 0d 00 00       	call   e0b <wait>
  printf(2, "$ ");
      67:	83 ec 08             	sub    $0x8,%esp
      6a:	68 88 12 00 00       	push   $0x1288
      6f:	6a 02                	push   $0x2
      71:	e8 ea 0e 00 00       	call   f60 <printf>
  memset(buf, 0, nbuf);
      76:	83 c4 0c             	add    $0xc,%esp
      79:	6a 64                	push   $0x64
      7b:	6a 00                	push   $0x0
      7d:	68 80 19 00 00       	push   $0x1980
      82:	e8 f9 0b 00 00       	call   c80 <memset>
  gets(buf, nbuf);
      87:	58                   	pop    %eax
      88:	5a                   	pop    %edx
      89:	6a 64                	push   $0x64
      8b:	68 80 19 00 00       	push   $0x1980
      90:	e8 4b 0c 00 00       	call   ce0 <gets>
  if(buf[0] == 0) // EOF
      95:	0f b6 05 80 19 00 00 	movzbl 0x1980,%eax
      9c:	83 c4 10             	add    $0x10,%esp
      9f:	84 c0                	test   %al,%al
      a1:	74 0f                	je     b2 <main+0xb2>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
      a3:	3c 63                	cmp    $0x63,%al
      a5:	75 a9                	jne    50 <main+0x50>
      a7:	80 3d 81 19 00 00 64 	cmpb   $0x64,0x1981
      ae:	75 a0                	jne    50 <main+0x50>
      b0:	eb 8e                	jmp    40 <main+0x40>
  exit();
      b2:	e8 4c 0d 00 00       	call   e03 <exit>
      close(fd);
      b7:	83 ec 0c             	sub    $0xc,%esp
      ba:	50                   	push   %eax
      bb:	e8 6b 0d 00 00       	call   e2b <close>
      break;
      c0:	83 c4 10             	add    $0x10,%esp
      c3:	eb a2                	jmp    67 <main+0x67>
      runcmd(parsecmd(buf));
      c5:	83 ec 0c             	sub    $0xc,%esp
      c8:	68 80 19 00 00       	push   $0x1980
      cd:	e8 7e 0a 00 00       	call   b50 <parsecmd>
      d2:	89 04 24             	mov    %eax,(%esp)
      d5:	e8 d6 00 00 00       	call   1b0 <runcmd>
      buf[strlen(buf)-1] = 0;  // chop \n
      da:	83 ec 0c             	sub    $0xc,%esp
      dd:	68 80 19 00 00       	push   $0x1980
      e2:	e8 69 0b 00 00       	call   c50 <strlen>
      if(chdir(buf+3) < 0)
      e7:	c7 04 24 83 19 00 00 	movl   $0x1983,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
      ee:	c6 80 7f 19 00 00 00 	movb   $0x0,0x197f(%eax)
      if(chdir(buf+3) < 0)
      f5:	e8 79 0d 00 00       	call   e73 <chdir>
      fa:	83 c4 10             	add    $0x10,%esp
      fd:	85 c0                	test   %eax,%eax
      ff:	0f 89 62 ff ff ff    	jns    67 <main+0x67>
        printf(2, "cannot cd %s\n", buf+3);
     105:	51                   	push   %ecx
     106:	68 83 19 00 00       	push   $0x1983
     10b:	68 21 13 00 00       	push   $0x1321
     110:	6a 02                	push   $0x2
     112:	e8 49 0e 00 00       	call   f60 <printf>
     117:	83 c4 10             	add    $0x10,%esp
     11a:	e9 48 ff ff ff       	jmp    67 <main+0x67>
    panic("fork");
     11f:	83 ec 0c             	sub    $0xc,%esp
     122:	68 8b 12 00 00       	push   $0x128b
     127:	e8 44 00 00 00       	call   170 <panic>
     12c:	66 90                	xchg   %ax,%ax
     12e:	66 90                	xchg   %ax,%ax

00000130 <getcmd>:
{
     130:	55                   	push   %ebp
     131:	89 e5                	mov    %esp,%ebp
     133:	56                   	push   %esi
     134:	53                   	push   %ebx
     135:	8b 5d 08             	mov    0x8(%ebp),%ebx
     138:	8b 75 0c             	mov    0xc(%ebp),%esi
  printf(2, "$ ");
     13b:	83 ec 08             	sub    $0x8,%esp
     13e:	68 88 12 00 00       	push   $0x1288
     143:	6a 02                	push   $0x2
     145:	e8 16 0e 00 00       	call   f60 <printf>
  memset(buf, 0, nbuf);
     14a:	83 c4 0c             	add    $0xc,%esp
     14d:	56                   	push   %esi
     14e:	6a 00                	push   $0x0
     150:	53                   	push   %ebx
     151:	e8 2a 0b 00 00       	call   c80 <memset>
  gets(buf, nbuf);
     156:	58                   	pop    %eax
     157:	5a                   	pop    %edx
     158:	56                   	push   %esi
     159:	53                   	push   %ebx
     15a:	e8 81 0b 00 00       	call   ce0 <gets>
  if(buf[0] == 0) // EOF
     15f:	83 c4 10             	add    $0x10,%esp
     162:	80 3b 01             	cmpb   $0x1,(%ebx)
     165:	19 c0                	sbb    %eax,%eax
}
     167:	8d 65 f8             	lea    -0x8(%ebp),%esp
     16a:	5b                   	pop    %ebx
     16b:	5e                   	pop    %esi
     16c:	5d                   	pop    %ebp
     16d:	c3                   	ret
     16e:	66 90                	xchg   %ax,%ax

00000170 <panic>:
{
     170:	55                   	push   %ebp
     171:	89 e5                	mov    %esp,%ebp
     173:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
     176:	ff 75 08             	push   0x8(%ebp)
     179:	68 15 13 00 00       	push   $0x1315
     17e:	6a 02                	push   $0x2
     180:	e8 db 0d 00 00       	call   f60 <printf>
  exit();
     185:	e8 79 0c 00 00       	call   e03 <exit>
     18a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000190 <fork1>:
{
     190:	55                   	push   %ebp
     191:	89 e5                	mov    %esp,%ebp
     193:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
     196:	e8 60 0c 00 00       	call   dfb <fork>
  if(pid == -1)
     19b:	83 f8 ff             	cmp    $0xffffffff,%eax
     19e:	74 02                	je     1a2 <fork1+0x12>
  return pid;
}
     1a0:	c9                   	leave
     1a1:	c3                   	ret
    panic("fork");
     1a2:	83 ec 0c             	sub    $0xc,%esp
     1a5:	68 8b 12 00 00       	push   $0x128b
     1aa:	e8 c1 ff ff ff       	call   170 <panic>
     1af:	90                   	nop

000001b0 <runcmd>:
{
     1b0:	55                   	push   %ebp
     1b1:	89 e5                	mov    %esp,%ebp
     1b3:	53                   	push   %ebx
     1b4:	83 ec 14             	sub    $0x14,%esp
     1b7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
     1ba:	85 db                	test   %ebx,%ebx
     1bc:	74 42                	je     200 <runcmd+0x50>
  switch(cmd->type){
     1be:	83 3b 05             	cmpl   $0x5,(%ebx)
     1c1:	0f 87 e8 00 00 00    	ja     2af <runcmd+0xff>
     1c7:	8b 03                	mov    (%ebx),%eax
     1c9:	ff 24 85 30 13 00 00 	jmp    *0x1330(,%eax,4)
    if(ecmd->argv[0] == 0)
     1d0:	8b 43 04             	mov    0x4(%ebx),%eax
     1d3:	85 c0                	test   %eax,%eax
     1d5:	74 29                	je     200 <runcmd+0x50>
    exec(ecmd->argv[0], ecmd->argv);
     1d7:	52                   	push   %edx
     1d8:	52                   	push   %edx
     1d9:	8d 53 04             	lea    0x4(%ebx),%edx
     1dc:	52                   	push   %edx
     1dd:	50                   	push   %eax
     1de:	e8 58 0c 00 00       	call   e3b <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
     1e3:	83 c4 0c             	add    $0xc,%esp
     1e6:	ff 73 04             	push   0x4(%ebx)
     1e9:	68 97 12 00 00       	push   $0x1297
     1ee:	6a 02                	push   $0x2
     1f0:	e8 6b 0d 00 00       	call   f60 <printf>
    break;
     1f5:	83 c4 10             	add    $0x10,%esp
     1f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     1ff:	90                   	nop
    exit();
     200:	e8 fe 0b 00 00       	call   e03 <exit>
    if ( fork1() == 0 ) {
     205:	e8 86 ff ff ff       	call   190 <fork1>
     20a:	85 c0                	test   %eax,%eax
     20c:	0f 85 aa 00 00 00    	jne    2bc <runcmd+0x10c>
      if ( fork1() == 0 ) {
     212:	e8 79 ff ff ff       	call   190 <fork1>
     217:	85 c0                	test   %eax,%eax
     219:	75 e5                	jne    200 <runcmd+0x50>
     21b:	eb 1f                	jmp    23c <runcmd+0x8c>
    close( rcmd->fd );
     21d:	83 ec 0c             	sub    $0xc,%esp
     220:	ff 73 14             	push   0x14(%ebx)
     223:	e8 03 0c 00 00       	call   e2b <close>
    if ( open( rcmd->file, rcmd->mode ) < 0 ) exit();
     228:	58                   	pop    %eax
     229:	5a                   	pop    %edx
     22a:	ff 73 10             	push   0x10(%ebx)
     22d:	ff 73 08             	push   0x8(%ebx)
     230:	e8 0e 0c 00 00       	call   e43 <open>
     235:	83 c4 10             	add    $0x10,%esp
     238:	85 c0                	test   %eax,%eax
     23a:	78 c4                	js     200 <runcmd+0x50>
        runcmd( bcmd->cmd );
     23c:	83 ec 0c             	sub    $0xc,%esp
     23f:	ff 73 04             	push   0x4(%ebx)
     242:	e8 69 ff ff ff       	call   1b0 <runcmd>
    if(pipe(p) < 0){
     247:	83 ec 0c             	sub    $0xc,%esp
     24a:	8d 45 f0             	lea    -0x10(%ebp),%eax
     24d:	50                   	push   %eax
     24e:	e8 c0 0b 00 00       	call   e13 <pipe>
     253:	83 c4 10             	add    $0x10,%esp
     256:	85 c0                	test   %eax,%eax
     258:	78 6c                	js     2c6 <runcmd+0x116>
    if(fork1() == 0){
     25a:	e8 31 ff ff ff       	call   190 <fork1>
     25f:	85 c0                	test   %eax,%eax
     261:	74 70                	je     2d3 <runcmd+0x123>
    if(fork1() == 0){
     263:	e8 28 ff ff ff       	call   190 <fork1>
     268:	85 c0                	test   %eax,%eax
     26a:	0f 84 91 00 00 00    	je     301 <runcmd+0x151>
    close(p[0]);
     270:	83 ec 0c             	sub    $0xc,%esp
     273:	ff 75 f0             	push   -0x10(%ebp)
     276:	e8 b0 0b 00 00       	call   e2b <close>
    close(p[1]);
     27b:	59                   	pop    %ecx
     27c:	ff 75 f4             	push   -0xc(%ebp)
     27f:	e8 a7 0b 00 00       	call   e2b <close>
    wait();
     284:	e8 82 0b 00 00       	call   e0b <wait>
    wait();
     289:	e8 7d 0b 00 00       	call   e0b <wait>
    break;
     28e:	83 c4 10             	add    $0x10,%esp
     291:	e9 6a ff ff ff       	jmp    200 <runcmd+0x50>
    if (fork1() == 0){
     296:	e8 f5 fe ff ff       	call   190 <fork1>
     29b:	85 c0                	test   %eax,%eax
     29d:	74 9d                	je     23c <runcmd+0x8c>
    wait();
     29f:	e8 67 0b 00 00       	call   e0b <wait>
    runcmd(lcmd->right);    // execute 2nd
     2a4:	83 ec 0c             	sub    $0xc,%esp
     2a7:	ff 73 08             	push   0x8(%ebx)
     2aa:	e8 01 ff ff ff       	call   1b0 <runcmd>
    panic("runcmd");
     2af:	83 ec 0c             	sub    $0xc,%esp
     2b2:	68 90 12 00 00       	push   $0x1290
     2b7:	e8 b4 fe ff ff       	call   170 <panic>
    wait();
     2bc:	e8 4a 0b 00 00       	call   e0b <wait>
    break;
     2c1:	e9 3a ff ff ff       	jmp    200 <runcmd+0x50>
      panic("pipe");
     2c6:	83 ec 0c             	sub    $0xc,%esp
     2c9:	68 a7 12 00 00       	push   $0x12a7
     2ce:	e8 9d fe ff ff       	call   170 <panic>
      close(1);      
     2d3:	83 ec 0c             	sub    $0xc,%esp
     2d6:	6a 01                	push   $0x1
     2d8:	e8 4e 0b 00 00       	call   e2b <close>
      dup(p[1]);     
     2dd:	58                   	pop    %eax
     2de:	ff 75 f4             	push   -0xc(%ebp)
     2e1:	e8 95 0b 00 00       	call   e7b <dup>
      close(p[0]);   
     2e6:	5a                   	pop    %edx
     2e7:	ff 75 f0             	push   -0x10(%ebp)
     2ea:	e8 3c 0b 00 00       	call   e2b <close>
      close(p[1]);
     2ef:	59                   	pop    %ecx
     2f0:	ff 75 f4             	push   -0xc(%ebp)
     2f3:	e8 33 0b 00 00       	call   e2b <close>
      runcmd(pcmd->left);
     2f8:	58                   	pop    %eax
     2f9:	ff 73 04             	push   0x4(%ebx)
     2fc:	e8 af fe ff ff       	call   1b0 <runcmd>
      close(0);      
     301:	83 ec 0c             	sub    $0xc,%esp
     304:	6a 00                	push   $0x0
     306:	e8 20 0b 00 00       	call   e2b <close>
      dup(p[0]);     
     30b:	58                   	pop    %eax
     30c:	ff 75 f0             	push   -0x10(%ebp)
     30f:	e8 67 0b 00 00       	call   e7b <dup>
      close(p[1]);   
     314:	58                   	pop    %eax
     315:	ff 75 f4             	push   -0xc(%ebp)
     318:	e8 0e 0b 00 00       	call   e2b <close>
      close(p[0]);
     31d:	58                   	pop    %eax
     31e:	ff 75 f0             	push   -0x10(%ebp)
     321:	e8 05 0b 00 00       	call   e2b <close>
      runcmd(pcmd->right);
     326:	58                   	pop    %eax
     327:	ff 73 08             	push   0x8(%ebx)
     32a:	e8 81 fe ff ff       	call   1b0 <runcmd>
     32f:	90                   	nop

00000330 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
     330:	55                   	push   %ebp
     331:	89 e5                	mov    %esp,%ebp
     333:	53                   	push   %ebx
     334:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     337:	6a 54                	push   $0x54
     339:	e8 62 0e 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     33e:	83 c4 0c             	add    $0xc,%esp
     341:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
     343:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     345:	6a 00                	push   $0x0
     347:	50                   	push   %eax
     348:	e8 33 09 00 00       	call   c80 <memset>
  cmd->type = EXEC;
     34d:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
     353:	89 d8                	mov    %ebx,%eax
     355:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     358:	c9                   	leave
     359:	c3                   	ret
     35a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00000360 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
     360:	55                   	push   %ebp
     361:	89 e5                	mov    %esp,%ebp
     363:	53                   	push   %ebx
     364:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
     367:	6a 18                	push   $0x18
     369:	e8 32 0e 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     36e:	83 c4 0c             	add    $0xc,%esp
     371:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     373:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     375:	6a 00                	push   $0x0
     377:	50                   	push   %eax
     378:	e8 03 09 00 00       	call   c80 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
     37d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
     380:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
     386:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
     389:	8b 45 0c             	mov    0xc(%ebp),%eax
     38c:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
     38f:	8b 45 10             	mov    0x10(%ebp),%eax
     392:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
     395:	8b 45 14             	mov    0x14(%ebp),%eax
     398:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
     39b:	8b 45 18             	mov    0x18(%ebp),%eax
     39e:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
     3a1:	89 d8                	mov    %ebx,%eax
     3a3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3a6:	c9                   	leave
     3a7:	c3                   	ret
     3a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     3af:	90                   	nop

000003b0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
     3b0:	55                   	push   %ebp
     3b1:	89 e5                	mov    %esp,%ebp
     3b3:	53                   	push   %ebx
     3b4:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3b7:	6a 0c                	push   $0xc
     3b9:	e8 e2 0d 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3be:	83 c4 0c             	add    $0xc,%esp
     3c1:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     3c3:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     3c5:	6a 00                	push   $0x0
     3c7:	50                   	push   %eax
     3c8:	e8 b3 08 00 00       	call   c80 <memset>
  cmd->type = PIPE;
  cmd->left = left;
     3cd:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
     3d0:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
     3d6:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     3d9:	8b 45 0c             	mov    0xc(%ebp),%eax
     3dc:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     3df:	89 d8                	mov    %ebx,%eax
     3e1:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     3e4:	c9                   	leave
     3e5:	c3                   	ret
     3e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     3ed:	8d 76 00             	lea    0x0(%esi),%esi

000003f0 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
     3f0:	55                   	push   %ebp
     3f1:	89 e5                	mov    %esp,%ebp
     3f3:	53                   	push   %ebx
     3f4:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     3f7:	6a 0c                	push   $0xc
     3f9:	e8 a2 0d 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     3fe:	83 c4 0c             	add    $0xc,%esp
     401:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     403:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     405:	6a 00                	push   $0x0
     407:	50                   	push   %eax
     408:	e8 73 08 00 00       	call   c80 <memset>
  cmd->type = LIST;
  cmd->left = left;
     40d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
     410:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
     416:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
     419:	8b 45 0c             	mov    0xc(%ebp),%eax
     41c:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
     41f:	89 d8                	mov    %ebx,%eax
     421:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     424:	c9                   	leave
     425:	c3                   	ret
     426:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     42d:	8d 76 00             	lea    0x0(%esi),%esi

00000430 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
     430:	55                   	push   %ebp
     431:	89 e5                	mov    %esp,%ebp
     433:	53                   	push   %ebx
     434:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
     437:	6a 08                	push   $0x8
     439:	e8 62 0d 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     43e:	83 c4 0c             	add    $0xc,%esp
     441:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
     443:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
     445:	6a 00                	push   $0x0
     447:	50                   	push   %eax
     448:	e8 33 08 00 00       	call   c80 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
     44d:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
     450:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
     456:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
     459:	89 d8                	mov    %ebx,%eax
     45b:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     45e:	c9                   	leave
     45f:	c3                   	ret

00000460 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
     460:	55                   	push   %ebp
     461:	89 e5                	mov    %esp,%ebp
     463:	57                   	push   %edi
     464:	56                   	push   %esi
     465:	53                   	push   %ebx
     466:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
     469:	8b 45 08             	mov    0x8(%ebp),%eax
{
     46c:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     46f:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
     472:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
     474:	39 df                	cmp    %ebx,%edi
     476:	72 0f                	jb     487 <gettoken+0x27>
     478:	eb 25                	jmp    49f <gettoken+0x3f>
     47a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    s++;
     480:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     483:	39 fb                	cmp    %edi,%ebx
     485:	74 18                	je     49f <gettoken+0x3f>
     487:	0f be 07             	movsbl (%edi),%eax
     48a:	83 ec 08             	sub    $0x8,%esp
     48d:	50                   	push   %eax
     48e:	68 78 19 00 00       	push   $0x1978
     493:	e8 08 08 00 00       	call   ca0 <strchr>
     498:	83 c4 10             	add    $0x10,%esp
     49b:	85 c0                	test   %eax,%eax
     49d:	75 e1                	jne    480 <gettoken+0x20>
  if(q)
     49f:	85 f6                	test   %esi,%esi
     4a1:	74 02                	je     4a5 <gettoken+0x45>
    *q = s;
     4a3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
     4a5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
     4a8:	3c 3c                	cmp    $0x3c,%al
     4aa:	0f 8f d0 00 00 00    	jg     580 <gettoken+0x120>
     4b0:	3c 3a                	cmp    $0x3a,%al
     4b2:	0f 8f bc 00 00 00    	jg     574 <gettoken+0x114>
     4b8:	84 c0                	test   %al,%al
     4ba:	75 44                	jne    500 <gettoken+0xa0>
     4bc:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
     4be:	8b 4d 14             	mov    0x14(%ebp),%ecx
     4c1:	85 c9                	test   %ecx,%ecx
     4c3:	74 05                	je     4ca <gettoken+0x6a>
    *eq = s;
     4c5:	8b 45 14             	mov    0x14(%ebp),%eax
     4c8:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
     4ca:	39 df                	cmp    %ebx,%edi
     4cc:	72 09                	jb     4d7 <gettoken+0x77>
     4ce:	eb 1f                	jmp    4ef <gettoken+0x8f>
    s++;
     4d0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
     4d3:	39 fb                	cmp    %edi,%ebx
     4d5:	74 18                	je     4ef <gettoken+0x8f>
     4d7:	0f be 07             	movsbl (%edi),%eax
     4da:	83 ec 08             	sub    $0x8,%esp
     4dd:	50                   	push   %eax
     4de:	68 78 19 00 00       	push   $0x1978
     4e3:	e8 b8 07 00 00       	call   ca0 <strchr>
     4e8:	83 c4 10             	add    $0x10,%esp
     4eb:	85 c0                	test   %eax,%eax
     4ed:	75 e1                	jne    4d0 <gettoken+0x70>
  *ps = s;
     4ef:	8b 45 08             	mov    0x8(%ebp),%eax
     4f2:	89 38                	mov    %edi,(%eax)
  return ret;
}
     4f4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     4f7:	89 f0                	mov    %esi,%eax
     4f9:	5b                   	pop    %ebx
     4fa:	5e                   	pop    %esi
     4fb:	5f                   	pop    %edi
     4fc:	5d                   	pop    %ebp
     4fd:	c3                   	ret
     4fe:	66 90                	xchg   %ax,%ax
  switch(*s){
     500:	79 66                	jns    568 <gettoken+0x108>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     502:	39 df                	cmp    %ebx,%edi
     504:	72 39                	jb     53f <gettoken+0xdf>
  if(eq)
     506:	8b 55 14             	mov    0x14(%ebp),%edx
     509:	85 d2                	test   %edx,%edx
     50b:	0f 84 b3 00 00 00    	je     5c4 <gettoken+0x164>
    *eq = s;
     511:	8b 45 14             	mov    0x14(%ebp),%eax
     514:	89 38                	mov    %edi,(%eax)
  while(s < es && strchr(whitespace, *s))
     516:	e9 a9 00 00 00       	jmp    5c4 <gettoken+0x164>
     51b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     51f:	90                   	nop
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     520:	0f be 07             	movsbl (%edi),%eax
     523:	83 ec 08             	sub    $0x8,%esp
     526:	50                   	push   %eax
     527:	68 70 19 00 00       	push   $0x1970
     52c:	e8 6f 07 00 00       	call   ca0 <strchr>
     531:	83 c4 10             	add    $0x10,%esp
     534:	85 c0                	test   %eax,%eax
     536:	75 1f                	jne    557 <gettoken+0xf7>
      s++;
     538:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
     53b:	39 fb                	cmp    %edi,%ebx
     53d:	74 77                	je     5b6 <gettoken+0x156>
     53f:	0f be 07             	movsbl (%edi),%eax
     542:	83 ec 08             	sub    $0x8,%esp
     545:	50                   	push   %eax
     546:	68 78 19 00 00       	push   $0x1978
     54b:	e8 50 07 00 00       	call   ca0 <strchr>
     550:	83 c4 10             	add    $0x10,%esp
     553:	85 c0                	test   %eax,%eax
     555:	74 c9                	je     520 <gettoken+0xc0>
    ret = 'a';
     557:	be 61 00 00 00       	mov    $0x61,%esi
     55c:	e9 5d ff ff ff       	jmp    4be <gettoken+0x5e>
     561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
     568:	3c 26                	cmp    $0x26,%al
     56a:	74 08                	je     574 <gettoken+0x114>
     56c:	8d 48 d8             	lea    -0x28(%eax),%ecx
     56f:	80 f9 01             	cmp    $0x1,%cl
     572:	77 8e                	ja     502 <gettoken+0xa2>
  ret = *s;
     574:	0f be f0             	movsbl %al,%esi
    s++;
     577:	83 c7 01             	add    $0x1,%edi
    break;
     57a:	e9 3f ff ff ff       	jmp    4be <gettoken+0x5e>
     57f:	90                   	nop
  switch(*s){
     580:	3c 3e                	cmp    $0x3e,%al
     582:	75 1c                	jne    5a0 <gettoken+0x140>
    if(*s == '>'){
     584:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
     588:	74 1f                	je     5a9 <gettoken+0x149>
    s++;
     58a:	83 c7 01             	add    $0x1,%edi
  ret = *s;
     58d:	be 3e 00 00 00       	mov    $0x3e,%esi
     592:	e9 27 ff ff ff       	jmp    4be <gettoken+0x5e>
     597:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     59e:	66 90                	xchg   %ax,%ax
  switch(*s){
     5a0:	3c 7c                	cmp    $0x7c,%al
     5a2:	74 d0                	je     574 <gettoken+0x114>
     5a4:	e9 59 ff ff ff       	jmp    502 <gettoken+0xa2>
      s++;
     5a9:	83 c7 02             	add    $0x2,%edi
      ret = '+';
     5ac:	be 2b 00 00 00       	mov    $0x2b,%esi
     5b1:	e9 08 ff ff ff       	jmp    4be <gettoken+0x5e>
  if(eq)
     5b6:	8b 45 14             	mov    0x14(%ebp),%eax
     5b9:	85 c0                	test   %eax,%eax
     5bb:	74 05                	je     5c2 <gettoken+0x162>
    *eq = s;
     5bd:	8b 45 14             	mov    0x14(%ebp),%eax
     5c0:	89 18                	mov    %ebx,(%eax)
      s++;
     5c2:	89 df                	mov    %ebx,%edi
    ret = 'a';
     5c4:	be 61 00 00 00       	mov    $0x61,%esi
     5c9:	e9 21 ff ff ff       	jmp    4ef <gettoken+0x8f>
     5ce:	66 90                	xchg   %ax,%ax

000005d0 <peek>:

int
peek(char **ps, char *es, char *toks)
{
     5d0:	55                   	push   %ebp
     5d1:	89 e5                	mov    %esp,%ebp
     5d3:	57                   	push   %edi
     5d4:	56                   	push   %esi
     5d5:	53                   	push   %ebx
     5d6:	83 ec 0c             	sub    $0xc,%esp
     5d9:	8b 7d 08             	mov    0x8(%ebp),%edi
     5dc:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
     5df:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
     5e1:	39 f3                	cmp    %esi,%ebx
     5e3:	72 12                	jb     5f7 <peek+0x27>
     5e5:	eb 28                	jmp    60f <peek+0x3f>
     5e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     5ee:	66 90                	xchg   %ax,%ax
    s++;
     5f0:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
     5f3:	39 de                	cmp    %ebx,%esi
     5f5:	74 18                	je     60f <peek+0x3f>
     5f7:	0f be 03             	movsbl (%ebx),%eax
     5fa:	83 ec 08             	sub    $0x8,%esp
     5fd:	50                   	push   %eax
     5fe:	68 78 19 00 00       	push   $0x1978
     603:	e8 98 06 00 00       	call   ca0 <strchr>
     608:	83 c4 10             	add    $0x10,%esp
     60b:	85 c0                	test   %eax,%eax
     60d:	75 e1                	jne    5f0 <peek+0x20>
  *ps = s;
     60f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
     611:	0f be 03             	movsbl (%ebx),%eax
     614:	31 d2                	xor    %edx,%edx
     616:	84 c0                	test   %al,%al
     618:	75 0e                	jne    628 <peek+0x58>
}
     61a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     61d:	89 d0                	mov    %edx,%eax
     61f:	5b                   	pop    %ebx
     620:	5e                   	pop    %esi
     621:	5f                   	pop    %edi
     622:	5d                   	pop    %ebp
     623:	c3                   	ret
     624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
     628:	83 ec 08             	sub    $0x8,%esp
     62b:	50                   	push   %eax
     62c:	ff 75 10             	push   0x10(%ebp)
     62f:	e8 6c 06 00 00       	call   ca0 <strchr>
     634:	83 c4 10             	add    $0x10,%esp
     637:	31 d2                	xor    %edx,%edx
     639:	85 c0                	test   %eax,%eax
     63b:	0f 95 c2             	setne  %dl
}
     63e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     641:	5b                   	pop    %ebx
     642:	89 d0                	mov    %edx,%eax
     644:	5e                   	pop    %esi
     645:	5f                   	pop    %edi
     646:	5d                   	pop    %ebp
     647:	c3                   	ret
     648:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     64f:	90                   	nop

00000650 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
     650:	55                   	push   %ebp
     651:	89 e5                	mov    %esp,%ebp
     653:	57                   	push   %edi
     654:	56                   	push   %esi
     655:	53                   	push   %ebx
     656:	83 ec 2c             	sub    $0x2c,%esp
     659:	8b 75 0c             	mov    0xc(%ebp),%esi
     65c:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
     65f:	90                   	nop
     660:	83 ec 04             	sub    $0x4,%esp
     663:	68 c9 12 00 00       	push   $0x12c9
     668:	53                   	push   %ebx
     669:	56                   	push   %esi
     66a:	e8 61 ff ff ff       	call   5d0 <peek>
     66f:	83 c4 10             	add    $0x10,%esp
     672:	85 c0                	test   %eax,%eax
     674:	0f 84 f6 00 00 00    	je     770 <parseredirs+0x120>
    tok = gettoken(ps, es, 0, 0);
     67a:	6a 00                	push   $0x0
     67c:	6a 00                	push   $0x0
     67e:	53                   	push   %ebx
     67f:	56                   	push   %esi
     680:	e8 db fd ff ff       	call   460 <gettoken>
     685:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
     687:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     68a:	50                   	push   %eax
     68b:	8d 45 e0             	lea    -0x20(%ebp),%eax
     68e:	50                   	push   %eax
     68f:	53                   	push   %ebx
     690:	56                   	push   %esi
     691:	e8 ca fd ff ff       	call   460 <gettoken>
     696:	83 c4 20             	add    $0x20,%esp
     699:	83 f8 61             	cmp    $0x61,%eax
     69c:	0f 85 d9 00 00 00    	jne    77b <parseredirs+0x12b>
      panic("missing file for redirection");
    switch(tok){
     6a2:	83 ff 3c             	cmp    $0x3c,%edi
     6a5:	74 69                	je     710 <parseredirs+0xc0>
     6a7:	83 ff 3e             	cmp    $0x3e,%edi
     6aa:	74 05                	je     6b1 <parseredirs+0x61>
     6ac:	83 ff 2b             	cmp    $0x2b,%edi
     6af:	75 af                	jne    660 <parseredirs+0x10>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6b1:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     6b4:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     6b7:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
     6ba:	89 55 d0             	mov    %edx,-0x30(%ebp)
     6bd:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     6c0:	6a 18                	push   $0x18
     6c2:	e8 d9 0a 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     6c7:	83 c4 0c             	add    $0xc,%esp
     6ca:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     6cc:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     6ce:	6a 00                	push   $0x0
     6d0:	50                   	push   %eax
     6d1:	e8 aa 05 00 00       	call   c80 <memset>
  cmd->type = REDIR;
     6d6:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
  cmd->cmd = subcmd;
     6dc:	8b 45 08             	mov    0x8(%ebp),%eax
      break;
     6df:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     6e2:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     6e5:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
     6e8:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     6eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->mode = mode;
     6ee:	c7 47 10 01 02 00 00 	movl   $0x201,0x10(%edi)
  cmd->efile = efile;
     6f5:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->fd = fd;
     6f8:	c7 47 14 01 00 00 00 	movl   $0x1,0x14(%edi)
      break;
     6ff:	89 7d 08             	mov    %edi,0x8(%ebp)
     702:	e9 59 ff ff ff       	jmp    660 <parseredirs+0x10>
     707:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     70e:	66 90                	xchg   %ax,%ax
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     710:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     713:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  cmd = malloc(sizeof(*cmd));
     716:	83 ec 0c             	sub    $0xc,%esp
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
     719:	89 55 d0             	mov    %edx,-0x30(%ebp)
     71c:	89 4d d4             	mov    %ecx,-0x2c(%ebp)
  cmd = malloc(sizeof(*cmd));
     71f:	6a 18                	push   $0x18
     721:	e8 7a 0a 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     726:	83 c4 0c             	add    $0xc,%esp
     729:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
     72b:	89 c7                	mov    %eax,%edi
  memset(cmd, 0, sizeof(*cmd));
     72d:	6a 00                	push   $0x0
     72f:	50                   	push   %eax
     730:	e8 4b 05 00 00       	call   c80 <memset>
  cmd->cmd = subcmd;
     735:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->file = file;
     738:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
      break;
     73b:	89 7d 08             	mov    %edi,0x8(%ebp)
  cmd->efile = efile;
     73e:	8b 55 d0             	mov    -0x30(%ebp),%edx
  cmd->type = REDIR;
     741:	c7 07 02 00 00 00    	movl   $0x2,(%edi)
      break;
     747:	83 c4 10             	add    $0x10,%esp
  cmd->cmd = subcmd;
     74a:	89 47 04             	mov    %eax,0x4(%edi)
  cmd->file = file;
     74d:	89 4f 08             	mov    %ecx,0x8(%edi)
  cmd->efile = efile;
     750:	89 57 0c             	mov    %edx,0xc(%edi)
  cmd->mode = mode;
     753:	c7 47 10 00 00 00 00 	movl   $0x0,0x10(%edi)
  cmd->fd = fd;
     75a:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%edi)
      break;
     761:	e9 fa fe ff ff       	jmp    660 <parseredirs+0x10>
     766:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     76d:	8d 76 00             	lea    0x0(%esi),%esi
    }
  }
  return cmd;
}
     770:	8b 45 08             	mov    0x8(%ebp),%eax
     773:	8d 65 f4             	lea    -0xc(%ebp),%esp
     776:	5b                   	pop    %ebx
     777:	5e                   	pop    %esi
     778:	5f                   	pop    %edi
     779:	5d                   	pop    %ebp
     77a:	c3                   	ret
      panic("missing file for redirection");
     77b:	83 ec 0c             	sub    $0xc,%esp
     77e:	68 ac 12 00 00       	push   $0x12ac
     783:	e8 e8 f9 ff ff       	call   170 <panic>
     788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     78f:	90                   	nop

00000790 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
     790:	55                   	push   %ebp
     791:	89 e5                	mov    %esp,%ebp
     793:	57                   	push   %edi
     794:	56                   	push   %esi
     795:	53                   	push   %ebx
     796:	83 ec 30             	sub    $0x30,%esp
     799:	8b 5d 08             	mov    0x8(%ebp),%ebx
     79c:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
     79f:	68 cc 12 00 00       	push   $0x12cc
     7a4:	56                   	push   %esi
     7a5:	53                   	push   %ebx
     7a6:	e8 25 fe ff ff       	call   5d0 <peek>
     7ab:	83 c4 10             	add    $0x10,%esp
     7ae:	85 c0                	test   %eax,%eax
     7b0:	0f 85 aa 00 00 00    	jne    860 <parseexec+0xd0>
  cmd = malloc(sizeof(*cmd));
     7b6:	83 ec 0c             	sub    $0xc,%esp
     7b9:	89 c7                	mov    %eax,%edi
     7bb:	6a 54                	push   $0x54
     7bd:	e8 de 09 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     7c2:	83 c4 0c             	add    $0xc,%esp
     7c5:	6a 54                	push   $0x54
     7c7:	6a 00                	push   $0x0
     7c9:	89 45 d0             	mov    %eax,-0x30(%ebp)
     7cc:	50                   	push   %eax
     7cd:	e8 ae 04 00 00       	call   c80 <memset>
  cmd->type = EXEC;
     7d2:	8b 45 d0             	mov    -0x30(%ebp),%eax

  ret = execcmd();
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
     7d5:	83 c4 0c             	add    $0xc,%esp
  cmd->type = EXEC;
     7d8:	c7 00 01 00 00 00    	movl   $0x1,(%eax)
  ret = parseredirs(ret, ps, es);
     7de:	56                   	push   %esi
     7df:	53                   	push   %ebx
     7e0:	50                   	push   %eax
     7e1:	e8 6a fe ff ff       	call   650 <parseredirs>
  while(!peek(ps, es, "|)&;")){
     7e6:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
     7e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     7ec:	eb 15                	jmp    803 <parseexec+0x73>
     7ee:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
     7f0:	83 ec 04             	sub    $0x4,%esp
     7f3:	56                   	push   %esi
     7f4:	53                   	push   %ebx
     7f5:	ff 75 d4             	push   -0x2c(%ebp)
     7f8:	e8 53 fe ff ff       	call   650 <parseredirs>
     7fd:	83 c4 10             	add    $0x10,%esp
     800:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
     803:	83 ec 04             	sub    $0x4,%esp
     806:	68 e3 12 00 00       	push   $0x12e3
     80b:	56                   	push   %esi
     80c:	53                   	push   %ebx
     80d:	e8 be fd ff ff       	call   5d0 <peek>
     812:	83 c4 10             	add    $0x10,%esp
     815:	85 c0                	test   %eax,%eax
     817:	75 5f                	jne    878 <parseexec+0xe8>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
     819:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     81c:	50                   	push   %eax
     81d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     820:	50                   	push   %eax
     821:	56                   	push   %esi
     822:	53                   	push   %ebx
     823:	e8 38 fc ff ff       	call   460 <gettoken>
     828:	83 c4 10             	add    $0x10,%esp
     82b:	85 c0                	test   %eax,%eax
     82d:	74 49                	je     878 <parseexec+0xe8>
    if(tok != 'a')
     82f:	83 f8 61             	cmp    $0x61,%eax
     832:	75 62                	jne    896 <parseexec+0x106>
    cmd->argv[argc] = q;
     834:	8b 45 e0             	mov    -0x20(%ebp),%eax
     837:	8b 55 d0             	mov    -0x30(%ebp),%edx
     83a:	89 44 ba 04          	mov    %eax,0x4(%edx,%edi,4)
    cmd->eargv[argc] = eq;
     83e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     841:	89 44 ba 2c          	mov    %eax,0x2c(%edx,%edi,4)
    argc++;
     845:	83 c7 01             	add    $0x1,%edi
    if(argc >= MAXARGS)
     848:	83 ff 0a             	cmp    $0xa,%edi
     84b:	75 a3                	jne    7f0 <parseexec+0x60>
      panic("too many args");
     84d:	83 ec 0c             	sub    $0xc,%esp
     850:	68 d5 12 00 00       	push   $0x12d5
     855:	e8 16 f9 ff ff       	call   170 <panic>
     85a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
     860:	89 75 0c             	mov    %esi,0xc(%ebp)
     863:	89 5d 08             	mov    %ebx,0x8(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
     866:	8d 65 f4             	lea    -0xc(%ebp),%esp
     869:	5b                   	pop    %ebx
     86a:	5e                   	pop    %esi
     86b:	5f                   	pop    %edi
     86c:	5d                   	pop    %ebp
    return parseblock(ps, es);
     86d:	e9 ae 01 00 00       	jmp    a20 <parseblock>
     872:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  cmd->argv[argc] = 0;
     878:	8b 45 d0             	mov    -0x30(%ebp),%eax
     87b:	c7 44 b8 04 00 00 00 	movl   $0x0,0x4(%eax,%edi,4)
     882:	00 
  cmd->eargv[argc] = 0;
     883:	c7 44 b8 2c 00 00 00 	movl   $0x0,0x2c(%eax,%edi,4)
     88a:	00 
}
     88b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     88e:	8d 65 f4             	lea    -0xc(%ebp),%esp
     891:	5b                   	pop    %ebx
     892:	5e                   	pop    %esi
     893:	5f                   	pop    %edi
     894:	5d                   	pop    %ebp
     895:	c3                   	ret
      panic("syntax");
     896:	83 ec 0c             	sub    $0xc,%esp
     899:	68 ce 12 00 00       	push   $0x12ce
     89e:	e8 cd f8 ff ff       	call   170 <panic>
     8a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     8aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000008b0 <parsepipe>:
{
     8b0:	55                   	push   %ebp
     8b1:	89 e5                	mov    %esp,%ebp
     8b3:	57                   	push   %edi
     8b4:	56                   	push   %esi
     8b5:	53                   	push   %ebx
     8b6:	83 ec 14             	sub    $0x14,%esp
     8b9:	8b 75 08             	mov    0x8(%ebp),%esi
     8bc:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
     8bf:	57                   	push   %edi
     8c0:	56                   	push   %esi
     8c1:	e8 ca fe ff ff       	call   790 <parseexec>
  if(peek(ps, es, "|")){
     8c6:	83 c4 0c             	add    $0xc,%esp
     8c9:	68 e8 12 00 00       	push   $0x12e8
  cmd = parseexec(ps, es);
     8ce:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
     8d0:	57                   	push   %edi
     8d1:	56                   	push   %esi
     8d2:	e8 f9 fc ff ff       	call   5d0 <peek>
     8d7:	83 c4 10             	add    $0x10,%esp
     8da:	85 c0                	test   %eax,%eax
     8dc:	75 12                	jne    8f0 <parsepipe+0x40>
}
     8de:	8d 65 f4             	lea    -0xc(%ebp),%esp
     8e1:	89 d8                	mov    %ebx,%eax
     8e3:	5b                   	pop    %ebx
     8e4:	5e                   	pop    %esi
     8e5:	5f                   	pop    %edi
     8e6:	5d                   	pop    %ebp
     8e7:	c3                   	ret
     8e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     8ef:	90                   	nop
    gettoken(ps, es, 0, 0);
     8f0:	6a 00                	push   $0x0
     8f2:	6a 00                	push   $0x0
     8f4:	57                   	push   %edi
     8f5:	56                   	push   %esi
     8f6:	e8 65 fb ff ff       	call   460 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
     8fb:	58                   	pop    %eax
     8fc:	5a                   	pop    %edx
     8fd:	57                   	push   %edi
     8fe:	56                   	push   %esi
     8ff:	e8 ac ff ff ff       	call   8b0 <parsepipe>
  cmd = malloc(sizeof(*cmd));
     904:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = pipecmd(cmd, parsepipe(ps, es));
     90b:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     90d:	e8 8e 08 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     912:	83 c4 0c             	add    $0xc,%esp
     915:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     917:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     919:	6a 00                	push   $0x0
     91b:	50                   	push   %eax
     91c:	e8 5f 03 00 00       	call   c80 <memset>
  cmd->left = left;
     921:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     924:	83 c4 10             	add    $0x10,%esp
     927:	89 f3                	mov    %esi,%ebx
  cmd->type = PIPE;
     929:	c7 06 03 00 00 00    	movl   $0x3,(%esi)
}
     92f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     931:	89 7e 08             	mov    %edi,0x8(%esi)
}
     934:	8d 65 f4             	lea    -0xc(%ebp),%esp
     937:	5b                   	pop    %ebx
     938:	5e                   	pop    %esi
     939:	5f                   	pop    %edi
     93a:	5d                   	pop    %ebp
     93b:	c3                   	ret
     93c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000940 <parseline>:
{
     940:	55                   	push   %ebp
     941:	89 e5                	mov    %esp,%ebp
     943:	57                   	push   %edi
     944:	56                   	push   %esi
     945:	53                   	push   %ebx
     946:	83 ec 24             	sub    $0x24,%esp
     949:	8b 75 08             	mov    0x8(%ebp),%esi
     94c:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
     94f:	57                   	push   %edi
     950:	56                   	push   %esi
     951:	e8 5a ff ff ff       	call   8b0 <parsepipe>
  while(peek(ps, es, "&")){
     956:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
     959:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
     95b:	eb 3b                	jmp    998 <parseline+0x58>
     95d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
     960:	6a 00                	push   $0x0
     962:	6a 00                	push   $0x0
     964:	57                   	push   %edi
     965:	56                   	push   %esi
     966:	e8 f5 fa ff ff       	call   460 <gettoken>
  cmd = malloc(sizeof(*cmd));
     96b:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
     972:	e8 29 08 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     977:	83 c4 0c             	add    $0xc,%esp
     97a:	6a 08                	push   $0x8
     97c:	6a 00                	push   $0x0
     97e:	50                   	push   %eax
     97f:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     982:	e8 f9 02 00 00       	call   c80 <memset>
  cmd->type = BACK;
     987:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  cmd->cmd = subcmd;
     98a:	83 c4 10             	add    $0x10,%esp
  cmd->type = BACK;
     98d:	c7 02 05 00 00 00    	movl   $0x5,(%edx)
  cmd->cmd = subcmd;
     993:	89 5a 04             	mov    %ebx,0x4(%edx)
     996:	89 d3                	mov    %edx,%ebx
  while(peek(ps, es, "&")){
     998:	83 ec 04             	sub    $0x4,%esp
     99b:	68 ea 12 00 00       	push   $0x12ea
     9a0:	57                   	push   %edi
     9a1:	56                   	push   %esi
     9a2:	e8 29 fc ff ff       	call   5d0 <peek>
     9a7:	83 c4 10             	add    $0x10,%esp
     9aa:	85 c0                	test   %eax,%eax
     9ac:	75 b2                	jne    960 <parseline+0x20>
  if(peek(ps, es, ";")){
     9ae:	83 ec 04             	sub    $0x4,%esp
     9b1:	68 e6 12 00 00       	push   $0x12e6
     9b6:	57                   	push   %edi
     9b7:	56                   	push   %esi
     9b8:	e8 13 fc ff ff       	call   5d0 <peek>
     9bd:	83 c4 10             	add    $0x10,%esp
     9c0:	85 c0                	test   %eax,%eax
     9c2:	75 0c                	jne    9d0 <parseline+0x90>
}
     9c4:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9c7:	89 d8                	mov    %ebx,%eax
     9c9:	5b                   	pop    %ebx
     9ca:	5e                   	pop    %esi
     9cb:	5f                   	pop    %edi
     9cc:	5d                   	pop    %ebp
     9cd:	c3                   	ret
     9ce:	66 90                	xchg   %ax,%ax
    gettoken(ps, es, 0, 0);
     9d0:	6a 00                	push   $0x0
     9d2:	6a 00                	push   $0x0
     9d4:	57                   	push   %edi
     9d5:	56                   	push   %esi
     9d6:	e8 85 fa ff ff       	call   460 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
     9db:	58                   	pop    %eax
     9dc:	5a                   	pop    %edx
     9dd:	57                   	push   %edi
     9de:	56                   	push   %esi
     9df:	e8 5c ff ff ff       	call   940 <parseline>
  cmd = malloc(sizeof(*cmd));
     9e4:	c7 04 24 0c 00 00 00 	movl   $0xc,(%esp)
    cmd = listcmd(cmd, parseline(ps, es));
     9eb:	89 c7                	mov    %eax,%edi
  cmd = malloc(sizeof(*cmd));
     9ed:	e8 ae 07 00 00       	call   11a0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
     9f2:	83 c4 0c             	add    $0xc,%esp
     9f5:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
     9f7:	89 c6                	mov    %eax,%esi
  memset(cmd, 0, sizeof(*cmd));
     9f9:	6a 00                	push   $0x0
     9fb:	50                   	push   %eax
     9fc:	e8 7f 02 00 00       	call   c80 <memset>
  cmd->left = left;
     a01:	89 5e 04             	mov    %ebx,0x4(%esi)
  cmd->right = right;
     a04:	83 c4 10             	add    $0x10,%esp
     a07:	89 f3                	mov    %esi,%ebx
  cmd->type = LIST;
     a09:	c7 06 04 00 00 00    	movl   $0x4,(%esi)
}
     a0f:	89 d8                	mov    %ebx,%eax
  cmd->right = right;
     a11:	89 7e 08             	mov    %edi,0x8(%esi)
}
     a14:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a17:	5b                   	pop    %ebx
     a18:	5e                   	pop    %esi
     a19:	5f                   	pop    %edi
     a1a:	5d                   	pop    %ebp
     a1b:	c3                   	ret
     a1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000a20 <parseblock>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
     a26:	83 ec 10             	sub    $0x10,%esp
     a29:	8b 5d 08             	mov    0x8(%ebp),%ebx
     a2c:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
     a2f:	68 cc 12 00 00       	push   $0x12cc
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	e8 95 fb ff ff       	call   5d0 <peek>
     a3b:	83 c4 10             	add    $0x10,%esp
     a3e:	85 c0                	test   %eax,%eax
     a40:	74 4a                	je     a8c <parseblock+0x6c>
  gettoken(ps, es, 0, 0);
     a42:	6a 00                	push   $0x0
     a44:	6a 00                	push   $0x0
     a46:	56                   	push   %esi
     a47:	53                   	push   %ebx
     a48:	e8 13 fa ff ff       	call   460 <gettoken>
  cmd = parseline(ps, es);
     a4d:	58                   	pop    %eax
     a4e:	5a                   	pop    %edx
     a4f:	56                   	push   %esi
     a50:	53                   	push   %ebx
     a51:	e8 ea fe ff ff       	call   940 <parseline>
  if(!peek(ps, es, ")"))
     a56:	83 c4 0c             	add    $0xc,%esp
     a59:	68 08 13 00 00       	push   $0x1308
  cmd = parseline(ps, es);
     a5e:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
     a60:	56                   	push   %esi
     a61:	53                   	push   %ebx
     a62:	e8 69 fb ff ff       	call   5d0 <peek>
     a67:	83 c4 10             	add    $0x10,%esp
     a6a:	85 c0                	test   %eax,%eax
     a6c:	74 2b                	je     a99 <parseblock+0x79>
  gettoken(ps, es, 0, 0);
     a6e:	6a 00                	push   $0x0
     a70:	6a 00                	push   $0x0
     a72:	56                   	push   %esi
     a73:	53                   	push   %ebx
     a74:	e8 e7 f9 ff ff       	call   460 <gettoken>
  cmd = parseredirs(cmd, ps, es);
     a79:	83 c4 0c             	add    $0xc,%esp
     a7c:	56                   	push   %esi
     a7d:	53                   	push   %ebx
     a7e:	57                   	push   %edi
     a7f:	e8 cc fb ff ff       	call   650 <parseredirs>
}
     a84:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a87:	5b                   	pop    %ebx
     a88:	5e                   	pop    %esi
     a89:	5f                   	pop    %edi
     a8a:	5d                   	pop    %ebp
     a8b:	c3                   	ret
    panic("parseblock");
     a8c:	83 ec 0c             	sub    $0xc,%esp
     a8f:	68 ec 12 00 00       	push   $0x12ec
     a94:	e8 d7 f6 ff ff       	call   170 <panic>
    panic("syntax - missing )");
     a99:	83 ec 0c             	sub    $0xc,%esp
     a9c:	68 f7 12 00 00       	push   $0x12f7
     aa1:	e8 ca f6 ff ff       	call   170 <panic>
     aa6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     aad:	8d 76 00             	lea    0x0(%esi),%esi

00000ab0 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
     ab0:	55                   	push   %ebp
     ab1:	89 e5                	mov    %esp,%ebp
     ab3:	53                   	push   %ebx
     ab4:	83 ec 04             	sub    $0x4,%esp
     ab7:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
     aba:	85 db                	test   %ebx,%ebx
     abc:	0f 84 7e 00 00 00    	je     b40 <nulterminate+0x90>
    return 0;

  switch(cmd->type){
     ac2:	83 3b 05             	cmpl   $0x5,(%ebx)
     ac5:	77 20                	ja     ae7 <nulterminate+0x37>
     ac7:	8b 03                	mov    (%ebx),%eax
     ac9:	ff 24 85 48 13 00 00 	jmp    *0x1348(,%eax,4)
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
     ad0:	83 ec 0c             	sub    $0xc,%esp
     ad3:	ff 73 04             	push   0x4(%ebx)
     ad6:	e8 d5 ff ff ff       	call   ab0 <nulterminate>
    nulterminate(lcmd->right);
     adb:	58                   	pop    %eax
     adc:	ff 73 08             	push   0x8(%ebx)
     adf:	e8 cc ff ff ff       	call   ab0 <nulterminate>
    break;
     ae4:	83 c4 10             	add    $0x10,%esp
    return 0;
     ae7:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
     ae9:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     aec:	c9                   	leave
     aed:	c3                   	ret
     aee:	66 90                	xchg   %ax,%ax
    nulterminate(bcmd->cmd);
     af0:	83 ec 0c             	sub    $0xc,%esp
     af3:	ff 73 04             	push   0x4(%ebx)
     af6:	e8 b5 ff ff ff       	call   ab0 <nulterminate>
    break;
     afb:	83 c4 10             	add    $0x10,%esp
     afe:	eb e7                	jmp    ae7 <nulterminate+0x37>
    for(i=0; ecmd->argv[i]; i++)
     b00:	8b 4b 04             	mov    0x4(%ebx),%ecx
     b03:	8d 43 08             	lea    0x8(%ebx),%eax
     b06:	85 c9                	test   %ecx,%ecx
     b08:	74 dd                	je     ae7 <nulterminate+0x37>
     b0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
     b10:	8b 50 24             	mov    0x24(%eax),%edx
    for(i=0; ecmd->argv[i]; i++)
     b13:	83 c0 04             	add    $0x4,%eax
      *ecmd->eargv[i] = 0;
     b16:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
     b19:	8b 50 fc             	mov    -0x4(%eax),%edx
     b1c:	85 d2                	test   %edx,%edx
     b1e:	75 f0                	jne    b10 <nulterminate+0x60>
     b20:	eb c5                	jmp    ae7 <nulterminate+0x37>
     b22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    nulterminate(rcmd->cmd);
     b28:	83 ec 0c             	sub    $0xc,%esp
     b2b:	ff 73 04             	push   0x4(%ebx)
     b2e:	e8 7d ff ff ff       	call   ab0 <nulterminate>
    *rcmd->efile = 0;
     b33:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
     b36:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
     b39:	c6 00 00             	movb   $0x0,(%eax)
    break;
     b3c:	eb a9                	jmp    ae7 <nulterminate+0x37>
     b3e:	66 90                	xchg   %ax,%ax
    return 0;
     b40:	31 c0                	xor    %eax,%eax
     b42:	eb a5                	jmp    ae9 <nulterminate+0x39>
     b44:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     b4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b4f:	90                   	nop

00000b50 <parsecmd>:
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	57                   	push   %edi
     b54:	56                   	push   %esi
  cmd = parseline(&s, es);
     b55:	8d 7d 08             	lea    0x8(%ebp),%edi
{
     b58:	53                   	push   %ebx
     b59:	83 ec 18             	sub    $0x18,%esp
  es = s + strlen(s);
     b5c:	8b 5d 08             	mov    0x8(%ebp),%ebx
     b5f:	53                   	push   %ebx
     b60:	e8 eb 00 00 00       	call   c50 <strlen>
  cmd = parseline(&s, es);
     b65:	59                   	pop    %ecx
     b66:	5e                   	pop    %esi
  es = s + strlen(s);
     b67:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
     b69:	53                   	push   %ebx
     b6a:	57                   	push   %edi
     b6b:	e8 d0 fd ff ff       	call   940 <parseline>
  peek(&s, es, "");
     b70:	83 c4 0c             	add    $0xc,%esp
     b73:	68 a6 12 00 00       	push   $0x12a6
  cmd = parseline(&s, es);
     b78:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
     b7a:	53                   	push   %ebx
     b7b:	57                   	push   %edi
     b7c:	e8 4f fa ff ff       	call   5d0 <peek>
  if(s != es){
     b81:	8b 45 08             	mov    0x8(%ebp),%eax
     b84:	83 c4 10             	add    $0x10,%esp
     b87:	39 d8                	cmp    %ebx,%eax
     b89:	75 13                	jne    b9e <parsecmd+0x4e>
  nulterminate(cmd);
     b8b:	83 ec 0c             	sub    $0xc,%esp
     b8e:	56                   	push   %esi
     b8f:	e8 1c ff ff ff       	call   ab0 <nulterminate>
}
     b94:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b97:	89 f0                	mov    %esi,%eax
     b99:	5b                   	pop    %ebx
     b9a:	5e                   	pop    %esi
     b9b:	5f                   	pop    %edi
     b9c:	5d                   	pop    %ebp
     b9d:	c3                   	ret
    printf(2, "leftovers: %s\n", s);
     b9e:	52                   	push   %edx
     b9f:	50                   	push   %eax
     ba0:	68 0a 13 00 00       	push   $0x130a
     ba5:	6a 02                	push   $0x2
     ba7:	e8 b4 03 00 00       	call   f60 <printf>
    panic("syntax");
     bac:	c7 04 24 ce 12 00 00 	movl   $0x12ce,(%esp)
     bb3:	e8 b8 f5 ff ff       	call   170 <panic>
     bb8:	66 90                	xchg   %ax,%ax
     bba:	66 90                	xchg   %ax,%ax
     bbc:	66 90                	xchg   %ax,%ax
     bbe:	66 90                	xchg   %ax,%ax

00000bc0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, char *t)
{
     bc0:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     bc1:	31 c0                	xor    %eax,%eax
{
     bc3:	89 e5                	mov    %esp,%ebp
     bc5:	53                   	push   %ebx
     bc6:	8b 4d 08             	mov    0x8(%ebp),%ecx
     bc9:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     bcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((*s++ = *t++) != 0)
     bd0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
     bd4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
     bd7:	83 c0 01             	add    $0x1,%eax
     bda:	84 d2                	test   %dl,%dl
     bdc:	75 f2                	jne    bd0 <strcpy+0x10>
    ;
  return os;
}
     bde:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     be1:	89 c8                	mov    %ecx,%eax
     be3:	c9                   	leave
     be4:	c3                   	ret
     be5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     bec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000bf0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     bf0:	55                   	push   %ebp
     bf1:	89 e5                	mov    %esp,%ebp
     bf3:	53                   	push   %ebx
     bf4:	8b 55 08             	mov    0x8(%ebp),%edx
     bf7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     bfa:	0f b6 02             	movzbl (%edx),%eax
     bfd:	84 c0                	test   %al,%al
     bff:	75 17                	jne    c18 <strcmp+0x28>
     c01:	eb 3a                	jmp    c3d <strcmp+0x4d>
     c03:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c07:	90                   	nop
     c08:	0f b6 42 01          	movzbl 0x1(%edx),%eax
    p++, q++;
     c0c:	83 c2 01             	add    $0x1,%edx
     c0f:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
     c12:	84 c0                	test   %al,%al
     c14:	74 1a                	je     c30 <strcmp+0x40>
    p++, q++;
     c16:	89 d9                	mov    %ebx,%ecx
  while(*p && *p == *q)
     c18:	0f b6 19             	movzbl (%ecx),%ebx
     c1b:	38 c3                	cmp    %al,%bl
     c1d:	74 e9                	je     c08 <strcmp+0x18>
  return (uchar)*p - (uchar)*q;
     c1f:	29 d8                	sub    %ebx,%eax
}
     c21:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c24:	c9                   	leave
     c25:	c3                   	ret
     c26:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c2d:	8d 76 00             	lea    0x0(%esi),%esi
  return (uchar)*p - (uchar)*q;
     c30:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
     c34:	31 c0                	xor    %eax,%eax
     c36:	29 d8                	sub    %ebx,%eax
}
     c38:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     c3b:	c9                   	leave
     c3c:	c3                   	ret
  return (uchar)*p - (uchar)*q;
     c3d:	0f b6 19             	movzbl (%ecx),%ebx
     c40:	31 c0                	xor    %eax,%eax
     c42:	eb db                	jmp    c1f <strcmp+0x2f>
     c44:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c4b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c4f:	90                   	nop

00000c50 <strlen>:

uint
strlen(char *s)
{
     c50:	55                   	push   %ebp
     c51:	89 e5                	mov    %esp,%ebp
     c53:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
     c56:	80 3a 00             	cmpb   $0x0,(%edx)
     c59:	74 15                	je     c70 <strlen+0x20>
     c5b:	31 c0                	xor    %eax,%eax
     c5d:	8d 76 00             	lea    0x0(%esi),%esi
     c60:	83 c0 01             	add    $0x1,%eax
     c63:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
     c67:	89 c1                	mov    %eax,%ecx
     c69:	75 f5                	jne    c60 <strlen+0x10>
    ;
  return n;
}
     c6b:	89 c8                	mov    %ecx,%eax
     c6d:	5d                   	pop    %ebp
     c6e:	c3                   	ret
     c6f:	90                   	nop
  for(n = 0; s[n]; n++)
     c70:	31 c9                	xor    %ecx,%ecx
}
     c72:	5d                   	pop    %ebp
     c73:	89 c8                	mov    %ecx,%eax
     c75:	c3                   	ret
     c76:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c7d:	8d 76 00             	lea    0x0(%esi),%esi

00000c80 <memset>:

void*
memset(void *dst, int c, uint n)
{
     c80:	55                   	push   %ebp
     c81:	89 e5                	mov    %esp,%ebp
     c83:	57                   	push   %edi
     c84:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     c87:	8b 4d 10             	mov    0x10(%ebp),%ecx
     c8a:	8b 45 0c             	mov    0xc(%ebp),%eax
     c8d:	89 d7                	mov    %edx,%edi
     c8f:	fc                   	cld
     c90:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     c92:	8b 7d fc             	mov    -0x4(%ebp),%edi
     c95:	89 d0                	mov    %edx,%eax
     c97:	c9                   	leave
     c98:	c3                   	ret
     c99:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ca0 <strchr>:

char*
strchr(const char *s, char c)
{
     ca0:	55                   	push   %ebp
     ca1:	89 e5                	mov    %esp,%ebp
     ca3:	8b 45 08             	mov    0x8(%ebp),%eax
     ca6:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
     caa:	0f b6 10             	movzbl (%eax),%edx
     cad:	84 d2                	test   %dl,%dl
     caf:	75 12                	jne    cc3 <strchr+0x23>
     cb1:	eb 1d                	jmp    cd0 <strchr+0x30>
     cb3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cb7:	90                   	nop
     cb8:	0f b6 50 01          	movzbl 0x1(%eax),%edx
     cbc:	83 c0 01             	add    $0x1,%eax
     cbf:	84 d2                	test   %dl,%dl
     cc1:	74 0d                	je     cd0 <strchr+0x30>
    if(*s == c)
     cc3:	38 d1                	cmp    %dl,%cl
     cc5:	75 f1                	jne    cb8 <strchr+0x18>
      return (char*)s;
  return 0;
}
     cc7:	5d                   	pop    %ebp
     cc8:	c3                   	ret
     cc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
     cd0:	31 c0                	xor    %eax,%eax
}
     cd2:	5d                   	pop    %ebp
     cd3:	c3                   	ret
     cd4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cdb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     cdf:	90                   	nop

00000ce0 <gets>:

char*
gets(char *buf, int max)
{
     ce0:	55                   	push   %ebp
     ce1:	89 e5                	mov    %esp,%ebp
     ce3:	57                   	push   %edi
     ce4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    cc = read(0, &c, 1);
     ce5:	8d 75 e7             	lea    -0x19(%ebp),%esi
{
     ce8:	53                   	push   %ebx
  for(i=0; i+1 < max; ){
     ce9:	31 db                	xor    %ebx,%ebx
{
     ceb:	83 ec 1c             	sub    $0x1c,%esp
  for(i=0; i+1 < max; ){
     cee:	eb 27                	jmp    d17 <gets+0x37>
    cc = read(0, &c, 1);
     cf0:	83 ec 04             	sub    $0x4,%esp
     cf3:	6a 01                	push   $0x1
     cf5:	56                   	push   %esi
     cf6:	6a 00                	push   $0x0
     cf8:	e8 1e 01 00 00       	call   e1b <read>
    if(cc < 1)
     cfd:	83 c4 10             	add    $0x10,%esp
     d00:	85 c0                	test   %eax,%eax
     d02:	7e 1d                	jle    d21 <gets+0x41>
      break;
    buf[i++] = c;
     d04:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     d08:	8b 55 08             	mov    0x8(%ebp),%edx
     d0b:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
     d0f:	3c 0a                	cmp    $0xa,%al
     d11:	74 10                	je     d23 <gets+0x43>
     d13:	3c 0d                	cmp    $0xd,%al
     d15:	74 0c                	je     d23 <gets+0x43>
  for(i=0; i+1 < max; ){
     d17:	89 df                	mov    %ebx,%edi
     d19:	83 c3 01             	add    $0x1,%ebx
     d1c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     d1f:	7c cf                	jl     cf0 <gets+0x10>
     d21:	89 fb                	mov    %edi,%ebx
      break;
  }
  buf[i] = '\0';
     d23:	8b 45 08             	mov    0x8(%ebp),%eax
     d26:	c6 04 18 00          	movb   $0x0,(%eax,%ebx,1)
  return buf;
}
     d2a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d2d:	5b                   	pop    %ebx
     d2e:	5e                   	pop    %esi
     d2f:	5f                   	pop    %edi
     d30:	5d                   	pop    %ebp
     d31:	c3                   	ret
     d32:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000d40 <stat>:

int
stat(char *n, struct stat *st)
{
     d40:	55                   	push   %ebp
     d41:	89 e5                	mov    %esp,%ebp
     d43:	56                   	push   %esi
     d44:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     d45:	83 ec 08             	sub    $0x8,%esp
     d48:	6a 00                	push   $0x0
     d4a:	ff 75 08             	push   0x8(%ebp)
     d4d:	e8 f1 00 00 00       	call   e43 <open>
  if(fd < 0)
     d52:	83 c4 10             	add    $0x10,%esp
     d55:	85 c0                	test   %eax,%eax
     d57:	78 27                	js     d80 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     d59:	83 ec 08             	sub    $0x8,%esp
     d5c:	ff 75 0c             	push   0xc(%ebp)
     d5f:	89 c3                	mov    %eax,%ebx
     d61:	50                   	push   %eax
     d62:	e8 f4 00 00 00       	call   e5b <fstat>
  close(fd);
     d67:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     d6a:	89 c6                	mov    %eax,%esi
  close(fd);
     d6c:	e8 ba 00 00 00       	call   e2b <close>
  return r;
     d71:	83 c4 10             	add    $0x10,%esp
}
     d74:	8d 65 f8             	lea    -0x8(%ebp),%esp
     d77:	89 f0                	mov    %esi,%eax
     d79:	5b                   	pop    %ebx
     d7a:	5e                   	pop    %esi
     d7b:	5d                   	pop    %ebp
     d7c:	c3                   	ret
     d7d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     d80:	be ff ff ff ff       	mov    $0xffffffff,%esi
     d85:	eb ed                	jmp    d74 <stat+0x34>
     d87:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     d8e:	66 90                	xchg   %ax,%ax

00000d90 <atoi>:

int
atoi(const char *s)
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	53                   	push   %ebx
     d94:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     d97:	0f be 02             	movsbl (%edx),%eax
     d9a:	8d 48 d0             	lea    -0x30(%eax),%ecx
     d9d:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
     da0:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
     da5:	77 1e                	ja     dc5 <atoi+0x35>
     da7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     dae:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
     db0:	83 c2 01             	add    $0x1,%edx
     db3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
     db6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
     dba:	0f be 02             	movsbl (%edx),%eax
     dbd:	8d 58 d0             	lea    -0x30(%eax),%ebx
     dc0:	80 fb 09             	cmp    $0x9,%bl
     dc3:	76 eb                	jbe    db0 <atoi+0x20>
  return n;
}
     dc5:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     dc8:	89 c8                	mov    %ecx,%eax
     dca:	c9                   	leave
     dcb:	c3                   	ret
     dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000dd0 <memmove>:

void*
memmove(void *vdst, void *vsrc, int n)
{
     dd0:	55                   	push   %ebp
     dd1:	89 e5                	mov    %esp,%ebp
     dd3:	57                   	push   %edi
     dd4:	56                   	push   %esi
     dd5:	8b 45 10             	mov    0x10(%ebp),%eax
     dd8:	8b 55 08             	mov    0x8(%ebp),%edx
     ddb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst, *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     dde:	85 c0                	test   %eax,%eax
     de0:	7e 13                	jle    df5 <memmove+0x25>
     de2:	01 d0                	add    %edx,%eax
  dst = vdst;
     de4:	89 d7                	mov    %edx,%edi
     de6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ded:	8d 76 00             	lea    0x0(%esi),%esi
    *dst++ = *src++;
     df0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
     df1:	39 f8                	cmp    %edi,%eax
     df3:	75 fb                	jne    df0 <memmove+0x20>
  return vdst;
}
     df5:	5e                   	pop    %esi
     df6:	89 d0                	mov    %edx,%eax
     df8:	5f                   	pop    %edi
     df9:	5d                   	pop    %ebp
     dfa:	c3                   	ret

00000dfb <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     dfb:	b8 01 00 00 00       	mov    $0x1,%eax
     e00:	cd 40                	int    $0x40
     e02:	c3                   	ret

00000e03 <exit>:
SYSCALL(exit)
     e03:	b8 02 00 00 00       	mov    $0x2,%eax
     e08:	cd 40                	int    $0x40
     e0a:	c3                   	ret

00000e0b <wait>:
SYSCALL(wait)
     e0b:	b8 03 00 00 00       	mov    $0x3,%eax
     e10:	cd 40                	int    $0x40
     e12:	c3                   	ret

00000e13 <pipe>:
SYSCALL(pipe)
     e13:	b8 04 00 00 00       	mov    $0x4,%eax
     e18:	cd 40                	int    $0x40
     e1a:	c3                   	ret

00000e1b <read>:
SYSCALL(read)
     e1b:	b8 05 00 00 00       	mov    $0x5,%eax
     e20:	cd 40                	int    $0x40
     e22:	c3                   	ret

00000e23 <write>:
SYSCALL(write)
     e23:	b8 10 00 00 00       	mov    $0x10,%eax
     e28:	cd 40                	int    $0x40
     e2a:	c3                   	ret

00000e2b <close>:
SYSCALL(close)
     e2b:	b8 15 00 00 00       	mov    $0x15,%eax
     e30:	cd 40                	int    $0x40
     e32:	c3                   	ret

00000e33 <kill>:
SYSCALL(kill)
     e33:	b8 06 00 00 00       	mov    $0x6,%eax
     e38:	cd 40                	int    $0x40
     e3a:	c3                   	ret

00000e3b <exec>:
SYSCALL(exec)
     e3b:	b8 07 00 00 00       	mov    $0x7,%eax
     e40:	cd 40                	int    $0x40
     e42:	c3                   	ret

00000e43 <open>:
SYSCALL(open)
     e43:	b8 0f 00 00 00       	mov    $0xf,%eax
     e48:	cd 40                	int    $0x40
     e4a:	c3                   	ret

00000e4b <mknod>:
SYSCALL(mknod)
     e4b:	b8 11 00 00 00       	mov    $0x11,%eax
     e50:	cd 40                	int    $0x40
     e52:	c3                   	ret

00000e53 <unlink>:
SYSCALL(unlink)
     e53:	b8 12 00 00 00       	mov    $0x12,%eax
     e58:	cd 40                	int    $0x40
     e5a:	c3                   	ret

00000e5b <fstat>:
SYSCALL(fstat)
     e5b:	b8 08 00 00 00       	mov    $0x8,%eax
     e60:	cd 40                	int    $0x40
     e62:	c3                   	ret

00000e63 <link>:
SYSCALL(link)
     e63:	b8 13 00 00 00       	mov    $0x13,%eax
     e68:	cd 40                	int    $0x40
     e6a:	c3                   	ret

00000e6b <mkdir>:
SYSCALL(mkdir)
     e6b:	b8 14 00 00 00       	mov    $0x14,%eax
     e70:	cd 40                	int    $0x40
     e72:	c3                   	ret

00000e73 <chdir>:
SYSCALL(chdir)
     e73:	b8 09 00 00 00       	mov    $0x9,%eax
     e78:	cd 40                	int    $0x40
     e7a:	c3                   	ret

00000e7b <dup>:
SYSCALL(dup)
     e7b:	b8 0a 00 00 00       	mov    $0xa,%eax
     e80:	cd 40                	int    $0x40
     e82:	c3                   	ret

00000e83 <getpid>:
SYSCALL(getpid)
     e83:	b8 0b 00 00 00       	mov    $0xb,%eax
     e88:	cd 40                	int    $0x40
     e8a:	c3                   	ret

00000e8b <sbrk>:
SYSCALL(sbrk)
     e8b:	b8 0c 00 00 00       	mov    $0xc,%eax
     e90:	cd 40                	int    $0x40
     e92:	c3                   	ret

00000e93 <sleep>:
SYSCALL(sleep)
     e93:	b8 0d 00 00 00       	mov    $0xd,%eax
     e98:	cd 40                	int    $0x40
     e9a:	c3                   	ret

00000e9b <uptime>:
SYSCALL(uptime)
     e9b:	b8 0e 00 00 00       	mov    $0xe,%eax
     ea0:	cd 40                	int    $0x40
     ea2:	c3                   	ret

00000ea3 <shutdown>:
SYSCALL(shutdown)
     ea3:	b8 16 00 00 00       	mov    $0x16,%eax
     ea8:	cd 40                	int    $0x40
     eaa:	c3                   	ret

00000eab <cps>:
SYSCALL(cps)
     eab:	b8 17 00 00 00       	mov    $0x17,%eax
     eb0:	cd 40                	int    $0x40
     eb2:	c3                   	ret

00000eb3 <chpr>:
SYSCALL(chpr)
     eb3:	b8 18 00 00 00       	mov    $0x18,%eax
     eb8:	cd 40                	int    $0x40
     eba:	c3                   	ret
     ebb:	66 90                	xchg   %ax,%ax
     ebd:	66 90                	xchg   %ax,%ax
     ebf:	90                   	nop

00000ec0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     ec0:	55                   	push   %ebp
     ec1:	89 e5                	mov    %esp,%ebp
     ec3:	57                   	push   %edi
     ec4:	56                   	push   %esi
     ec5:	53                   	push   %ebx
     ec6:	89 cb                	mov    %ecx,%ebx
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
     ec8:	89 d1                	mov    %edx,%ecx
{
     eca:	83 ec 3c             	sub    $0x3c,%esp
     ecd:	89 45 c0             	mov    %eax,-0x40(%ebp)
  if(sgn && xx < 0){
     ed0:	85 d2                	test   %edx,%edx
     ed2:	0f 89 80 00 00 00    	jns    f58 <printint+0x98>
     ed8:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     edc:	74 7a                	je     f58 <printint+0x98>
    x = -xx;
     ede:	f7 d9                	neg    %ecx
    neg = 1;
     ee0:	b8 01 00 00 00       	mov    $0x1,%eax
  } else {
    x = xx;
  }

  i = 0;
     ee5:	89 45 c4             	mov    %eax,-0x3c(%ebp)
     ee8:	31 f6                	xor    %esi,%esi
     eea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
     ef0:	89 c8                	mov    %ecx,%eax
     ef2:	31 d2                	xor    %edx,%edx
     ef4:	89 f7                	mov    %esi,%edi
     ef6:	f7 f3                	div    %ebx
     ef8:	8d 76 01             	lea    0x1(%esi),%esi
     efb:	0f b6 92 c0 13 00 00 	movzbl 0x13c0(%edx),%edx
     f02:	88 54 35 d7          	mov    %dl,-0x29(%ebp,%esi,1)
  }while((x /= base) != 0);
     f06:	89 ca                	mov    %ecx,%edx
     f08:	89 c1                	mov    %eax,%ecx
     f0a:	39 da                	cmp    %ebx,%edx
     f0c:	73 e2                	jae    ef0 <printint+0x30>
  if(neg)
     f0e:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     f11:	85 c0                	test   %eax,%eax
     f13:	74 07                	je     f1c <printint+0x5c>
    buf[i++] = '-';
     f15:	c6 44 35 d8 2d       	movb   $0x2d,-0x28(%ebp,%esi,1)
    buf[i++] = digits[x % base];
     f1a:	89 f7                	mov    %esi,%edi
     f1c:	8d 5d d8             	lea    -0x28(%ebp),%ebx
     f1f:	8b 75 c0             	mov    -0x40(%ebp),%esi
     f22:	01 df                	add    %ebx,%edi
     f24:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

  while(--i >= 0)
    putc(fd, buf[i]);
     f28:	0f b6 07             	movzbl (%edi),%eax
  write(fd, &c, 1);
     f2b:	83 ec 04             	sub    $0x4,%esp
     f2e:	88 45 d7             	mov    %al,-0x29(%ebp)
     f31:	8d 45 d7             	lea    -0x29(%ebp),%eax
     f34:	6a 01                	push   $0x1
     f36:	50                   	push   %eax
     f37:	56                   	push   %esi
     f38:	e8 e6 fe ff ff       	call   e23 <write>
  while(--i >= 0)
     f3d:	89 f8                	mov    %edi,%eax
     f3f:	83 c4 10             	add    $0x10,%esp
     f42:	83 ef 01             	sub    $0x1,%edi
     f45:	39 d8                	cmp    %ebx,%eax
     f47:	75 df                	jne    f28 <printint+0x68>
}
     f49:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f4c:	5b                   	pop    %ebx
     f4d:	5e                   	pop    %esi
     f4e:	5f                   	pop    %edi
     f4f:	5d                   	pop    %ebp
     f50:	c3                   	ret
     f51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     f58:	31 c0                	xor    %eax,%eax
     f5a:	eb 89                	jmp    ee5 <printint+0x25>
     f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000f60 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
     f60:	55                   	push   %ebp
     f61:	89 e5                	mov    %esp,%ebp
     f63:	57                   	push   %edi
     f64:	56                   	push   %esi
     f65:	53                   	push   %ebx
     f66:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     f69:	8b 75 0c             	mov    0xc(%ebp),%esi
{
     f6c:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i = 0; fmt[i]; i++){
     f6f:	0f b6 1e             	movzbl (%esi),%ebx
     f72:	83 c6 01             	add    $0x1,%esi
     f75:	84 db                	test   %bl,%bl
     f77:	74 67                	je     fe0 <printf+0x80>
     f79:	8d 4d 10             	lea    0x10(%ebp),%ecx
     f7c:	31 d2                	xor    %edx,%edx
     f7e:	89 4d d0             	mov    %ecx,-0x30(%ebp)
     f81:	eb 34                	jmp    fb7 <printf+0x57>
     f83:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f87:	90                   	nop
     f88:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
     f8b:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
     f90:	83 f8 25             	cmp    $0x25,%eax
     f93:	74 18                	je     fad <printf+0x4d>
  write(fd, &c, 1);
     f95:	83 ec 04             	sub    $0x4,%esp
     f98:	8d 45 e7             	lea    -0x19(%ebp),%eax
     f9b:	88 5d e7             	mov    %bl,-0x19(%ebp)
     f9e:	6a 01                	push   $0x1
     fa0:	50                   	push   %eax
     fa1:	57                   	push   %edi
     fa2:	e8 7c fe ff ff       	call   e23 <write>
     fa7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
     faa:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
     fad:	0f b6 1e             	movzbl (%esi),%ebx
     fb0:	83 c6 01             	add    $0x1,%esi
     fb3:	84 db                	test   %bl,%bl
     fb5:	74 29                	je     fe0 <printf+0x80>
    c = fmt[i] & 0xff;
     fb7:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     fba:	85 d2                	test   %edx,%edx
     fbc:	74 ca                	je     f88 <printf+0x28>
      }
    } else if(state == '%'){
     fbe:	83 fa 25             	cmp    $0x25,%edx
     fc1:	75 ea                	jne    fad <printf+0x4d>
      if(c == 'd'){
     fc3:	83 f8 25             	cmp    $0x25,%eax
     fc6:	0f 84 24 01 00 00    	je     10f0 <printf+0x190>
     fcc:	83 e8 63             	sub    $0x63,%eax
     fcf:	83 f8 15             	cmp    $0x15,%eax
     fd2:	77 1c                	ja     ff0 <printf+0x90>
     fd4:	ff 24 85 68 13 00 00 	jmp    *0x1368(,%eax,4)
     fdb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     fdf:	90                   	nop
        putc(fd, c);
      }
      state = 0;
    }
  }
}
     fe0:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fe3:	5b                   	pop    %ebx
     fe4:	5e                   	pop    %esi
     fe5:	5f                   	pop    %edi
     fe6:	5d                   	pop    %ebp
     fe7:	c3                   	ret
     fe8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     fef:	90                   	nop
  write(fd, &c, 1);
     ff0:	83 ec 04             	sub    $0x4,%esp
     ff3:	8d 55 e7             	lea    -0x19(%ebp),%edx
     ff6:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     ffa:	6a 01                	push   $0x1
     ffc:	52                   	push   %edx
     ffd:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1000:	57                   	push   %edi
    1001:	e8 1d fe ff ff       	call   e23 <write>
    1006:	83 c4 0c             	add    $0xc,%esp
    1009:	88 5d e7             	mov    %bl,-0x19(%ebp)
    100c:	6a 01                	push   $0x1
    100e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1011:	52                   	push   %edx
    1012:	57                   	push   %edi
    1013:	e8 0b fe ff ff       	call   e23 <write>
        putc(fd, c);
    1018:	83 c4 10             	add    $0x10,%esp
      state = 0;
    101b:	31 d2                	xor    %edx,%edx
    101d:	eb 8e                	jmp    fad <printf+0x4d>
    101f:	90                   	nop
        printint(fd, *ap, 16, 0);
    1020:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    1023:	83 ec 0c             	sub    $0xc,%esp
    1026:	b9 10 00 00 00       	mov    $0x10,%ecx
    102b:	8b 13                	mov    (%ebx),%edx
    102d:	6a 00                	push   $0x0
    102f:	89 f8                	mov    %edi,%eax
        ap++;
    1031:	83 c3 04             	add    $0x4,%ebx
        printint(fd, *ap, 16, 0);
    1034:	e8 87 fe ff ff       	call   ec0 <printint>
        ap++;
    1039:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    103c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    103f:	31 d2                	xor    %edx,%edx
    1041:	e9 67 ff ff ff       	jmp    fad <printf+0x4d>
    1046:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    104d:	8d 76 00             	lea    0x0(%esi),%esi
        s = (char*)*ap;
    1050:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1053:	8b 18                	mov    (%eax),%ebx
        ap++;
    1055:	83 c0 04             	add    $0x4,%eax
    1058:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    105b:	85 db                	test   %ebx,%ebx
    105d:	0f 84 9d 00 00 00    	je     1100 <printf+0x1a0>
        while(*s != 0){
    1063:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1066:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1068:	84 c0                	test   %al,%al
    106a:	0f 84 3d ff ff ff    	je     fad <printf+0x4d>
    1070:	8d 55 e7             	lea    -0x19(%ebp),%edx
    1073:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    1076:	89 de                	mov    %ebx,%esi
    1078:	89 d3                	mov    %edx,%ebx
    107a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1080:	83 ec 04             	sub    $0x4,%esp
    1083:	88 45 e7             	mov    %al,-0x19(%ebp)
          s++;
    1086:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1089:	6a 01                	push   $0x1
    108b:	53                   	push   %ebx
    108c:	57                   	push   %edi
    108d:	e8 91 fd ff ff       	call   e23 <write>
        while(*s != 0){
    1092:	0f b6 06             	movzbl (%esi),%eax
    1095:	83 c4 10             	add    $0x10,%esp
    1098:	84 c0                	test   %al,%al
    109a:	75 e4                	jne    1080 <printf+0x120>
      state = 0;
    109c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
    109f:	31 d2                	xor    %edx,%edx
    10a1:	e9 07 ff ff ff       	jmp    fad <printf+0x4d>
    10a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10ad:	8d 76 00             	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    10b0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    10b3:	83 ec 0c             	sub    $0xc,%esp
    10b6:	b9 0a 00 00 00       	mov    $0xa,%ecx
    10bb:	8b 13                	mov    (%ebx),%edx
    10bd:	6a 01                	push   $0x1
    10bf:	e9 6b ff ff ff       	jmp    102f <printf+0xcf>
    10c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    10c8:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    10cb:	83 ec 04             	sub    $0x4,%esp
    10ce:	8d 55 e7             	lea    -0x19(%ebp),%edx
        putc(fd, *ap);
    10d1:	8b 03                	mov    (%ebx),%eax
        ap++;
    10d3:	83 c3 04             	add    $0x4,%ebx
        putc(fd, *ap);
    10d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    10d9:	6a 01                	push   $0x1
    10db:	52                   	push   %edx
    10dc:	57                   	push   %edi
    10dd:	e8 41 fd ff ff       	call   e23 <write>
        ap++;
    10e2:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    10e5:	83 c4 10             	add    $0x10,%esp
      state = 0;
    10e8:	31 d2                	xor    %edx,%edx
    10ea:	e9 be fe ff ff       	jmp    fad <printf+0x4d>
    10ef:	90                   	nop
  write(fd, &c, 1);
    10f0:	83 ec 04             	sub    $0x4,%esp
    10f3:	88 5d e7             	mov    %bl,-0x19(%ebp)
    10f6:	8d 55 e7             	lea    -0x19(%ebp),%edx
    10f9:	6a 01                	push   $0x1
    10fb:	e9 11 ff ff ff       	jmp    1011 <printf+0xb1>
    1100:	b8 28 00 00 00       	mov    $0x28,%eax
          s = "(null)";
    1105:	bb 60 13 00 00       	mov    $0x1360,%ebx
    110a:	e9 61 ff ff ff       	jmp    1070 <printf+0x110>
    110f:	90                   	nop

00001110 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1110:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1111:	a1 e4 19 00 00       	mov    0x19e4,%eax
{
    1116:	89 e5                	mov    %esp,%ebp
    1118:	57                   	push   %edi
    1119:	56                   	push   %esi
    111a:	53                   	push   %ebx
    111b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    111e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1121:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1128:	89 c2                	mov    %eax,%edx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    112a:	8b 00                	mov    (%eax),%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    112c:	39 ca                	cmp    %ecx,%edx
    112e:	73 30                	jae    1160 <free+0x50>
    1130:	39 c1                	cmp    %eax,%ecx
    1132:	72 04                	jb     1138 <free+0x28>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1134:	39 c2                	cmp    %eax,%edx
    1136:	72 f0                	jb     1128 <free+0x18>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1138:	8b 73 fc             	mov    -0x4(%ebx),%esi
    113b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    113e:	39 f8                	cmp    %edi,%eax
    1140:	74 2e                	je     1170 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
    1142:	89 43 f8             	mov    %eax,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    1145:	8b 42 04             	mov    0x4(%edx),%eax
    1148:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    114b:	39 f1                	cmp    %esi,%ecx
    114d:	74 38                	je     1187 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
    114f:	89 0a                	mov    %ecx,(%edx)
  } else
    p->s.ptr = bp;
  freep = p;
}
    1151:	5b                   	pop    %ebx
  freep = p;
    1152:	89 15 e4 19 00 00    	mov    %edx,0x19e4
}
    1158:	5e                   	pop    %esi
    1159:	5f                   	pop    %edi
    115a:	5d                   	pop    %ebp
    115b:	c3                   	ret
    115c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1160:	39 c1                	cmp    %eax,%ecx
    1162:	72 d0                	jb     1134 <free+0x24>
    1164:	eb c2                	jmp    1128 <free+0x18>
    1166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    116d:	8d 76 00             	lea    0x0(%esi),%esi
    bp->s.size += p->s.ptr->s.size;
    1170:	03 70 04             	add    0x4(%eax),%esi
    1173:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1176:	8b 02                	mov    (%edx),%eax
    1178:	8b 00                	mov    (%eax),%eax
    117a:	89 43 f8             	mov    %eax,-0x8(%ebx)
  if(p + p->s.size == bp){
    117d:	8b 42 04             	mov    0x4(%edx),%eax
    1180:	8d 34 c2             	lea    (%edx,%eax,8),%esi
    1183:	39 f1                	cmp    %esi,%ecx
    1185:	75 c8                	jne    114f <free+0x3f>
    p->s.size += bp->s.size;
    1187:	03 43 fc             	add    -0x4(%ebx),%eax
  freep = p;
    118a:	89 15 e4 19 00 00    	mov    %edx,0x19e4
    p->s.size += bp->s.size;
    1190:	89 42 04             	mov    %eax,0x4(%edx)
    p->s.ptr = bp->s.ptr;
    1193:	8b 4b f8             	mov    -0x8(%ebx),%ecx
    1196:	89 0a                	mov    %ecx,(%edx)
}
    1198:	5b                   	pop    %ebx
    1199:	5e                   	pop    %esi
    119a:	5f                   	pop    %edi
    119b:	5d                   	pop    %ebp
    119c:	c3                   	ret
    119d:	8d 76 00             	lea    0x0(%esi),%esi

000011a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    11a0:	55                   	push   %ebp
    11a1:	89 e5                	mov    %esp,%ebp
    11a3:	57                   	push   %edi
    11a4:	56                   	push   %esi
    11a5:	53                   	push   %ebx
    11a6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    11a9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    11ac:	8b 15 e4 19 00 00    	mov    0x19e4,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    11b2:	8d 78 07             	lea    0x7(%eax),%edi
    11b5:	c1 ef 03             	shr    $0x3,%edi
    11b8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    11bb:	85 d2                	test   %edx,%edx
    11bd:	0f 84 8d 00 00 00    	je     1250 <malloc+0xb0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    11c3:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    11c5:	8b 48 04             	mov    0x4(%eax),%ecx
    11c8:	39 f9                	cmp    %edi,%ecx
    11ca:	73 64                	jae    1230 <malloc+0x90>
  if(nu < 4096)
    11cc:	bb 00 10 00 00       	mov    $0x1000,%ebx
    11d1:	39 df                	cmp    %ebx,%edi
    11d3:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    11d6:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    11dd:	eb 0a                	jmp    11e9 <malloc+0x49>
    11df:	90                   	nop
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    11e0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    11e2:	8b 48 04             	mov    0x4(%eax),%ecx
    11e5:	39 f9                	cmp    %edi,%ecx
    11e7:	73 47                	jae    1230 <malloc+0x90>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    11e9:	89 c2                	mov    %eax,%edx
    11eb:	39 05 e4 19 00 00    	cmp    %eax,0x19e4
    11f1:	75 ed                	jne    11e0 <malloc+0x40>
  p = sbrk(nu * sizeof(Header));
    11f3:	83 ec 0c             	sub    $0xc,%esp
    11f6:	56                   	push   %esi
    11f7:	e8 8f fc ff ff       	call   e8b <sbrk>
  if(p == (char*)-1)
    11fc:	83 c4 10             	add    $0x10,%esp
    11ff:	83 f8 ff             	cmp    $0xffffffff,%eax
    1202:	74 1c                	je     1220 <malloc+0x80>
  hp->s.size = nu;
    1204:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    1207:	83 ec 0c             	sub    $0xc,%esp
    120a:	83 c0 08             	add    $0x8,%eax
    120d:	50                   	push   %eax
    120e:	e8 fd fe ff ff       	call   1110 <free>
  return freep;
    1213:	8b 15 e4 19 00 00    	mov    0x19e4,%edx
      if((p = morecore(nunits)) == 0)
    1219:	83 c4 10             	add    $0x10,%esp
    121c:	85 d2                	test   %edx,%edx
    121e:	75 c0                	jne    11e0 <malloc+0x40>
        return 0;
  }
}
    1220:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1223:	31 c0                	xor    %eax,%eax
}
    1225:	5b                   	pop    %ebx
    1226:	5e                   	pop    %esi
    1227:	5f                   	pop    %edi
    1228:	5d                   	pop    %ebp
    1229:	c3                   	ret
    122a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1230:	39 cf                	cmp    %ecx,%edi
    1232:	74 4c                	je     1280 <malloc+0xe0>
        p->s.size -= nunits;
    1234:	29 f9                	sub    %edi,%ecx
    1236:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1239:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    123c:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    123f:	89 15 e4 19 00 00    	mov    %edx,0x19e4
}
    1245:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1248:	83 c0 08             	add    $0x8,%eax
}
    124b:	5b                   	pop    %ebx
    124c:	5e                   	pop    %esi
    124d:	5f                   	pop    %edi
    124e:	5d                   	pop    %ebp
    124f:	c3                   	ret
    base.s.ptr = freep = prevp = &base;
    1250:	c7 05 e4 19 00 00 e8 	movl   $0x19e8,0x19e4
    1257:	19 00 00 
    base.s.size = 0;
    125a:	b8 e8 19 00 00       	mov    $0x19e8,%eax
    base.s.ptr = freep = prevp = &base;
    125f:	c7 05 e8 19 00 00 e8 	movl   $0x19e8,0x19e8
    1266:	19 00 00 
    base.s.size = 0;
    1269:	c7 05 ec 19 00 00 00 	movl   $0x0,0x19ec
    1270:	00 00 00 
    if(p->s.size >= nunits){
    1273:	e9 54 ff ff ff       	jmp    11cc <malloc+0x2c>
    1278:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    127f:	90                   	nop
        prevp->s.ptr = p->s.ptr;
    1280:	8b 08                	mov    (%eax),%ecx
    1282:	89 0a                	mov    %ecx,(%edx)
    1284:	eb b9                	jmp    123f <malloc+0x9f>
