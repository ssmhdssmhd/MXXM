.class final Lcom/google/android/exoplayer2/text/cea/Cea708Cue;
.super Lcom/google/android/exoplayer2/text/Cue;
.source "Cea708Cue.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplayer2/text/Cue;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/exoplayer2/text/cea/Cea708Cue;",
        ">;"
    }
.end annotation


# static fields
.field public static final PRIORITY_UNSET:I = -0x1


# instance fields
.field public final priority:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "textAlignment"    # Landroid/text/Layout$Alignment;
    .param p3, "line"    # F
    .param p4, "lineType"    # I
    .param p5, "lineAnchor"    # I
    .param p6, "position"    # F
    .param p7, "positionAnchor"    # I
    .param p8, "size"    # F
    .param p9, "windowColorSet"    # Z
    .param p10, "windowColor"    # I
    .param p11, "priority"    # I

    .line 53
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZI)V

    .line 55
    move v0, p10

    move p10, p9

    move p9, p8

    move p8, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "text":Ljava/lang/CharSequence;
    .local v0, "windowColor":I
    .local p2, "text":Ljava/lang/CharSequence;
    .local p3, "textAlignment":Landroid/text/Layout$Alignment;
    .local p4, "line":F
    .local p5, "lineType":I
    .local p6, "lineAnchor":I
    .local p7, "position":F
    .local p8, "positionAnchor":I
    .local p9, "size":F
    .local p10, "windowColorSet":Z
    iput p11, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    .line 56
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/exoplayer2/text/cea/Cea708Cue;)I
    .locals 2
    .param p1, "other"    # Lcom/google/android/exoplayer2/text/cea/Cea708Cue;

    .line 60
    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-ge v0, v1, :cond_0

    .line 61
    const/4 v0, -0x1

    return v0

    .line 62
    :cond_0
    iget v0, p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    iget v1, p0, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->priority:I

    if-le v0, v1, :cond_1

    .line 63
    const/4 v0, 0x1

    return v0

    .line 65
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/text/cea/Cea708Cue;->compareTo(Lcom/google/android/exoplayer2/text/cea/Cea708Cue;)I

    move-result p1

    return p1
.end method
