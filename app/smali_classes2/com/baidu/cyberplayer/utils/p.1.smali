.class public final Lcom/baidu/cyberplayer/utils/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static volatile a:Lcom/baidu/cyberplayer/utils/p;

.field public static final a:Ljava/lang/String;

.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Lcom/baidu/cyberplayer/utils/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/p;->d:Ljava/lang/String;

    .line 49
    const/16 v0, 0x1400

    sput v0, Lcom/baidu/cyberplayer/utils/p;->a:I

    .line 55
    const-string v0, "cyberplayer_ue_1"

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/p;->a:Ljava/lang/String;

    .line 57
    const-string v0, "cyberplayer_ue_2"

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/p;->b:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/baidu/cyberplayer/utils/p;->c:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/utils/p;->a:Lcom/baidu/cyberplayer/utils/p;

    .line 117
    const/4 v0, 0x3

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

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/p;->a:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/p;->a:Landroid/content/Context;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/cyberplayer/utils/p;->a:Z

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/p;->a:Landroid/content/Context;

    .line 152
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/cyberplayer/utils/p;
    .locals 1

    .line 162
    if-nez p0, :cond_0

    .line 163
    sget-object p0, Lcom/baidu/cyberplayer/utils/p;->d:Ljava/lang/String;

    const-string v0, "Error occurs with mContext"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_0
    sget-object v0, Lcom/baidu/cyberplayer/utils/p;->a:Lcom/baidu/cyberplayer/utils/p;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/baidu/cyberplayer/utils/p;

    invoke-direct {v0, p0}, Lcom/baidu/cyberplayer/utils/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/p;->a:Lcom/baidu/cyberplayer/utils/p;

    .line 172
    :cond_1
    sget-object p0, Lcom/baidu/cyberplayer/utils/p;->a:Lcom/baidu/cyberplayer/utils/p;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .line 179
    const-string v0, ""

    if-ne p0, v0, :cond_0

    .line 180
    return-void

    .line 181
    :cond_0
    sput-object p0, Lcom/baidu/cyberplayer/utils/p;->c:Ljava/lang/String;

    .line 182
    return-void
.end method
