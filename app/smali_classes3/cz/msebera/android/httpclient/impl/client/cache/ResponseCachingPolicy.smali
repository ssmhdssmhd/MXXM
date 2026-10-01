.class Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;
.super Ljava/lang/Object;
.source "ResponseCachingPolicy.java"


# static fields
.field private static final AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

.field private static final cacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:J

.field private final neverCache1_0ResponsesWithQueryString:Z

.field private final sharedCache:Z

.field private final uncacheableStatuses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 57
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "s-maxage"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "must-revalidate"

    aput-object v4, v1, v3

    const/4 v4, 0x2

    const-string v5, "public"

    aput-object v5, v1, v4

    sput-object v1, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/util/HashSet;

    .line 65
    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 66
    const/16 v6, 0xcb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 67
    const/16 v7, 0x12c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 68
    const/16 v8, 0x12d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 69
    const/16 v9, 0x19a

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Integer;

    aput-object v5, v10, v2

    aput-object v6, v10, v3

    aput-object v7, v10, v4

    aput-object v8, v10, v0

    const/4 v0, 0x4

    aput-object v9, v10, v0

    .line 65
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    .line 64
    return-void
.end method

.method public constructor <init>(JZZZ)V
    .locals 6
    .param p1, "maxObjectSizeBytes"    # J
    .param p3, "sharedCache"    # Z
    .param p4, "neverCache1_0ResponsesWithQueryString"    # Z
    .param p5, "allow303Caching"    # Z

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    .line 87
    iput-wide p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    .line 88
    iput-boolean p3, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    .line 89
    iput-boolean p4, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->neverCache1_0ResponsesWithQueryString:Z

    .line 90
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xce

    .line 95
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 90
    if-eqz p5, :cond_0

    .line 91
    new-instance v3, Ljava/util/HashSet;

    .line 92
    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    goto :goto_0

    .line 94
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    .line 95
    const/16 v4, 0x12f

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Integer;

    aput-object v2, v5, v1

    aput-object v4, v5, v0

    .line 94
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    .line 97
    :goto_0
    return-void
.end method

.method private expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 6
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 279
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 280
    return v1

    .line 282
    :cond_0
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 283
    .local v0, "expiresHdr":Lcz/msebera/android/httpclient/Header;
    const-string v2, "Date"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 284
    .local v2, "dateHdr":Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_6

    if-nez v2, :cond_1

    goto :goto_1

    .line 287
    :cond_1
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 288
    .local v3, "expires":Ljava/util/Date;
    invoke-interface {v2}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 289
    .local v4, "date":Ljava/util/Date;
    if-eqz v3, :cond_5

    if-nez v4, :cond_2

    goto :goto_0

    .line 292
    :cond_2
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v4}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1

    .line 290
    :cond_5
    :goto_0
    return v1

    .line 285
    .end local v3    # "expires":Ljava/util/Date;
    .end local v4    # "date":Ljava/util/Date;
    :cond_6
    :goto_1
    return v1
.end method

