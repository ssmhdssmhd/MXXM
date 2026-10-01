.class Lcom/baidu/cyberplayer/utils/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/utils/k;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/utils/k;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/utils/k;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/k$2;->a:Lcom/baidu/cyberplayer/utils/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k$2;->a:Lcom/baidu/cyberplayer/utils/k;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/k;->a(Lcom/baidu/cyberplayer/utils/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k$2;->a:Lcom/baidu/cyberplayer/utils/k;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/k;->b(Lcom/baidu/cyberplayer/utils/k;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k$2;->a:Lcom/baidu/cyberplayer/utils/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/k;->a(Lcom/baidu/cyberplayer/utils/k;Z)V

    .line 362
    return-void
.end method
