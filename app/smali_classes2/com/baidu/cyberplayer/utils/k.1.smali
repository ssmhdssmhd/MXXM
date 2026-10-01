.class public Lcom/baidu/cyberplayer/utils/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/baidu/cyberplayer/utils/k;

.field private static final a:Ljava/lang/String;

.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const-class v0, Lcom/baidu/cyberplayer/utils/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/k;->a:Ljava/lang/String;

    .line 49
    const-string v0, "cyberplayer_auth"

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/utils/k;->a:Lcom/baidu/cyberplayer/utils/k;

    .line 77
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "01"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "02"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "03"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "04"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "05"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "06"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "07"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "08"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/k;->a:Ljava/util/List;

    .line 114
    const-string v0, ""

    sput-object v0, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    .line 116
    sput-object v0, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;

    .line 121
    sput-object v0, Lcom/baidu/cyberplayer/utils/k;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Z

    .line 130
    const-string v0, "android.permission.WRITE_SETTINGS"

    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/utils/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    .line 132
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/baidu/cyberplayer/utils/k;->e:Ljava/lang/String;

    .line 133
    return-void
.end method

.method private a()J
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    const-string/jumbo v1, "time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 299
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->c()V

    .line 301
    const-wide/16 v0, 0x0

    return-wide v0

    .line 309
    :cond_0
    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/k;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/k;
    .locals 1

    .line 165
    if-nez p0, :cond_0

    .line 166
    sget-object p0, Lcom/baidu/cyberplayer/utils/k;->a:Ljava/lang/String;

    const-string v0, "Error occurs with mContext"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->a:Lcom/baidu/cyberplayer/utils/k;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/baidu/cyberplayer/utils/k;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/utils/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/k;->a:Lcom/baidu/cyberplayer/utils/k;

    .line 176
    :cond_1
    sget-object p0, Lcom/baidu/cyberplayer/utils/k;->a:Lcom/baidu/cyberplayer/utils/k;

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 283
    const-string v1, "access"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    return-object v0
.end method

