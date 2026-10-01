.class Lcom/baidu/cyberplayer/subtitle/b$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/subtitle/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/subtitle/b;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/subtitle/b;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 78
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 87
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    .line 88
    iget-object v3, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v3}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v4}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v5}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    move-result-object v5

    iget v6, v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorCode:I

    iget-object v0, v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorMsg:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v0}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 90
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0, v2}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;Z)Z

    .line 91
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/subtitle/b$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 93
    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0, v2}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;Z)Z

    .line 81
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/subtitle/b$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b$a;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 83
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    .line 84
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v2}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/cyberplayer/subtitle/b$1;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-static {v3}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/subtitle/b;)Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    move-result-object v3

    iget v4, v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorCode:I

    iget-object v0, v0, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 85
    nop

    .line 97
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
