.class public final Lnet/tsz/afinal/bitmap/core/LruDiskCache;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;,
        Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;,
        Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->UTF_8:Ljava/nio/charset/Charset;

    .line 92
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 13
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    .line 155
    nop

    .line 156
    new-instance v2, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f400000    # 0.75f

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v5, v3, v4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 164
    iput-wide v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->nextSequenceNumber:J

    .line 264
    new-instance v6, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 265
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v12, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v12}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x3c

    invoke-direct/range {v6 .. v12}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v6, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 266
    new-instance v0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$1;

    invoke-direct {v0, p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$1;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)V

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 283
    iput-object p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->directory:Ljava/io/File;

    .line 284
    iput p2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->appVersion:I

    .line 285
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFile:Ljava/io/File;

    .line 286
    new-instance v1, Ljava/io/File;

    const-string v2, "journal.tmp"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    .line 287
    move/from16 v1, p3

    iput v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    .line 288
    move-wide/from16 v2, p4

    iput-wide v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->maxSize:J

    .line 289
    return-void
.end method

.method static synthetic access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)Ljava/io/Writer;
    .locals 0

    .line 154
    iget-object p0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$1(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$10(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)Ljava/io/File;
    .locals 0

    .line 147
    iget-object p0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)Z
    .locals 0

    .line 614
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$4(Lnet/tsz/afinal/bitmap/core/LruDiskCache;I)V
    .locals 0

    .line 157
    iput p1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    return-void
.end method

