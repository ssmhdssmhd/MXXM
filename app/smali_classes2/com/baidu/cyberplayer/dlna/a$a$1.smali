.class Lcom/baidu/cyberplayer/dlna/a$a$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/dlna/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/dlna/a$a;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/dlna/a$a;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 112
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ""

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 141
    :pswitch_1
    new-instance v0, Ljava/io/File;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_0

    .line 143
    iget-object v4, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;

    move-result-object v4

    const/4 v5, -0x1

    const-string v6, "file not exists"

    invoke-interface {v4, v3, v1, v5, v6}, Lcom/baidu/cyberplayer/dlna/b;->a(ZLjava/lang/String;ILjava/lang/String;)V

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/baidu/cyberplayer/utils/bh;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 147
    iget-object v4, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;

    move-result-object v4

    invoke-interface {v4, v2, v0, v3, v1}, Lcom/baidu/cyberplayer/dlna/b;->a(ZLjava/lang/String;ILjava/lang/String;)V

    .line 148
    goto/16 :goto_0

    .line 134
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "tagName"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    iget-object v5, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v5, v5, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    new-instance v6, Lcom/baidu/cyberplayer/utils/bk;

    invoke-direct {v6, v4, v0}, Lcom/baidu/cyberplayer/utils/bk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;Lcom/baidu/cyberplayer/utils/bk;)Lcom/baidu/cyberplayer/utils/bk;

    .line 137
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v0

    iget-object v4, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v4, v4, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v4}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/utils/bk;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/bh;->a(Lcom/baidu/cyberplayer/utils/bf;)V

    .line 138
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;

    move-result-object v0

    invoke-interface {v0, v2, v3, v1}, Lcom/baidu/cyberplayer/dlna/b;->c(ZILjava/lang/String;)V

    .line 139
    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/utils/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bk;->a()V

    .line 131
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;

    move-result-object v0

    invoke-interface {v0, v2, v3, v1}, Lcom/baidu/cyberplayer/dlna/b;->d(ZILjava/lang/String;)V

    .line 132
    goto :goto_0

    .line 122
    :pswitch_4
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;

    move-result-object v0

    invoke-interface {v0, v2, v3, v1}, Lcom/baidu/cyberplayer/dlna/b;->b(ZILjava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;

    move-result-object v0

    const-string/jumbo v1, "stop service fail"

    invoke-interface {v0, v3, v2, v1}, Lcom/baidu/cyberplayer/dlna/b;->b(ZILjava/lang/String;)V

    .line 128
    goto :goto_0

    .line 114
    :pswitch_5
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/utils/bh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bh;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;

    move-result-object v0

    invoke-interface {v0, v2, v3, v1}, Lcom/baidu/cyberplayer/dlna/b;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a$1;->a:Lcom/baidu/cyberplayer/dlna/a$a;

    iget-object v0, v0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-static {v0}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;)Lcom/baidu/cyberplayer/dlna/b;

    move-result-object v0

    const-string/jumbo v1, "start service fail"

    invoke-interface {v0, v3, v2, v1}, Lcom/baidu/cyberplayer/dlna/b;->a(ZILjava/lang/String;)V

    .line 120
    nop

    .line 152
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
