.class final Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
.super Ljava/lang/Object;
.source "DashMediaPeriod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackGroupInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo$TrackGroupCategory;
    }
.end annotation


# static fields
.field private static final CATEGORY_EMBEDDED:I = 0x1

.field private static final CATEGORY_MANIFEST_EVENTS:I = 0x2

.field private static final CATEGORY_PRIMARY:I


# instance fields
.field public final adaptationSetIndices:[I

.field public final embeddedCea608TrackGroupIndex:I

.field public final embeddedEventMessageTrackGroupIndex:I

.field public final eventStreamGroupIndex:I

.field public final primaryTrackGroupIndex:I

.field public final trackGroupCategory:I

.field public final trackType:I


# direct methods
.method private constructor <init>(II[IIIII)V
    .locals 0
    .param p1, "trackType"    # I
    .param p2, "trackGroupCategory"    # I
    .param p3, "adaptationSetIndices"    # [I
    .param p4, "primaryTrackGroupIndex"    # I
    .param p5, "embeddedEventMessageTrackGroupIndex"    # I
    .param p6, "embeddedCea608TrackGroupIndex"    # I
    .param p7, "eventStreamGroupIndex"    # I

    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    iput p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackType:I

    .line 757
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->adaptationSetIndices:[I

    .line 758
    iput p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->trackGroupCategory:I

    .line 759
    iput p4, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->primaryTrackGroupIndex:I

    .line 760
    iput p5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedEventMessageTrackGroupIndex:I

    .line 761
    iput p6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->embeddedCea608TrackGroupIndex:I

    .line 762
    iput p7, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;->eventStreamGroupIndex:I

    .line 763
    return-void
.end method

.method public static embeddedCea608Track([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 8
    .param p0, "adaptationSetIndices"    # [I
    .param p1, "primaryTrackGroupIndex"    # I

    .line 727
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v5, -0x1

    move-object v3, p0

    move v4, p1

    .end local p0    # "adaptationSetIndices":[I
    .end local p1    # "primaryTrackGroupIndex":I
    .local v3, "adaptationSetIndices":[I
    .local v4, "primaryTrackGroupIndex":I
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v0
.end method

.method public static embeddedEmsgTrack([II)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 8
    .param p0, "adaptationSetIndices"    # [I
    .param p1, "primaryTrackGroupIndex"    # I

    .line 715
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v5, -0x1

    move-object v3, p0

    move v4, p1

    .end local p0    # "adaptationSetIndices":[I
    .end local p1    # "primaryTrackGroupIndex":I
    .local v3, "adaptationSetIndices":[I
    .local v4, "primaryTrackGroupIndex":I
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v0
.end method

.method public static mpdEventTrack(I)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 8
    .param p0, "eventStreamIndex"    # I

    .line 738
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move v7, p0

    .end local p0    # "eventStreamIndex":I
    .local v7, "eventStreamIndex":I
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v0
.end method

.method public static primaryTrack(I[IIII)Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;
    .locals 8
    .param p0, "trackType"    # I
    .param p1, "adaptationSetIndices"    # [I
    .param p2, "primaryTrackGroupIndex"    # I
    .param p3, "embeddedEventMessageTrackGroupIndex"    # I
    .param p4, "embeddedCea608TrackGroupIndex"    # I

    .line 703
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;

    const/4 v2, 0x0

    const/4 v7, -0x1

    move v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .end local p0    # "trackType":I
    .end local p1    # "adaptationSetIndices":[I
    .end local p2    # "primaryTrackGroupIndex":I
    .end local p3    # "embeddedEventMessageTrackGroupIndex":I
    .end local p4    # "embeddedCea608TrackGroupIndex":I
    .local v1, "trackType":I
    .local v3, "adaptationSetIndices":[I
    .local v4, "primaryTrackGroupIndex":I
    .local v5, "embeddedEventMessageTrackGroupIndex":I
    .local v6, "embeddedCea608TrackGroupIndex":I
    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/dash/DashMediaPeriod$TrackGroupInfo;-><init>(II[IIIII)V

    return-object v0
.end method
