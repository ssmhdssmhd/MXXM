.class Lcom/shenma/tvlauncher/utils/AuthImageDownloader$3;
.super Ljava/lang/Object;
.source "AuthImageDownloader.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/utils/AuthImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/shenma/tvlauncher/utils/AuthImageDownloader;


# direct methods
.method constructor <init>(Lcom/shenma/tvlauncher/utils/AuthImageDownloader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/shenma/tvlauncher/utils/AuthImageDownloader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$3;->this$0:Lcom/shenma/tvlauncher/utils/AuthImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 96
    const/4 v0, 0x1

    return v0
.end method
