.class Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

.field final synthetic a:Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;

.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;I)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    iput-object p2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;

    iput p4, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/cyberplayer/subtitle/utils/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/cyberplayer/subtitle/utils/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    iget-object v0, p1, Lcom/baidu/cyberplayer/subtitle/utils/a;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    invoke-static {v2}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/cyberplayer/subtitle/utils/a;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    iget v3, v3, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorCode:I

    iget-object v4, p1, Lcom/baidu/cyberplayer/subtitle/utils/a;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    iget-object v4, v4, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;

    iget-object p1, p1, Lcom/baidu/cyberplayer/subtitle/utils/a;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;

    iget-object p1, p1, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->errorMsg:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;->onDownFinished(ZLjava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    iget-object v1, p1, Lcom/baidu/cyberplayer/subtitle/utils/a;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    invoke-static {v1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;

    invoke-static {v0, v1, v2}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;)V

    .line 224
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:I

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:I

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;I)I

    .line 226
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Lcom/baidu/cyberplayer/subtitle/b;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:I

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b;->d(I)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;->a:Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;

    iget-object p1, p1, Lcom/baidu/cyberplayer/subtitle/utils/a;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;->onDownFinished(ZLjava/lang/String;)V

    .line 232
    :cond_2
    :goto_0
    return-void
.end method
