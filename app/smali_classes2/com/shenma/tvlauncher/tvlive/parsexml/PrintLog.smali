.class public Lcom/shenma/tvlauncher/tvlive/parsexml/PrintLog;
.super Ljava/lang/Object;
.source "PrintLog.java"


# instance fields
.field public isExit:Z

.field mLogcatProc:Ljava/lang/Process;

.field os1:Ljava/io/DataOutputStream;

.field reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PrintLog;->isExit:Z

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PrintLog;->mLogcatProc:Ljava/lang/Process;

    .line 12
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PrintLog;->reader:Ljava/io/BufferedReader;

    .line 13
    iput-object v0, p0, Lcom/shenma/tvlauncher/tvlive/parsexml/PrintLog;->os1:Ljava/io/DataOutputStream;

    return-void
.end method

.method private submit()V
    .locals 8

    .line 25
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "logcat -d -v time > /mnt/sda/error.txt"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 26
    .local v0, "commands":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v3, "/system/bin/sh -"

    invoke-virtual {v1, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 27
    .local v1, "p":Ljava/lang/Process;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 28
    .local v3, "os":Ljava/io/DataOutputStream;
    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 29
    .local v5, "tmpCmd":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v5    # "tmpCmd":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    .end local v0    # "commands":[Ljava/lang/String;
    .end local v1    # "p":Ljava/lang/Process;
    .end local v3    # "os":Ljava/io/DataOutputStream;
    :cond_0
    goto :goto_1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "feibing"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method


# virtual methods
.method public printLog()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/shenma/tvlauncher/tvlive/parsexml/PrintLog;->submit()V

    .line 19
    return-void
.end method
