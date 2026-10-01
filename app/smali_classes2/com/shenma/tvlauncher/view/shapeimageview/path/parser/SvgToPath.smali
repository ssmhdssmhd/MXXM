.class public Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;
.super Ljava/lang/Object;
.source "SvgToPath.java"


# static fields
.field private static final DPI:F = 72.0f

.field private static final IDENTITY_MATRIX:Landroid/graphics/Matrix;

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final atts:Lorg/xmlpull/v1/XmlPullParser;

.field private dpi:F

.field private height:F

.field private hidden:Z

.field private hiddenLevel:I

.field private idXml:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inDefsElement:Z

.field private final matrixStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/graphics/Matrix;",
            ">;"
        }
    .end annotation
.end field

.field private path:Landroid/graphics/Path;

.field private pathInfo:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

.field private final pathStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private width:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    return-void
.end method

.method private constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "atts"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->idXml:Ljava/util/HashMap;

    .line 80
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    .line 81
    const/high16 v0, 0x42900000    # 72.0f

    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->dpi:F

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    .line 83
    iput v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    .line 84
    iput-boolean v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathStack:Ljava/util/Deque;

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->matrixStack:Ljava/util/Deque;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathInfo:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    .line 95
    iput-object p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    .line 96
    return-void
.end method

.method public static getSVGFromInputStream(Ljava/io/InputStream;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
    .locals 2
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .line 44
    const/4 v0, 0x1

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->parse(Ljava/io/InputStream;ZF)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    move-result-object v0

    return-object v0
.end method

.method private static parse(Ljava/io/InputStream;ZF)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
    .locals 7
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "ignoreDefs"    # Z
    .param p2, "dpi"    # F

    .line 49
    :try_start_0
    new-instance v0, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 50
    .local v0, "xr":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;

    invoke-direct {v1, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 51
    .local v1, "svgHandler":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;
    invoke-virtual {v1, p2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->setDpi(F)V

    .line 53
    if-eqz p1, :cond_0

    .line 54
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 55
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->processSvg()V

    goto :goto_0

    .line 57
    :cond_0
    new-instance v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 59
    .local v2, "cin":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;
    new-instance v3, Lorg/kxml2/io/KXmlParser;

    invoke-direct {v3}, Lorg/kxml2/io/KXmlParser;-><init>()V

    .line 60
    .local v3, "ids":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->getCopy()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 61
    new-instance v4, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;

    invoke-direct {v4, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 62
    .local v4, "idHandler":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;
    invoke-virtual {v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->processIds()V

    .line 63
    iget-object v5, v4, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;->idXml:Ljava/util/HashMap;

    iput-object v5, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->idXml:Ljava/util/HashMap;

    .line 65
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;->getCopy()Ljava/io/ByteArrayInputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 66
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->processSvg()V

    .line 69
    .end local v2    # "cin":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/CopyInputStream;
    .end local v3    # "ids":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "idHandler":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IdHandler;
    :goto_0
    iget-object v2, v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathInfo:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 70
    .end local v0    # "xr":Lorg/xmlpull/v1/XmlPullParser;
    .end local v1    # "svgHandler":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private popPath()Landroid/graphics/Path;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Path;

    .line 145
    .local v0, "poppedPath":Landroid/graphics/Path;
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Path;

    iput-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    .line 146
    return-object v0
.end method

.method private popTransform()Landroid/graphics/Matrix;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->matrixStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    return-object v0
.end method

.method private pushPath()V
    .locals 2

    .line 138
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 139
    .local v0, "path":Landroid/graphics/Path;
    iput-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    .line 140
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathStack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method

.method private pushTransform(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "pMatrix"    # Landroid/graphics/Matrix;

    .line 129
    if-nez p1, :cond_0

    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 130
    .local v0, "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->matrixStack:Ljava/util/Deque;

    invoke-interface {v1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method private pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .param p1, "atts"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 123
    const-string/jumbo v0, "transform"

    invoke-static {v0, p1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "transform":Ljava/lang/String;
    if-nez v0, :cond_0

    sget-object v1, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/TransformParser;->parseTransform(Ljava/lang/String;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 125
    .local v1, "matrix":Landroid/graphics/Matrix;
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->matrixStack:Ljava/util/Deque;

    invoke-interface {v2, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private showAttributes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 4
    .param p1, "a"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 332
    const-string v0, ""

    .line 333
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method endElement()V
    .locals 6

    .line 341
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "localName":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 343
    const-string v1, "defs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    .line 346
    :cond_0
    return-void

    .line 349
    :cond_1
    const-string/jumbo v1, "svg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 350
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popPath()Landroid/graphics/Path;

    move-result-object v1

    .line 351
    .local v1, "p":Landroid/graphics/Path;
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v2

    .line 352
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 353
    new-instance v3, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    iget v4, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    iget v5, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    invoke-direct {v3, v1, v4, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;-><init>(Landroid/graphics/Path;FF)V

    iput-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pathInfo:Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    .end local v1    # "p":Landroid/graphics/Path;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    goto :goto_0

    .line 354
    :cond_2
    const-string v1, "g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 356
    iget-boolean v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-eqz v1, :cond_3

    .line 357
    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    .line 358
    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    if-nez v1, :cond_3

    .line 359
    iput-boolean v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    .line 363
    :cond_3
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popPath()Landroid/graphics/Path;

    move-result-object v1

    .line 364
    .restart local v1    # "p":Landroid/graphics/Path;
    invoke-direct {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v2

    .line 365
    .restart local v2    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 366
    iget-object v3, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v3, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_1

    .line 354
    .end local v1    # "p":Landroid/graphics/Path;
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    :cond_4
    :goto_0
    nop

    .line 368
    :goto_1
    return-void
.end method

.method final getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method final getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "attributes"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "defaultValue"    # Ljava/lang/Float;

    .line 375
    iget v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->dpi:F

    iget v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    iget v2, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    invoke-static {p1, p2, v0, v1, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->convertUnits(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;FFF)Ljava/lang/Float;

    move-result-object v0

    .line 376
    .local v0, "result":Ljava/lang/Float;
    if-nez v0, :cond_0

    move-object v1, p3

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method processSvg()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 105
    .local v0, "eventType":I
    :cond_0
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->endElement()V

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->startElement()V

    .line 113
    goto :goto_0

    .line 110
    :pswitch_2
    nop

    .line 118
    :goto_0
    iget-object v1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 119
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 120
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setDpi(F)V
    .locals 0
    .param p1, "dpi"    # F

    .line 99
    iput p1, p0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->dpi:F

    .line 100
    return-void
.end method

.method startElement()V
    .locals 18

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "localName":Ljava/lang/String;
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    if-eqz v2, :cond_0

    .line 153
    return-void

    .line 156
    :cond_0
    const-string/jumbo v2, "svg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "height"

    const-string/jumbo v4, "width"

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_4

    .line 157
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v4, v2, v9}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    .line 158
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    .line 160
    const-string/jumbo v2, "viewBox"

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->getNumberParseAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v2

    .line 162
    .local v2, "viewbox":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushPath()V

    .line 163
    sget-object v3, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 165
    .local v3, "matrix":Landroid/graphics/Matrix;
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v7, 0x4

    if-ne v4, v7, :cond_3

    .line 166
    iget v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    const v7, 0x3dcccccd    # 0.1f

    const/4 v9, 0x3

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_2

    iget v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    const v7, -0x42333333    # -0.1f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    iget v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    iget-object v7, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v6, v5

    div-float/2addr v4, v6

    .line 171
    .local v4, "sx":F
    iget v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->height:F

    iget-object v6, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v6, v7

    div-float/2addr v5, v6

    .line 172
    .local v5, "sy":F
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_1

    .line 167
    .end local v4    # "sx":F
    .end local v5    # "sy":F
    :cond_2
    :goto_0
    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v6, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    .line 168
    iget-object v4, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->width:F

    .line 176
    :cond_3
    :goto_1
    invoke-direct {v0, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Landroid/graphics/Matrix;)V

    .line 177
    .end local v2    # "viewbox":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    goto/16 :goto_8

    :cond_4
    const-string v2, "defs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    iput-boolean v8, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->inDefsElement:Z

    goto/16 :goto_8

    .line 179
    :cond_5
    const-string/jumbo v2, "use"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v9, "y"

    const-string/jumbo v10, "x"

    if-eqz v2, :cond_11

    .line 180
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v5, "xlink:href"

    invoke-static {v5, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "href":Ljava/lang/String;
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    const-string/jumbo v7, "transform"

    invoke-static {v7, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v6

    .line 182
    .local v6, "attTransform":Ljava/lang/String;
    iget-object v11, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v10, v11}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, "attX":Ljava/lang/String;
    iget-object v12, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v9, v12}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "attY":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v13, "sb":Ljava/lang/StringBuilder;
    const-string v14, "<g"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v14, " xmlns=\'http://www.w3.org/2000/svg\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v14, " xmlns:xlink=\'http://www.w3.org/1999/xlink\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v14, " xmlns:sodipodi=\'http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd\' "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v14, " xmlns:inkscape=\'http://www.inkscape.org/namespaces/inkscape\' version=\'1.1\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v14, "\'"

    if-nez v6, :cond_6

    if-nez v11, :cond_6

    if-eqz v12, :cond_c

    .line 192
    :cond_6
    const-string v15, " transform=\'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    if-eqz v6, :cond_7

    .line 194
    invoke-static {v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_7
    if-nez v11, :cond_8

    if-eqz v12, :cond_b

    .line 197
    :cond_8
    const-string/jumbo v15, "translate("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v15, "0"

    if-eqz v11, :cond_9

    invoke-static {v11}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v8, v16

    goto :goto_2

    :cond_9
    move-object v8, v15

    :goto_2
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v8, ","

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    if-eqz v12, :cond_a

    invoke-static {v12}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :cond_a
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v8, ")"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_b
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_c
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    iget-object v15, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    if-ge v8, v15, :cond_10

    .line 207
    iget-object v15, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v15, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    .line 208
    .local v15, "attrQName":Ljava/lang/String;
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 209
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 210
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 212
    move-object/from16 v17, v5

    const-string v5, " "

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v5, "=\'"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 210
    :cond_d
    move-object/from16 v17, v5

    goto :goto_4

    .line 209
    :cond_e
    move-object/from16 v17, v5

    goto :goto_4

    .line 208
    :cond_f
    move-object/from16 v17, v5

    .line 206
    .end local v15    # "attrQName":Ljava/lang/String;
    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v17

    goto :goto_3

    .line 220
    .end local v8    # "i":I
    :cond_10
    const-string v3, ">"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->idXml:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v3, "</g>"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .end local v2    # "href":Ljava/lang/String;
    .end local v6    # "attTransform":Ljava/lang/String;
    .end local v11    # "attX":Ljava/lang/String;
    .end local v12    # "attY":Ljava/lang/String;
    .end local v13    # "sb":Ljava/lang/StringBuilder;
    goto/16 :goto_8

    :cond_11
    const-string v2, "g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 226
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-eqz v2, :cond_12

    .line 227
    iget v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    const/16 v16, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    .line 230
    :cond_12
    const-string v2, "display"

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "none"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 231
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_13

    .line 232
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    .line 233
    iput v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hiddenLevel:I

    .line 236
    :cond_13
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 237
    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushPath()V

    goto/16 :goto_8

    .line 238
    :cond_14
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    const-string v8, "ry"

    const-string v11, "rx"

    if-nez v2, :cond_16

    const-string v2, "rect"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 239
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v10, v2, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v2

    .line 240
    .local v2, "x":Ljava/lang/Float;
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v9, v5, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v5

    .line 241
    .local v5, "y":Ljava/lang/Float;
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v4, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v4

    .line 242
    .local v4, "width":Ljava/lang/Float;
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v3, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v3

    .line 243
    .local v3, "height":Ljava/lang/Float;
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v0, v11, v6, v9}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v6

    .line 244
    .local v6, "rx":Ljava/lang/Float;
    iget-object v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v0, v8, v9, v10}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v8

    .line 245
    .local v8, "ry":Ljava/lang/Float;
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    move-object v10, v9

    .line 246
    .local v10, "p":Landroid/graphics/Path;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v9, v9, v7

    if-gtz v9, :cond_15

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpg-float v7, v9, v7

    if-gtz v7, :cond_15

    .line 247
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float v13, v7, v9

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v9

    add-float v14, v7, v9

    sget-object v15, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_5

    .line 249
    :cond_15
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v12

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v13

    add-float/2addr v12, v13

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v14

    add-float/2addr v13, v14

    invoke-virtual {v7, v9, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 250
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    sget-object v12, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v10, v7, v9, v11, v12}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 253
    :goto_5
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 254
    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v7

    .line 255
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v10, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 256
    iget-object v9, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v9, v10}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 257
    .end local v2    # "x":Ljava/lang/Float;
    .end local v3    # "height":Ljava/lang/Float;
    .end local v4    # "width":Ljava/lang/Float;
    .end local v5    # "y":Ljava/lang/Float;
    .end local v6    # "rx":Ljava/lang/Float;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "ry":Ljava/lang/Float;
    .end local v10    # "p":Landroid/graphics/Path;
    goto/16 :goto_8

    :cond_16
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_17

    const-string v2, "line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 258
    const-string/jumbo v2, "x1"

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v2, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v2

    .line 259
    .local v2, "x1":Ljava/lang/Float;
    const-string/jumbo v3, "x2"

    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v3

    .line 260
    .local v3, "x2":Ljava/lang/Float;
    const-string/jumbo v4, "y1"

    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v4, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v4

    .line 261
    .local v4, "y1":Ljava/lang/Float;
    const-string/jumbo v5, "y2"

    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v5, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v5

    .line 262
    .local v5, "y2":Ljava/lang/Float;
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 263
    .local v6, "p":Landroid/graphics/Path;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 264
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 265
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 266
    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v7

    .line 267
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 268
    iget-object v8, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 269
    .end local v2    # "x1":Ljava/lang/Float;
    .end local v3    # "x2":Ljava/lang/Float;
    .end local v4    # "y1":Ljava/lang/Float;
    .end local v5    # "y2":Ljava/lang/Float;
    .end local v6    # "p":Landroid/graphics/Path;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    goto/16 :goto_8

    :cond_17
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    const-string v3, "cy"

    const-string v4, "cx"

    if-nez v2, :cond_19

    const-string v2, "circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 270
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v4, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v2

    .line 271
    .local v2, "centerX":Ljava/lang/Float;
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v3

    .line 272
    .local v3, "centerY":Ljava/lang/Float;
    const-string v4, "r"

    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v4, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v4

    .line 273
    .local v4, "radius":Ljava/lang/Float;
    if-eqz v2, :cond_18

    if-eqz v3, :cond_18

    if-eqz v4, :cond_18

    .line 274
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 275
    .local v5, "p":Landroid/graphics/Path;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 276
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v6}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 277
    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v6

    .line 278
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 279
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v7, v5}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 281
    .end local v2    # "centerX":Ljava/lang/Float;
    .end local v3    # "centerY":Ljava/lang/Float;
    .end local v4    # "radius":Ljava/lang/Float;
    .end local v5    # "p":Landroid/graphics/Path;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    :cond_18
    goto/16 :goto_8

    :cond_19
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_1b

    const-string v2, "ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 282
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v4, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v2

    .line 283
    .restart local v2    # "centerX":Ljava/lang/Float;
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v3, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v3

    .line 284
    .restart local v3    # "centerY":Ljava/lang/Float;
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v11, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v4

    .line 285
    .local v4, "radiusX":Ljava/lang/Float;
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {v0, v8, v5}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getFloatAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Float;

    move-result-object v5

    .line 286
    .local v5, "radiusY":Ljava/lang/Float;
    if-eqz v2, :cond_1a

    if-eqz v3, :cond_1a

    if-eqz v4, :cond_1a

    if-eqz v5, :cond_1a

    .line 287
    iget-object v6, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v9, v10

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 288
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 289
    .local v6, "p":Landroid/graphics/Path;
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->rect:Landroid/graphics/RectF;

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 290
    iget-object v7, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v7}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 291
    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v7

    .line 292
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v6, v7}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 293
    iget-object v8, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v8, v6}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 295
    .end local v2    # "centerX":Ljava/lang/Float;
    .end local v3    # "centerY":Ljava/lang/Float;
    .end local v4    # "radiusX":Ljava/lang/Float;
    .end local v5    # "radiusY":Ljava/lang/Float;
    .end local v6    # "p":Landroid/graphics/Path;
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    :cond_1a
    goto/16 :goto_8

    :cond_1b
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_20

    const-string v2, "polygon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const-string v3, "polyline"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 296
    :cond_1c
    const-string v3, "points"

    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v3, v4}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->getNumberParseAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;

    move-result-object v3

    .line 297
    .local v3, "numbers":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    if-eqz v3, :cond_1f

    .line 298
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 299
    .local v4, "p":Landroid/graphics/Path;
    iget-object v6, v3, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;->numbers:Ljava/util/ArrayList;

    .line 300
    .local v6, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_1f

    .line 301
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v4, v5, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 302
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_1d

    .line 303
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 304
    .local v7, "x":F
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 305
    .local v8, "y":F
    invoke-virtual {v4, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 302
    .end local v7    # "x":F
    .end local v8    # "y":F
    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 308
    .end local v5    # "i":I
    :cond_1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 309
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 312
    :cond_1e
    iget-object v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 313
    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v2

    .line 314
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 315
    iget-object v5, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 318
    .end local v2    # "matrix":Landroid/graphics/Matrix;
    .end local v3    # "numbers":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/NumberParse;
    .end local v4    # "p":Landroid/graphics/Path;
    .end local v6    # "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_1f
    goto :goto_8

    :cond_20
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_21

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 319
    const-string v2, "d"

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/ParseUtil;->getStringAttr(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathParser;->doPath(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    .line 320
    .local v2, "p":Landroid/graphics/Path;
    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->pushTransform(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 321
    invoke-direct {v0}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->popTransform()Landroid/graphics/Matrix;

    move-result-object v3

    .line 322
    .local v3, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 323
    iget-object v4, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->path:Landroid/graphics/Path;

    invoke-virtual {v4, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 324
    .end local v2    # "p":Landroid/graphics/Path;
    .end local v3    # "matrix":Landroid/graphics/Matrix;
    :goto_7
    goto :goto_8

    :cond_21
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_22

    const-string v2, "metadata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_7

    .line 326
    :cond_22
    iget-boolean v2, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->hidden:Z

    if-nez v2, :cond_23

    .line 327
    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->TAG:Ljava/lang/String;

    iget-object v3, v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->atts:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v3}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->showAttributes(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    const/16 v16, 0x1

    aput-object v3, v4, v16

    const-string v3, "Unrecognized tag: %s (%s)"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_23
    :goto_8
    return-void
.end method
