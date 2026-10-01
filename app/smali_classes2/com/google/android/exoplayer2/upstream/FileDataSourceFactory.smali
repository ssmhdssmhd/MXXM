.class public final Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;
.super Ljava/lang/Object;
.source "FileDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final listener:Lcom/google/android/exoplayer2/upstream/TransferListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;-><init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    .line 33
    return-void
.end method


# virtual methods
.method public createDataSource()Lcom/google/android/exoplayer2/upstream/DataSource;
    .locals 2

    .line 37
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    .line 38
    .local v0, "dataSource":Lcom/google/android/exoplayer2/upstream/FileDataSource;
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/google/android/exoplayer2/upstream/FileDataSourceFactory;->listener:Lcom/google/android/exoplayer2/upstream/TransferListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/FileDataSource;->addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V

    .line 41
    :cond_0
    return-object v0
.end method
