.class public Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;
.super Ljava/lang/Object;
.source "ProgramInfo.java"


# instance fields
.field private programName:Ljava/lang/String;

.field private programUrl:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgramName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->programName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramUrl()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->programUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setProgramName(Ljava/lang/String;)V
    .locals 0
    .param p1, "programName"    # Ljava/lang/String;

    .line 33
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->programName:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setProgramUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "programUrl"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->programUrl:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/shenma/tvlauncher/tvback/domain/ProgramInfo;->time:Ljava/lang/String;

    .line 18
    return-void
.end method
