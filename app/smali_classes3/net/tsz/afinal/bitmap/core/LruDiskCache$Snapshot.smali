.class public final Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/bitmap/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field private final ins:[Ljava/io/InputStream;

.field private final key:Ljava/lang/String;

.field private final sequenceNumber:J

.field final synthetic this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;


# direct methods
.method private constructor <init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "ins"    # [Ljava/io/InputStream;

    .line 730
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput-object p2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->key:Ljava/lang/String;

    .line 732
    iput-wide p3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->sequenceNumber:J

    .line 733
    iput-object p5, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->ins:[Ljava/io/InputStream;

    .line 734
    return-void
.end method

.method synthetic constructor <init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/InputStream;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;)V
    .locals 0

    .line 730
    invoke-direct/range {p0 .. p5}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 760
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->ins:[Ljava/io/InputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    .line 763
    return-void

    .line 760
    :cond_0
    aget-object v3, v0, v2

    .line 761
    .local v3, "in":Ljava/io/InputStream;
    invoke-static {v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 760
    .end local v3    # "in":Ljava/io/InputStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public edit()Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->key:Ljava/lang/String;

    iget-wide v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->sequenceNumber:J

    invoke-static {v0, v1, v2, v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$5(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;J)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/InputStream;
    .locals 1
    .param p1, "index"    # I

    .line 749
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->ins:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 756
    invoke-virtual {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$6(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