.method static synthetic access$5(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;J)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    invoke-direct {p0, p1, p2, p3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->edit(Ljava/lang/String;J)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$6(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    invoke-static {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7()Ljava/nio/charset/Charset;
    .locals 1

    .line 104
    sget-object v0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$8(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 560
    invoke-direct {p0, p1, p2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->completeEdit(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$9(Lnet/tsz/afinal/bitmap/core/LruDiskCache;)I
    .locals 0

    .line 152
    iget p0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    return p0
.end method

.method private checkNotClosed()V
    .locals 2

    .line 662
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 665
    return-void

    .line 663
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 233
    if-eqz p0, :cond_0

    .line 235
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    goto :goto_0

    .line 236
    :catch_1
    move-exception v0

    .line 237
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 241
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized completeEdit(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;Z)V
    .locals 11
    .param p1, "editor"    # Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 561
    :try_start_0
    invoke-static {p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    move-result-object v0

    .line 562
    .local v0, "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_a

    .line 567
    if-eqz p2, :cond_2

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$1(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 568
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->abort()V

    .line 571
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "edit didn\'t create file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    .end local v1    # "i":I
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_7

    .line 592
    .end local v1    # "i":I
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    .line 593
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$5(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V

    .line 594
    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$1(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    if-eqz v1, :cond_3

    .line 595
    invoke-static {v0, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$4(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Z)V

    .line 596
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 597
    if-eqz p2, :cond_4

    .line 598
    iget-wide v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->nextSequenceNumber:J

    invoke-static {v0, v1, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$9(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;J)V

    goto :goto_3

    .line 601
    :cond_3
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "REMOVE "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 605
    :cond_4
    :goto_3
    iget-wide v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    iget-wide v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_5

    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 606
    :cond_5
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_6
    monitor-exit p0

    return-void

    .line 577
    .restart local v1    # "i":I
    :cond_7
    :try_start_1
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 578
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_8

    .line 579
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 580
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 581
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 582
    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$7(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    .line 583
    .local v5, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 584
    .local v7, "newLength":J
    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$7(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)[J

    move-result-object v4

    aput-wide v7, v4, v1

    .line 585
    iget-wide v9, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    sub-long/2addr v9, v5

    add-long/2addr v9, v7

    iput-wide v9, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    .end local v3    # "clean":Ljava/io/File;
    .end local v5    # "oldLength":J
    .end local v7    # "newLength":J
    goto :goto_4

    .line 588
    :cond_8
    invoke-static {v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 576
    .end local v2    # "dirty":Ljava/io/File;
    :cond_9
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 563
    .end local v1    # "i":I
    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 560
    .end local v0    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    .end local p1    # "editor":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    .end local p2    # "success":Z
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .param p0, "original"    # [Ljava/lang/Object;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    .line 169
    array-length v0, p0

    .line 170
    .local v0, "originalLength":I
    if-gt p1, p2, :cond_1

    .line 173
    if-ltz p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 176
    sub-int v1, p2, p1

    .line 177
    .local v1, "resultLength":I
    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 179
    .local v2, "copyLength":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    .line 178
    check-cast v3, [Ljava/lang/Object;

    .line 180
    .local v3, "result":[Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    return-object v3

    .line 174
    .end local v1    # "resultLength":I
    .end local v2    # "copyLength":I
    .end local v3    # "result":[Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 171
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 249
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 250
    return-void

    .line 253
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    .line 261
    return-void

    .line 253
    :cond_1
    aget-object v3, v0, v2

    .line 254
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 255
    invoke-static {v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 257
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .restart local v3    # "file":Ljava/io/File;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 461
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_0
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->checkNotClosed()V

    .line 514
    invoke-direct {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 515
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    .line 516
    .local v0, "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    .line 517
    if-eqz v0, :cond_0

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$8(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 518
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :cond_0
    monitor-exit p0

    return-object v3

    .line 520
    :cond_1
    if-nez v0, :cond_2

    .line 521
    :try_start_1
    new-instance v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    invoke-direct {v1, p0, p1, v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)V

    move-object v0, v1

    .line 522
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 523
    :cond_2
    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 524
    monitor-exit p0

    return-object v3

    .line 527
    :cond_3
    :goto_0
    :try_start_2
    new-instance v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    invoke-direct {v1, p0, v0, v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V

    .line 528
    .local v1, "editor":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    invoke-static {v0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$5(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V

    .line 531
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 533
    monitor-exit p0

    return-object v1

    .line 512
    .end local v0    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    .end local v1    # "editor":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .line 615
    const/16 v0, 0x7d0

    .line 616
    .local v0, "REDUNDANT_OP_COMPACT_THRESHOLD":I
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    .line 617
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    nop

    .line 616
    const/4 v1, 0x0

    return v1
.end method

.method public static open(Ljava/io/File;IIJ)Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    .locals 8
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_3

    .line 306
    if-lez p2, :cond_2

    .line 309
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 312
    :cond_0
    new-instance v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "appVersion":I
    .end local p2    # "valueCount":I
    .end local p3    # "maxSize":J
    .local v2, "directory":Ljava/io/File;
    .local v3, "appVersion":I
    .local v4, "valueCount":I
    .local v5, "maxSize":J
    invoke-direct/range {v1 .. v6}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    .line 313
    .local v1, "cache":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    iget-object p0, v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 315
    :try_start_0
    invoke-direct {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readJournal()V

    .line 316
    invoke-direct {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->processJournal()V

    .line 317
    new-instance p0, Ljava/io/BufferedWriter;

    new-instance p1, Ljava/io/FileWriter;

    iget-object p2, v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 318
    const/16 p2, 0x2000

    invoke-direct {p0, p1, p2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 317
    iput-object p0, v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    return-object v1

    .line 320
    :catch_0
    move-exception v0

    move-object p0, v0

    .line 323
    .local p0, "journalIsCorrupt":Ljava/io/IOException;
    invoke-virtual {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->delete()V

    .line 328
    .end local p0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 329
    move-wide v6, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    .end local v2    # "directory":Ljava/io/File;
    .local v3, "directory":Ljava/io/File;
    .local v4, "appVersion":I
    .local v5, "valueCount":I
    .local v6, "maxSize":J
    new-instance v2, Lnet/tsz/afinal/bitmap/core/LruDiskCache;

    invoke-direct/range {v2 .. v7}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    move-object p0, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    .line 330
    .end local v1    # "cache":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    .end local v6    # "maxSize":J
    .restart local v2    # "directory":Ljava/io/File;
    .local v3, "appVersion":I
    .local v4, "valueCount":I
    .local v5, "maxSize":J
    .local p0, "cache":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->rebuildJournal()V

    .line 331
    return-object p0

    .line 307
    .end local v2    # "directory":Ljava/io/File;
    .end local v3    # "appVersion":I
    .end local v4    # "valueCount":I
    .end local v5    # "maxSize":J
    .local p0, "directory":Ljava/io/File;
    .restart local p1    # "appVersion":I
    .restart local p2    # "valueCount":I
    .restart local p3    # "maxSize":J
    :cond_2
    move-object v2, p0

    move v3, p1

    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "appVersion":I
    .restart local v2    # "directory":Ljava/io/File;
    .restart local v3    # "appVersion":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 304
    .end local v2    # "directory":Ljava/io/File;
    .end local v3    # "appVersion":I
    .restart local p0    # "directory":Ljava/io/File;
    .restart local p1    # "appVersion":I
    :cond_3
    move-object v2, p0

    move v3, p1

    .end local p0    # "directory":Ljava/io/File;
    .end local p1    # "appVersion":I
    .restart local v2    # "directory":Ljava/io/File;
    .restart local v3    # "appVersion":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 400
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 415
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;>;"
    return-void

    .line 401
    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    .line 402
    .local v1, "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v2

    if-nez v2, :cond_2

    .line 403
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_1
    iget v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_1

    .end local v2    # "t":I
    goto :goto_0

    .line 404
    .restart local v2    # "t":I
    :cond_1
    iget-wide v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$7(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 407
    .end local v2    # "t":I
    :cond_2
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$5(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V

    .line 408
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_2
    iget v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    if-lt v2, v3, :cond_3

    .line 412
    .end local v2    # "t":I
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 409
    .restart local v2    # "t":I
    :cond_3
    invoke-virtual {v1, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 410
    invoke-virtual {v1, v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->deleteIfExists(Ljava/io/File;)V

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 214
    .local v1, "c":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 216
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 217
    nop

    .line 222
    .end local v1    # "c":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 223
    .local v1, "length":I
    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 224
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 226
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 220
    .local v1, "c":I
    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .end local v1    # "c":I
    goto :goto_0

    .line 215
    .restart local v1    # "c":I
    :cond_2
    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 5
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 190
    .local v0, "writer":Ljava/io/StringWriter;
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 192
    .local v1, "buffer":[C
    nop

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    move v3, v2

    .local v3, "count":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 195
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 195
    return-object v2

    .line 193
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/StringWriter;->write([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    .end local v0    # "writer":Ljava/io/StringWriter;
    .end local v1    # "buffer":[C
    .end local v3    # "count":I
    :catchall_0
    move-exception v0

    .line 197
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 198
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    const-string v0, ", "

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 337
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .local v2, "magic":Ljava/lang/String;
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "version":Ljava/lang/String;
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 340
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 341
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 343
    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 344
    iget v7, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 345
    iget v7, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 346
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 353
    :goto_0
    :try_start_1
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    nop

    .line 359
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 361
    return-void

    .line 347
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "unexpected journal header: ["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "in":Ljava/io/InputStream;
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catchall_0
    move-exception v0

    .line 359
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->closeQuietly(Ljava/io/Closeable;)V

    .line 360
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 10
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const-string v2, "unexpected journal line: "

    const/4 v3, 0x2

    if-lt v1, v3, :cond_5

    .line 369
    const/4 v1, 0x1

    aget-object v4, v0, v1

    .line 370
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v6, v0, v5

    const-string v7, "REMOVE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    array-length v6, v0

    if-ne v6, v3, :cond_0

    .line 371
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    return-void

    .line 375
    :cond_0
    iget-object v6, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    .line 376
    .local v6, "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 377
    new-instance v8, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    invoke-direct {v8, p0, v4, v7}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)V

    move-object v6, v8

    .line 378
    iget-object v8, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v4, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_1
    aget-object v8, v0, v5

    const-string v9, "CLEAN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    array-length v8, v0

    iget v9, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    add-int/2addr v9, v3

    if-ne v8, v9, :cond_2

    .line 382
    invoke-static {v6, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$4(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Z)V

    .line 383
    invoke-static {v6, v7}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$5(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V

    .line 384
    array-length v1, v0

    invoke-static {v0, v3, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v6, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$6(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 385
    :cond_2
    aget-object v1, v0, v5

    const-string v8, "DIRTY"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    array-length v1, v0

    if-ne v1, v3, :cond_3

    .line 386
    new-instance v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    invoke-direct {v1, p0, v6, v7}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V

    invoke-static {v6, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$5(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;)V

    goto :goto_0

    .line 387
    :cond_3
    aget-object v1, v0, v5

    const-string v5, "READ"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    array-length v1, v0

    if-ne v1, v3, :cond_4

    .line 392
    :goto_0
    return-void

    .line 390
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    :cond_5
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 426
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 427
    .local v0, "writer":Ljava/io/Writer;
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 428
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 429
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 430
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 431
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 432
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 433
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 434
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 435
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 445
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 446
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 447
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    monitor-exit p0

    return-void

    .line 437
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    .line 438
    .local v3, "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    invoke-static {v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v4

    const/16 v5, 0xa

    if-eqz v4, :cond_2

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "DIRTY "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "CLEAN "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$2(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    .end local v0    # "writer":Ljava/io/Writer;
    .end local v3    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 694
    nop

    :goto_0
    iget-wide v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    iget-wide v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->maxSize:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 699
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 697
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->remove(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 712
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    return-void

    .line 713
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 681
    monitor-exit p0

    return-void

    .line 683
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 688
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->trimToSize()V

    .line 689
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    monitor-exit p0

    return-void

    .line 683
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    .line 684
    .local v1, "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 685
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;->abort()V

    goto :goto_0

    .line 679
    .end local v1    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->close()V

    .line 708
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->deleteContents(Ljava/io/File;)V

    .line 709
    return-void
.end method

.method public edit(Ljava/lang/String;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 509
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->edit(Ljava/lang/String;J)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 671
    :try_start_0
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->checkNotClosed()V

    .line 672
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->trimToSize()V

    .line 673
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 674
    monitor-exit p0

    return-void

    .line 670
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 469
    :try_start_0
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->checkNotClosed()V

    .line 470
    invoke-direct {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v1, v0

    .line 472
    .local v1, "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 473
    monitor-exit p0

    return-object v2

    .line 476
    :cond_0
    :try_start_1
    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$1(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    .line 477
    monitor-exit p0

    return-object v2

    .line 485
    :cond_1
    :try_start_2
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    new-array v0, v0, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v0

    .line 487
    .local v8, "ins":[Ljava/io/InputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_3
    iget v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lt v0, v3, :cond_3

    .line 495
    .end local v0    # "i":I
    :try_start_4
    iget v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    .line 496
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 497
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalRebuildRequired()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_2

    .line 498
    :try_start_5
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 468
    .end local v1    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    .end local v8    # "ins":[Ljava/io/InputStream;
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p0

    goto :goto_4

    .line 501
    .restart local v1    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    .restart local v8    # "ins":[Ljava/io/InputStream;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_6
    new-instance v3, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;

    invoke-static {v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$8(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)J

    move-result-wide v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    .end local p1    # "key":Ljava/lang/String;
    .local v5, "key":Ljava/lang/String;
    .restart local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :try_start_7
    invoke-direct/range {v3 .. v9}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;-><init>(Lnet/tsz/afinal/bitmap/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/InputStream;Lnet/tsz/afinal/bitmap/core/LruDiskCache$Snapshot;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object v3

    .line 488
    .end local v5    # "key":Ljava/lang/String;
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    .restart local v0    # "i":I
    .restart local p1    # "key":Ljava/lang/String;
    :cond_3
    move-object v4, p0

    move-object v5, p1

    .end local p1    # "key":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    :try_start_8
    new-instance p1, Ljava/io/FileInputStream;

    invoke-virtual {v1, v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object p1, v8, v0
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 487
    add-int/lit8 v0, v0, 0x1

    move-object p1, v5

    goto :goto_0

    .line 490
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    .end local v5    # "key":Ljava/lang/String;
    .restart local p1    # "key":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v4, p0

    move-object v5, p1

    move-object p1, v0

    .line 492
    .restart local v5    # "key":Ljava/lang/String;
    .local p1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    monitor-exit p0

    return-object v2

    .line 468
    .end local v1    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "ins":[Ljava/io/InputStream;
    .end local p1    # "e":Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v0

    move-object v4, p0

    :goto_3
    move-object p1, v0

    :goto_4
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw p1

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 540
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .line 658
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public maxSize()J
    .locals 2

    .line 548
    iget-wide v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 627
    :try_start_0
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->checkNotClosed()V

    .line 628
    invoke-direct {p0, p1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->validateKey(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;

    .line 630
    .local v0, "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    if-eqz v0, :cond_4

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$0(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)Lnet/tsz/afinal/bitmap/core/LruDiskCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 634
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->valueCount:I

    if-lt v1, v2, :cond_2

    .line 643
    .end local v1    # "i":I
    iget v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->redundantOpCount:I

    .line 644
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "REMOVE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 645
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    invoke-direct {p0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 648
    iget-object v1, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :cond_1
    monitor-exit p0

    return v2

    .line 635
    .restart local v1    # "i":I
    :cond_2
    :try_start_1
    invoke-virtual {v0, v1}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 636
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 639
    iget-wide v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$7(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v1

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J

    .line 640
    invoke-static {v0}, Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;->access$7(Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 634
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to delete "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    .end local v1    # "i":I
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    :goto_1
    monitor-exit p0

    const/4 v1, 0x0

    return v1

    .line 626
    .end local v0    # "entry":Lnet/tsz/afinal/bitmap/core/LruDiskCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    .line 557
    :try_start_0
    iget-wide v0, p0, Lnet/tsz/afinal/bitmap/core/LruDiskCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 557
    .end local p0    # "this":Lnet/tsz/afinal/bitmap/core/LruDiskCache;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
