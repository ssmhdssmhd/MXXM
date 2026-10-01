.class public Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;
.super Ljava/lang/Object;
.source "GlobalFlagValues.java"


# instance fields
.field public FILTER_RESET_FLAG:I

.field public FIRST_SHOWN_RESET_FLAG:I

.field public MEASURE_RESET_FLAG:I

.field public PREPARE_RESET_FLAG:I

.field public SYNC_TIME_OFFSET_RESET_FLAG:I

.field public VISIBLE_RESET_FLAG:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 6
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 7
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    .line 8
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FIRST_SHOWN_RESET_FLAG:I

    .line 9
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->SYNC_TIME_OFFSET_RESET_FLAG:I

    .line 10
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->PREPARE_RESET_FLAG:I

    return-void
.end method


# virtual methods
.method public resetAll()V
    .locals 1

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 14
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 15
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    .line 16
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FIRST_SHOWN_RESET_FLAG:I

    .line 17
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->SYNC_TIME_OFFSET_RESET_FLAG:I

    .line 18
    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->PREPARE_RESET_FLAG:I

    .line 19
    return-void
.end method

.method public updateAll()V
    .locals 1

    .line 22
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 23
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 24
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    .line 25
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FIRST_SHOWN_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FIRST_SHOWN_RESET_FLAG:I

    .line 26
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->SYNC_TIME_OFFSET_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->SYNC_TIME_OFFSET_RESET_FLAG:I

    .line 27
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->PREPARE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->PREPARE_RESET_FLAG:I

    .line 28
    return-void
.end method

.method public updateFilterFlag()V
    .locals 1

    .line 39
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FILTER_RESET_FLAG:I

    .line 40
    return-void
.end method

.method public updateFirstShownFlag()V
    .locals 1

    .line 43
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FIRST_SHOWN_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->FIRST_SHOWN_RESET_FLAG:I

    .line 44
    return-void
.end method

.method public updateMeasureFlag()V
    .locals 1

    .line 35
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->MEASURE_RESET_FLAG:I

    .line 36
    return-void
.end method

.method public updatePrepareFlag()V
    .locals 1

    .line 51
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->PREPARE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->PREPARE_RESET_FLAG:I

    .line 52
    return-void
.end method

.method public updateSyncOffsetTimeFlag()V
    .locals 1

    .line 47
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->SYNC_TIME_OFFSET_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->SYNC_TIME_OFFSET_RESET_FLAG:I

    .line 48
    return-void
.end method

.method public updateVisibleFlag()V
    .locals 1

    .line 31
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmaster/flame/danmaku/danmaku/model/GlobalFlagValues;->VISIBLE_RESET_FLAG:I

    .line 32
    return-void
.end method
