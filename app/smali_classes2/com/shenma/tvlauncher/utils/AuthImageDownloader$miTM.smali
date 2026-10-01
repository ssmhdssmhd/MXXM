.class Lcom/shenma/tvlauncher/utils/AuthImageDownloader$miTM;
.super Ljava/lang/Object;
.source "AuthImageDownloader.java"

# interfaces
.implements Ljavax/net/ssl/TrustManager;
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/utils/AuthImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "miTM"
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

    .line 118
    iput-object p1, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$miTM;->this$0:Lcom/shenma/tvlauncher/utils/AuthImageDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 138
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 133
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public isClientTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public isServerTrusted([Ljava/security/cert/X509Certificate;)Z
    .locals 1
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .line 124
    const/4 v0, 0x1

    return v0
.end method
