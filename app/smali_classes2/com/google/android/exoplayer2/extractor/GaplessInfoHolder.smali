.class public final Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;
.super Ljava/lang/Object;
.source "GaplessInfoHolder.java"


# static fields
.field private static final GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

.field private static final GAPLESS_DESCRIPTION:Ljava/lang/String; = "iTunSMPB"

.field private static final GAPLESS_DOMAIN:Ljava/lang/String; = "com.apple.iTunes"


# instance fields
.field public encoderDelay:I

.field public encoderPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    nop

    .line 33
    const-string v0, "^ [0-9a-fA-F]{8} ([0-9a-fA-F]{8}) ([0-9a-fA-F]{8})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 52
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 53
    return-void
.end method

.method private setFromComment(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .line 107
    sget-object v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->GAPLESS_COMMENT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 108
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, "encoderDelay":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "encoderPadding":I
    if-gtz v2, :cond_1

    if-lez v3, :cond_0

    goto :goto_0

    .line 119
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :cond_0
    goto :goto_1

    .line 113
    .restart local v2    # "encoderDelay":I
    .restart local v3    # "encoderPadding":I
    :cond_1
    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 114
    iput v3, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return v1

    .line 117
    .end local v2    # "encoderDelay":I
    .end local v3    # "encoderPadding":I
    :catch_0
    move-exception v1

    .line 121
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasGaplessInfo()Z
    .locals 2

    .line 128
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Z
    .locals 7
    .param p1, "metadata"    # Lcom/google/android/exoplayer2/metadata/Metadata;

    .line 79
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/metadata/Metadata;->get(I)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v1

    .line 81
    .local v1, "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    instance-of v2, v1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v3, "iTunSMPB"

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 82
    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    .line 83
    .local v2, "commentFrame":Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    iget-object v5, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;->text:Ljava/lang/String;

    .line 84
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    return v4

    .line 87
    .end local v2    # "commentFrame":Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    :cond_0
    instance-of v2, v1, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    if-eqz v2, :cond_1

    .line 88
    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;

    .line 89
    .local v2, "internalFrame":Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;
    const-string v5, "com.apple.iTunes"

    iget-object v6, v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;->domain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;->description:Ljava/lang/String;

    .line 90
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;->text:Ljava/lang/String;

    .line 91
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->setFromComment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    return v4

    .line 87
    .end local v2    # "internalFrame":Lcom/google/android/exoplayer2/metadata/id3/InternalFrame;
    :cond_1
    nop

    .line 79
    .end local v1    # "entry":Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public setFromXingHeaderValue(I)Z
    .locals 3
    .param p1, "value"    # I

    .line 62
    shr-int/lit8 v0, p1, 0xc

    .line 63
    .local v0, "encoderDelay":I
    and-int/lit16 v1, p1, 0xfff

    .line 64
    .local v1, "encoderPadding":I
    if-gtz v0, :cond_1

    if-lez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 65
    :cond_1
    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 66
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 67
    const/4 v2, 0x1

    return v2
.end method
