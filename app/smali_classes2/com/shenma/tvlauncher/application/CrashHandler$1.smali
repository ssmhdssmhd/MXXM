.class Lcom/shenma/tvlauncher/application/CrashHandler$1;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shenma/tvlauncher/application/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/application/CrashHandler;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/application/CrashHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/application/CrashHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/shenma/tvlauncher/application/CrashHandler$1;->this$0:Lcom/shenma/tvlauncher/application/CrashHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 92
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 94
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 95
    return-void
.end method
