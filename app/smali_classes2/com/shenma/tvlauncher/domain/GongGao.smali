.class public Lcom/shenma/tvlauncher/domain/GongGao;
.super Ljava/lang/Object;
.source "GongGao.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;,
        Lcom/shenma/tvlauncher/domain/GongGao$Notice;
    }
.end annotation


# instance fields
.field private code:I

.field private msg:Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/shenma/tvlauncher/domain/GongGao;->code:I

    return v0
.end method

.method public getMsg()Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/shenma/tvlauncher/domain/GongGao;->msg:Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "i"    # I

    .line 12
    iput p1, p0, Lcom/shenma/tvlauncher/domain/GongGao;->code:I

    .line 13
    return-void
.end method

.method public setMsg(Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;)V
    .locals 0
    .param p1, "gongGaoData"    # Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;

    .line 20
    iput-object p1, p0, Lcom/shenma/tvlauncher/domain/GongGao;->msg:Lcom/shenma/tvlauncher/domain/GongGao$GongGaoData;

    .line 21
    return-void
.end method
