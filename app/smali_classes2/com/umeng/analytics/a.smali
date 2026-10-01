.class public Lcom/umeng/analytics/a;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# static fields
.field public static final a:Ljava/lang/String; = "Android"

.field public static final b:Ljava/lang/String; = "Android"

.field public static final c:Ljava/lang/String; = "5.2.2"

.field public static final d:Ljava/lang/String; = "5.2.2.1"

.field public static final e:Ljava/lang/String; = "MobclickAgent"

.field public static final f:[Ljava/lang/String;

.field public static final g:[Ljava/lang/String;

.field public static final h:Ljava/lang/String; = "umeng_net_report_policy"

.field public static final i:Ljava/lang/String; = "umeng_net_report_interval"

.field public static final j:Ljava/lang/String; = "umeng_last_config_time"

.field public static final k:Ljava/lang/String; = "umeng_local_report_policy"

.field public static final l:Ljava/lang/String; = "umeng_local_report_interval"

.field public static final m:J = 0x5265c00L

.field public static final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "http://alog.umeng.com/app_logs"

    aput-object v3, v1, v2

    const/4 v3, 0x1

    const-string v4, "http://alog.umeng.co/app_logs"

    aput-object v4, v1, v3

    sput-object v1, Lcom/umeng/analytics/a;->f:[Ljava/lang/String;

    .line 16
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "http://oc.umeng.com/check_config_update"

    aput-object v1, v0, v2

    const-string v1, "http://oc.umeng.co/check_config_update"

    aput-object v1, v0, v3

    sput-object v0, Lcom/umeng/analytics/a;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
