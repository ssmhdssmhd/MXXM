.class Lcom/baidu/cyberplayer/utils/VersionManager$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/utils/VersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private a:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field final synthetic a:Lcom/baidu/cyberplayer/utils/VersionManager;

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/baidu/cyberplayer/utils/VersionManager;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a:Lcom/baidu/cyberplayer/utils/VersionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 360
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a:Ljava/lang/String;

    .line 361
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->b:Ljava/lang/String;

    .line 362
    const/4 p1, 0x0

    iput p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a:I

    .line 366
    return-void
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/VersionManager$a;)I
    .locals 0

    .line 358
    iget p0, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a:I

    return p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/VersionManager$a;I)I
    .locals 0

    .line 358
    iput p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/VersionManager$a;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/VersionManager$a;Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->a:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/VersionManager$a;)Ljava/lang/String;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/baidu/cyberplayer/utils/VersionManager$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/VersionManager$a;->b:Ljava/lang/String;

    return-object p1
.end method
