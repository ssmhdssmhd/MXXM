.class public Lcom/aliyun/player/bean/ErrorInfo;
.super Ljava/lang/Object;
.source "ErrorInfo.java"


# instance fields
.field private mCode:Lcom/aliyun/player/bean/ErrorCode;

.field private mExtra:Ljava/lang/String;

.field private mMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Lcom/aliyun/player/bean/ErrorCode;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/aliyun/player/bean/ErrorInfo;->mCode:Lcom/aliyun/player/bean/ErrorCode;

    return-object v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/aliyun/player/bean/ErrorInfo;->mExtra:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/aliyun/player/bean/ErrorInfo;->mMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Lcom/aliyun/player/bean/ErrorCode;)V
    .locals 0
    .param p1, "mCode"    # Lcom/aliyun/player/bean/ErrorCode;

    .line 36
    iput-object p1, p0, Lcom/aliyun/player/bean/ErrorInfo;->mCode:Lcom/aliyun/player/bean/ErrorCode;

    .line 37
    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtra"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/aliyun/player/bean/ErrorInfo;->mExtra:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMsg"    # Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/aliyun/player/bean/ErrorInfo;->mMsg:Ljava/lang/String;

    .line 65
    return-void
.end method
