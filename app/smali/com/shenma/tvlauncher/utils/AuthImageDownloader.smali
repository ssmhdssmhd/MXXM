.class public Lcom/shenma/tvlauncher/utils/AuthImageDownloader;
.super Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;
.source "AuthImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/utils/AuthImageDownloader$miTM;
    }
.end annotation


# instance fields
.field final DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    .line 93
    new-instance v0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$3;-><init>(Lcom/shenma/tvlauncher/utils/AuthImageDownloader;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 34
    new-instance v0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$1;-><init>(Lcom/shenma/tvlauncher/utils/AuthImageDownloader;)V

    .line 48
    .local v0, "trustAllCert":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 50
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    new-instance v2, Lcom/shenma/tvlauncher/utils/SSLSocketFactoryCompat;

    invoke-direct {v2, v0}, Lcom/shenma/tvlauncher/utils/SSLSocketFactoryCompat;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectTimeout"    # I
    .param p3, "readTimeout"    # I

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;II)V

    .line 93
    new-instance v0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$3;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$3;-><init>(Lcom/shenma/tvlauncher/utils/AuthImageDownloader;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->DO_NOT_VERIFY:Ljavax/net/ssl/HostnameVerifier;

    .line 55
    new-instance v0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$2;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$2;-><init>(Lcom/shenma/tvlauncher/utils/AuthImageDownloader;)V

    .line 69
    .local v0, "trustAllCert":Ljavax/net/ssl/X509TrustManager;
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 71
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    new-instance v2, Lcom/shenma/tvlauncher/utils/SSLSocketFactoryCompat;

    invoke-direct {v2, v0}, Lcom/shenma/tvlauncher/utils/SSLSocketFactoryCompat;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 72
    return-void
.end method


# virtual methods
.method protected getStreamFromNetwork(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 5
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    .line 78
    .local v0, "url":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 81
    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 82
    .local v1, "conn":Ljava/net/HttpURLConnection;
    iget v2, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->connectTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 83
    iget v2, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->readTimeout:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 85
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    .line 86
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v3, p0, Lcom/shenma/tvlauncher/utils/AuthImageDownloader;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 88
    move-object v2, v1

    check-cast v2, Ljavax/net/ssl/HttpsURLConnection;

    invoke-static {}, Lcom/shenma/tvlauncher/utils/SSLSocketClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 90
    :cond_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    const v4, 0x8000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    return-object v2
.end method

.method public sslContextForTrustedCertificates()Ljavax/net/ssl/SSLContext;
    .locals 4

    .line 101
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    .line 102
    .local v0, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    new-instance v1, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$miTM;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/utils/AuthImageDownloader$miTM;-><init>(Lcom/shenma/tvlauncher/utils/AuthImageDownloader;)V

    .line 103
    .local v1, "tm":Ljavax/net/ssl/TrustManager;
    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 104
    const/4 v2, 0x0

    .line 106
    .local v2, "sc":Ljavax/net/ssl/SSLContext;
    :try_start_0
    const-string v3, "SSL"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    move-object v2, v3

    .line 107
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 108
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    return-object v2

    :catchall_0
    move-exception v3

    goto :goto_1

    .line 111
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/security/KeyManagementException;
    :try_start_1
    invoke-virtual {v3}, Ljava/security/KeyManagementException;->printStackTrace()V

    .line 114
    .end local v3    # "e":Ljava/security/KeyManagementException;
    :goto_0
    return-object v2

    .line 109
    :catch_1
    move-exception v3

    .line 110
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 114
    :goto_1
    return-object v2
.end method
