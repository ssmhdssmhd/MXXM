.class public final enum Lcom/cicada/player/utils/FrameInfo$SampleFormat;
.super Ljava/lang/Enum;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cicada/player/utils/FrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SampleFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cicada/player/utils/FrameInfo$SampleFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_DBL:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_DBLP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_FLT:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_FLTP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_NB:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S16:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S16P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S32:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_S32P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_U8:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

.field public static final enum AF_SAMPLE_FMT_U8P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 23
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const/4 v1, -0x1

    const-string v2, "AF_SAMPLE_FMT_NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 24
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_U8"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_U8:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 25
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_S16"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S16:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 26
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_S32"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v4}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S32:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 27
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_FLT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v5}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_FLT:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 28
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_DBL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v6}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_DBL:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 30
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_U8P"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v7}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_U8P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 31
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_S16P"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v8}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S16P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 32
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_S32P"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v9}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S32P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 33
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_FLTP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v10}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_FLTP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 34
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_DBLP"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v11}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_DBLP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 36
    new-instance v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    const-string v1, "AF_SAMPLE_FMT_NB"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v12}, Lcom/cicada/player/utils/FrameInfo$SampleFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_NB:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    .line 22
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_NONE:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_U8:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S16:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S32:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_FLT:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_DBL:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_U8P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v8

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S16P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v9

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_S32P:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v10

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_FLTP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v11

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_DBLP:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v12

    sget-object v1, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->AF_SAMPLE_FMT_NB:Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    aput-object v1, v0, v13

    sput-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cicada/player/utils/FrameInfo$SampleFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    return-object v0
.end method

.method public static values()[Lcom/cicada/player/utils/FrameInfo$SampleFormat;
    .locals 1

    .line 22
    sget-object v0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->$VALUES:[Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    invoke-virtual {v0}, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cicada/player/utils/FrameInfo$SampleFormat;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/cicada/player/utils/FrameInfo$SampleFormat;->mValue:I

    return v0
.end method
