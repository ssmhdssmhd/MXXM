.class public Lcom/baidu/cyberplayer/dlna/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;
.implements Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider;
.implements Lcom/baidu/cyberplayer/utils/aA;
.implements Lcom/baidu/cyberplayer/utils/as;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/cyberplayer/dlna/c$d;,
        Lcom/baidu/cyberplayer/dlna/c$e;,
        Lcom/baidu/cyberplayer/dlna/c$b;,
        Lcom/baidu/cyberplayer/dlna/c$a;,
        Lcom/baidu/cyberplayer/dlna/c$c;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/cyberplayer/dlna/c;


# instance fields
.field private final A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private a:I

.field private a:J

.field private a:Landroid/content/Context;

.field private a:Landroid/os/Handler;

.field private a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

.field private a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

.field private a:Lcom/baidu/cyberplayer/utils/aY;

.field private a:Lcom/baidu/cyberplayer/utils/aa;

.field private a:Lcom/baidu/cyberplayer/utils/bB;

.field private a:Lcom/baidu/cyberplayer/utils/cd;

.field private a:Lcom/baidu/cyberplayer/utils/k;

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private a:Ljava/util/Timer;

.field private a:Ljava/util/TimerTask;

.field private a:Z

.field private b:I

.field private b:J

.field private b:Lcom/baidu/cyberplayer/utils/aa;

.field private b:Ljava/lang/String;

.field private b:Ljava/util/Timer;

.field private b:Ljava/util/TimerTask;

.field private b:Z

.field private final c:I

.field private c:Ljava/lang/String;

.field private c:Ljava/util/Timer;

.field private c:Ljava/util/TimerTask;

.field private c:Z

.field private final d:I

.field private d:Ljava/lang/String;

.field private d:Z

.field private final e:I

.field private e:Ljava/lang/String;

.field private final f:I

.field private f:Ljava/lang/String;

.field private final g:I

.field private g:Ljava/lang/String;

.field private final h:I

.field private h:Ljava/lang/String;

.field private final i:I

.field private i:Ljava/lang/String;

.field private final j:I

.field private j:Ljava/lang/String;

.field private final k:I

.field private k:Ljava/lang/String;

.field private final l:I

.field private final l:Ljava/lang/String;

.field private final m:I

.field private final m:Ljava/lang/String;

.field private final n:I

.field private final n:Ljava/lang/String;

.field private final o:I

.field private final o:Ljava/lang/String;

.field private final p:I

.field private final p:Ljava/lang/String;

.field private final q:I

.field private final q:Ljava/lang/String;

.field private final r:I

.field private final r:Ljava/lang/String;

.field private final s:I

.field private final s:Ljava/lang/String;

.field private final t:I

.field private final t:Ljava/lang/String;

.field private final u:I

.field private final u:Ljava/lang/String;

.field private final v:I

.field private final v:Ljava/lang/String;

.field private final w:I

