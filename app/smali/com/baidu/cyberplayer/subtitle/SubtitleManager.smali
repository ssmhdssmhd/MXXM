.class public final Lcom/baidu/cyberplayer/subtitle/SubtitleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;
    }
.end annotation


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Lcom/baidu/cyberplayer/core/BVideoView;

.field private a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;

.field private a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

.field private a:Lcom/baidu/cyberplayer/subtitle/b;

.field private a:Lcom/baidu/cyberplayer/subtitle/c;

.field private a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

.field private a:Ljava/lang/String;

.field private volatile a:Z

.field private b:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/subtitle/c;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoView"    # Lcom/baidu/cyberplayer/core/BVideoView;
    .param p3, "subtitleView"    # Lcom/baidu/cyberplayer/subtitle/c;
    .param p4, "callback"    # Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    .line 84
    iput-object p3, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/c;

    .line 85
    iput-object p4, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    .line 86
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Lcom/baidu/cyberplayer/subtitle/b;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Lcom/baidu/cyberplayer/subtitle/c;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/c;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 419
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 420
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_0

    .line 421
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 423
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 379
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 380
    return-object v1

    .line 383
    :cond_0
    invoke-direct {p0, p2}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 387
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 389
    :cond_2
    return-object v1
.end method

.method private a()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "SubtitlePlayManager"

    const-string v1, "subtitle has already inited"

    invoke-static {v0, v1}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/core/BVideoView;

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/c;

    iget-object v3, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    invoke-static {v0, v1, v2, v3}, Lcom/baidu/cyberplayer/subtitle/b;->a(Landroid/content/Context;Lcom/baidu/cyberplayer/core/BVideoView;Lcom/baidu/cyberplayer/subtitle/c;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)Lcom/baidu/cyberplayer/subtitle/b;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    .line 98
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    if-nez v0, :cond_1

    .line 99
    return-void

    .line 102
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->setIsShowSubtitle(Z)V

    .line 103
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b()V

    .line 104
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;)V
    .locals 3

    .line 146
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;

    .line 148
    const/4 p2, 0x0

    iput p2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b:I

    .line 149
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a()V

    .line 151
    iget-object p2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    if-nez p2, :cond_0

    .line 152
    const-string p1, "SubtitlePlayManager"

    const-string p2, "init subtitle failed"

    invoke-static {p1, p2}, Lcom/baidu/cyberplayer/utils/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    const/16 v1, 0xbb9

    const-string v2, "subtitle init failed"

    invoke-static {p1, p2, v0, v1, v2}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 156
    return-void

    .line 158
    :cond_0
    iget-object p2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;)V
    .locals 2

    .line 210
    iput-object p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/baidu/cyberplayer/utils/s;

    new-instance v1, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;

    invoke-direct {v1, p0, p1, p4, p3}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$2;-><init>(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;I)V

    invoke-direct {v0, v1}, Lcom/baidu/cyberplayer/utils/s;-><init>(Lcom/baidu/cyberplayer/utils/s$a;)V

    .line 234
    invoke-virtual {v0, p1, p2}, Lcom/baidu/cyberplayer/utils/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 280
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 281
    const-string v0, ".srt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".ass"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".ssa"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 282
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private b()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    new-instance v1, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$1;

    invoke-direct {v1, p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$1;-><init>(Lcom/baidu/cyberplayer/subtitle/SubtitleManager;)V

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b;->a(Lcom/baidu/cyberplayer/utils/u$a;)V

    .line 116
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/c;

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->getSubtitleSettings()Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/c;->b(Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;)V

    .line 117
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    .line 400
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    const-string v1, "srt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ssa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file Name must end with subtitle type, fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    const/16 v3, 0xbba

    invoke-static {v0, v2, v1, v3, p1}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 410
    const/4 p1, 0x0

    return p1

    .line 405
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private c()V
    .locals 5

    .line 448
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;

    sget-object v2, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "04"

    const-string v4, "01"

    if-ne v1, v2, :cond_0

    .line 452
    :try_start_1
    const-string v1, "030102"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 454
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 457
    :cond_0
    const-string v1, "030101"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 459
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 461
    :goto_0
    const-string v1, "05"

    iget v2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 462
    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 465
    goto :goto_1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string v1, "SubtitlePlayManager"

    const-string v2, "add statistic data fail"

    invoke-static {v1, v2, v0}, Lcom/baidu/cyberplayer/utils/m;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 466
    :goto_1
    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    .line 433
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "down dir not writable, dirPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    const/16 v3, 0xbc5

    invoke-static {v0, v2, v1, v3, p1}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 441
    const/4 p1, 0x0

    return p1

    .line 436
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getSubtitleSettings()Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;
    .locals 3

    .line 366
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    iget-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;-><init>(Landroid/content/Context;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;)V

    iput-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    return-object v0
.end method

.method public isShowSubtitle()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Z

    return v0
.end method

.method public manualSyncSubtitle(I)V
    .locals 1
    .param p1, "msec"    # I

    .line 329
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    if-nez v0, :cond_0

    .line 330
    return-void

    .line 332
    :cond_0
    iput p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:I

    .line 333
    if-ltz p1, :cond_1

    .line 334
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/subtitle/b;->b(I)V

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/subtitle/b;->c(I)V

    .line 338
    :goto_0
    return-void
.end method

.method public releaseSubtitle()V
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->c()V

    .line 293
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/c;->a(Lcom/baidu/cyberplayer/utils/v;)V

    .line 295
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/subtitle/b;->a()V

    .line 296
    iput-object v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleSettings;->a()V

    .line 301
    :cond_1
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "msec"    # I

    .line 346
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 349
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->startSubtitle(Ljava/lang/String;)V

    .line 350
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b:I

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    iget v1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b:I

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/b;->d(I)V

    .line 353
    :cond_0
    iget v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:I

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->manualSyncSubtitle(I)V

    goto :goto_0

    .line 355
    :cond_1
    return-void

    .line 358
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/b;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/subtitle/b;->a(I)V

    .line 359
    return-void
.end method

.method public setIsShowSubtitle(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .line 308
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Z

    .line 309
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Z

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/c;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/subtitle/c;->setVisibility(I)V

    .line 314
    :goto_0
    return-void
.end method

.method public startSubtitle(Ljava/lang/String;)V
    .locals 5
    .param p1, "subtitlePath"    # Ljava/lang/String;

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xbba

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    const-string v3, "subtitlePath must not empty."

    const-string v4, ""

    invoke-static {v0, v4, v2, v1, v3}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 128
    return-void

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    const-string v3, "subtitlePath must be end with subtitle type"

    invoke-static {v0, p1, v2, v1, v3}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 134
    return-void

    .line 137
    :cond_1
    sget-object v0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;->b:Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;

    invoke-direct {p0, p1, v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/SubtitleManager$a;)V

    .line 138
    return-void
.end method

.method public startSubtitle(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;)V
    .locals 6
    .param p1, "downUrl"    # Ljava/lang/String;
    .param p2, "fullPath"    # Ljava/lang/String;
    .param p3, "baseAdjust"    # I
    .param p4, "downCallback"    # Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;

    .line 246
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/d;->a(Landroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    const/16 v4, 0xbbe

    const-string v5, "network not connected!"

    invoke-static {v0, v1, v3, v4, v5}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 250
    if-eqz p4, :cond_0

    .line 251
    invoke-interface {p4, v2, v5}, Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;->onDownFinished(ZLjava/lang/String;)V

    .line 253
    :cond_0
    return-void

    .line 255
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    const/16 v4, 0xbba

    const-string v5, "fullPath must not be empty!"

    invoke-static {v0, v1, v3, v4, v5}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 259
    if-eqz p4, :cond_2

    .line 260
    invoke-interface {p4, v2, v5}, Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;->onDownFinished(ZLjava/lang/String;)V

    .line 262
    :cond_2
    return-void

    .line 264
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 266
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;)V

    goto :goto_0

    .line 268
    :cond_4
    if-eqz p4, :cond_5

    .line 269
    const-string v0, "fullPath not writable or illegal!"

    invoke-interface {p4, v2, v0}, Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;->onDownFinished(ZLjava/lang/String;)V

    .line 272
    :cond_5
    :goto_0
    return-void
.end method

.method public startSubtitle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;)V
    .locals 6
    .param p1, "downUrl"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "baseAdjust"    # I
    .param p5, "downCallback"    # Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;

    .line 171
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/d;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    const/16 v3, 0xbbe

    const-string v4, "network not connected!"

    invoke-static {v0, p1, v2, v3, v4}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 175
    if-eqz p5, :cond_0

    .line 176
    invoke-interface {p5, v1, v4}, Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;->onDownFinished(ZLjava/lang/String;)V

    .line 178
    :cond_0
    return-void

    .line 181
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 191
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-nez v0, :cond_4

    .line 193
    if-eqz p5, :cond_3

    .line 194
    const-string v0, "dir or fileName illegal!"

    invoke-interface {p5, v1, v0}, Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;->onDownFinished(ZLjava/lang/String;)V

    .line 196
    :cond_3
    return-void

    .line 198
    :cond_4
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a(Ljava/lang/String;Ljava/lang/String;ILcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;)V

    .line 199
    return-void

    .line 182
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/cyberplayer/subtitle/SubtitleManager;->a:Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;

    const/16 v3, 0xbba

    const-string v4, ""

    const-string v5, "params must not be empty!"

    invoke-static {v0, v4, v2, v3, v5}, Lcom/baidu/cyberplayer/subtitle/utils/SubtitleError;->notifyErrorOccurred(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/cyberplayer/subtitle/utils/SubtitleErrorCallback;ILjava/lang/String;)V

    .line 185
    if-eqz p5, :cond_6

    .line 186
    invoke-interface {p5, v1, v5}, Lcom/baidu/cyberplayer/subtitle/utils/DownFinishCallback;->onDownFinished(ZLjava/lang/String;)V

    .line 188
    :cond_6
    return-void
.end method
