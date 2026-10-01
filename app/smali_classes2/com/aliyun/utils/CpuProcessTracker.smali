.class public Lcom/aliyun/utils/CpuProcessTracker;
.super Ljava/lang/Object;
.source "CpuProcessTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mMyPidPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/aliyun/utils/CpuProcessTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/aliyun/utils/CpuProcessTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/aliyun/utils/CpuProcessTracker$1;

    invoke-direct {v1, p0}, Lcom/aliyun/utils/CpuProcessTracker$1;-><init>(Lcom/aliyun/utils/CpuProcessTracker;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/aliyun/utils/CpuProcessTracker;)V
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/utils/CpuProcessTracker;

    .line 17
    invoke-direct {p0}, Lcom/aliyun/utils/CpuProcessTracker;->updateCpuUsage()V

    return-void
.end method

.method static synthetic access$100([Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # [Ljava/lang/String;

    .line 17
    invoke-static {p0}, Lcom/aliyun/utils/CpuProcessTracker;->trim([Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/aliyun/utils/CpuProcessTracker;)I
    .locals 1
    .param p0, "x0"    # Lcom/aliyun/utils/CpuProcessTracker;

    .line 17
    iget v0, p0, Lcom/aliyun/utils/CpuProcessTracker;->mMyPidPercent:I

    return v0
.end method

.method static synthetic access$202(Lcom/aliyun/utils/CpuProcessTracker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/aliyun/utils/CpuProcessTracker;
    .param p1, "x1"    # I

    .line 17
    iput p1, p0, Lcom/aliyun/utils/CpuProcessTracker;->mMyPidPercent:I

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/aliyun/utils/CpuProcessTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUCoresNum()I
    .locals 3

    .line 72
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "dir":Ljava/io/File;
    new-instance v1, Lcom/aliyun/utils/CpuProcessTracker$1CpuFilter;

    invoke-direct {v1}, Lcom/aliyun/utils/CpuProcessTracker$1CpuFilter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 76
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 77
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    return v1
.end method

.method private getCpuUsageAfter25()V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "top -p "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -o %CPU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/aliyun/utils/CpuProcessTracker$3;

    invoke-direct {v1, p0}, Lcom/aliyun/utils/CpuProcessTracker$3;-><init>(Lcom/aliyun/utils/CpuProcessTracker;)V

    invoke-direct {p0, v0, v1}, Lcom/aliyun/utils/CpuProcessTracker;->runtimeExec(Ljava/lang/String;Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;)V

    .line 185
    return-void
.end method

.method private getCpuUsageBefore26()V
    .locals 2

    .line 130
    new-instance v0, Lcom/aliyun/utils/CpuProcessTracker$2;

    invoke-direct {v0, p0}, Lcom/aliyun/utils/CpuProcessTracker$2;-><init>(Lcom/aliyun/utils/CpuProcessTracker;)V

    const-string/jumbo v1, "top"

    invoke-direct {p0, v1, v0}, Lcom/aliyun/utils/CpuProcessTracker;->runtimeExec(Ljava/lang/String;Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;)V

    .line 169
    return-void
.end method

.method private runtimeExec(Ljava/lang/String;Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;)V
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;

    .line 96
    const/4 v0, 0x0

    .line 97
    .local v0, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 98
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 100
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    move-object v0, v3

    .line 101
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 102
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v3

    .line 104
    const/4 v3, 0x0

    .line 105
    .local v3, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_1

    .line 106
    if-eqz p2, :cond_0

    .line 107
    invoke-interface {p2, v3}, Lcom/aliyun/utils/CpuProcessTracker$RuntimeCallback;->onLine(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 113
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    nop

    .line 114
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 116
    nop

    .line 117
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 119
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    :cond_2
    :goto_1
    goto :goto_4

    .line 122
    :catchall_0
    move-exception v3

    .line 125
    goto :goto_4

    .line 112
    :catchall_1
    move-exception v3

    .line 113
    if-eqz v2, :cond_3

    .line 114
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    goto :goto_2

    .line 122
    :catchall_2
    move-exception v4

    goto :goto_3

    .line 116
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 117
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 119
    :cond_4
    if-eqz v0, :cond_5

    .line 120
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    :cond_5
    nop

    :goto_3
    throw v3

    .line 110
    :catch_0
    move-exception v3

    .line 113
    if-eqz v2, :cond_6

    .line 114
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 116
    :cond_6
    if-eqz v1, :cond_7

    .line 117
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 119
    :cond_7
    if-eqz v0, :cond_2

    .line 120
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 126
    :goto_4
    return-void
.end method

.method private static trim([Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 5
    .param p0, "src"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    .local v0, "headers":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    array-length v1, p0

    .line 49
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 50
    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private updateCpuUsage()V
    .locals 2

    .line 35
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    .line 36
    invoke-direct {p0}, Lcom/aliyun/utils/CpuProcessTracker;->getCpuUsageAfter25()V

    goto :goto_0

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/aliyun/utils/CpuProcessTracker;->getCpuUsageBefore26()V

    .line 40
    :goto_0
    return-void
.end method


# virtual methods
.method getMyPicCpuPercent()I
    .locals 3

    .line 87
    sget-object v0, Lcom/aliyun/utils/CpuProcessTracker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMyPicCpuPercent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/aliyun/utils/CpuProcessTracker;->mMyPidPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cicada/player/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget v0, p0, Lcom/aliyun/utils/CpuProcessTracker;->mMyPidPercent:I

    return v0
.end method
