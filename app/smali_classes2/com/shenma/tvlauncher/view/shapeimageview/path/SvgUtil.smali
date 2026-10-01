.class public Lcom/shenma/tvlauncher/view/shapeimageview/path/SvgUtil;
.super Ljava/lang/Object;
.source "SvgUtil.java"


# static fields
.field private static final PATH_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/SvgUtil;->PATH_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readSvg(Landroid/content/Context;I)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 17
    sget-object v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/SvgUtil;->PATH_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    .line 18
    .local v0, "pathInfo":Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;
    if-nez v0, :cond_0

    .line 19
    const/4 v1, 0x0

    .line 21
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    move-object v1, v2

    .line 22
    invoke-static {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/SvgToPath;->getSVGFromInputStream(Ljava/io/InputStream;)Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/PathInfo;

    move-result-object v2

    move-object v0, v2

    .line 23
    sget-object v2, Lcom/shenma/tvlauncher/view/shapeimageview/path/SvgUtil;->PATH_MAP:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    invoke-static {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IoUtil;->closeQuitely(Ljava/io/InputStream;)V

    .line 26
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/shenma/tvlauncher/view/shapeimageview/path/parser/IoUtil;->closeQuitely(Ljava/io/InputStream;)V

    .line 26
    throw v2

    .line 29
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-object v0
.end method