.field private final w:Ljava/lang/String;

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    .line 52
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/k;

    .line 53
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Z

    .line 55
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Z

    .line 56
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    .line 57
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    .line 59
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    .line 61
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/util/Timer;

    .line 68
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/util/Timer;

    .line 69
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/util/Timer;

    .line 70
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/content/Context;

    .line 71
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->g:Ljava/lang/String;

    .line 75
    iput-boolean v1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Z

    .line 77
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/baidu/cyberplayer/dlna/c;->a:J

    .line 78
    iput-wide v2, p0, Lcom/baidu/cyberplayer/dlna/c;->b:J

    .line 79
    const/4 v2, -0x1

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->a:I

    .line 80
    const-string v2, "NONE"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->j:Ljava/lang/String;

    .line 81
    iput v1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:I

    .line 82
    const-string v2, ""

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->k:Ljava/lang/String;

    .line 83
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    .line 87
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->c:I

    .line 89
    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->d:I

    .line 90
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->e:I

    .line 91
    const/16 v2, 0x3c

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->f:I

    .line 92
    const/4 v2, 0x2

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->g:I

    .line 96
    const-string v2, "objectID"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->l:Ljava/lang/String;

    .line 97
    const-string v2, "filter"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->m:Ljava/lang/String;

    .line 98
    const-string/jumbo v2, "startIndex"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->n:Ljava/lang/String;

    .line 99
    const-string/jumbo v2, "sortCriteria"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->o:Ljava/lang/String;

    .line 100
    const-string v2, "requestCount"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->p:Ljava/lang/String;

    .line 101
    const-string v2, "deviceId"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->q:Ljava/lang/String;

    .line 102
    const-string v2, "searchPath"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->r:Ljava/lang/String;

    .line 105
    const-string/jumbo v2, "subSwitch"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->s:Ljava/lang/String;

    .line 106
    const-string v2, "muteSwitch"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->t:Ljava/lang/String;

    .line 107
    const-string v2, "rendererDevId"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->u:Ljava/lang/String;

    .line 108
    const-string v2, "setMediaURI"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->v:Ljava/lang/String;

    .line 109
    const-string v2, "seek"

    iput-object v2, p0, Lcom/baidu/cyberplayer/dlna/c;->w:Ljava/lang/String;

    .line 111
    const/16 v2, 0x65

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->h:I

    .line 112
    const/16 v2, 0x66

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->i:I

    .line 113
    const/16 v2, 0x67

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->j:I

    .line 114
    const/16 v2, 0x68

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->k:I

    .line 115
    const/16 v2, 0x69

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->l:I

    .line 116
    const/16 v2, 0x6a

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->m:I

    .line 117
    const/16 v2, 0x6b

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->n:I

    .line 118
    const/16 v2, 0x6c

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->o:I

    .line 120
    const/16 v2, 0x6e

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->p:I

    .line 121
    const/16 v2, 0x6f

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->q:I

    .line 122
    const/16 v2, 0x70

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->r:I

    .line 123
    const/16 v2, 0x71

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->s:I

    .line 124
    const/16 v2, 0x72

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->t:I

    .line 125
    const/16 v2, 0x73

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->u:I

    .line 126
    const/16 v2, 0x74

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->v:I

    .line 127
    const/16 v2, 0x75

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->w:I

    .line 128
    const/16 v2, 0x76

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->x:I

    .line 129
    const/16 v2, 0x77

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->y:I

    .line 131
    const/16 v2, 0x78

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->z:I

    .line 132
    const/16 v2, 0x79

    iput v2, p0, Lcom/baidu/cyberplayer/dlna/c;->A:I

    .line 135
    iput v1, p0, Lcom/baidu/cyberplayer/dlna/c;->B:I

    .line 136
    iput v1, p0, Lcom/baidu/cyberplayer/dlna/c;->C:I

    .line 137
    iput v1, p0, Lcom/baidu/cyberplayer/dlna/c;->D:I

    .line 138
    iput v1, p0, Lcom/baidu/cyberplayer/dlna/c;->E:I

    .line 141
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/util/TimerTask;

    .line 142
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/util/TimerTask;

    .line 143
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/util/TimerTask;

    .line 340
    new-instance v0, Lcom/baidu/cyberplayer/utils/aY;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/aY;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    .line 341
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/dlna/DLNAErrorListener;)V

    .line 342
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aA;)V

    .line 343
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    invoke-virtual {v0, p0}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/as;)V

    .line 344
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/content/Context;

    .line 345
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/lang/Object;

    .line 346
    new-instance p1, Lcom/baidu/cyberplayer/utils/cd;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/cd;-><init>()V

    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/cd;

    .line 347
    new-instance p1, Lcom/baidu/cyberplayer/dlna/c$e;

    invoke-direct {p1, p0}, Lcom/baidu/cyberplayer/dlna/c$e;-><init>(Lcom/baidu/cyberplayer/dlna/c;)V

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/dlna/c$e;->start()V

    .line 348
    iget-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 350
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 355
    :cond_0
    goto :goto_1

    .line 356
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 352
    :catch_0
    move-exception v0

    .line 354
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 356
    :goto_1
    monitor-exit p1

    .line 357
    return-void

    .line 356
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/baidu/cyberplayer/dlna/c;->E:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:J

    return-wide v0
.end method

