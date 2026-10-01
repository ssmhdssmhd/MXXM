.class public abstract Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
.super Ljava/lang/Object;
.source "BaseDanmakuParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser$Listener;
    }
.end annotation


# instance fields
.field protected mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

.field private mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

.field protected mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmaster/flame/danmaku/danmaku/parser/IDataSource<",
            "*>;"
        }
    .end annotation
.end field

.field protected mDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

.field protected mDispDensity:F

.field protected mDispHeight:I

.field protected mDispWidth:I

.field protected mListener:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser$Listener;

.field protected mScaledDensity:F

.field protected mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getDanmakus()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
    .locals 1

    .line 91
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->resetDurationsData()V

    .line 94
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->parse()Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    move-result-object v0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    .line 95
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->releaseDataSource()V

    .line 96
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 97
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lmaster/flame/danmaku/danmaku/model/IDanmakus;

    return-object v0
.end method

.method public getDisplayer()Lmaster/flame/danmaku/danmaku/model/IDisplayer;
    .locals 1

    .line 60
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    return-object v0
.end method

.method public getTimer()Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;
    .locals 1

    .line 87
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method protected getViewportSizeFactor()F
    .locals 2

    .line 73
    iget v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispDensity:F

    const v1, 0x3f19999a    # 0.6f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method public load(Lmaster/flame/danmaku/danmaku/parser/IDataSource;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmaster/flame/danmaku/danmaku/parser/IDataSource<",
            "*>;)",
            "Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;"
        }
    .end annotation

    .line 77
    .local p1, "source":Lmaster/flame/danmaku/danmaku/parser/IDataSource;, "Lmaster/flame/danmaku/danmaku/parser/IDataSource<*>;"
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    .line 78
    return-object p0
.end method

.method protected abstract parse()Lmaster/flame/danmaku/danmaku/model/IDanmakus;
.end method

.method public release()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->releaseDataSource()V

    .line 110
    return-void
.end method

.method protected releaseDataSource()V
    .locals 1

    .line 101
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    invoke-interface {v0}, Lmaster/flame/danmaku/danmaku/parser/IDataSource;->release()V

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDataSource:Lmaster/flame/danmaku/danmaku/parser/IDataSource;

    .line 104
    return-void
.end method

.method public setConfig(Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 0
    .param p1, "config"    # Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 113
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    .line 114
    return-object p0
.end method

.method public setDisplayer(Lmaster/flame/danmaku/danmaku/model/IDisplayer;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 4
    .param p1, "disp"    # Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 49
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDisp:Lmaster/flame/danmaku/danmaku/model/IDisplayer;

    .line 50
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispWidth:I

    .line 51
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getHeight()I

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispHeight:I

    .line 52
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getDensity()F

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispDensity:F

    .line 53
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/IDisplayer;->getScaledDensity()F

    move-result v0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mScaledDensity:F

    .line 54
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    iget v1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispWidth:I

    int-to-float v1, v1

    iget v2, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mDispHeight:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->getViewportSizeFactor()F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->updateViewportState(FFF)Z

    .line 55
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mContext:Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    iget-object v0, v0, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->mDanmakuFactory:Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;

    invoke-virtual {v0}, Lmaster/flame/danmaku/danmaku/model/android/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 56
    return-object p0
.end method

.method public setListener(Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser$Listener;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 0
    .param p1, "listener"    # Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser$Listener;

    .line 64
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mListener:Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser$Listener;

    .line 65
    return-object p0
.end method

.method public setTimer(Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;)Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;
    .locals 0
    .param p1, "timer"    # Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 82
    iput-object p1, p0, Lmaster/flame/danmaku/danmaku/parser/BaseDanmakuParser;->mTimer:Lmaster/flame/danmaku/danmaku/model/DanmakuTimer;

    .line 83
    return-object p0
.end method
