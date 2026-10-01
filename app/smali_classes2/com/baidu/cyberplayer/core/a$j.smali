.class Lcom/baidu/cyberplayer/core/a$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/core/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private a:I

.field private a:Landroid/content/Context;

.field private a:Lcom/baidu/cyberplayer/core/a$i;

.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1964
    const-string v0, "GLThreadManager"

    sput-object v0, Lcom/baidu/cyberplayer/core/a$j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/cyberplayer/core/a$1;)V
    .locals 0

    .line 1963
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$j;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .line 2052
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Z

    if-nez v0, :cond_1

    .line 2056
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2058
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 2060
    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    iput v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:I

    .line 2062
    iget v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:I

    const/high16 v1, 0x20000

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    .line 2063
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/a$j;->c:Z

    .line 2070
    :cond_0
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Z

    .line 2072
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .line 1967
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Landroid/content/Context;

    .line 1968
    return-void
.end method

.method public declared-synchronized a(Lcom/baidu/cyberplayer/core/a$i;)V
    .locals 1

    monitor-enter p0

    .line 1974
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/baidu/cyberplayer/core/a$i;->a(Lcom/baidu/cyberplayer/core/a$i;Z)Z

    .line 1975
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-ne v0, p1, :cond_0

    .line 1976
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    .line 1978
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1979
    monitor-exit p0

    return-void

    .line 1973
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    monitor-enter p0

    .line 2032
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$j;->b:Z

    if-nez v0, :cond_3

    .line 2033
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$j;->a()V

    .line 2034
    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    .line 2035
    iget v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:I

    const/high16 v1, 0x20000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 2036
    const-string v0, "Q3Dimension MSM7500 "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$j;->c:Z

    .line 2038
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2040
    :cond_1
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$j;->c:Z

    if-nez p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/baidu/cyberplayer/core/a$j;->d:Z

    .line 2047
    iput-boolean v3, p0, Lcom/baidu/cyberplayer/core/a$j;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2049
    :cond_3
    monitor-exit p0

    return-void

    .line 2031
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    .line 2023
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$j;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 2023
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Lcom/baidu/cyberplayer/core/a$i;)Z
    .locals 2

    .line 1989
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_3

    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1994
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$j;->a()V

    .line 1995
    iget-boolean p1, p0, Lcom/baidu/cyberplayer/core/a$j;->c:Z

    if-eqz p1, :cond_1

    .line 1996
    return v1

    .line 2002
    :cond_1
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-eqz p1, :cond_2

    .line 2003
    iget-object p1, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/core/a$i;->g()V

    .line 2005
    :cond_2
    const/4 p1, 0x0

    return p1

    .line 1990
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    .line 1991
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1992
    return v1
.end method

.method public b(Lcom/baidu/cyberplayer/core/a$i;)V
    .locals 1

    .line 2013
    iget-object v0, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    if-ne v0, p1, :cond_0

    .line 2014
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/baidu/cyberplayer/core/a$j;->a:Lcom/baidu/cyberplayer/core/a$i;

    .line 2016
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 2017
    return-void
.end method

.method public declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    .line 2027
    :try_start_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/core/a$j;->a()V

    .line 2028
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/core/a$j;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    .line 2026
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