.method private a(Ljava/lang/String;)J
    .locals 2

    .line 463
    nop

    .line 464
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 466
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    .line 467
    invoke-virtual {p1}, Ljava/util/Date;->getHours()I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    invoke-virtual {p1}, Ljava/util/Date;->getMinutes()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    add-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getSeconds()I

    move-result p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p1

    int-to-long v0, v0

    .line 472
    goto :goto_0

    .line 469
    :catch_0
    move-exception p1

    .line 471
    invoke-virtual {p1}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 v0, 0x0

    .line 473
    :goto_0
    return-wide v0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    return-object p0
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bK;)Lcom/baidu/cyberplayer/dlna/FileItem;
    .locals 7

    .line 906
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->c()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 908
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/dlna/FileItem;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/dlna/FileItem;-><init>()V

    .line 909
    sget-object v1, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->b:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/FileItem;->setContentType(Lcom/baidu/cyberplayer/dlna/ContentItem$a;)V

    .line 910
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/FileItem;->setDate(Ljava/lang/String;)V

    .line 911
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/FileItem;->setProtocolInfo(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/FileItem;->setResURL(Ljava/lang/String;)V

    .line 913
    nop

    .line 914
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-lez v5, :cond_1

    .line 915
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->b()J

    move-result-wide v1

    goto :goto_0

    .line 914
    :cond_1
    move-wide v1, v3

    .line 917
    :goto_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/dlna/FileItem;->setMimeType(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->a()Lcom/baidu/cyberplayer/utils/bM;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/bM;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 919
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/baidu/cyberplayer/utils/bK;->a(I)Lcom/baidu/cyberplayer/utils/bL;

    move-result-object v5

    .line 920
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/bL;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/dlna/FileItem;->setProtocolInfo(Ljava/lang/String;)V

    .line 921
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/bL;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/dlna/FileItem;->setMimeType(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/bL;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/baidu/cyberplayer/dlna/FileItem;->setResURL(Ljava/lang/String;)V

    .line 923
    cmp-long v6, v3, v1

    if-nez v6, :cond_2

    const-string/jumbo v3, "size"

    invoke-virtual {v5, v3}, Lcom/baidu/cyberplayer/utils/bL;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 926
    invoke-virtual {v5, v3}, Lcom/baidu/cyberplayer/utils/bL;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 930
    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/dlna/FileItem;->setSize(J)V

    .line 931
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->a()Lcom/baidu/cyberplayer/utils/bL;

    move-result-object v1

    .line 932
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bL;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 933
    new-instance v2, Lcom/baidu/cyberplayer/dlna/ResourceItem;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/dlna/ResourceItem;-><init>()V

    .line 934
    sget-object v3, Lcom/baidu/cyberplayer/dlna/ContentItem$a;->c:Lcom/baidu/cyberplayer/dlna/ContentItem$a;

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/dlna/ResourceItem;->setContentType(Lcom/baidu/cyberplayer/dlna/ContentItem$a;)V

    .line 935
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bL;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/dlna/ResourceItem;->setProtocolInfo(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bL;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/dlna/ResourceItem;->setResURL(Ljava/lang/String;)V

    .line 937
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/bL;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/dlna/ResourceItem;->setFormat(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/dlna/FileItem;->setResItem(Lcom/baidu/cyberplayer/dlna/ResourceItem;)V

    .line 940
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/FileItem;->setObjectId(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/dlna/FileItem;->setParentId(Ljava/lang/String;)V

    .line 942
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bK;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/dlna/FileItem;->setTitle(Ljava/lang/String;)V

    .line 943
    return-object v0

    .line 907
    :cond_4
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/cyberplayer/dlna/c;
    .locals 1

    .line 477
    sget-object v0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/c;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/baidu/cyberplayer/dlna/c;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/dlna/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/c;

    .line 480
    :cond_0
    sget-object p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/c;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aY;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/aa;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/bB;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/bB;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/bB;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bB;
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/utils/bB;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bB;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bB;
    .locals 4

    .line 877
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bB;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    return-object p1

    .line 879
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v0

    .line 880
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 881
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/bB;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v2

    .line 882
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 883
    check-cast v2, Lcom/baidu/cyberplayer/utils/bB;

    invoke-direct {p0, v2, p2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/utils/bB;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object v2

    .line 885
    if-eqz v2, :cond_1

    .line 886
    return-object v2

    .line 880
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    .line 767
    packed-switch p1, :pswitch_data_0

    .line 782
    :pswitch_0
    const-string p1, "Unknown Error"

    return-object p1

    .line 769
    :pswitch_1
    const-string p1, ""

    return-object p1

    .line 771
    :pswitch_2
    const-string p1, "invalid render name"

    return-object p1

    .line 773
    :pswitch_3
    const-string p1, "Underlying resource hasn\'t been ready"

    return-object p1

    .line 775
    :pswitch_4
    const-string p1, "Permission denied"

    return-object p1

    .line 777
    :pswitch_5
    const-string p1, "invalid server name"

    return-object p1

    .line 779
    :pswitch_6
    const-string p1, "no candidate path for browse"

    return-object p1

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;I)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/dlna/c;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 810
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 811
    nop

    .line 812
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->g()Ljava/lang/String;

    move-result-object v0

    .line 813
    const-string v1, "Baidu MiniRouter"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "0"

    if-nez v1, :cond_1

    const-string v1, "Baidu Router"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 818
    :cond_0
    nop

    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    aget-object v4, p1, v2

    invoke-virtual {v0, v1, v3, v4}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    array-length v4, p1

    sub-int/2addr v4, v2

    aget-object p1, p1, v4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 825
    :cond_2
    return-object v3
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/TimerTask;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/util/TimerTask;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 170
    iget v0, p0, Lcom/baidu/cyberplayer/dlna/c;->E:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/c;->E:I

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get server heart beat timeout  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/dlna/c;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLNAServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v0, p0, Lcom/baidu/cyberplayer/dlna/c;->E:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Z

    if-eqz v0, :cond_1

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/c;->E:I

    .line 175
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->SERVER_TIMEOUT:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;->onEventReceived(Lcom/baidu/cyberplayer/dlna/DLNAEventType;Ljava/lang/String;)V

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aY;->d(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 179
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    .line 182
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 186
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/c;->a()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/bB;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/utils/bB;Ljava/util/List;)V

    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Z)V
    .locals 1

    .line 804
    if-nez p1, :cond_0

    .line 805
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Z)Lcom/baidu/cyberplayer/utils/bB;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/bB;

    .line 807
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/bB;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/cyberplayer/utils/bB;",
            "Ljava/util/List<",
            "Lcom/baidu/cyberplayer/dlna/FileItem;",
            ">;)V"
        }
    .end annotation

    .line 893
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/bB;->b()I

    move-result v0

    .line 894
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 895
    invoke-virtual {p1, v1}, Lcom/baidu/cyberplayer/utils/bB;->a(I)Lcom/baidu/cyberplayer/utils/bl;

    move-result-object v2

    .line 896
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bl;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 897
    check-cast v2, Lcom/baidu/cyberplayer/utils/bB;

    invoke-direct {p0, v2, p2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/utils/bB;Ljava/util/List;)V

    goto :goto_1

    .line 898
    :cond_0
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/bl;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 899
    check-cast v2, Lcom/baidu/cyberplayer/utils/bK;

    invoke-direct {p0, v2}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/utils/bK;)Lcom/baidu/cyberplayer/dlna/FileItem;

    move-result-object v2

    .line 900
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 903
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/dlna/c;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/baidu/cyberplayer/dlna/c;->D:I

    return p1
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;Lcom/baidu/cyberplayer/utils/aa;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/TimerTask;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/util/TimerTask;

    return-object p1
.end method

.method private b()V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->a()V

    .line 313
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/c;->D:I

    .line 314
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 315
    return-void
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/c;->b()V

    return-void
.end method

.method static synthetic b(Lcom/baidu/cyberplayer/dlna/c;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Z

    return p1
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/Timer;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/dlna/c;)Ljava/util/TimerTask;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/dlna/c;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/util/TimerTask;

    return-object p1
.end method

.method private c()V
    .locals 3

    .line 318
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->a()V

    .line 319
    iget v0, p0, Lcom/baidu/cyberplayer/dlna/c;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/c;->D:I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get render state timeout  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/baidu/cyberplayer/dlna/c;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DLNAServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget v0, p0, Lcom/baidu/cyberplayer/dlna/c;->D:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Z

    if-eqz v0, :cond_1

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/c;->D:I

    .line 324
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->RENDER_TIMEOUT:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;->onEventReceived(Lcom/baidu/cyberplayer/dlna/DLNAEventType;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aY;->d(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 328
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aY;->a(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    .line 331
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/cd;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cd;->b()V

    .line 336
    return-void
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/c;->c()V

    return-void
.end method

.method static synthetic c(Lcom/baidu/cyberplayer/dlna/c;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Z

    return p1
.end method

.method static synthetic d(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method private d()V
    .locals 1

    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    .line 362
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/cyberplayer/dlna/c;->B:I

    .line 364
    iput v0, p0, Lcom/baidu/cyberplayer/dlna/c;->C:I

    .line 365
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/c;->e()V

    .line 366
    return-void
.end method

.method static synthetic d(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/c;->d()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/cyberplayer/dlna/c;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Z

    return p1
.end method

.method static synthetic e(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->e:Ljava/lang/String;

    return-object p1
.end method

.method private e()V
    .locals 1

    .line 369
    const-string v0, "00:00:00"

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Ljava/lang/String;

    .line 370
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->f:Ljava/lang/String;

    .line 371
    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->e:Ljava/lang/String;

    .line 372
    const-string v0, "NONE"

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->j:Ljava/lang/String;

    .line 373
    const-string v0, "STOPPED"

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    .line 374
    return-void
.end method

.method static synthetic e(Lcom/baidu/cyberplayer/dlna/c;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/c;->e()V

    return-void
.end method

.method static synthetic f(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/baidu/cyberplayer/dlna/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/dlna/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/baidu/cyberplayer/dlna/c;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/baidu/cyberplayer/dlna/c;->i:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public OnError(ILjava/lang/String;)V
    .locals 0
    .param p1, "errCode"    # I
    .param p2, "errMsg"    # Ljava/lang/String;

    .line 762
    iput p1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:I

    .line 763
    iput-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->k:Ljava/lang/String;

    .line 764
    return-void
.end method

.method a(J)V
    .locals 5

    .line 485
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    if-nez v0, :cond_1

    .line 489
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object v0

    .line 492
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 495
    :try_start_0
    const-string v2, "04"

    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    const-string v2, "07"

    iget-object v3, p0, Lcom/baidu/cyberplayer/dlna/c;->f:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/baidu/cyberplayer/dlna/c;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 501
    const-string v2, "09"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 503
    const-string v0, "08"

    invoke-virtual {v1, v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 509
    const-string p1, "01"

    const-string p2, "020101"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    nop

    .line 515
    iget-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 517
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/baidu/cyberplayer/dlna/c;->b:J

    .line 518
    return-void

    .line 511
    :catch_0
    move-exception p1

    .line 512
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 513
    return-void

    .line 487
    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aa;)V
    .locals 2

    .line 1652
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    if-eqz v0, :cond_1

    .line 1653
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;->deviceAdded(Lcom/baidu/cyberplayer/dlna/DLNADeviceType;Ljava/lang/String;)V

    goto :goto_0

    .line 1656
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1657
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_RENDERER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;->deviceAdded(Lcom/baidu/cyberplayer/dlna/DLNADeviceType;Ljava/lang/String;)V

    .line 1660
    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 378
    if-nez p1, :cond_0

    .line 379
    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; prev duration is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; fetch duration is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setDuration"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 384
    return-void

    .line 385
    :cond_1
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->f:Ljava/lang/String;

    .line 388
    iget-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    if-eqz p1, :cond_2

    .line 389
    iget-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->DURATION_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;->onEventReceived(Lcom/baidu/cyberplayer/dlna/DLNAEventType;Ljava/lang/String;)V

    .line 391
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1680
    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    if-eqz p2, :cond_1

    .line 1681
    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    const-string/jumbo p3, "urn:schemas-upnp-org:service:ContentDirectory:1"

    invoke-virtual {p2, p3}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p2

    .line 1682
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ac;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1683
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/c;->b()V

    .line 1684
    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->i:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->i:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_0

    .line 1685
    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    iget-object p3, p0, Lcom/baidu/cyberplayer/dlna/c;->i:Ljava/lang/String;

    const/4 p4, 0x1

    invoke-direct {p0, p2, p3, p4}, Lcom/baidu/cyberplayer/dlna/c;->a(Lcom/baidu/cyberplayer/utils/aa;Ljava/lang/String;Z)V

    .line 1686
    :cond_0
    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    if-eqz p2, :cond_1

    .line 1687
    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    sget-object p3, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->CONTENT_DIRECTORY_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    const-string p4, ""

    invoke-interface {p2, p3, p4}, Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;->onEventReceived(Lcom/baidu/cyberplayer/dlna/DLNAEventType;Ljava/lang/String;)V

    .line 1692
    :cond_1
    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    if-eqz p2, :cond_4

    .line 1693
    iget-object p2, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    const-string/jumbo p3, "urn:schemas-upnp-org:service:AVTransport:1"

    invoke-virtual {p2, p3}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object p2

    .line 1694
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/ac;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1695
    nop

    .line 1697
    :try_start_0
    new-instance p1, Lcom/baidu/cyberplayer/utils/co;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/co;-><init>()V

    invoke-virtual {p1, p5}, Lcom/baidu/cyberplayer/utils/co;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1
    :try_end_0
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_0 .. :try_end_0} :catch_0

    .line 1703
    nop

    .line 1704
    invoke-direct {p0}, Lcom/baidu/cyberplayer/dlna/c;->b()V

    .line 1705
    if-nez p1, :cond_2

    .line 1706
    return-void

    .line 1707
    :cond_2
    const-string p2, "InstanceID"

    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 1708
    if-nez p1, :cond_3

    .line 1709
    return-void

    .line 1710
    :cond_3
    const-string p2, "TransportState"

    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 1711
    if-eqz p1, :cond_4

    .line 1712
    const-string/jumbo p2, "val"

    invoke-virtual {p1, p2}, Lcom/baidu/cyberplayer/utils/cj;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/dlna/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1699
    :catch_0
    move-exception p1

    .line 1701
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cm;->printStackTrace()V

    .line 1702
    return-void

    .line 1716
    :cond_4
    :goto_0
    return-void
.end method

.method public addDeviceChangeListener(Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    .line 755
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    .line 756
    const/4 v0, 0x1

    return v0
.end method

.method public addEventListener(Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    .line 748
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    .line 749
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aa;)V
    .locals 2

    .line 1665
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    if-eqz v0, :cond_1

    .line 1666
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:schemas-upnp-org:device:MediaServer:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;->deviceRemoved(Lcom/baidu/cyberplayer/dlna/DLNADeviceType;Ljava/lang/String;)V

    goto :goto_0

    .line 1669
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "urn:schemas-upnp-org:device:MediaRenderer:1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_RENDERER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/baidu/cyberplayer/dlna/DLNADeviceChangeListener;->deviceRemoved(Lcom/baidu/cyberplayer/dlna/DLNADeviceType;Ljava/lang/String;)V

    .line 1673
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; prev position is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; fetch position is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setPosition"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    return-void

    .line 399
    :cond_0
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Ljava/lang/String;

    .line 402
    iget-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    if-eqz p1, :cond_1

    .line 403
    iget-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->POSITION_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;->onEventReceived(Lcom/baidu/cyberplayer/dlna/DLNAEventType;Ljava/lang/String;)V

    .line 405
    :cond_1
    return-void
.end method

.method public browser(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseCallBack;)V
    .locals 3
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "requestCount"    # I
    .param p5, "sortRule"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseCallBack;

    .line 832
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 834
    const/16 v1, 0x74

    iput v1, v0, Landroid/os/Message;->what:I

    .line 835
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 836
    const-string v2, "objectID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v2, "filter"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string/jumbo v2, "startIndex"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 839
    const-string v2, "requestCount"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 840
    const-string/jumbo v2, "sortCriteria"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 842
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 843
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 845
    :cond_0
    return-void
.end method

.method public browserFileItems(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;)V
    .locals 4
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "startIndex"    # I
    .param p4, "requestCount"    # I
    .param p5, "sortRule"    # Ljava/lang/String;
    .param p6, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;

    .line 852
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Z

    if-nez v0, :cond_0

    .line 853
    if-eqz p6, :cond_0

    .line 854
    const/4 v0, 0x0

    const/4 v1, -0x6

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/dlna/c;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p6, v3, v0, v1, v2}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IBrowseFileItemsCallBack;->onBrowseFileItems(ZLjava/util/List;ILjava/lang/String;)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 862
    const/16 v1, 0x75

    iput v1, v0, Landroid/os/Message;->what:I

    .line 863
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 864
    const-string v2, "objectID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v2, "filter"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string/jumbo v2, "startIndex"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    const-string v2, "requestCount"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 868
    const-string/jumbo v2, "sortCriteria"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 870
    iput-object p6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 871
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 873
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 8

    .line 409
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    .line 412
    iput-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    .line 415
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;

    sget-object v2, Lcom/baidu/cyberplayer/dlna/DLNAEventType;->RENDER_STATE_UPDATE:Lcom/baidu/cyberplayer/dlna/DLNAEventType;

    invoke-interface {v1, v2, p1}, Lcom/baidu/cyberplayer/dlna/DLNADeviceEventListener;->onEventReceived(Lcom/baidu/cyberplayer/dlna/DLNAEventType;Ljava/lang/String;)V

    .line 421
    :cond_1
    const-string p1, "PLAYING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    const-string v6, "STOPPED"

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    const-string v7, "TRANSITIONING"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 424
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 425
    iget-wide v6, p0, Lcom/baidu/cyberplayer/dlna/c;->a:J

    sub-long/2addr v0, v6

    iget-wide v6, p0, Lcom/baidu/cyberplayer/dlna/c;->b:J

    add-long/2addr v0, v6

    div-long/2addr v0, v4

    .line 426
    cmp-long p1, v0, v2

    if-gtz p1, :cond_3

    .line 427
    return-void

    .line 428
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/dlna/c;->a(J)V

    .line 429
    goto :goto_0

    :cond_4
    const-string v1, "PAUSED_PLAYBACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 431
    iget-wide v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:J

    div-long/2addr v0, v4

    .line 432
    cmp-long p1, v0, v2

    if-gtz p1, :cond_5

    .line 433
    return-void

    .line 436
    :cond_5
    invoke-virtual {p0, v0, v1}, Lcom/baidu/cyberplayer/dlna/c;->a(J)V

    .line 437
    goto :goto_0

    :cond_6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/baidu/cyberplayer/dlna/c;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/baidu/cyberplayer/dlna/c;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:J

    goto :goto_0

    .line 441
    :cond_7
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 442
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:J

    .line 444
    :cond_8
    :goto_0
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    if-nez v0, :cond_0

    .line 523
    return-void

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object v0

    .line 526
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 529
    :try_start_0
    const-string v2, "04"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 531
    const-string p1, "09"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 533
    const-string p1, "10"

    iget v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:I

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 536
    const-string p1, "01"

    const-string v0, "020201"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    goto :goto_0

    .line 538
    :catch_0
    move-exception p1

    .line 539
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 541
    :goto_0
    iget-object p1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/baidu/cyberplayer/utils/r;->a(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 543
    return-void
.end method

.method public disableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IDisableDLNACallBack;

    .line 579
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 581
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 582
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 583
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 585
    :cond_0
    return-void
.end method

.method public enableDLNA(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;)V
    .locals 3
    .param p1, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;

    .line 560
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/k;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 568
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 569
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 570
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 561
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 562
    const/4 v0, 0x0

    const/4 v1, -0x4

    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/dlna/c;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IEnableDLNACallBack;->onEnableDLNA(ZILjava/lang/String;)V

    .line 573
    :cond_2
    :goto_1
    return-void
.end method

.method public getDeviceIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "udn"    # Ljava/lang/String;

    .line 1854
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/aY;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    .line 1855
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1857
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aP;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1856
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceMap(Lcom/baidu/cyberplayer/dlna/DLNADeviceType;)Ljava/util/Map;
    .locals 7
    .param p1, "devType"    # Lcom/baidu/cyberplayer/dlna/DLNADeviceType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/cyberplayer/dlna/DLNADeviceType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1789
    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER_BAIDU_MINI_ROUTER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1793
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aY;->c()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    goto :goto_1

    .line 1791
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aY;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aY;->b()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 1795
    :goto_1
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    const/16 v2, 0x76

    const/16 v3, 0x77

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v1, :cond_5

    .line 1796
    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER_BAIDU_MINI_ROUTER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    if-ne p1, v0, :cond_2

    goto :goto_2

    .line 1803
    :cond_2
    iput v5, p0, Lcom/baidu/cyberplayer/dlna/c;->B:I

    .line 1804
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1805
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1798
    :cond_3
    :goto_2
    iput v5, p0, Lcom/baidu/cyberplayer/dlna/c;->C:I

    .line 1799
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1800
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1808
    :cond_4
    :goto_3
    return-object v4

    .line 1810
    :cond_5
    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    const/4 v6, 0x3

    if-eq p1, v1, :cond_7

    sget-object v1, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER_BAIDU_MINI_ROUTER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    if-ne p1, v1, :cond_6

    goto :goto_4

    .line 1820
    :cond_6
    iget v1, p0, Lcom/baidu/cyberplayer/dlna/c;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/cyberplayer/dlna/c;->B:I

    .line 1821
    iget v1, p0, Lcom/baidu/cyberplayer/dlna/c;->B:I

    if-ne v1, v6, :cond_8

    .line 1822
    iput v5, p0, Lcom/baidu/cyberplayer/dlna/c;->B:I

    .line 1823
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 1824
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 1812
    :cond_7
    :goto_4
    iget v1, p0, Lcom/baidu/cyberplayer/dlna/c;->C:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/baidu/cyberplayer/dlna/c;->C:I

    .line 1813
    iget v1, p0, Lcom/baidu/cyberplayer/dlna/c;->C:I

    if-ne v1, v6, :cond_8

    .line 1814
    iput v5, p0, Lcom/baidu/cyberplayer/dlna/c;->C:I

    .line 1815
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 1816
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1831
    :cond_8
    :goto_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1832
    nop

    :goto_6
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v2

    if-ge v5, v2, :cond_b

    .line 1833
    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v2

    .line 1834
    sget-object v3, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_SERVER_BAIDU_MINI_ROUTER:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    if-ne p1, v3, :cond_9

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aa;->g()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Baidu MiniRouter"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aa;->g()Ljava/lang/String;

    move-result-object v3

    const-string v6, "Baidu Router"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1838
    goto :goto_7

    .line 1839
    :cond_9
    sget-object v3, Lcom/baidu/cyberplayer/dlna/DLNADeviceType;->MEDIA_RENDER_BAIDU_TV:Lcom/baidu/cyberplayer/dlna/DLNADeviceType;

    if-ne p1, v3, :cond_a

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object v3

    const-string v6, "BaiduTV"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1841
    goto :goto_7

    .line 1843
    :cond_a
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1846
    :cond_b
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 1847
    return-object v4

    .line 1848
    :cond_c
    return-object v1
.end method

.method public getMediaDuration()Ljava/lang/String;
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaPosition()Ljava/lang/String;
    .locals 1

    .line 737
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getMuteStat(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetMuteCallBack;

    .line 695
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 697
    const/16 v1, 0x71

    iput v1, v0, Landroid/os/Message;->what:I

    .line 698
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 699
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 701
    :cond_0
    return-void
.end method

.method public getRenderState()Ljava/lang/String;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedRenderId()Ljava/lang/String;
    .locals 1

    .line 1748
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    if-nez v0, :cond_0

    .line 1749
    const-string v0, ""

    return-object v0

    .line 1751
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedRenderName()Ljava/lang/String;
    .locals 1

    .line 1768
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    if-nez v0, :cond_0

    .line 1769
    const-string v0, ""

    return-object v0

    .line 1771
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedServerId()Ljava/lang/String;
    .locals 1

    .line 1758
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    if-nez v0, :cond_0

    .line 1759
    const-string v0, ""

    return-object v0

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedServerName()Ljava/lang/String;
    .locals 1

    .line 1778
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    if-nez v0, :cond_0

    .line 1779
    const-string v0, ""

    return-object v0

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->b:Lcom/baidu/cyberplayer/utils/aa;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetSupportedProtocolsCallBack;

    .line 720
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 722
    const/16 v1, 0x72

    iput v1, v0, Landroid/os/Message;->what:I

    .line 723
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 724
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 726
    :cond_0
    return-void
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .line 1742
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getVolume(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IGetVolumeCallBack;

    .line 672
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 674
    const/16 v1, 0x70

    iput v1, v0, Landroid/os/Message;->what:I

    .line 675
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 678
    :cond_0
    return-void
.end method

.method public initialize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "accessKey"    # Ljava/lang/String;
    .param p2, "secretKey"    # Ljava/lang/String;

    .line 548
    invoke-static {p1, p2}, Lcom/baidu/cyberplayer/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/k;->a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/k;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/k;

    .line 550
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Lcom/baidu/cyberplayer/utils/k;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/k;->a()V

    .line 552
    invoke-static {p1}, Lcom/baidu/cyberplayer/utils/q;->a(Ljava/lang/String;)V

    .line 553
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/q;->a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/q;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/q;->a()V

    .line 555
    return-void
.end method

.method public pause(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPauseCallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPauseCallBack;

    .line 636
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 638
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 639
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 640
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 642
    :cond_0
    return-void
.end method

.method public play(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPlayCallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IPlayCallBack;

    .line 625
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 627
    const/16 v1, 0x68

    iput v1, v0, Landroid/os/Message;->what:I

    .line 628
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 629
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 631
    :cond_0
    return-void
.end method

.method public seek(Ljava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISeekCallBack;)V
    .locals 3
    .param p1, "position"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISeekCallBack;

    .line 658
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 660
    const/16 v1, 0x6e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 661
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 662
    const-string v2, "seek"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 664
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 665
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 667
    :cond_0
    return-void
.end method

.method public selectRenderDevice(Ljava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectRendererDeviceCallBack;)V
    .locals 3
    .param p1, "devId"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectRendererDeviceCallBack;

    .line 591
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 593
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 594
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 595
    const-string v2, "rendererDevId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 597
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 598
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 600
    :cond_0
    return-void
.end method

.method public selectServerDevice(Ljava/lang/String;Ljava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;)V
    .locals 3
    .param p1, "devId"    # Ljava/lang/String;
    .param p2, "searchPath"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISelectServerDeviceCallBack;

    .line 790
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 792
    const/16 v1, 0x73

    iput v1, v0, Landroid/os/Message;->what:I

    .line 793
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 794
    const-string v2, "deviceId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const-string v2, "searchPath"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 797
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 798
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 800
    :cond_0
    return-void
.end method

.method public setMediaMetaData(Lcom/baidu/cyberplayer/dlna/AVMetaData;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaMetaDataCallBack;)V
    .locals 2
    .param p1, "metaData"    # Lcom/baidu/cyberplayer/dlna/AVMetaData;
    .param p2, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaMetaDataCallBack;

    .line 1728
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1730
    const/16 v1, 0x78

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1731
    new-instance v1, Lcom/baidu/cyberplayer/dlna/c$d;

    invoke-direct {v1, p0}, Lcom/baidu/cyberplayer/dlna/c$d;-><init>(Lcom/baidu/cyberplayer/dlna/c;)V

    .line 1732
    iput-object p1, v1, Lcom/baidu/cyberplayer/dlna/c$d;->a:Ljava/lang/Object;

    .line 1733
    iput-object p2, v1, Lcom/baidu/cyberplayer/dlna/c$d;->b:Ljava/lang/Object;

    .line 1734
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1735
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1737
    :cond_0
    return-void
.end method

.method public setMediaURI(Ljava/lang/String;Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaURICallBack;)V
    .locals 3
    .param p1, "mediaURI"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMediaURICallBack;

    .line 605
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 607
    const/16 v1, 0x67

    iput v1, v0, Landroid/os/Message;->what:I

    .line 608
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 609
    const-string v2, "setMediaURI"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 611
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 612
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 614
    :cond_0
    return-void
.end method

.method public setMuteStat(ZLcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMuteCallBack;)V
    .locals 3
    .param p1, "isMute"    # Z
    .param p2, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetMuteCallBack;

    .line 706
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 708
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 709
    const-string v2, "muteSwitch"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 711
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 712
    const/16 v1, 0x6c

    iput v1, v0, Landroid/os/Message;->what:I

    .line 713
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 715
    :cond_0
    return-void
.end method

.method public setSubSwitch(ZLcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetSubSwitchCallBack;)V
    .locals 3
    .param p1, "bOpened"    # Z
    .param p2, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetSubSwitchCallBack;

    .line 1863
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1864
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1865
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1866
    const-string/jumbo v2, "subSwitch"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1867
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1868
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1869
    const/16 v1, 0x79

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1870
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1872
    :cond_0
    return-void
.end method

.method public setVolume(ILcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetVolumeCallBack;)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$ISetVolumeCallBack;

    .line 683
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 685
    const/16 v1, 0x6f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 686
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 687
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 688
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 690
    :cond_0
    return-void
.end method

.method public stop(Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IStopCallBack;)V
    .locals 2
    .param p1, "callback"    # Lcom/baidu/cyberplayer/dlna/IDLNAServiceProvider$IStopCallBack;

    .line 647
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 649
    const/16 v1, 0x6a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 650
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 651
    iget-object v1, p0, Lcom/baidu/cyberplayer/dlna/c;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 653
    :cond_0
    return-void
.end method
