.class Lcom/baidu/cyberplayer/dlna/a$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/dlna/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/dlna/a;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/dlna/a;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 110
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/a$a;->a:Lcom/baidu/cyberplayer/dlna/a;

    new-instance v1, Lcom/baidu/cyberplayer/dlna/a$a$1;

    invoke-direct {v1, p0}, Lcom/baidu/cyberplayer/dlna/a$a$1;-><init>(Lcom/baidu/cyberplayer/dlna/a$a;)V

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/dlna/a;->a(Lcom/baidu/cyberplayer/dlna/a;Landroid/os/Handler;)Landroid/os/Handler;

    .line 154
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 155
    return-void
.end method