.method private from1_0Origin(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 5
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 296
    const-string v0, "Via"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 297
    .local v0, "via":Lcz/msebera/android/httpclient/Header;
    if-eqz v0, :cond_1

    .line 298
    invoke-interface {v0}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 299
    .local v1, "elt":Lcz/msebera/android/httpclient/HeaderElement;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, v2

    .line 300
    .local v2, "proto":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    const-string v3, "HTTP/1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 303
    :cond_0
    const-string v3, "1.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 307
    .end local v1    # "elt":Lcz/msebera/android/httpclient/HeaderElement;
    .end local v2    # "proto":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_0:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpResponse;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcz/msebera/android/httpclient/HttpVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private requestProtocolGreaterThanAccepted(Lcz/msebera/android/httpclient/HttpRequest;)Z
    .locals 2
    .param p1, "req"    # Lcz/msebera/android/httpclient/HttpRequest;

    .line 311
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getProtocolVersion()Lcz/msebera/android/httpclient/ProtocolVersion;

    move-result-object v0

    sget-object v1, Lcz/msebera/android/httpclient/HttpVersion;->HTTP_1_1:Lcz/msebera/android/httpclient/HttpVersion;

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/ProtocolVersion;->compareToVersion(Lcz/msebera/android/httpclient/ProtocolVersion;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unknownStatusCode(I)Z
    .locals 2
    .param p1, "status"    # I

    .line 174
    const/16 v0, 0x64

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x65

    if-gt p1, v0, :cond_0

    .line 175
    return v1

    .line 177
    :cond_0
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xce

    if-gt p1, v0, :cond_1

    .line 178
    return v1

    .line 180
    :cond_1
    const/16 v0, 0x12c

    if-lt p1, v0, :cond_2

    const/16 v0, 0x133

    if-gt p1, v0, :cond_2

    .line 181
    return v1

    .line 183
    :cond_2
    const/16 v0, 0x190

    if-lt p1, v0, :cond_3

    const/16 v0, 0x1a1

    if-gt p1, v0, :cond_3

    .line 184
    return v1

    .line 186
    :cond_3
    const/16 v0, 0x1f4

    if-lt p1, v0, :cond_4

    const/16 v0, 0x1f9

    if-gt p1, v0, :cond_4

    .line 187
    return v1

    .line 189
    :cond_4
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z
    .locals 13
    .param p1, "msg"    # Lcz/msebera/android/httpclient/HttpMessage;
    .param p2, "params"    # [Ljava/lang/String;

    .line 207
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpMessage;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 208
    .local v0, "cacheControlHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 209
    .local v4, "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 210
    .local v8, "elem":Lcz/msebera/android/httpclient/HeaderElement;
    array-length v9, p2

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_1

    aget-object v11, p2, v10

    .line 211
    .local v11, "param":Ljava/lang/String;
    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 212
    const/4 v1, 0x1

    return v1

    .line 210
    .end local v11    # "param":Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 209
    .end local v8    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 208
    .end local v4    # "header":Lcz/msebera/android/httpclient/Header;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 217
    :cond_3
    return v2
.end method

.method protected isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 4
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 221
    const-string v0, "Expires"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 222
    return v1

    .line 224
    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "max-age"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "s-maxage"

    aput-object v2, v0, v1

    const-string v1, "must-revalidate"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "proxy-revalidate"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "public"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 229
    .local v0, "cacheableParams":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected isExplicitlyNonCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 11
    .param p1, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 193
    const-string v0, "Cache-Control"

    invoke-interface {p1, v0}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v0

    .line 194
    .local v0, "cacheControlHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 195
    .local v4, "header":Lcz/msebera/android/httpclient/Header;
    invoke-interface {v4}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    .line 196
    .local v8, "elem":Lcz/msebera/android/httpclient/HeaderElement;
    const-string v9, "no-store"

    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 197
    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "no-cache"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v9, :cond_0

    .line 198
    invoke-interface {v8}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "private"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    .line 195
    .end local v8    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 199
    .restart local v8    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_1
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 194
    .end local v4    # "header":Lcz/msebera/android/httpclient/Header;
    .end local v8    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_3
    return v2
.end method

.method public isResponseCacheable(Lcz/msebera/android/httpclient/HttpRequest;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 4
    .param p1, "request"    # Lcz/msebera/android/httpclient/HttpRequest;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 241
    invoke-direct {p0, p1}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->requestProtocolGreaterThanAccepted(Lcz/msebera/android/httpclient/HttpRequest;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v2, "Response was not cacheable."

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 243
    return v1

    .line 246
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "no-store"

    aput-object v2, v0, v1

    .line 247
    .local v0, "uncacheableRequestDirectives":[Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    return v1

    .line 251
    :cond_1
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lcz/msebera/android/httpclient/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 252
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->neverCache1_0ResponsesWithQueryString:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->from1_0Origin(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Response was not cacheable as it had a query string."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 254
    return v1

    .line 255
    :cond_2
    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 256
    iget-object v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v3, "Response was not cacheable as it is missing explicit caching headers."

    invoke-virtual {v2, v3}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 257
    return v1

    .line 261
    :cond_3
    invoke-direct {p0, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    return v1

    .line 265
    :cond_4
    iget-boolean v2, p0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z

    if-eqz v2, :cond_5

    .line 266
    const-string v2, "Authorization"

    invoke-interface {p1, v2}, Lcz/msebera/android/httpclient/HttpRequest;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v2

    .line 267
    .local v2, "authNHeaders":[Lcz/msebera/android/httpclient/Header;
    if-eqz v2, :cond_5

    array-length v3, v2

    if-lez v3, :cond_5

    sget-object v3, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->AUTH_CACHEABLE_PARAMS:[Ljava/lang/String;

    .line 268
    invoke-virtual {p0, p2, v3}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lcz/msebera/android/httpclient/HttpMessage;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 269
    return v1

    .line 273
    .end local v2    # "authNHeaders":[Lcz/msebera/android/httpclient/Header;
    :cond_5
    invoke-interface {p1}, Lcz/msebera/android/httpclient/HttpRequest;->getRequestLine()Lcz/msebera/android/httpclient/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lcz/msebera/android/httpclient/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "method":Ljava/lang/String;
    invoke-virtual {p0, v1, p2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v2

    return v2
.end method

.method public isResponseCacheable(Ljava/lang/String;Lcz/msebera/android/httpclient/HttpResponse;)Z
    .locals 20
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "response"    # Lcz/msebera/android/httpclient/HttpResponse;

    .line 107
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .line 109
    .local v3, "cacheable":Z
    const-string v4, "GET"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 110
    const-string v4, "HEAD"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 111
    iget-object v4, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->log:Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;

    const-string v6, "Response was not cacheable."

    invoke-virtual {v4, v6}, Lcz/msebera/android/httpclient/extras/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 112
    return v5

    .line 115
    :cond_0
    invoke-interface {v2}, Lcz/msebera/android/httpclient/HttpResponse;->getStatusLine()Lcz/msebera/android/httpclient/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lcz/msebera/android/httpclient/StatusLine;->getStatusCode()I

    move-result v4

    .line 116
    .local v4, "status":I
    sget-object v6, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->cacheableStatuses:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    const/4 v3, 0x1

    goto :goto_0

    .line 119
    :cond_1
    iget-object v6, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->uncacheableStatuses:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    return v5

    .line 121
    :cond_2
    invoke-direct {v0, v4}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->unknownStatusCode(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 124
    return v5

    .line 127
    :cond_3
    :goto_0
    const-string v6, "Content-Length"

    invoke-interface {v2, v6}, Lcz/msebera/android/httpclient/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lcz/msebera/android/httpclient/Header;

    move-result-object v6

    .line 128
    .local v6, "contentLength":Lcz/msebera/android/httpclient/Header;
    if-eqz v6, :cond_4

    .line 129
    invoke-interface {v6}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 130
    .local v7, "contentLengthValue":J
    iget-wide v9, v0, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:J

    cmp-long v11, v7, v9

    if-lez v11, :cond_4

    .line 131
    return v5

    .line 135
    .end local v7    # "contentLengthValue":J
    :cond_4
    const-string v7, "Age"

    invoke-interface {v2, v7}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v7

    .line 137
    .local v7, "ageHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v8, v7

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 138
    return v5

    .line 141
    :cond_5
    const-string v8, "Expires"

    invoke-interface {v2, v8}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v8

    .line 143
    .local v8, "expiresHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v10, v8

    if-le v10, v9, :cond_6

    .line 144
    return v5

    .line 147
    :cond_6
    const-string v10, "Date"

    invoke-interface {v2, v10}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v10

    .line 149
    .local v10, "dateHeaders":[Lcz/msebera/android/httpclient/Header;
    array-length v11, v10

    if-eq v11, v9, :cond_7

    .line 150
    return v5

    .line 153
    :cond_7
    aget-object v11, v10, v5

    invoke-interface {v11}, Lcz/msebera/android/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcz/msebera/android/httpclient/client/utils/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 154
    .local v11, "date":Ljava/util/Date;
    if-nez v11, :cond_8

    .line 155
    return v5

    .line 158
    :cond_8
    const-string v12, "Vary"

    invoke-interface {v2, v12}, Lcz/msebera/android/httpclient/HttpResponse;->getHeaders(Ljava/lang/String;)[Lcz/msebera/android/httpclient/Header;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_b

    aget-object v15, v12, v14

    .line 159
    .local v15, "varyHdr":Lcz/msebera/android/httpclient/Header;
    const/16 v16, 0x0

    invoke-interface {v15}, Lcz/msebera/android/httpclient/Header;->getElements()[Lcz/msebera/android/httpclient/HeaderElement;

    move-result-object v5

    array-length v9, v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_a

    aget-object v17, v5, v1

    .line 160
    .local v17, "elem":Lcz/msebera/android/httpclient/HeaderElement;
    move/from16 v18, v1

    const-string v1, "*"

    move/from16 v19, v3

    .end local v3    # "cacheable":Z
    .local v19, "cacheable":Z
    invoke-interface/range {v17 .. v17}, Lcz/msebera/android/httpclient/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 161
    return v16

    .line 159
    .end local v17    # "elem":Lcz/msebera/android/httpclient/HeaderElement;
    :cond_9
    add-int/lit8 v1, v18, 0x1

    move/from16 v3, v19

    goto :goto_2

    .end local v19    # "cacheable":Z
    .restart local v3    # "cacheable":Z
    :cond_a
    move/from16 v19, v3

    .line 158
    .end local v3    # "cacheable":Z
    .end local v15    # "varyHdr":Lcz/msebera/android/httpclient/Header;
    .restart local v19    # "cacheable":Z
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    const/4 v5, 0x0

    const/4 v9, 0x1

    goto :goto_1

    .line 166
    .end local v19    # "cacheable":Z
    .restart local v3    # "cacheable":Z
    :cond_b
    move/from16 v19, v3

    const/16 v16, 0x0

    .end local v3    # "cacheable":Z
    .restart local v19    # "cacheable":Z
    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyNonCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 167
    return v16

    .line 170
    :cond_c
    if-nez v19, :cond_e

    invoke-virtual {v0, v2}, Lcz/msebera/android/httpclient/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lcz/msebera/android/httpclient/HttpResponse;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v5, 0x1

    :goto_4
    return v5
.end method
