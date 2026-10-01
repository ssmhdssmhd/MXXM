.class public Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;
.super Ljava/lang/Object;
.source "DefaultLoadErrorHandlingPolicy.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/LoadErrorHandlingPolicy;


# static fields
.field private static final DEFAULT_BEHAVIOR_MIN_LOADABLE_RETRY_COUNT:I = -0x1

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT:I = 0x3

.field public static final DEFAULT_MIN_LOADABLE_RETRY_COUNT_PROGRESSIVE_LIVE:I = 0x6

.field public static final DEFAULT_TRACK_BLACKLIST_MS:J = 0xea60L


# instance fields
.field private final minimumLoadableRetryCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;-><init>(I)V

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "minimumLoadableRetryCount"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    .line 59
    return-void
.end method


# virtual methods
.method public getBlacklistDurationMsFor(IJLjava/io/IOException;I)J
    .locals 4
    .param p1, "dataType"    # I
    .param p2, "loadDurationMs"    # J
    .param p4, "exception"    # Ljava/io/IOException;
    .param p5, "errorCount"    # I

    .line 68
    instance-of v0, p4, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 69
    move-object v0, p4

    check-cast v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;

    iget v0, v0, Lcom/google/android/exoplayer2/upstream/HttpDataSource$InvalidResponseCodeException;->responseCode:I

    .line 70
    .local v0, "responseCode":I
    const/16 v3, 0x194

    if-eq v0, v3, :cond_0

    const/16 v3, 0x19a

    if-ne v0, v3, :cond_1

    :cond_0
    const-wide/32 v1, 0xea60

    :cond_1
    return-wide v1

    .line 75
    .end local v0    # "responseCode":I
    :cond_2
    return-wide v1
.end method

.method public getMinimumLoadableRetryCount(I)I
    .locals 2
    .param p1, "dataType"    # I

    .line 96
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 97
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0

    .line 101
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultLoadErrorHandlingPolicy;->minimumLoadableRetryCount:I

    return v0
.end method

.method public getRetryDelayMsFor(IJLjava/io/IOException;I)J
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "loadDurationMs"    # J
    .param p4, "exception"    # Ljava/io/IOException;
    .param p5, "errorCount"    # I

    .line 85
    instance-of v0, p4, Lcom/google/android/exoplayer2/ParserException;

    if-eqz v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p5, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    .line 87
    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    .line 85
    :goto_0
    return-wide v0
.end method
