.class Lcom/baidu/cyberplayer/subtitle/SubtitleManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$1;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/cyberplayer/utils/v;)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$1;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager;

    invoke-static {v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Lcom/baidu/cyberplayer/subtitle/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/subtitle/c;->a(Lcom/baidu/cyberplayer/utils/v;)V

    .line 114
    return-void
.end method
