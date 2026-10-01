.class public Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;
.super Ljava/lang/Object;
.source "InfoHudViewHolder.java"


# static fields
.field private static final MSG_UPDATE_HUD:I = 0x1


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mLoadCost:J

.field private mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

.field private mRowMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSeekCost:J

.field private mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadCost(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J
    .locals 2

    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mLoadCost:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)Ltv/danmaku/ijk/media/player/IMediaPlayer;
    .locals 0

    iget-object p0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeekCost(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)J
    .locals 2

    iget-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mSeekCost:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$msetRowValue(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->setRowValue(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smformatedDurationMilli(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->formatedDurationMilli(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smformatedSize(J)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->formatedSize(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smformatedSpeed(JJ)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->formatedSpeed(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TableLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tableLayout"    # Landroid/widget/TableLayout;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mLoadCost:J

    .line 24
    iput-wide v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mSeekCost:J

    .line 25
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;

    invoke-direct {v0, p0}, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder$1;-><init>(Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-direct {v0, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;-><init>(Landroid/content/Context;Landroid/widget/TableLayout;)V

    iput-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    .line 87
    return-void
.end method

.method private appendRow(I)V
    .locals 2
    .param p1, "nameId"    # I

    .line 131
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 132
    .local v0, "rowView":Landroid/view/View;
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    return-void
.end method

.method private appendSection(I)V
    .locals 1
    .param p1, "nameId"    # I

    .line 127
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual {v0, p1}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendSection(I)Landroid/view/View;

    .line 128
    return-void
.end method

.method private static formatedDurationMilli(J)Ljava/lang/String;
    .locals 5
    .param p0, "duration"    # J

    .line 90
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-ltz v4, :cond_0

    .line 91
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-float v1, p0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "%.2f sec"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "%d msec"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatedSize(J)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # J

    .line 117
    const-wide/32 v0, 0x186a0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x447a0000    # 1000.0f

    cmp-long v5, p0, v0

    if-ltz v5, :cond_0

    .line 118
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-float v1, p0

    div-float/2addr v1, v4

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "%.2f MB"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_0
    const-wide/16 v0, 0x64

    cmp-long v5, p0, v0

    if-ltz v5, :cond_1

    .line 120
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-float v1, p0

    div-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "%.1f KB"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 122
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v1, "%d B"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatedSpeed(JJ)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # J
    .param p2, "elapsed_milli"    # J

    .line 98
    const-string v0, "0 B/s"

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-gtz v3, :cond_0

    .line 99
    return-object v0

    .line 102
    :cond_0
    cmp-long v3, p0, v1

    if-gtz v3, :cond_1

    .line 103
    return-object v0

    .line 106
    :cond_1
    long-to-float v0, p0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    long-to-float v2, p2

    div-float/2addr v0, v2

    .line 107
    .local v0, "bytes_per_sec":F
    const v2, 0x49742400    # 1000000.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    .line 108
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-float v5, v0, v1

    div-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "%.2f MB/s"

    invoke-static {v2, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 109
    :cond_2
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_3

    .line 110
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    div-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "%.1f KB/s"

    invoke-static {v2, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 112
    :cond_3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    float-to-long v5, v0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    const-string v2, "%d B/s"

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private setRowValue(ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 137
    .local v0, "rowView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 138
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual {v1, p1, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->appendRow2(ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 139
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mRowMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mTableLayoutBinder:Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;

    invoke-virtual {v1, v0, p2}, Ltv/danmaku/ijk/media/example/widget/media/TableLayoutBinder;->setValueText(Landroid/view/View;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void
.end method


# virtual methods
.method public setMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 146
    iput-object p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    .line 147
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mMediaPlayer:Ltv/danmaku/ijk/media/player/IMediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    :goto_0
    return-void
.end method

.method public updateLoadCost(J)V
    .locals 0
    .param p1, "time"    # J

    .line 155
    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mLoadCost:J

    .line 156
    return-void
.end method

.method public updateSeekCost(J)V
    .locals 0
    .param p1, "time"    # J

    .line 159
    iput-wide p1, p0, Ltv/danmaku/ijk/media/example/widget/media/InfoHudViewHolder;->mSeekCost:J

    .line 160
    return-void
.end method
