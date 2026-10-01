.class public final enum Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/cyberplayer/utils/VersionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CPU_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARMV5_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field public static final enum ARMV5_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field public static final enum ARMV6_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field public static final enum ARMV6_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field public static final enum ARMV7_NEON:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field public static final enum ARMV7_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field public static final enum ARMV7_VFPV3:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field public static final enum UNKNOWN:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field public static final enum X86_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

.field private static final synthetic a:[Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 68
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->UNKNOWN:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 72
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "ARMV5_NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV5_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 76
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "ARMV5_VFP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV5_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 80
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "ARMV6_NORMAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV6_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 84
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "ARMV6_VFP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV6_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 88
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "ARMV7_VFP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 92
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "ARMV7_VFPV3"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_VFPV3:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 96
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "ARMV7_NEON"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_NEON:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 100
    new-instance v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    const-string v1, "X86_NORMAL"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->X86_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    .line 64
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->UNKNOWN:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV5_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV5_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV6_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV6_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_VFP:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_VFPV3:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->ARMV7_NEON:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->X86_NORMAL:Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    aput-object v1, v0, v10

    sput-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->a:[Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 64
    const-class v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;
    .locals 1

    .line 64
    sget-object v0, Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->a:[Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    invoke-virtual {v0}, [Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/cyberplayer/utils/VersionManager$CPU_TYPE;

    return-object v0
.end method
