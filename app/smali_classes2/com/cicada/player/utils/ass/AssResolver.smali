.class public Lcom/cicada/player/utils/ass/AssResolver;
.super Ljava/lang/Object;
.source "AssResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;,
        Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final TEXT_PATTERN:Ljava/lang/String; = "\\{[^\\{]+\\}"

.field public static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

.field private mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

.field private videoDisplayHeight:I

.field private videoDisplayWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/cicada/player/utils/ass/AssResolver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cicada/player/utils/ass/AssResolver;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "\\{[^\\{]+\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cicada/player/utils/ass/AssResolver;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    .line 58
    iput v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    .line 37
    new-instance v0, Lcom/cicada/player/utils/ass/TextViewPool;

    invoke-direct {v0, p1}, Lcom/cicada/player/utils/ass/TextViewPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    .line 38
    return-void
.end method

.method private convertRgbColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "abgrColorString"    # Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    const/16 v4, 0x8

    if-ne v0, v4, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 508
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private fillContentAttribute(Lcom/cicada/player/utils/ass/AssStyle;Ljava/util/LinkedList;Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;)V
    .locals 7
    .param p1, "assStyle"    # Lcom/cicada/player/utils/ass/AssStyle;
    .param p3, "locationAttribute"    # Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cicada/player/utils/ass/AssStyle;",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;",
            "Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;",
            ")V"
        }
    .end annotation

    .line 333
    .local p2, "contentAttributeLinkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;>;"
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 334
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_d

    .line 335
    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    .line 336
    .local v2, "contentAttribute":Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    iget-object v3, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 338
    .local v3, "text":Ljava/lang/String;
    const-string v4, "\\N"

    const-string v5, "\n"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\n"

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 339
    iget-object v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mFontName:Ljava/lang/String;

    iput-object v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    .line 340
    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mFontSize:D

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    .line 341
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBold:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iput-boolean v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    .line 342
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mItalic:I

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iput-boolean v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    .line 343
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mStrikeOut:I

    if-ne v4, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    iput-boolean v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    .line 344
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mUnderline:I

    if-ne v4, v6, :cond_3

    const/4 v5, 0x1

    :cond_3
    iput-boolean v5, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    .line 345
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBorderStyle:I

    iput v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBorderStyle:I

    .line 346
    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mOutline:D

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    .line 347
    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mShadow:D

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mShadow:D

    .line 348
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mBackColour:I

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    move-result v4

    iput v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBackColour:I

    .line 349
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mOutlineColour:I

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    move-result v4

    iput v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineColour:I

    .line 350
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mPrimaryColour:I

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    move-result v4

    iput v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    .line 351
    iget v4, p1, Lcom/cicada/player/utils/ass/AssStyle;->mSecondaryColour:I

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->rgbaToArgb(I)I

    move-result v4

    iput v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mSecondaryColour:I

    .line 353
    iget-object v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 355
    iget-object v4, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/cicada/player/utils/ass/AssResolver;->parseOverrideStyle(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 356
    .local v4, "overrideStyle":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_c

    .line 357
    const-string v5, "primaryColour"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 358
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    .line 360
    :cond_4
    const-string/jumbo v5, "strikeOut"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 361
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    .line 363
    :cond_5
    const-string/jumbo v5, "underline"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 364
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    .line 366
    :cond_6
    const-string v5, "italic"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 367
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    .line 369
    :cond_7
    const-string v5, "bold"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 370
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    .line 372
    :cond_8
    const-string v5, "fontSize"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 373
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-direct {p0, v5, v6}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v5

    iput-wide v5, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    .line 375
    :cond_9
    const-string v5, "fontName"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 376
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    .line 378
    :cond_a
    const-string v5, "posX"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 379
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, p3, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posX:D

    .line 381
    :cond_b
    const-string v5, "posY"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 382
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    iput-wide v5, p3, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    .line 334
    .end local v2    # "contentAttribute":Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "overrideStyle":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_d
    return-void
.end method

.method private getFinalStr(Ljava/util/LinkedList;)Landroid/text/SpannableStringBuilder;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 280
    .local p1, "contentAttributeLinkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;>;"
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 281
    .local v0, "spanBuilder":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .line 282
    .local v1, "start":I
    const/4 v2, 0x0

    .line 283
    .local v2, "end":I
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    .line 284
    .local v4, "contentAttribute":Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    iget-object v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 285
    iget-object v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 287
    iget-wide v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x21

    cmpl-double v11, v5, v7

    if-lez v11, :cond_1

    .line 288
    new-instance v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;

    invoke-direct {v5}, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;-><init>()V

    .line 289
    .local v5, "borderStyle":Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;
    iget-object v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    iput-object v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontName:Ljava/lang/String;

    .line 290
    iget-wide v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    iput-wide v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->fontSize:D

    .line 291
    iget v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    iput v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mPrimaryColour:I

    .line 292
    iget v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mSecondaryColour:I

    iput v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mSecondaryColour:I

    .line 293
    iget-boolean v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    iput-boolean v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mBold:Z

    .line 294
    iget-boolean v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    iput-boolean v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mItalic:Z

    .line 295
    iget-boolean v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    iput-boolean v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mUnderline:Z

    .line 296
    iget-boolean v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    iput-boolean v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mStrikeOut:Z

    .line 297
    iget v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineColour:I

    iput v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineColour:I

    .line 298
    iget-wide v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mOutlineWidth:D

    iput-wide v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mOutlineWidth:D

    .line 299
    iget v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBorderStyle:I

    if-ne v6, v9, :cond_0

    .line 300
    iget-wide v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mShadow:D

    iput-wide v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowWidth:D

    .line 301
    iget v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBackColour:I

    iput v6, v5, Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;->mShadowColor:I

    .line 303
    :cond_0
    new-instance v6, Lcom/cicada/player/utils/ass/BorderedSpan;

    invoke-direct {v6, v5}, Lcom/cicada/player/utils/ass/BorderedSpan;-><init>(Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;)V

    invoke-virtual {v0, v6, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 306
    .end local v5    # "borderStyle":Lcom/cicada/player/utils/ass/BorderedSpan$BorderStyle;
    :cond_1
    new-instance v5, Landroid/text/style/TypefaceSpan;

    iget-object v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontName:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 307
    new-instance v5, Landroid/text/style/AbsoluteSizeSpan;

    iget-wide v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->fontSize:D

    double-to-int v6, v6

    invoke-direct {v5, v6}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 308
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mPrimaryColour:I

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 310
    iget-boolean v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    if-eqz v5, :cond_2

    iget-boolean v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    if-eqz v5, :cond_2

    .line 311
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 312
    :cond_2
    iget-boolean v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mBold:Z

    if-eqz v5, :cond_3

    .line 313
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 314
    :cond_3
    iget-boolean v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mItalic:Z

    if-eqz v5, :cond_4

    .line 315
    new-instance v5, Landroid/text/style/StyleSpan;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 318
    :cond_4
    :goto_1
    iget-boolean v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mUnderline:Z

    if-eqz v5, :cond_5

    .line 319
    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 322
    :cond_5
    iget-boolean v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->mStrikeOut:Z

    if-eqz v5, :cond_6

    .line 323
    new-instance v5, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v5}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v0, v5, v1, v2, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 327
    :cond_6
    iget-object v5, v4, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    .line 328
    .end local v4    # "contentAttribute":Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    goto/16 :goto_0

    .line 329
    :cond_7
    return-object v0
.end method

.method private getLayoutParams(Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;FF)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 9
    .param p1, "locationAttribute"    # Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;
    .param p2, "viewWidth"    # F
    .param p3, "viewHeight"    # F

    .line 156
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 158
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posX:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_1

    iget-wide v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    iget v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    .line 229
    .local v1, "mAlignment":I
    const/16 v2, 0xf

    const/16 v3, 0xa

    const/16 v4, 0xb

    const/16 v5, 0xe

    const/16 v6, 0x9

    const/16 v7, 0xc

    packed-switch v1, :pswitch_data_0

    .line 266
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 267
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 262
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 263
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 264
    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 259
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 260
    goto :goto_0

    .line 254
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 255
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 256
    goto :goto_0

    .line 250
    :pswitch_3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 251
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 252
    goto :goto_0

    .line 247
    :pswitch_4
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 248
    goto :goto_0

    .line 243
    :pswitch_5
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 244
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 245
    goto :goto_0

    .line 239
    :pswitch_6
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 241
    goto :goto_0

    .line 235
    :pswitch_7
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 236
    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    goto :goto_0

    .line 231
    :pswitch_8
    invoke-virtual {v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 232
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 233
    nop

    .line 270
    :goto_0
    iget v2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 271
    iget v2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 272
    iget v2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    .line 159
    .end local v1    # "mAlignment":I
    :cond_1
    :goto_1
    iget v1, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    .line 160
    .restart local v1    # "mAlignment":I
    iget-wide v2, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posX:D

    invoke-direct {p0, v2, v3}, Lcom/cicada/player/utils/ass/AssResolver;->scaleXSize(D)D

    move-result-wide v2

    .line 161
    .local v2, "originX":D
    iget-wide v4, p1, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->posY:D

    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v4

    .line 162
    .local v4, "originY":D
    const/high16 v6, 0x40000000    # 2.0f

    packed-switch v1, :pswitch_data_1

    .line 220
    div-float v6, p2, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v2, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 221
    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v4, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_2

    .line 213
    :pswitch_9
    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v2, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 214
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 215
    goto/16 :goto_2

    .line 207
    :pswitch_a
    div-float v6, p2, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v2, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 208
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 209
    goto/16 :goto_2

    .line 201
    :pswitch_b
    invoke-direct {p0, v2, v3}, Lcom/cicada/player/utils/ass/AssResolver;->scaleXSize(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 202
    invoke-direct {p0, v4, v5}, Lcom/cicada/player/utils/ass/AssResolver;->scaleYSize(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 203
    goto :goto_2

    .line 195
    :pswitch_c
    float-to-double v7, p2

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, v2, v7

    double-to-int v7, v7

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 196
    div-float v6, p3, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v4, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 197
    goto :goto_2

    .line 189
    :pswitch_d
    div-float v7, p2, v6

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v7, v2, v7

    double-to-int v7, v7

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 190
    div-float v6, p3, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v4, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 191
    goto :goto_2

    .line 184
    :pswitch_e
    double-to-int v7, v2

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 185
    div-float v6, p3, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v4, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 186
    goto :goto_2

    .line 178
    :pswitch_f
    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v2, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 179
    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v4, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 180
    goto :goto_2

    .line 172
    :pswitch_10
    div-float v6, p2, v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v2, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 173
    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v4, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 174
    goto :goto_2

    .line 166
    :pswitch_11
    double-to-int v6, v2

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 167
    float-to-double v6, p3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v6, v4, v6

    double-to-int v6, v6

    iput v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 168
    nop

    .line 227
    .end local v1    # "mAlignment":I
    .end local v2    # "originX":D
    .end local v4    # "originY":D
    :goto_2
    nop

    .line 276
    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getLocationAttribute(Lcom/cicada/player/utils/ass/AssDialogue;Lcom/cicada/player/utils/ass/AssStyle;)Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;
    .locals 3
    .param p1, "assDialogue"    # Lcom/cicada/player/utils/ass/AssDialogue;
    .param p2, "assStyle"    # Lcom/cicada/player/utils/ass/AssStyle;

    .line 391
    new-instance v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    .line 392
    .local v0, "locationAttribute":Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;
    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mAlignment:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAlignment:I

    .line 393
    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginL:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    .line 394
    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginR:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    .line 395
    iget v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mMarginV:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    .line 397
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginL:I

    if-eqz v1, :cond_0

    .line 398
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginL:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginL:I

    .line 400
    :cond_0
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginR:I

    if-eqz v1, :cond_1

    .line 401
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginR:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginR:I

    .line 403
    :cond_1
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginV:I

    if-eqz v1, :cond_2

    .line 404
    iget v1, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mMarginV:I

    iput v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->marginV:I

    .line 407
    :cond_2
    iget-wide v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mAngle:D

    iput-wide v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAngle:D

    .line 408
    iget-wide v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mScaleX:D

    iput-wide v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleX:D

    .line 409
    iget-wide v1, p2, Lcom/cicada/player/utils/ass/AssStyle;->mScaleY:D

    iput-wide v1, v0, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleY:D

    .line 411
    return-object v0
.end method

.method private parseOverrideStyle(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .param p1, "styleStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 447
    const-string/jumbo v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 448
    .local v0, "start":I
    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 450
    .local v1, "end":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\\\"

    const-string v4, "\\$"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 452
    const-string v2, "$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 453
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 454
    .local v2, "overrideStyle":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "styles":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_a

    aget-object v7, v3, v6

    .line 456
    .local v7, "style":Ljava/lang/String;
    const-string v8, "fn"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 457
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "fontName"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 458
    :cond_0
    const-string v8, "fs"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 460
    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 461
    .local v8, "size":Ljava/lang/String;
    const-string v9, "fontSize"

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    nop

    .end local v8    # "size":Ljava/lang/String;
    goto/16 :goto_4

    .line 462
    :catch_0
    move-exception v8

    .line 464
    goto/16 :goto_4

    .line 465
    :cond_1
    const-string v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 466
    const-string v8, "b1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "bold"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 467
    :cond_2
    const-string v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 468
    const-string v8, "i1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v9, "italic"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 469
    :cond_3
    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 470
    const-string/jumbo v8, "u1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v9, "underline"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 471
    :cond_4
    const-string v8, "s"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 472
    const-string v8, "s1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string/jumbo v9, "strikeOut"

    invoke-interface {v2, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 473
    :cond_5
    const-string v8, "c&H"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "1c&H"

    if-nez v9, :cond_8

    invoke-virtual {v7, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_2

    .line 484
    :cond_6
    const-string v8, "pos"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 486
    const-string v8, "pos("

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 487
    .local v8, "posSplit":[Ljava/lang/String;
    aget-object v9, v8, v5

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    const-string v11, "posX"

    invoke-interface {v2, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    aget-object v9, v8, v10

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    const-string v10, "posY"

    invoke-interface {v2, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 484
    .end local v8    # "posSplit":[Ljava/lang/String;
    :cond_7
    :goto_1
    goto :goto_4

    .line 474
    :cond_8
    :goto_2
    const-string v9, "&"

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 475
    .local v9, "endIndex":I
    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 476
    const-string v11, "#"

    .line 477
    .local v11, "color":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 478
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/cicada/player/utils/ass/AssResolver;->convertRgbColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v11    # "color":Ljava/lang/String;
    .local v8, "color":Ljava/lang/String;
    goto :goto_3

    .line 480
    .end local v8    # "color":Ljava/lang/String;
    .restart local v11    # "color":Ljava/lang/String;
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/cicada/player/utils/ass/AssResolver;->convertRgbColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 482
    .end local v11    # "color":Ljava/lang/String;
    .restart local v8    # "color":Ljava/lang/String;
    :goto_3
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "primaryColour"

    invoke-interface {v2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v8    # "color":Ljava/lang/String;
    .end local v9    # "endIndex":I
    goto :goto_1

    .line 455
    .end local v7    # "style":Ljava/lang/String;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 491
    :cond_a
    return-object v2

    .line 493
    .end local v2    # "overrideStyle":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "styles":[Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    return-object v2
.end method

.method private rgbaToArgb(I)I
    .locals 7
    .param p1, "color"    # I

    .line 498
    and-int/lit16 v0, p1, 0xff

    rsub-int v0, v0, 0xff

    .line 499
    .local v0, "alpha":I
    ushr-int/lit8 v1, p1, 0x8

    .line 500
    .local v1, "rgb":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-string v3, "%02x"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v6

    const-string v3, "%06x"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "argbStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private scaleXSize(D)D
    .locals 4
    .param p1, "size"    # D

    .line 520
    iget v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    iget v0, v0, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResX:I

    if-lez v0, :cond_0

    .line 521
    iget v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    iget-object v2, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    iget v2, v2, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResX:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0

    .line 523
    :cond_0
    return-wide p1
.end method

.method private scaleYSize(D)D
    .locals 4
    .param p1, "size"    # D

    .line 512
    iget v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    iget v0, v0, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResY:I

    if-lez v0, :cond_0

    .line 513
    iget v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    iget-object v2, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    iget v2, v2, Lcom/cicada/player/utils/ass/AssHeader;->mPlayResY:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    return-wide v0

    .line 515
    :cond_0
    return-wide p1
.end method

.method private splitContent(Lcom/cicada/player/utils/ass/AssDialogue;)Ljava/util/LinkedList;
    .locals 7
    .param p1, "assDialogue"    # Lcom/cicada/player/utils/ass/AssDialogue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/cicada/player/utils/ass/AssDialogue;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;",
            ">;"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 416
    .local v0, "contentAttributeLinkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;>;"
    sget-object v1, Lcom/cicada/player/utils/ass/AssResolver;->pattern:Ljava/util/regex/Pattern;

    iget-object v2, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 417
    .local v1, "findMatch":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 418
    iget-object v2, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    const-string v4, "\\{[^\\{]+\\}"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, "splitContent":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_3

    .line 420
    const/4 v5, 0x0

    .line 421
    .local v5, "contentAttribute":Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    aget-object v6, v2, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 422
    new-instance v6, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    invoke-direct {v6, v3}, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    move-object v5, v6

    .line 423
    aget-object v6, v2, v4

    iput-object v6, v5, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 426
    :cond_0
    if-eqz v4, :cond_1

    .line 427
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, "styleStr":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 429
    iput-object v6, v5, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->overrideStyle:Ljava/lang/String;

    .line 433
    .end local v6    # "styleStr":Ljava/lang/String;
    :cond_1
    if-eqz v5, :cond_2

    .line 434
    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 419
    .end local v5    # "contentAttribute":Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "splitContent":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_3
    goto :goto_1

    .line 439
    :cond_4
    new-instance v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;

    invoke-direct {v2, v3}, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;-><init>(Lcom/cicada/player/utils/ass/AssResolver$1;)V

    .line 440
    .local v2, "contentAttribute":Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    iget-object v3, p1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    iput-object v3, v2, Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;->text:Ljava/lang/String;

    .line 441
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v2    # "contentAttribute":Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;
    :goto_1
    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 41
    return-void
.end method

.method public dismiss(Lcom/cicada/player/utils/ass/AssTextView;)V
    .locals 1
    .param p1, "remove"    # Lcom/cicada/player/utils/ass/AssTextView;

    .line 51
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/TextViewPool;->recycle(Lcom/cicada/player/utils/ass/AssTextView;)V

    .line 55
    :cond_0
    return-void
.end method

.method public setAssDialog(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssTextView;
    .locals 10
    .param p1, "content"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mTextViewPool:Lcom/cicada/player/utils/ass/TextViewPool;

    invoke-virtual {v0}, Lcom/cicada/player/utils/ass/TextViewPool;->obtain()Lcom/cicada/player/utils/ass/AssTextView;

    move-result-object v0

    .line 121
    .local v0, "assTextView":Lcom/cicada/player/utils/ass/AssTextView;
    invoke-virtual {v0, p1}, Lcom/cicada/player/utils/ass/AssTextView;->setContent(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    invoke-static {v1, p1}, Lcom/cicada/player/utils/ass/AssUtils;->parseAssDialogue(Lcom/cicada/player/utils/ass/AssHeader;Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssDialogue;

    move-result-object v1

    .line 123
    .local v1, "assDialogue":Lcom/cicada/player/utils/ass/AssDialogue;
    iget-object v2, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    iget-object v2, v2, Lcom/cicada/player/utils/ass/AssHeader;->mStyles:Ljava/util/Map;

    iget-object v3, v1, Lcom/cicada/player/utils/ass/AssDialogue;->mStyle:Ljava/lang/String;

    const-string v4, "*"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cicada/player/utils/ass/AssStyle;

    .line 125
    .local v2, "assStyle":Lcom/cicada/player/utils/ass/AssStyle;
    iget-object v3, v1, Lcom/cicada/player/utils/ass/AssDialogue;->mText:Ljava/lang/String;

    const-string/jumbo v4, "{\\p0}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    return-object v0

    .line 131
    :cond_0
    invoke-direct {p0, v1}, Lcom/cicada/player/utils/ass/AssResolver;->splitContent(Lcom/cicada/player/utils/ass/AssDialogue;)Ljava/util/LinkedList;

    move-result-object v3

    .line 133
    .local v3, "contentAttributeLinkedList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/cicada/player/utils/ass/AssResolver$ContentAttribute;>;"
    invoke-direct {p0, v1, v2}, Lcom/cicada/player/utils/ass/AssResolver;->getLocationAttribute(Lcom/cicada/player/utils/ass/AssDialogue;Lcom/cicada/player/utils/ass/AssStyle;)Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;

    move-result-object v4

    .line 134
    .local v4, "locationAttribute":Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;
    invoke-direct {p0, v2, v3, v4}, Lcom/cicada/player/utils/ass/AssResolver;->fillContentAttribute(Lcom/cicada/player/utils/ass/AssStyle;Ljava/util/LinkedList;Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;)V

    .line 136
    invoke-direct {p0, v3}, Lcom/cicada/player/utils/ass/AssResolver;->getFinalStr(Ljava/util/LinkedList;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    .line 138
    .local v5, "displayStr":Landroid/text/SpannableStringBuilder;
    sget-object v6, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v5, v6}, Lcom/cicada/player/utils/ass/AssTextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 139
    iget-wide v6, v4, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleX:D

    double-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/cicada/player/utils/ass/AssTextView;->setScaleX(F)V

    .line 140
    iget-wide v6, v4, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mScaleY:D

    double-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/cicada/player/utils/ass/AssTextView;->setScaleY(F)V

    .line 141
    iget-wide v6, v4, Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;->mAngle:D

    double-to-float v6, v6

    invoke-virtual {v0, v6}, Lcom/cicada/player/utils/ass/AssTextView;->setRotation(F)V

    .line 142
    const/4 v6, 0x0

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 143
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 142
    invoke-virtual {v0, v7, v6}, Lcom/cicada/player/utils/ass/AssTextView;->measure(II)V

    .line 144
    invoke-virtual {v0}, Lcom/cicada/player/utils/ass/AssTextView;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    .line 145
    .local v6, "measuredWidth":F
    invoke-virtual {v0}, Lcom/cicada/player/utils/ass/AssTextView;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    .line 147
    .local v7, "measuredHeight":F
    invoke-direct {p0, v4, v6, v7}, Lcom/cicada/player/utils/ass/AssResolver;->getLayoutParams(Lcom/cicada/player/utils/ass/AssResolver$LocationAttribute;FF)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v8

    .line 148
    .local v8, "params":Landroid/widget/RelativeLayout$LayoutParams;
    float-to-int v9, v6

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 149
    float-to-int v9, v7

    iput v9, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 150
    invoke-virtual {v0, v8}, Lcom/cicada/player/utils/ass/AssTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Lcom/cicada/player/utils/ass/AssTextView;->setGravity(I)V

    .line 152
    return-object v0
.end method

.method public setAssHeaders(Ljava/lang/String;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/cicada/player/utils/ass/AssUtils;->parseAssHeader(Ljava/lang/String;)Lcom/cicada/player/utils/ass/AssHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/cicada/player/utils/ass/AssResolver;->mAssHeader:Lcom/cicada/player/utils/ass/AssHeader;

    .line 48
    return-void
.end method

.method public setFontTypeMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "fontTypeface":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    return-void
.end method

.method public setVideoDisplaySize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 61
    iput p1, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayWidth:I

    .line 62
    iput p2, p0, Lcom/cicada/player/utils/ass/AssResolver;->videoDisplayHeight:I

    .line 63
    return-void
.end method
