.class public Lcom/aliyun/player/bean/InfoBean;
.super Ljava/lang/Object;
.source "InfoBean.java"


# instance fields
.field private mCode:Lcom/aliyun/player/bean/InfoCode;

.field private mExtraMsg:Ljava/lang/String;

.field private mExtraValue:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraValue:J

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/aliyun/player/bean/InfoCode;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/aliyun/player/bean/InfoBean;->mCode:Lcom/aliyun/player/bean/InfoCode;

    return-object v0
.end method

.method public getExtraMsg()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValue()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraValue:J

    return-wide v0
.end method

.method public setCode(Lcom/aliyun/player/bean/InfoCode;)V
    .locals 0
    .param p1, "mCode"    # Lcom/aliyun/player/bean/InfoCode;

    .line 33
    iput-object p1, p0, Lcom/aliyun/player/bean/InfoBean;->mCode:Lcom/aliyun/player/bean/InfoCode;

    .line 34
    return-void
.end method

.method public setExtraMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "mExtraMsg"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraMsg:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setExtraValue(J)V
    .locals 0
    .param p1, "mExtraValue"    # J

    .line 57
    iput-wide p1, p0, Lcom/aliyun/player/bean/InfoBean;->mExtraValue:J

    .line 58
    return-void
.end method
