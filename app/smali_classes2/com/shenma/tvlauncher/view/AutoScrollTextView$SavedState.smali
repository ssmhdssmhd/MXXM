.class public Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AutoScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shenma/tvlauncher/view/AutoScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isStarting:Z

.field public step:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 124
    new-instance v0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState$1;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState$1;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 143
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->isStarting:Z

    .line 136
    const/4 v1, 0x0

    iput v1, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->step:F

    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "b":[Z
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 146
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 147
    aget-byte v0, v1, v0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->isStarting:Z

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->step:F

    .line 149
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/shenma/tvlauncher/view/AutoScrollTextView-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 139
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->isStarting:Z

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->step:F

    .line 140
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    iget-boolean v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->isStarting:Z

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 155
    iget v0, p0, Lcom/shenma/tvlauncher/view/AutoScrollTextView$SavedState;->step:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 156
    return-void
.end method
