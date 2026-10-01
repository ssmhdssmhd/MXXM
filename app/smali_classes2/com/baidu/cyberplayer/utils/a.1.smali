.class final Lcom/baidu/cyberplayer/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-class v0, Lcom/baidu/cyberplayer/utils/a;

    const-string v1, "/log.cfg"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/baidu/cyberplayer/utils/a;->a:Ljava/util/Properties;

    .line 47
    :try_start_0
    sget-object v1, Lcom/baidu/cyberplayer/utils/a;->a:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/cyberplayer/utils/a;->a:Ljava/util/Properties;

    .line 53
    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method static a()Z
    .locals 3

    .line 18
    nop

    .line 19
    sget-object v0, Lcom/baidu/cyberplayer/utils/a;->a:Ljava/util/Properties;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/baidu/cyberplayer/utils/a;->a:Ljava/util/Properties;

    const-string v2, "enabled"

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 25
    :cond_0
    return v1
.end method

.method static b()Z
    .locals 3

    .line 31
    sget-object v0, Lcom/baidu/cyberplayer/utils/a;->a:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/baidu/cyberplayer/utils/a;->a:Ljava/util/Properties;

    const-string v1, "log2file"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 37
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
