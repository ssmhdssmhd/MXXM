.class public Landroidx/transition/ChangeBounds;
.super Landroidx/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroidx/transition/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field private mReparent:Z

.field private mResizeClip:Z

.field private mTempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android:changeBounds:bounds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:clip"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:parent"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:windowX"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "android:changeBounds:windowY"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroidx/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 86
    new-instance v0, Landroidx/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 99
    new-instance v0, Landroidx/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v3, "bottomRight"

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 112
    new-instance v0, Landroidx/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v3}, Landroidx/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 129
    new-instance v0, Landroidx/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 146
    new-instance v0, Landroidx/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Landroidx/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    .line 167
    new-instance v0, Landroidx/transition/RectEvaluator;

    invoke-direct {v0}, Landroidx/transition/RectEvaluator;-><init>()V

    sput-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 169
    invoke-direct {p0}, Landroidx/transition/Transition;-><init>()V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 173
    invoke-direct {p0, p1, p2}, Landroidx/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 165
    iput-boolean v0, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    .line 175
    sget-object v1, Landroidx/transition/Styleable;->CHANGE_BOUNDS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 176
    .local v1, "a":Landroid/content/res/TypedArray;
    move-object v2, p2

    check-cast v2, Landroid/content/res/XmlResourceParser;

    const-string v3, "resizeClip"

    invoke-static {v1, v2, v3, v0, v0}, Landroidx/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v0

    .line 178
    .local v0, "resizeClip":Z
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 179
    invoke-virtual {p0, v0}, Landroidx/transition/ChangeBounds;->setResizeClip(Z)V

    .line 180
    return-void
.end method

.method private captureValues(Landroidx/transition/TransitionValues;)V
    .locals 7
    .param p1, "values"    # Landroidx/transition/TransitionValues;

    .line 217
    iget-object v0, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 219
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    :cond_0
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 221
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 220
    const-string v3, "android:changeBounds:bounds"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:changeBounds:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    .line 224
    iget-object v1, p1, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 225
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p0, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:changeBounds:windowY"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_1
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    .line 229
    iget-object v1, p1, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_2
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 5
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .line 245
    const/4 v0, 0x1

    .line 246
    .local v0, "parentMatches":Z
    iget-boolean v1, p0, Landroidx/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_3

    .line 247
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroidx/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroidx/transition/TransitionValues;

    move-result-object v2

    .line 248
    .local v2, "endValues":Landroidx/transition/TransitionValues;
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 249
    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_2

    .line 251
    :cond_1
    iget-object v4, v2, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    .line 254
    .end local v2    # "endValues":Landroidx/transition/TransitionValues;
    :cond_3
    :goto_2
    return v0
.end method


# virtual methods
.method public captureEndValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 241
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 242
    return-void
.end method

