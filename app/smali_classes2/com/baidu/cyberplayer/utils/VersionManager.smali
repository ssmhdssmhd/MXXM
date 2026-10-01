.class public Lcom/baidu/cyberplayer/utils/VersionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/utils/VersionManager$a;,
        Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;,
        Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;,
        Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    }
.end annotation


# static fields
.field public static final RET_ERROR_AKSK:I = 0x2

.field public static final RET_ERROR_NETWORK:I = 0x1

.field public static final RET_ERROR_NOTFOUND:I = 0x3

.field public static final RET_SUCCESS:I

.field private static a:Lcom/baidu/cyberplayer/utils/VersionManager;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "http://cybertran.baidu.com/mediasdk/video?method=sdkupdate"

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/VersionManager;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/baidu/cyberplayer/utils/VersionManager;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    move-result-object p0

    return-object p0
.end method

.method private a(ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$a;
    .locals 6

    .line 241
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$a;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/utils/VersionManager$a;-><init>(Lcom/baidu/cyberplayer/utils/VersionManager;)V

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "req_videotran"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {p4, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/cyberplayer/utils/VersionManager;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&ak="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v3, "&time="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, "&sign="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "&platform=android"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 248
    if-eqz p2, :cond_0

    .line 249
    nop

    .line 250
    const-string p4, "."

    const-string v1, "_"

    const-string v2, "baidu_product_1_9_1_1"

    invoke-virtual {v2, p4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 251
    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/VersionManager;->a(Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;)Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v2, "&getso=1&version="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "&cputype="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 255
    :cond_0
    nop

    .line 256
    new-instance p4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p4, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 258
    const/4 p3, 0x0

    :try_start_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/l;->a()Ljava/lang/String;

    move-result-object v1

    .line 259
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    const-string/jumbo v3, "utf8"

    invoke-direct {v2, v1, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p4, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 261
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 262
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 263
    invoke-static {v1, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 264
    new-instance p1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p1, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 265
    invoke-interface {p1, p4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 266
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object p4

    invoke-interface {p4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result p4

    const/16 v1, 0xc8

    if-ne p4, v1, :cond_1

    .line 267
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    const-string p4, "UTF-8"

    invoke-static {p1, p4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p3, p1

    .line 275
    :cond_1
    :goto_0
    goto :goto_1

    .line 273
    :catch_0
    move-exception p1

    .line 274
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 271
    :catch_1
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 269
    :catch_2
    move-exception p1

    .line 270
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 277
    :goto_1
    if-eqz p3, :cond_8

    .line 279
    const/4 p1, 0x3

    :try_start_1
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 280
    const-string p3, "errno"

    invoke-virtual {p4, p3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 281
    const/4 v1, 0x2

    const-string v2, "403"

    const-string v3, "200"

    if-nez p2, :cond_5

    .line 282
    :try_start_2
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "404"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 286
    :cond_2
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 287
    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I

    goto :goto_3

    .line 283
    :cond_3
    :goto_2
    const-string p2, "cputype"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 284
    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/VersionManager;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 285
    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I

    .line 286
    :cond_4
    goto :goto_3

    .line 290
    :cond_5
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 292
    const-string p2, "geturl"

    invoke-virtual {p4, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 293
    invoke-static {v0, p2}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    invoke-static {v0, v5}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I

    .line 295
    goto :goto_3

    :cond_6
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 296
    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I

    goto :goto_3

    .line 298
    :cond_7
    invoke-static {v0, p1}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 301
    :catch_3
    move-exception p2

    .line 302
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 303
    invoke-static {v0, p1}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I

    .line 304
    :goto_3
    goto :goto_4

    .line 306
    :cond_8
    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I

    .line 309
    :goto_4
    return-object v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/VersionManager;ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$a;
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/cyberplayer/utils/VersionManager;->a(ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;)Ljava/lang/String;
    .locals 1

    .line 337
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV5_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    if-ne p0, v0, :cond_0

    .line 338
    const-string p0, "armv5_none"

    return-object p0

    .line 339
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV5_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    if-ne p0, v0, :cond_1

    .line 340
    const-string p0, "armv5_vfp"

    return-object p0

    .line 341
    :cond_1
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV6_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    if-ne p0, v0, :cond_2

    .line 342
    const-string p0, "armv6_none"

    return-object p0

    .line 343
    :cond_2
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV6_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    if-ne p0, v0, :cond_3

    .line 344
    const-string p0, "armv6_vfp"

    return-object p0

    .line 345
    :cond_3
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    if-ne p0, v0, :cond_4

    .line 346
    const-string p0, "armv7_vfp"

    return-object p0

    .line 347
    :cond_4
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_VFPV3:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    if-ne p0, v0, :cond_5

    .line 348
    const-string p0, "armv7_vfpv3"

    return-object p0

    .line 349
    :cond_5
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_NEON:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    if-ne p0, v0, :cond_6

    .line 350
    const-string p0, "armv7_neon"

    return-object p0

    .line 351
    :cond_6
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->X86_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    if-ne p0, v0, :cond_7

    .line 352
    const-string p0, "intel_none"

    return-object p0

    .line 354
    :cond_7
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .locals 1

    .line 313
    if-nez p0, :cond_0

    .line 314
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->UNKNOWN:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 315
    :cond_0
    const-string v0, "armv5_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV5_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 317
    :cond_1
    const-string v0, "armv5_vfp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV5_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 319
    :cond_2
    const-string v0, "armv6_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV6_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 321
    :cond_3
    const-string v0, "armv6_vfp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 322
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV6_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 323
    :cond_4
    const-string v0, "armv7_vfp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 324
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 325
    :cond_5
    const-string v0, "armv7_vfpv3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 326
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_VFPV3:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 327
    :cond_6
    const-string v0, "armv7_neon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 328
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_NEON:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 329
    :cond_7
    const-string v0, "intel_none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 330
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->X86_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0

    .line 332
    :cond_8
    sget-object p0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->UNKNOWN:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0
.end method

.method public static getInstance()Lcom/baidu/cyberplayer/utils/VersionManager;
    .locals 1

    .line 53
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/VersionManager;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    .line 55
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    return-object v0
.end method


# virtual methods
.method public getCurrentSystemCpuTypeAndFeature(ILjava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;)V
    .locals 8
    .param p1, "timeout"    # I
    .param p2, "ak"    # Ljava/lang/String;
    .param p3, "sk"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;

    .line 184
    new-instance v6, Landroid/os/HandlerThread;

    const-string v0, "getCurrentSystemCpuTypeAndFeature"

    invoke-direct {v6, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$1;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "timeout":I
    .end local p2    # "ak":Ljava/lang/String;
    .end local p3    # "sk":Ljava/lang/String;
    .end local p4    # "callback":Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;
    .local v2, "timeout":I
    .local v3, "ak":Ljava/lang/String;
    .local v4, "sk":Ljava/lang/String;
    .local v5, "callback":Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;
    invoke-direct/range {v0 .. v6}, Lcom/baidu/cyberplayer/utils/VersionManager$1;-><init>(Lcom/baidu/cyberplayer/utils/VersionManager;ILjava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/VersionManager$RequestCpuTypeAndFeatureCallback;Landroid/os/HandlerThread;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 205
    return-void
.end method

.method public getCurrentVersion()Ljava/lang/String;
    .locals 1

    .line 166
    const-string v0, "baidu_product_1_9_1_1"

    return-object v0
.end method

.method public getDownloadUrlForCurrentVersion(ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;)V
    .locals 9
    .param p1, "timeout"    # I
    .param p2, "cpuType"    # Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .param p3, "ak"    # Ljava/lang/String;
    .param p4, "sk"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;

    .line 224
    new-instance v7, Landroid/os/HandlerThread;

    const-string v0, "getDownUrlForCurrentVersion"

    invoke-direct {v7, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 227
    new-instance v8, Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 228
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .end local p1    # "timeout":I
    .end local p2    # "cpuType":Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .end local p3    # "ak":Ljava/lang/String;
    .end local p4    # "sk":Ljava/lang/String;
    .end local p5    # "callback":Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;
    .local v2, "timeout":I
    .local v3, "cpuType":Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .local v4, "ak":Ljava/lang/String;
    .local v5, "sk":Ljava/lang/String;
    .local v6, "callback":Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;
    invoke-direct/range {v0 .. v7}, Lcom/baidu/cyberplayer/utils/VersionManager$2;-><init>(Lcom/baidu/cyberplayer/utils/VersionManager;ILcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/utils/VersionManager$RequestDownloadUrlForCurrentVersionCallback;Landroid/os/HandlerThread;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method
