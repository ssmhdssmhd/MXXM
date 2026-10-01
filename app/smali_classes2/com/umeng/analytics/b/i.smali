.class public Lcom/umeng/analytics/b/i;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3


# instance fields
.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Lcom/umeng/analytics/b/o;

.field private j:Lcom/umeng/analytics/a/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/b/i;->d:I

    .line 60
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/umeng/analytics/b/i;->f:Ljava/lang/String;

    .line 61
    const/16 v0, 0x50

    iput v0, p0, Lcom/umeng/analytics/b/i;->g:I

    .line 68
    iput-object p1, p0, Lcom/umeng/analytics/b/i;->h:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Lcom/umeng/analytics/a/h;->b(Landroid/content/Context;)Lcom/umeng/analytics/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b/i;->j:Lcom/umeng/analytics/a/f;

    .line 70
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/analytics/b/i;->e:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 196
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 197
    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    const-string v2, "5.2.2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 204
    invoke-static {p1}, Lcom/umeng/common/b;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/common/util/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    goto :goto_0

    .line 216
    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a()Z
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/umeng/analytics/b/i;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/umeng/analytics/b/i;->h:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 106
    return v1

    .line 110
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/i;->h:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 111
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 114
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_2

    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 117
    :cond_1
    return v3

    .line 124
    :cond_2
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 126
    :goto_0
    return v1
.end method

.method private a([BLjava/lang/String;)[B
    .locals 8

    .line 131
    const-string v0, "MobclickAgent"

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 132
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 133
    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 134
    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 135
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 138
    const-string v2, "X-Umeng-Sdk"

    iget-object v4, p0, Lcom/umeng/analytics/b/i;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v2, "Msg-Type"

    const-string v4, "envelope"

    invoke-virtual {v1, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/umeng/analytics/b/i;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    new-instance v4, Lorg/apache/http/HttpHost;

    iget-object v5, p0, Lcom/umeng/analytics/b/i;->f:Ljava/lang/String;

    iget v6, p0, Lcom/umeng/analytics/b/i;->g:I

    invoke-direct {v4, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 144
    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.route.default-proxy"

    invoke-interface {v5, v6, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 149
    :cond_0
    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p1, p1

    int-to-long v6, p1

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 152
    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 155
    iget-object p1, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    invoke-virtual {p1}, Lcom/umeng/analytics/b/o;->e()V

    .line 157
    :cond_1
    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 159
    iget-object v1, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    invoke-virtual {v1}, Lcom/umeng/analytics/b/o;->f()V

    .line 161
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "status code : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_4

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sent message to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    .line 169
    if-eqz p1, :cond_3

    .line 170
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :try_start_1
    invoke-static {p1}, Lcom/umeng/common/util/h;->b(Ljava/io/InputStream;)[B

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    :try_start_2
    invoke-static {p1}, Lcom/umeng/common/util/h;->c(Ljava/io/InputStream;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1}, Lcom/umeng/common/util/h;->c(Ljava/io/InputStream;)V

    throw p2
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    :cond_3
    return-object v2

    .line 181
    :cond_4
    return-object v2

    .line 188
    :catch_0
    move-exception p1

    .line 189
    const-string p2, "IOException,Failed to send message."

    invoke-static {v0, p2, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 190
    return-object v2

    .line 184
    :catch_1
    move-exception p1

    .line 185
    const-string p2, "ClientProtocolException,Failed to send message."

    invoke-static {v0, p2, p1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 187
    return-object v2
.end method

.method private b([B)I
    .locals 4

    .line 224
    new-instance v0, Lcom/umeng/analytics/d/v;

    invoke-direct {v0}, Lcom/umeng/analytics/d/v;-><init>()V

    .line 225
    new-instance v1, Lcom/umeng/a/a/a/g;

    new-instance v2, Lcom/umeng/a/a/a/b/a$a;

    invoke-direct {v2}, Lcom/umeng/a/a/a/b/a$a;-><init>()V

    invoke-direct {v1, v2}, Lcom/umeng/a/a/a/g;-><init>(Lcom/umeng/a/a/a/b/j;)V

    .line 228
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v0, p1}, Lcom/umeng/a/a/a/g;->a(Lcom/umeng/a/a/a/d;[B)V

    .line 230
    iget p1, v0, Lcom/umeng/analytics/d/v;->a:I

    if-ne p1, v2, :cond_0

    .line 231
    iget-object p1, p0, Lcom/umeng/analytics/b/i;->j:Lcom/umeng/analytics/a/f;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/v;->j()Lcom/umeng/analytics/d/n;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/umeng/analytics/a/f;->b(Lcom/umeng/analytics/d/n;)V

    .line 232
    iget-object p1, p0, Lcom/umeng/analytics/b/i;->j:Lcom/umeng/analytics/a/f;

    invoke-virtual {p1}, Lcom/umeng/analytics/a/f;->c()V

    .line 235
    :cond_0
    const-string p1, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send log:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/analytics/d/v;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    :goto_0
    iget p1, v0, Lcom/umeng/analytics/d/v;->a:I

    if-ne p1, v2, :cond_1

    .line 241
    const/4 p1, 0x2

    return p1

    .line 243
    :cond_1
    const/4 p1, 0x3

    return p1
.end method


# virtual methods
.method public a([B)I
    .locals 3

    .line 83
    nop

    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 86
    sget-object v0, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/b/i;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    invoke-virtual {p1}, Lcom/umeng/analytics/b/o;->c()V

    goto :goto_1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    invoke-virtual {v2}, Lcom/umeng/analytics/b/o;->d()V

    .line 84
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 97
    const/4 p1, 0x1

    return p1

    .line 99
    :cond_3
    invoke-direct {p0, v0}, Lcom/umeng/analytics/b/i;->b([B)I

    move-result p1

    return p1
.end method

.method public a(Lcom/umeng/analytics/b/o;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/umeng/analytics/b/i;->i:Lcom/umeng/analytics/b/o;

    .line 75
    return-void
.end method
