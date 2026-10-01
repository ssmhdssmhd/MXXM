.class public final Lokhttp3/internal/huc/OkHttpsURLConnection;
.super Lokhttp3/internal/huc/b;


# instance fields
.field private final a:Lokhttp3/internal/huc/OkHttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V
    .locals 1

    new-instance v0, Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-direct {v0, p1, p2}, Lokhttp3/internal/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpsURLConnection;-><init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lokhttp3/OkHttpClient;Lokhttp3/internal/URLFilter;)V
    .locals 1

    new-instance v0, Lokhttp3/internal/huc/OkHttpURLConnection;

    invoke-direct {v0, p1, p2, p3}, Lokhttp3/internal/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lokhttp3/OkHttpClient;Lokhttp3/internal/URLFilter;)V

    invoke-direct {p0, v0}, Lokhttp3/internal/huc/OkHttpsURLConnection;-><init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/huc/OkHttpURLConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lokhttp3/internal/huc/b;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object p1, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    return-void
.end method


# virtual methods
.method protected final a()Lokhttp3/Handshake;
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->b:Lokhttp3/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->g:Lokhttp3/Handshake;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/b;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->connect()V

    return-void
.end method

.method public final bridge synthetic disconnect()V
    .locals 0

    invoke-super {p0}, Lokhttp3/internal/huc/b;->disconnect()V

    return-void
.end method

.method public final bridge synthetic getAllowUserInteraction()Z
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getCipherSuite()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getConnectTimeout()I
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getContentEncoding()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getContentLength()I
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getContentLengthLong()J
    .locals 2

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getContentType()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDate()J
    .locals 2

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getDefaultUseCaches()Z
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getDoInput()Z
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getDoOutput()Z
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getErrorStream()Ljava/io/InputStream;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getExpiration()J
    .locals 2

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getHeaderField(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->getHeaderField(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/huc/b;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/b;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final bridge synthetic getHeaderFieldKey(I)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getHeaderFieldLong(Ljava/lang/String;J)J
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lokhttp3/internal/huc/b;->getHeaderFieldLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final bridge synthetic getHeaderFields()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getIfModifiedSince()J
    .locals 2

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getInstanceFollowRedirects()Z
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic getLastModified()J
    .locals 2

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final bridge synthetic getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getPermission()Ljava/security/Permission;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getReadTimeout()I
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getRequestMethod()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getRequestProperties()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final bridge synthetic getResponseMessage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v0, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getURL()Ljava/net/URL;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getUseCaches()Z
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic setAllowUserInteraction(Z)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public final bridge synthetic setChunkedStreamingMode(I)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public final bridge synthetic setConnectTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setConnectTimeout(I)V

    return-void
.end method

.method public final bridge synthetic setDefaultUseCaches(Z)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public final bridge synthetic setDoInput(Z)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setDoInput(Z)V

    return-void
.end method

.method public final bridge synthetic setDoOutput(Z)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setDoOutput(Z)V

    return-void
.end method

.method public final bridge synthetic setFixedLengthStreamingMode(I)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public final bridge synthetic setFixedLengthStreamingMode(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/b;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, v1, Lokhttp3/internal/huc/OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final bridge synthetic setIfModifiedSince(J)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/b;->setIfModifiedSince(J)V

    return-void
.end method

.method public final bridge synthetic setInstanceFollowRedirects(Z)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public final bridge synthetic setReadTimeout(I)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setReadTimeout(I)V

    return-void
.end method

.method public final bridge synthetic setRequestMethod(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final bridge synthetic setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/internal/huc/b;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 2

    iget-object v0, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, p0, Lokhttp3/internal/huc/OkHttpsURLConnection;->a:Lokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v1, v1, Lokhttp3/internal/huc/OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, v0, Lokhttp3/internal/huc/OkHttpURLConnection;->a:Lokhttp3/OkHttpClient;

    return-void
.end method

.method public final bridge synthetic setUseCaches(Z)V
    .locals 0

    invoke-super {p0, p1}, Lokhttp3/internal/huc/b;->setUseCaches(Z)V

    return-void
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic usingProxy()Z
    .locals 1

    invoke-super {p0}, Lokhttp3/internal/huc/b;->usingProxy()Z

    move-result v0

    return v0
.end method