.method public captureStartValues(Landroidx/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroidx/transition/TransitionValues;

    .line 236
    invoke-direct {p0, p1}, Landroidx/transition/ChangeBounds;->captureValues(Landroidx/transition/TransitionValues;)V

    .line 237
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroidx/transition/TransitionValues;Landroidx/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 34
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroidx/transition/TransitionValues;
    .param p3, "endValues"    # Landroidx/transition/TransitionValues;

    .line 261
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    if-eqz v8, :cond_1c

    if-nez v9, :cond_0

    const/16 v16, 0x0

    goto/16 :goto_b

    .line 264
    :cond_0
    iget-object v10, v8, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 265
    .local v10, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v11, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    .line 266
    .local v11, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "android:changeBounds:parent"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Landroid/view/ViewGroup;

    .line 267
    .local v12, "startParent":Landroid/view/ViewGroup;
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/view/ViewGroup;

    .line 268
    .local v13, "endParent":Landroid/view/ViewGroup;
    if-eqz v12, :cond_1b

    if-nez v13, :cond_1

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    const/16 v16, 0x0

    goto/16 :goto_a

    .line 271
    :cond_1
    iget-object v2, v9, Landroidx/transition/TransitionValues;->view:Landroid/view/View;

    .line 272
    .local v2, "view":Landroid/view/View;
    invoke-direct {v1, v12, v13}, Landroidx/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 273
    iget-object v3, v8, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroid/graphics/Rect;

    .line 274
    .local v15, "startBounds":Landroid/graphics/Rect;
    iget-object v3, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 275
    .local v3, "endBounds":Landroid/graphics/Rect;
    iget v5, v15, Landroid/graphics/Rect;->left:I

    .line 276
    .local v5, "startLeft":I
    iget v6, v3, Landroid/graphics/Rect;->left:I

    .line 277
    .local v6, "endLeft":I
    iget v7, v15, Landroid/graphics/Rect;->top:I

    .line 278
    .local v7, "startTop":I
    const/16 v16, 0x0

    iget v0, v3, Landroid/graphics/Rect;->top:I

    .line 279
    .local v0, "endTop":I
    const/16 v17, 0x1

    iget v14, v15, Landroid/graphics/Rect;->right:I

    .line 280
    .local v14, "startRight":I
    const/16 v18, 0x0

    iget v4, v3, Landroid/graphics/Rect;->right:I

    .line 281
    .local v4, "endRight":I
    move-object/from16 v19, v10

    .end local v10    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v19, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v10, v15, Landroid/graphics/Rect;->bottom:I

    .line 282
    .local v10, "startBottom":I
    move-object/from16 v20, v11

    .end local v11    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v20, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 283
    .local v11, "endBottom":I
    move-object/from16 v21, v12

    .end local v12    # "startParent":Landroid/view/ViewGroup;
    .local v21, "startParent":Landroid/view/ViewGroup;
    sub-int v12, v14, v5

    .line 284
    .local v12, "startWidth":I
    move-object/from16 v22, v13

    .end local v13    # "endParent":Landroid/view/ViewGroup;
    .local v22, "endParent":Landroid/view/ViewGroup;
    sub-int v13, v10, v7

    .line 285
    .local v13, "startHeight":I
    move-object/from16 v23, v15

    .end local v15    # "startBounds":Landroid/graphics/Rect;
    .local v23, "startBounds":Landroid/graphics/Rect;
    sub-int v15, v4, v6

    .line 286
    .local v15, "endWidth":I
    move-object/from16 v24, v3

    .end local v3    # "endBounds":Landroid/graphics/Rect;
    .local v24, "endBounds":Landroid/graphics/Rect;
    sub-int v3, v11, v0

    .line 287
    .local v3, "endHeight":I
    move/from16 v25, v3

    .end local v3    # "endHeight":I
    .local v25, "endHeight":I
    iget-object v3, v8, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeBounds:clip"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 288
    .local v3, "startClip":Landroid/graphics/Rect;
    move/from16 v26, v13

    .end local v13    # "startHeight":I
    .local v26, "startHeight":I
    iget-object v13, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    .line 289
    .local v8, "endClip":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .line 290
    .local v13, "numChanges":I
    if-eqz v12, :cond_2

    if-nez v26, :cond_3

    :cond_2
    if-eqz v15, :cond_7

    if-eqz v25, :cond_7

    .line 291
    :cond_3
    if-ne v5, v6, :cond_4

    if-eq v7, v0, :cond_5

    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 292
    :cond_5
    if-ne v14, v4, :cond_6

    if-eq v10, v11, :cond_7

    :cond_6
    add-int/lit8 v13, v13, 0x1

    .line 294
    :cond_7
    if-eqz v3, :cond_8

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    :cond_8
    if-nez v3, :cond_a

    if-eqz v8, :cond_a

    .line 296
    :cond_9
    add-int/lit8 v13, v13, 0x1

    .line 298
    :cond_a
    if-lez v13, :cond_17

    .line 300
    move-object/from16 v27, v3

    .end local v3    # "startClip":Landroid/graphics/Rect;
    .local v27, "startClip":Landroid/graphics/Rect;
    iget-boolean v3, v1, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    move/from16 v16, v3

    const/4 v3, 0x2

    if-nez v16, :cond_10

    .line 301
    invoke-static {v2, v5, v7, v14, v10}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 303
    if-ne v13, v3, :cond_d

    .line 304
    if-ne v12, v15, :cond_c

    move/from16 v3, v25

    move-object/from16 v25, v8

    move v8, v3

    move/from16 v3, v26

    .end local v26    # "startHeight":I
    .local v3, "startHeight":I
    .local v8, "endHeight":I
    .local v25, "endClip":Landroid/graphics/Rect;
    if-ne v3, v8, :cond_b

    .line 305
    move/from16 v26, v13

    .end local v13    # "numChanges":I
    .local v26, "numChanges":I
    invoke-virtual {v1}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v13

    int-to-float v9, v5

    move/from16 v28, v3

    .end local v3    # "startHeight":I
    .local v28, "startHeight":I
    int-to-float v3, v7

    move/from16 v29, v8

    .end local v8    # "endHeight":I
    .local v29, "endHeight":I
    int-to-float v8, v6

    move/from16 v30, v12

    .end local v12    # "startWidth":I
    .local v30, "startWidth":I
    int-to-float v12, v0

    invoke-virtual {v13, v9, v3, v8, v12}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 307
    .local v3, "topLeftPath":Landroid/graphics/Path;
    sget-object v8, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v8, v3}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 309
    .local v3, "anim":Landroid/animation/Animator;
    move-object v13, v3

    move/from16 v32, v6

    move/from16 v31, v7

    move v9, v15

    move-object/from16 v3, v27

    move/from16 v8, v30

    move v6, v4

    move/from16 v30, v5

    move v5, v0

    move v0, v11

    goto/16 :goto_7

    .line 304
    .end local v26    # "numChanges":I
    .end local v28    # "startHeight":I
    .end local v29    # "endHeight":I
    .end local v30    # "startWidth":I
    .local v3, "startHeight":I
    .restart local v8    # "endHeight":I
    .restart local v12    # "startWidth":I
    .restart local v13    # "numChanges":I
    :cond_b
    move/from16 v28, v3

    move/from16 v29, v8

    move/from16 v30, v12

    move/from16 v26, v13

    .end local v3    # "startHeight":I
    .end local v8    # "endHeight":I
    .end local v12    # "startWidth":I
    .end local v13    # "numChanges":I
    .restart local v26    # "numChanges":I
    .restart local v28    # "startHeight":I
    .restart local v29    # "endHeight":I
    .restart local v30    # "startWidth":I
    goto :goto_0

    .end local v28    # "startHeight":I
    .end local v29    # "endHeight":I
    .end local v30    # "startWidth":I
    .local v8, "endClip":Landroid/graphics/Rect;
    .restart local v12    # "startWidth":I
    .restart local v13    # "numChanges":I
    .local v25, "endHeight":I
    .local v26, "startHeight":I
    :cond_c
    move/from16 v30, v12

    move/from16 v29, v25

    move/from16 v28, v26

    move-object/from16 v25, v8

    move/from16 v26, v13

    .line 310
    .end local v8    # "endClip":Landroid/graphics/Rect;
    .end local v12    # "startWidth":I
    .end local v13    # "numChanges":I
    .local v25, "endClip":Landroid/graphics/Rect;
    .local v26, "numChanges":I
    .restart local v28    # "startHeight":I
    .restart local v29    # "endHeight":I
    .restart local v30    # "startWidth":I
    :goto_0
    new-instance v3, Landroidx/transition/ChangeBounds$ViewBounds;

    invoke-direct {v3, v2}, Landroidx/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 311
    .local v3, "viewBounds":Landroidx/transition/ChangeBounds$ViewBounds;
    invoke-virtual {v1}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v8

    int-to-float v9, v5

    int-to-float v12, v7

    int-to-float v13, v6

    move/from16 v31, v15

    .end local v15    # "endWidth":I
    .local v31, "endWidth":I
    int-to-float v15, v0

    invoke-virtual {v8, v9, v12, v13, v15}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v8

    .line 313
    .local v8, "topLeftPath":Landroid/graphics/Path;
    sget-object v9, Landroidx/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 314
    invoke-static {v3, v9, v8}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 316
    .local v9, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v12

    int-to-float v13, v14

    int-to-float v15, v10

    move-object/from16 v32, v8

    .end local v8    # "topLeftPath":Landroid/graphics/Path;
    .local v32, "topLeftPath":Landroid/graphics/Path;
    int-to-float v8, v4

    move-object/from16 v33, v9

    .end local v9    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .local v33, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    int-to-float v9, v11

    invoke-virtual {v12, v13, v15, v8, v9}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v8

    .line 318
    .local v8, "bottomRightPath":Landroid/graphics/Path;
    sget-object v9, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    invoke-static {v3, v9, v8}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 320
    .local v9, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 321
    .local v12, "set":Landroid/animation/AnimatorSet;
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/animation/Animator;

    aput-object v33, v13, v18

    aput-object v9, v13, v17

    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 322
    move-object v13, v12

    .line 323
    .local v13, "anim":Landroid/animation/Animator;
    new-instance v15, Landroidx/transition/ChangeBounds$7;

    invoke-direct {v15, v1, v3}, Landroidx/transition/ChangeBounds$7;-><init>(Landroidx/transition/ChangeBounds;Landroidx/transition/ChangeBounds$ViewBounds;)V

    invoke-virtual {v12, v15}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 329
    .end local v3    # "viewBounds":Landroidx/transition/ChangeBounds$ViewBounds;
    .end local v8    # "bottomRightPath":Landroid/graphics/Path;
    .end local v9    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "set":Landroid/animation/AnimatorSet;
    .end local v32    # "topLeftPath":Landroid/graphics/Path;
    .end local v33    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v32, v6

    move-object/from16 v3, v27

    move/from16 v8, v30

    move/from16 v9, v31

    move v6, v4

    move/from16 v30, v5

    move/from16 v31, v7

    move v5, v0

    move v0, v11

    goto/16 :goto_7

    .line 330
    .end local v28    # "startHeight":I
    .end local v29    # "endHeight":I
    .end local v30    # "startWidth":I
    .end local v31    # "endWidth":I
    .local v8, "endClip":Landroid/graphics/Rect;
    .local v12, "startWidth":I
    .local v13, "numChanges":I
    .restart local v15    # "endWidth":I
    .local v25, "endHeight":I
    .local v26, "startHeight":I
    :cond_d
    move/from16 v30, v12

    move/from16 v31, v15

    move/from16 v29, v25

    move/from16 v28, v26

    move-object/from16 v25, v8

    move/from16 v26, v13

    .end local v8    # "endClip":Landroid/graphics/Rect;
    .end local v12    # "startWidth":I
    .end local v13    # "numChanges":I
    .end local v15    # "endWidth":I
    .local v25, "endClip":Landroid/graphics/Rect;
    .local v26, "numChanges":I
    .restart local v28    # "startHeight":I
    .restart local v29    # "endHeight":I
    .restart local v30    # "startWidth":I
    .restart local v31    # "endWidth":I
    if-ne v5, v6, :cond_f

    if-eq v7, v0, :cond_e

    goto :goto_1

    .line 336
    :cond_e
    invoke-virtual {v1}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    int-to-float v8, v14

    int-to-float v9, v10

    int-to-float v12, v4

    int-to-float v13, v11

    invoke-virtual {v3, v8, v9, v12, v13}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 338
    .local v3, "bottomRight":Landroid/graphics/Path;
    sget-object v8, Landroidx/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v8, v3}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 340
    .local v3, "anim":Landroid/animation/Animator;
    move-object v13, v3

    move/from16 v32, v6

    move-object/from16 v3, v27

    move/from16 v8, v30

    move/from16 v9, v31

    move v6, v4

    move/from16 v30, v5

    move/from16 v31, v7

    move v5, v0

    move v0, v11

    goto/16 :goto_7

    .line 331
    .end local v3    # "anim":Landroid/animation/Animator;
    :cond_f
    :goto_1
    invoke-virtual {v1}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v3

    int-to-float v8, v5

    int-to-float v9, v7

    int-to-float v12, v6

    int-to-float v13, v0

    invoke-virtual {v3, v8, v9, v12, v13}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v3

    .line 333
    .local v3, "topLeftPath":Landroid/graphics/Path;
    sget-object v8, Landroidx/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v8, v3}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 335
    .local v3, "anim":Landroid/animation/Animator;
    move-object v13, v3

    move/from16 v32, v6

    move-object/from16 v3, v27

    move/from16 v8, v30

    move/from16 v9, v31

    move v6, v4

    move/from16 v30, v5

    move/from16 v31, v7

    move v5, v0

    move v0, v11

    goto/16 :goto_7

    .line 342
    .end local v3    # "anim":Landroid/animation/Animator;
    .end local v28    # "startHeight":I
    .end local v29    # "endHeight":I
    .end local v30    # "startWidth":I
    .end local v31    # "endWidth":I
    .restart local v8    # "endClip":Landroid/graphics/Rect;
    .restart local v12    # "startWidth":I
    .restart local v13    # "numChanges":I
    .restart local v15    # "endWidth":I
    .local v25, "endHeight":I
    .local v26, "startHeight":I
    :cond_10
    move/from16 v30, v12

    move/from16 v31, v15

    move/from16 v29, v25

    move/from16 v28, v26

    move-object/from16 v25, v8

    move/from16 v26, v13

    .end local v8    # "endClip":Landroid/graphics/Rect;
    .end local v12    # "startWidth":I
    .end local v13    # "numChanges":I
    .end local v15    # "endWidth":I
    .local v25, "endClip":Landroid/graphics/Rect;
    .local v26, "numChanges":I
    .restart local v28    # "startHeight":I
    .restart local v29    # "endHeight":I
    .restart local v30    # "startWidth":I
    .restart local v31    # "endWidth":I
    move/from16 v8, v30

    move/from16 v9, v31

    .end local v30    # "startWidth":I
    .end local v31    # "endWidth":I
    .local v8, "startWidth":I
    .local v9, "endWidth":I
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 343
    .local v12, "maxWidth":I
    move/from16 v3, v28

    move/from16 v13, v29

    .end local v28    # "startHeight":I
    .end local v29    # "endHeight":I
    .local v3, "startHeight":I
    .local v13, "endHeight":I
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 345
    .local v15, "maxHeight":I
    add-int v1, v5, v12

    move/from16 v28, v4

    .end local v4    # "endRight":I
    .local v28, "endRight":I
    add-int v4, v7, v15

    invoke-static {v2, v5, v7, v1, v4}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "positionAnimator":Landroid/animation/ObjectAnimator;
    if-ne v5, v6, :cond_12

    if-eq v7, v0, :cond_11

    goto :goto_2

    :cond_11
    move/from16 v30, v5

    move/from16 v32, v6

    move/from16 v31, v7

    goto :goto_3

    .line 350
    :cond_12
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v4

    move-object/from16 v29, v1

    .end local v1    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v29, "positionAnimator":Landroid/animation/ObjectAnimator;
    int-to-float v1, v5

    move/from16 v30, v5

    .end local v5    # "startLeft":I
    .local v30, "startLeft":I
    int-to-float v5, v7

    move/from16 v31, v7

    .end local v7    # "startTop":I
    .local v31, "startTop":I
    int-to-float v7, v6

    move/from16 v32, v6

    .end local v6    # "endLeft":I
    .local v32, "endLeft":I
    int-to-float v6, v0

    invoke-virtual {v4, v1, v5, v7, v6}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v1

    .line 352
    .local v1, "topLeftPath":Landroid/graphics/Path;
    sget-object v4, Landroidx/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v4, v1}, Landroidx/transition/ObjectAnimatorUtils;->ofPointF(Ljava/lang/Object;Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    move-object v1, v4

    .line 355
    .end local v29    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v1, "positionAnimator":Landroid/animation/ObjectAnimator;
    :goto_3
    move-object/from16 v4, v25

    .line 356
    .local v4, "finalClip":Landroid/graphics/Rect;
    if-nez v27, :cond_13

    .line 357
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .end local v27    # "startClip":Landroid/graphics/Rect;
    .local v5, "startClip":Landroid/graphics/Rect;
    goto :goto_4

    .line 356
    .end local v5    # "startClip":Landroid/graphics/Rect;
    .restart local v27    # "startClip":Landroid/graphics/Rect;
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v5, v27

    .line 359
    .end local v27    # "startClip":Landroid/graphics/Rect;
    .restart local v5    # "startClip":Landroid/graphics/Rect;
    :goto_4
    if-nez v25, :cond_14

    .line 360
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v9, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v7

    .end local v25    # "endClip":Landroid/graphics/Rect;
    .local v7, "endClip":Landroid/graphics/Rect;
    goto :goto_5

    .line 359
    .end local v7    # "endClip":Landroid/graphics/Rect;
    .restart local v25    # "endClip":Landroid/graphics/Rect;
    :cond_14
    move-object/from16 v6, v25

    .line 362
    .end local v25    # "endClip":Landroid/graphics/Rect;
    .local v6, "endClip":Landroid/graphics/Rect;
    :goto_5
    const/4 v7, 0x0

    .line 363
    .local v7, "clipAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15

    .line 364
    invoke-static {v2, v5}, Landroidx/core/view/ViewCompat;->setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 365
    move/from16 v29, v0

    .end local v0    # "endTop":I
    .local v29, "endTop":I
    sget-object v0, Landroidx/transition/ChangeBounds;->sRectEvaluator:Landroidx/transition/RectEvaluator;

    move-object/from16 v33, v1

    const/4 v1, 0x2

    .end local v1    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v33, "positionAnimator":Landroid/animation/ObjectAnimator;
    new-array v1, v1, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v5, v1, v18

    aput-object v6, v1, v17

    move/from16 v16, v3

    .end local v3    # "startHeight":I
    .local v16, "startHeight":I
    const-string v3, "clipBounds"

    invoke-static {v2, v3, v0, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 367
    new-instance v0, Landroidx/transition/ChangeBounds$8;

    move v1, v11

    move-object v11, v7

    move v7, v1

    move-object/from16 v1, p0

    move-object v3, v4

    move-object/from16 v27, v5

    move-object/from16 v25, v6

    move/from16 v6, v28

    move/from16 v5, v29

    move/from16 v4, v32

    move/from16 v29, v13

    move/from16 v28, v16

    move-object/from16 v13, v33

    .end local v16    # "startHeight":I
    .end local v32    # "endLeft":I
    .end local v33    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v3, "finalClip":Landroid/graphics/Rect;
    .local v4, "endLeft":I
    .local v5, "endTop":I
    .local v6, "endRight":I
    .local v7, "endBottom":I
    .local v11, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v13, "positionAnimator":Landroid/animation/ObjectAnimator;
    .restart local v25    # "endClip":Landroid/graphics/Rect;
    .restart local v27    # "startClip":Landroid/graphics/Rect;
    .local v28, "startHeight":I
    .local v29, "endHeight":I
    invoke-direct/range {v0 .. v7}, Landroidx/transition/ChangeBounds$8;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    move-object v4, v0

    move v0, v7

    .end local v4    # "endLeft":I
    .end local v7    # "endBottom":I
    .local v0, "endBottom":I
    .restart local v32    # "endLeft":I
    invoke-virtual {v11, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v7, v11

    goto :goto_6

    .line 363
    .end local v25    # "endClip":Landroid/graphics/Rect;
    .end local v27    # "startClip":Landroid/graphics/Rect;
    .end local v29    # "endHeight":I
    .local v0, "endTop":I
    .restart local v1    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .local v3, "startHeight":I
    .local v4, "finalClip":Landroid/graphics/Rect;
    .local v5, "startClip":Landroid/graphics/Rect;
    .local v6, "endClip":Landroid/graphics/Rect;
    .local v7, "clipAnimator":Landroid/animation/ObjectAnimator;
    .local v11, "endBottom":I
    .local v13, "endHeight":I
    .local v28, "endRight":I
    :cond_15
    move-object/from16 v27, v5

    move-object/from16 v25, v6

    move/from16 v29, v13

    move/from16 v6, v28

    move v5, v0

    move-object v13, v1

    move/from16 v28, v3

    move-object v3, v4

    move v0, v11

    move-object/from16 v1, p0

    .line 385
    .end local v1    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v4    # "finalClip":Landroid/graphics/Rect;
    .end local v11    # "endBottom":I
    .local v0, "endBottom":I
    .local v3, "finalClip":Landroid/graphics/Rect;
    .local v5, "endTop":I
    .local v6, "endRight":I
    .local v13, "positionAnimator":Landroid/animation/ObjectAnimator;
    .restart local v25    # "endClip":Landroid/graphics/Rect;
    .restart local v27    # "startClip":Landroid/graphics/Rect;
    .local v28, "startHeight":I
    .restart local v29    # "endHeight":I
    :goto_6
    invoke-static {v13, v7}, Landroidx/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v4

    move-object v13, v4

    move-object/from16 v3, v27

    .line 388
    .end local v7    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v12    # "maxWidth":I
    .end local v15    # "maxHeight":I
    .end local v27    # "startClip":Landroid/graphics/Rect;
    .local v3, "startClip":Landroid/graphics/Rect;
    .local v13, "anim":Landroid/animation/Animator;
    :goto_7
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_16

    .line 389
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 390
    .local v4, "parent":Landroid/view/ViewGroup;
    const/4 v7, 0x1

    invoke-static {v4, v7}, Landroidx/transition/ViewGroupUtils;->suppressLayout(Landroid/view/ViewGroup;Z)V

    .line 391
    new-instance v7, Landroidx/transition/ChangeBounds$9;

    invoke-direct {v7, v1, v4}, Landroidx/transition/ChangeBounds$9;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 418
    .local v7, "transitionListener":Landroidx/transition/Transition$TransitionListener;
    invoke-virtual {v1, v7}, Landroidx/transition/ChangeBounds;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/Transition;

    .line 420
    .end local v4    # "parent":Landroid/view/ViewGroup;
    .end local v7    # "transitionListener":Landroidx/transition/Transition$TransitionListener;
    :cond_16
    return-object v13

    .line 298
    .end local v9    # "endWidth":I
    .end local v28    # "startHeight":I
    .end local v29    # "endHeight":I
    .end local v30    # "startLeft":I
    .end local v31    # "startTop":I
    .end local v32    # "endLeft":I
    .local v0, "endTop":I
    .local v4, "endRight":I
    .local v5, "startLeft":I
    .local v6, "endLeft":I
    .local v7, "startTop":I
    .local v8, "endClip":Landroid/graphics/Rect;
    .restart local v11    # "endBottom":I
    .local v12, "startWidth":I
    .local v13, "numChanges":I
    .local v15, "endWidth":I
    .local v25, "endHeight":I
    .local v26, "startHeight":I
    :cond_17
    move-object/from16 v27, v3

    move/from16 v30, v5

    move/from16 v32, v6

    move/from16 v31, v7

    move v9, v15

    move/from16 v29, v25

    move/from16 v28, v26

    move v5, v0

    move v6, v4

    move-object/from16 v25, v8

    move v0, v11

    move v8, v12

    move/from16 v26, v13

    .line 422
    .end local v0    # "endTop":I
    .end local v3    # "startClip":Landroid/graphics/Rect;
    .end local v4    # "endRight":I
    .end local v5    # "startLeft":I
    .end local v6    # "endLeft":I
    .end local v7    # "startTop":I
    .end local v8    # "endClip":Landroid/graphics/Rect;
    .end local v10    # "startBottom":I
    .end local v11    # "endBottom":I
    .end local v12    # "startWidth":I
    .end local v13    # "numChanges":I
    .end local v14    # "startRight":I
    .end local v15    # "endWidth":I
    .end local v23    # "startBounds":Landroid/graphics/Rect;
    .end local v24    # "endBounds":Landroid/graphics/Rect;
    .end local v25    # "endHeight":I
    .end local v26    # "startHeight":I
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    goto :goto_8

    .line 423
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    .local v10, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v11, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "startParent":Landroid/view/ViewGroup;
    .local v13, "endParent":Landroid/view/ViewGroup;
    :cond_18
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    const/16 v16, 0x0

    .end local v10    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "startParent":Landroid/view/ViewGroup;
    .end local v13    # "endParent":Landroid/view/ViewGroup;
    .restart local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "startParent":Landroid/view/ViewGroup;
    .restart local v22    # "endParent":Landroid/view/ViewGroup;
    move-object/from16 v8, p2

    iget-object v0, v8, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:changeBounds:windowX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 424
    .local v6, "startX":I
    iget-object v0, v8, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "android:changeBounds:windowY"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 425
    .local v7, "startY":I
    move-object/from16 v9, p3

    iget-object v0, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 426
    .local v10, "endX":I
    iget-object v0, v9, Landroidx/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 428
    .local v11, "endY":I
    if-ne v6, v10, :cond_1a

    if-eq v7, v11, :cond_19

    goto :goto_9

    .line 455
    .end local v6    # "startX":I
    .end local v7    # "startY":I
    .end local v10    # "endX":I
    .end local v11    # "endY":I
    :cond_19
    :goto_8
    return-object v16

    .line 429
    .restart local v6    # "startX":I
    .restart local v7    # "startY":I
    .restart local v10    # "endX":I
    .restart local v11    # "endY":I
    :cond_1a
    :goto_9
    iget-object v0, v1, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 430
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 432
    .local v12, "bitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v13, v0

    .line 433
    .local v13, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v2, v13}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 434
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v12}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 436
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-static {v2}, Landroidx/transition/ViewUtils;->getTransitionAlpha(Landroid/view/View;)F

    move-result v5

    .line 437
    .local v5, "transitionAlpha":F
    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroidx/transition/ViewUtils;->setTransitionAlpha(Landroid/view/View;F)V

    .line 438
    invoke-static {v3}, Landroidx/transition/ViewUtils;->getOverlay(Landroid/view/View;)Landroidx/transition/ViewOverlayImpl;

    move-result-object v4

    invoke-interface {v4, v0}, Landroidx/transition/ViewOverlayImpl;->add(Landroid/graphics/drawable/Drawable;)V

    .line 439
    invoke-virtual {v1}, Landroidx/transition/ChangeBounds;->getPathMotion()Landroidx/transition/PathMotion;

    move-result-object v4

    iget-object v14, v1, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    const/16 v18, 0x0

    aget v14, v14, v18

    sub-int v14, v6, v14

    int-to-float v14, v14

    iget-object v15, v1, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    move-object/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "view":Landroid/view/View;
    .local v23, "view":Landroid/view/View;
    aget v15, v15, v2

    sub-int v15, v7, v15

    int-to-float v15, v15

    const/16 v17, 0x1

    iget-object v2, v1, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    aget v2, v2, v18

    sub-int v2, v10, v2

    int-to-float v2, v2

    iget-object v3, v1, Landroidx/transition/ChangeBounds;->mTempLocation:[I

    aget v3, v3, v17

    sub-int v3, v11, v3

    int-to-float v3, v3

    invoke-virtual {v4, v14, v15, v2, v3}, Landroidx/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v14

    .line 442
    .local v14, "topLeftPath":Landroid/graphics/Path;
    sget-object v2, Landroidx/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    invoke-static {v2, v14}, Landroidx/transition/PropertyValuesHolderUtils;->ofPointF(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 444
    .local v15, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/16 v18, 0x0

    aput-object v15, v2, v18

    invoke-static {v0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 445
    .local v2, "anim":Landroid/animation/ObjectAnimator;
    move-object v3, v0

    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v3, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v0, Landroidx/transition/ChangeBounds$10;

    move/from16 v17, v6

    move-object/from16 v4, v23

    move-object v6, v2

    move-object/from16 v2, p1

    .end local v2    # "anim":Landroid/animation/ObjectAnimator;
    .end local v23    # "view":Landroid/view/View;
    .local v4, "view":Landroid/view/View;
    .local v6, "anim":Landroid/animation/ObjectAnimator;
    .local v17, "startX":I
    invoke-direct/range {v0 .. v5}, Landroidx/transition/ChangeBounds$10;-><init>(Landroidx/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    move-object v2, v4

    .end local v4    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    return-object v6

    .line 268
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "transitionAlpha":F
    .end local v6    # "anim":Landroid/animation/ObjectAnimator;
    .end local v7    # "startY":I
    .end local v14    # "topLeftPath":Landroid/graphics/Path;
    .end local v15    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "startX":I
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    .local v10, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v11, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v12, "startParent":Landroid/view/ViewGroup;
    .local v13, "endParent":Landroid/view/ViewGroup;
    :cond_1b
    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v22, v13

    const/16 v16, 0x0

    .line 269
    .end local v10    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "startParent":Landroid/view/ViewGroup;
    .end local v13    # "endParent":Landroid/view/ViewGroup;
    .restart local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v21    # "startParent":Landroid/view/ViewGroup;
    .restart local v22    # "endParent":Landroid/view/ViewGroup;
    :goto_a
    return-object v16

    .line 261
    .end local v19    # "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v21    # "startParent":Landroid/view/ViewGroup;
    .end local v22    # "endParent":Landroid/view/ViewGroup;
    :cond_1c
    const/16 v16, 0x0

    .line 262
    :goto_b
    return-object v16
.end method

.method public getResizeClip()Z
    .locals 1

    .line 213
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 185
    sget-object v0, Landroidx/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setResizeClip(Z)V
    .locals 0
    .param p1, "resizeClip"    # Z

    .line 202
    iput-boolean p1, p0, Landroidx/transition/ChangeBounds;->mResizeClip:Z

    .line 203
    return-void
.end method
