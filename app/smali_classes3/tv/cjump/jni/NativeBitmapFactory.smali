.class public Ltv/cjump/jni/NativeBitmapFactory;
.super Ljava/lang/Object;
.source "NativeBitmapFactory.java"


# static fields
.field static nativeIntField:Ljava/lang/reflect/Field;

.field static nativeLibLoaded:Z

.field static notLoadAgain:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 19
    sput-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native createBitmap(IIIZ)Landroid/graphics/Bitmap;
.end method

.method public static createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .line 149
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, p1, p2, v0}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized createBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    const-class v0, Ltv/cjump/jni/NativeBitmapFactory;

    monitor-enter v0

    .line 157
    :try_start_0
    sget-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v1, :cond_1

    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p0, p1, p2, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 159
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 156
    .end local p0    # "width":I
    .end local p1    # "height":I
    .end local p2    # "config":Landroid/graphics/Bitmap$Config;
    .end local p3    # "hasAlpha":Z
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private static native createBitmap19(IIIZ)Landroid/graphics/Bitmap;
.end method

.method private static createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;
    .param p3, "hasAlpha"    # Z

    .line 165
    invoke-static {p2}, Ltv/cjump/jni/NativeBitmapFactory;->getNativeConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 168
    .local v0, "nativeConfig":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    invoke-static {p0, p1, v0, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap19(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 169
    :cond_0
    invoke-static {p0, p1, v0, p3}, Ltv/cjump/jni/NativeBitmapFactory;->createBitmap(IIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getNativeConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p0, "config"    # Landroid/graphics/Bitmap$Config;

    .line 136
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-nez v1, :cond_0

    .line 137
    return v0

    .line 139
    :cond_0
    sget-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 140
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 144
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 145
    :goto_0
    return v0
.end method

.method private static native init()Z
.end method

.method static initField()V
    .locals 2

    .line 87
    :try_start_0
    const-class v0, Landroid/graphics/Bitmap$Config;

    const-string v1, "nativeInt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 88
    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    sput-object v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 91
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 93
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void
.end method

.method public static isInNativeAlloc()Z
    .locals 1

    .line 22
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_0

    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static loadLibs()V
    .locals 4

    .line 26
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    if-eqz v0, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isRealARMArch()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Ltv/cjump/jni/DeviceUtils;->isRealX86Arch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 31
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 32
    return-void

    .line 34
    :cond_1
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_2

    .line 35
    return-void

    .line 38
    :cond_2
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v0, v3, :cond_3

    .line 39
    const-string v0, "ndkbitmap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 40
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_2

    .line 42
    :cond_3
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 43
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    goto :goto_1

    .line 50
    .local v0, "e":Ljava/lang/Error;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    .line 51
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 52
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_3

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 48
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    nop

    .line 54
    :goto_3
    sget-boolean v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    if-eqz v0, :cond_5

    .line 55
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->init()Z

    move-result v0

    .line 56
    .local v0, "libInit":Z
    if-nez v0, :cond_4

    .line 57
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 58
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 59
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    goto :goto_4

    .line 61
    :cond_4
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->initField()V

    .line 62
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->testLib()Z

    move-result v3

    .line 63
    .local v3, "confirm":Z
    if-nez v3, :cond_5

    .line 65
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z

    .line 66
    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->notLoadAgain:Z

    .line 67
    sput-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 72
    .end local v0    # "libInit":Z
    .end local v3    # "confirm":Z
    :cond_5
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loaded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NativeBitmapFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void
.end method

.method public static recycle(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 153
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    return-void
.end method

.method private static native release()Z
.end method

.method public static declared-synchronized releaseLibs()V
    .locals 3

    const-class v0, Ltv/cjump/jni/NativeBitmapFactory;

    monitor-enter v0

    .line 76
    :try_start_0
    sget-boolean v1, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 77
    .local v1, "loaded":Z
    const/4 v2, 0x0

    sput-object v2, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    .line 78
    const/4 v2, 0x0

    sput-boolean v2, Ltv/cjump/jni/NativeBitmapFactory;->nativeLibLoaded:Z

    .line 79
    if-eqz v1, :cond_0

    .line 80
    invoke-static {}, Ltv/cjump/jni/NativeBitmapFactory;->release()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    monitor-exit v0

    return-void

    .line 75
    .end local v1    # "loaded":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static testLib()Z
    .locals 11

    .line 97
    sget-object v0, Ltv/cjump/jni/NativeBitmapFactory;->nativeIntField:Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 98
    return v1

    .line 100
    :cond_0
    const/4 v2, 0x0

    .line 101
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 103
    .local v3, "canvas":Landroid/graphics/Canvas;
    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-static {v5, v5, v0, v4}, Ltv/cjump/jni/NativeBitmapFactory;->createNativeBitmap(IILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 104
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v5, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 105
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 106
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v5

    if-nez v5, :cond_2

    .line 107
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 109
    :cond_2
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v5, v4

    .line 110
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    .local v5, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 111
    .local v10, "paint":Landroid/graphics/Paint;
    const/high16 v3, -0x10000

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v10, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 113
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v8, v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v9, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 115
    const-string v3, "TestLib"

    const/4 v4, 0x0

    invoke-virtual {v5, v3, v4, v4, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 116
    nop

    .line 117
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    move-object v3, v5

    goto :goto_1

    .line 127
    .end local v0    # "result":Z
    .end local v10    # "paint":Landroid/graphics/Paint;
    :catchall_0
    move-exception v0

    move-object v3, v5

    goto :goto_4

    .line 124
    :catch_0
    move-exception v0

    move-object v3, v5

    goto :goto_2

    .line 121
    :catch_1
    move-exception v0

    move-object v3, v5

    goto :goto_3

    .line 120
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    .restart local v0    # "result":Z
    .restart local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_3
    :goto_1
    nop

    .line 127
    if-eqz v2, :cond_4

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    const/4 v2, 0x0

    :cond_4
    return v0

    .line 127
    .end local v0    # "result":Z
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 124
    :catch_2
    move-exception v0

    .line 125
    .local v0, "e":Ljava/lang/Error;
    :goto_2
    nop

    .line 127
    if-eqz v2, :cond_5

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    const/4 v2, 0x0

    :cond_5
    return v1

    .line 121
    .end local v0    # "e":Ljava/lang/Error;
    :catch_3
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_2
    const-string v4, "NativeBitmapFactory"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 123
    nop

    .line 127
    if-eqz v2, :cond_6

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    const/4 v2, 0x0

    :cond_6
    return v1

    .line 127
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4
    if-eqz v2, :cond_7

    .line 128
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    const/4 v2, 0x0

    :cond_7
    throw v0
.end method
