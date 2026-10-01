.class Lcom/baidu/cyberplayer/utils/VersionManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/utils/VersionManager;->getDownloadUrlForCurrentVersion(ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/os/HandlerThread;

.field final synthetic a:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field final synthetic a:Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;

.field final synthetic a:Lcom/baidu/cyberplayer/utils/VersionManager;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/utils/VersionManager;ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;Landroid/os/HandlerThread;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    iput p2, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:I

    iput-object p3, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    iput-object p4, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->b:Ljava/lang/String;

    iput-object p6, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;

    iput-object p7, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 231
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    iget v1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:I

    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/cyberplayer/utils/VersionManager;->a(Lcom/baidu/cyberplayer/utils/VersionManager;ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$a;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;)I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;->onComplete(Ljava/lang/String;I)V

    .line 233
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/VersionManager$2;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 234
    return-void
.end method
