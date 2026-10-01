.class Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;
.super Landroid/media/MediaDataSource;
.source "AndroidMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/AndroidMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaDataSourceProxy"
.end annotation


# instance fields
.field private final mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;


# direct methods
.method public constructor <init>(Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;)V
    .locals 0
    .param p1, "mediaDataSource"    # Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    .line 397
    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    .line 398
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    .line 399
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;->close()V

    .line 414
    return-void
.end method

.method public getSize()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    invoke-interface {v0}, Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;->getSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 6
    .param p1, "position"    # J
    .param p3, "buffer"    # [B
    .param p4, "offset"    # I
    .param p5, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/AndroidMediaPlayer$MediaDataSourceProxy;->mMediaDataSource:Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "position":J
    .end local p3    # "buffer":[B
    .end local p4    # "offset":I
    .end local p5    # "size":I
    .local v1, "position":J
    .local v3, "buffer":[B
    .local v4, "offset":I
    .local v5, "size":I
    invoke-interface/range {v0 .. v5}, Ltv/danmaku/ijk/media/player/misc/IMediaDataSource;->readAt(J[BII)I

    move-result p1

    return p1
.end method
