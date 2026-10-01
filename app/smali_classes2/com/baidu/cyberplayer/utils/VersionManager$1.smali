.class Lcom/baidu/cyberplayer/utils/VersionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/cyberplayer/utils/VersionManager;->getCurrentSystemCpuTypeAndFeature(ILjava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic a:Landroid/os/HandlerThread;

.field final synthetic a:Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;

.field final synthetic a:Lcom/baidu/cyberplayer/utils/VersionManager;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/baidu/cyberplayer/utils/VersionManager;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;Landroid/os/HandlerThread;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    iput p2, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:I

    iput-object p3, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;

    iput-object p6, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 192
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    iget v1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:I

    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lcom/baidu/cyberplayer/utils/VersionManager;->a(Lcom/baidu/cyberplayer/utils/VersionManager;ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$a;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {}, Lcom/baidu/cyberplayer/utils/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/VersionManager;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 197
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    move-result-object v2

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;)I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;->onComplete(Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;I)V

    .line 201
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/VersionManager$1;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 202
    return-void
.end method