.method private a(JJLjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 458
    nop

    .line 460
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    goto :goto_0

    .line 461
    :catch_0
    move-exception p1

    .line 463
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p1, ""

    .line 465
    :goto_0
    return-object p1
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    .line 374
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 375
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 388
    const-string v0, "req_videoauth"

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 441
    nop

    .line 443
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    goto :goto_0

    .line 444
    :catch_0
    move-exception p1

    .line 446
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const-string p1, ""

    .line 448
    :goto_0
    return-object p1
.end method

.method private a(J)V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 498
    const-string/jumbo v1, "timeout"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 499
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 500
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/k;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->b()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/k;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/k;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 484
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 486
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 487
    const-string v1, "access"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 488
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 475
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 476
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 478
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 142
    const-string p0, ""

    sput-object p0, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    .line 143
    sput-object p0, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;

    .line 144
    return-void

    .line 146
    :cond_0
    sput-object p0, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    .line 147
    sget-object p0, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ne v1, p0, :cond_1

    .line 148
    sput-object p1, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;

    goto :goto_0

    .line 150
    :cond_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;

    .line 155
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/utils/k;->a:Z

    .line 238
    return-void
.end method

.method private a()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Z

    return v0
.end method

.method private a(JJLjava/lang/String;)Z
    .locals 7

    .line 422
    const/4 v0, 0x0

    if-nez p5, :cond_0

    return v0

    .line 423
    :cond_0
    sget-object v6, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/baidu/cyberplayer/utils/k;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 424
    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 425
    const/4 p1, 0x1

    return p1

    .line 430
    :cond_1
    return v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 401
    const-string v0, "res_videoauth"

    invoke-direct {p0, p1, v0, p2}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 402
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 403
    const/4 p1, 0x1

    return p1

    .line 408
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b()J
    .locals 5

    .line 316
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 319
    const-string/jumbo v1, "timeout"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 321
    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    .line 322
    nop

    .line 323
    const-wide/32 v0, 0x240c8400

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/k;->a(J)V

    .line 328
    :cond_0
    return-wide v0
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 335
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 338
    const-string/jumbo v1, "sign"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    if-nez v0, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->c()V

    .line 345
    :cond_0
    return-object v0
.end method

.method private b()V
    .locals 9

    .line 191
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->b()J

    move-result-wide v3

    .line 192
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->a()J

    move-result-wide v1

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 194
    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->c()V

    .line 196
    return-void

    .line 198
    :cond_0
    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-lez v0, :cond_5

    cmp-long v0, v1, v7

    if-gtz v0, :cond_1

    move-object v0, p0

    goto :goto_1

    .line 207
    :cond_1
    sub-long/2addr v5, v1

    cmp-long v0, v5, v3

    if-lez v0, :cond_2

    .line 208
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->c()V

    .line 209
    return-void

    .line 212
    :cond_2
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->b()Ljava/lang/String;

    move-result-object v5

    .line 213
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/cyberplayer/utils/k;->a(JJLjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->c()V

    .line 215
    return-void

    .line 217
    :cond_3
    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 218
    invoke-virtual {p0, v2}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;)Z

    .line 219
    goto :goto_0

    .line 220
    :cond_4
    return-void

    .line 198
    :cond_5
    move-object v0, p0

    .line 199
    :goto_1
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->c()V

    .line 200
    return-void
.end method

.method private b(J)V
    .locals 3

    .line 507
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 510
    const-string/jumbo v1, "time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 511
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 512
    return-void
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/utils/k;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->e()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 522
    const-string/jumbo v1, "sign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 523
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 524
    return-void
.end method

.method private c()V
    .locals 3

    .line 351
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/k;->a(Z)V

    .line 355
    new-instance v0, Lcom/baidu/cyberplayer/utils/k$2;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/utils/k$2;-><init>(Lcom/baidu/cyberplayer/utils/k;)V

    .line 364
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "CyberplayerAuQuery"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 365
    return-void

    .line 352
    :cond_1
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 8

    .line 545
    const-string v1, "au_"

    const-string/jumbo v2, "timeout"

    const-string v0, "errno"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 546
    const-string/jumbo p1, "time"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 547
    const-string/jumbo p1, "sign"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/baidu/cyberplayer/utils/k;->e:Ljava/lang/String;

    invoke-direct {p0, v4, v5, p1}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 551
    if-nez p1, :cond_0

    .line 555
    return-void

    .line 558
    :cond_0
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz p1, :cond_1

    .line 559
    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_1

    .line 567
    return-void

    .line 613
    :catch_0
    move-exception v0

    move-object p1, v0

    move-object v2, p0

    goto/16 :goto_5

    .line 570
    :cond_1
    :try_start_2
    sget-object p1, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;)V

    .line 571
    const-string p1, "01"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 572
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 573
    return-void

    .line 574
    :cond_2
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz p1, :cond_3

    .line 576
    :try_start_3
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->d()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 578
    :cond_3
    :try_start_4
    const-string p1, "02"

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 581
    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v0, :cond_5

    :try_start_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 582
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v5, :cond_4

    .line 583
    nop

    .line 585
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 590
    nop

    .line 591
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "au_sub_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;I)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    .line 588
    :catch_1
    move-exception v0

    .line 589
    goto :goto_0

    .line 593
    :cond_4
    :goto_1
    goto :goto_0

    .line 596
    :cond_5
    :goto_2
    nop

    .line 597
    :try_start_8
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3

    if-eqz p1, :cond_8

    .line 598
    :try_start_9
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 599
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_6

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_7

    .line 600
    :cond_6
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    .line 602
    :cond_7
    double-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long v0, v0, v2

    .line 603
    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/k;->a(J)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    .line 604
    move-wide v5, v0

    goto :goto_3

    .line 605
    :cond_8
    :try_start_a
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->b()J

    move-result-wide v0

    move-wide v5, v0

    .line 608
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 609
    invoke-direct {p0, v3, v4}, Lcom/baidu/cyberplayer/utils/k;->b(J)V

    .line 611
    sget-object v7, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    move-object v2, p0

    :try_start_b
    invoke-direct/range {v2 .. v7}, Lcom/baidu/cyberplayer/utils/k;->a(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 612
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/k;->b(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_2

    .line 618
    goto :goto_6

    .line 613
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, p0

    :goto_4
    move-object p1, v0

    .line 614
    :goto_5
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 619
    :goto_6
    return-void
.end method

.method private d()V
    .locals 4

    .line 530
    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "au_sub_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;I)V

    .line 532
    goto :goto_0

    .line 533
    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    .line 627
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    return-void

    .line 630
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 631
    sget-object v1, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    const-string v2, "http://cybertran.baidu.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 634
    const-string v3, "/mediasdk/video"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "method"

    const-string v4, "sdkauth"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ak"

    sget-object v4, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v2, "sign"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "uuid"

    sget-object v2, Lcom/baidu/cyberplayer/utils/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 647
    new-instance v1, Lcom/baidu/cyberplayer/utils/e;

    iget-object v2, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/baidu/cyberplayer/utils/e;-><init>(Landroid/content/Context;)V

    .line 648
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 651
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/e;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 653
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 654
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 655
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/n;->a(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    .line 656
    if-nez v2, :cond_1

    .line 657
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 660
    :cond_1
    invoke-direct {p0, v2}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/k;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/e;->a()V

    throw v0

    .line 672
    :catch_0
    move-exception v0

    goto :goto_0

    .line 668
    :catch_1
    move-exception v0

    goto :goto_0

    .line 664
    :catch_2
    move-exception v0

    .line 678
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/e;->a()V

    .line 679
    nop

    .line 680
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 182
    new-instance v0, Lcom/baidu/cyberplayer/utils/k$1;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/utils/k$1;-><init>(Lcom/baidu/cyberplayer/utils/k;)V

    .line 188
    new-instance v1, Ljava/lang/Thread;

    const-string v2, "CyberplayerAuCheck"

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 189
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 250
    sget-object p1, Lcom/baidu/cyberplayer/utils/k;->a:Ljava/lang/String;

    const-string v0, "Error occurs with mContext"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return v1

    .line 253
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_5

    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 256
    :cond_1
    sget-object v0, Lcom/baidu/cyberplayer/utils/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    return v3

    .line 259
    :cond_2
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/k;->a:Landroid/content/Context;

    sget-object v2, Lcom/baidu/cyberplayer/utils/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "au_sub_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 262
    if-ne v2, p1, :cond_3

    .line 263
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/k;->c()V

    .line 264
    goto :goto_0

    .line 265
    :cond_3
    if-nez p1, :cond_4

    .line 266
    const/4 v1, 0x0

    goto :goto_0

    .line 268
    :cond_4
    nop

    .line 273
    :goto_0
    return v1

    .line 254
    :cond_5
    :goto_1
    return v3
.end method
