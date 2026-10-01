.class public final Lcom/baidu/cyberplayer/utils/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/baidu/cyberplayer/utils/ca;

.field public static a:Z


# instance fields
.field private a:Ljava/io/PrintStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/baidu/cyberplayer/utils/ca;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ca;-><init>()V

    sput-object v0, Lcom/baidu/cyberplayer/utils/ca;->a:Lcom/baidu/cyberplayer/utils/ca;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/baidu/cyberplayer/utils/ca;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/ca;->a:Ljava/io/PrintStream;

    .line 29
    return-void
.end method

.method public static final a(Ljava/lang/Exception;)V
    .locals 1

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ca;->b(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/baidu/cyberplayer/utils/ca;->a:Lcom/baidu/cyberplayer/utils/ca;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ca;->a()Ljava/io/PrintStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 80
    return-void
.end method

.method public static final a(Ljava/lang/String;)V
    .locals 3

    .line 55
    sget-boolean v0, Lcom/baidu/cyberplayer/utils/ca;->a:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    sget-object v0, Lcom/baidu/cyberplayer/utils/ca;->a:Lcom/baidu/cyberplayer/utils/ca;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ca;->a()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CyberGarage message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public static a()Z
    .locals 1

    .line 52
    sget-boolean v0, Lcom/baidu/cyberplayer/utils/ca;->a:Z

    return v0
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 3

    .line 65
    sget-object v0, Lcom/baidu/cyberplayer/utils/ca;->a:Lcom/baidu/cyberplayer/utils/ca;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ca;->a()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CyberGarage warning : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/io/PrintStream;
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/ca;->a:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
