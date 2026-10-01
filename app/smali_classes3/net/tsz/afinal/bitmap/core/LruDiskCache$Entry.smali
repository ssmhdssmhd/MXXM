.class final Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
.super Ljava/lang/Object;
.source "LruDiskCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/tsz/afinal/bitmap/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;


# direct methods
.method private constructor <init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;)V
    .locals 0
    .param p2, "key"    # Ljava/lang/String;

    .line 906
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 907
    iput-object p2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->key:Ljava/lang/String;

    .line 908
    invoke-static {p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$9(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->lengths:[J

    .line 909
    return-void
.end method

.method synthetic constructor <init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)V
    .locals 0

    .line 906
    invoke-direct {p0, p1, p2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    .locals 0

    .line 901
    iget-object p0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->currentEditor:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    return-object p0
.end method

.method static synthetic access$1(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Z
    .locals 0

    .line 898
    iget-boolean p0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->readable:Z

    return p0
.end method

.method static synthetic access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Ljava/lang/String;
    .locals 0

    .line 892
    iget-object p0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Z)V
    .locals 0

    .line 898
    iput-boolean p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->readable:Z

    return-void
.end method

.method static synthetic access$5(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V
    .locals 0

    .line 901
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->currentEditor:Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    return-void
.end method

.method static synthetic access$6(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 922
    invoke-direct {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)[J
    .locals 0

    .line 895
    iget-object p0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->lengths:[J

    return-object p0
.end method

.method static synthetic access$8(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)J
    .locals 2

    .line 904
    iget-wide v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$9(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;J)V
    .locals 0

    .line 904
    iput-wide p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->sequenceNumber:J

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 937
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .locals 4
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 923
    array-length v0, p1

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$9(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 928
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 934
    .end local v0    # "i":I
    return-void

    .line 929
    .restart local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 924
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    invoke-direct {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .line 941
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$10(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->key:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .locals 4
    .param p1, "i"    # I

    .line 945
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->this$0:Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->access$10(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->key:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 913
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 913
    :cond_0
    aget-wide v4, v1, v3

    .line 914
    .local v4, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 913
    .end local v4    # "size":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
