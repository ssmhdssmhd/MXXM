.class public final Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;
.super Ljava/lang/Object;
.source "Cea708InitializationData.java"


# instance fields
.field public final isWideAspectRatio:Z


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)V"
        }
    .end annotation

    .line 30
    .local p1, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aget-byte v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;->isWideAspectRatio:Z

    .line 32
    return-void
.end method

.method public static buildData(Z)Ljava/util/List;
    .locals 3
    .param p0, "isWideAspectRatio"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 52
    int-to-byte v0, p0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static fromData(Ljava/util/List;)Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;)",
            "Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;"
        }
    .end annotation

    .line 41
    .local p0, "initializationData":Ljava/util/List;, "Ljava/util/List<[B>;"
    new-instance v0, Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/text/cea/Cea708InitializationData;-><init>(Ljava/util/List;)V

    return-object v0
.end method
