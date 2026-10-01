.class public Lcom/baidu/cyberplayer/core/CustomizedConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setCacheBufferSize(J)V
    .locals 0
    .param p0, "size"    # J

    .line 19
    invoke-static {p0, p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setNativeBufferSize(J)V

    .line 20
    return-void
.end method

.method public static setCacheTime(F)V
    .locals 0
    .param p0, "timeSec"    # F

    .line 36
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setCacheTime(F)V

    .line 37
    return-void
.end method

.method public static setCustomHttpHeader(Ljava/lang/String;)V
    .locals 0
    .param p0, "httpHeaderBuffer"    # Ljava/lang/String;

    .line 27
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setCustomHttpHeader(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static setCustomizedPlayerInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "playerId"    # Ljava/lang/String;
    .param p1, "playerKey"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setCustomizedPlayerIdForHLS(Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setCustomizedPlayerKeyForHLS(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static setUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "strUA"    # Ljava/lang/String;

    .line 10
    invoke-static {p0}, Lcom/baidu/cyberplayer/core/CyberPlayer;->setUserAgent(Ljava/lang/String;)V

    .line 11
    return-void
.end method
