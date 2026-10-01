.class public Lcom/baidu/cyberplayer/utils/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/cyberplayer/utils/H;
.implements Lcom/baidu/cyberplayer/utils/ay;


# static fields
.field private static a:Ljava/util/Calendar;


# instance fields
.field private a:Lcom/baidu/cyberplayer/utils/cd;

.field private a:Lcom/baidu/cyberplayer/utils/cj;

.field private a:Ljava/lang/Object;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:Lcom/baidu/cyberplayer/utils/cj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()V

    .line 1449
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/baidu/cyberplayer/utils/aa;->a:Ljava/util/Calendar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/baidu/cyberplayer/utils/aa;-><init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V

    .line 218
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 1

    .line 222
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aa;-><init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Lcom/baidu/cyberplayer/utils/cd;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/cd;-><init>()V

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Lcom/baidu/cyberplayer/utils/cd;

    .line 2142
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Ljava/lang/Object;

    .line 209
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 210
    iput-object p2, p0, Lcom/baidu/cyberplayer/utils/aa;->b:Lcom/baidu/cyberplayer/utils/cj;

    .line 211
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->d(Ljava/lang/String;)V

    .line 212
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Z)V

    .line 213
    return-void
.end method

.method private a()Lcom/baidu/cyberplayer/utils/K;
    .locals 1

    .line 1901
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()Lcom/baidu/cyberplayer/utils/K;

    move-result-object v0

    return-object v0
.end method

.method private a()Lcom/baidu/cyberplayer/utils/aX;
    .locals 1

    .line 1975
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()Lcom/baidu/cyberplayer/utils/aX;

    move-result-object v0

    return-object v0
.end method

.method private a()Lcom/baidu/cyberplayer/utils/ar;
    .locals 1

    .line 1985
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()Lcom/baidu/cyberplayer/utils/ar;

    move-result-object v0

    return-object v0
.end method

.method private a()Lcom/baidu/cyberplayer/utils/bW;
    .locals 2

    .line 471
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 472
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/cyberplayer/utils/bW;

    .line 473
    if-nez v1, :cond_0

    .line 474
    new-instance v1, Lcom/baidu/cyberplayer/utils/bW;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/bW;-><init>()V

    .line 475
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/Object;)V

    .line 476
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/bW;->a(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 478
    :cond_0
    return-object v1
.end method

.method public static final a()V
    .locals 1

    .line 1299
    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/cg;->a(I)V

    .line 1300
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/aH;)V
    .locals 4

    .line 1785
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aH;->j()Ljava/lang/String;

    move-result-object v0

    .line 1786
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->d(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v0

    .line 1787
    if-nez v0, :cond_0

    .line 1788
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aH;->t()Z

    .line 1789
    return-void

    .line 1791
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aH;->u()Z

    move-result v1

    const/16 v2, 0x19c

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aH;->v()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1792
    invoke-direct {p0, p1, v2}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aH;I)V

    .line 1793
    return-void

    .line 1797
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aH;->n()Z

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 1798
    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aa;->c(Lcom/baidu/cyberplayer/utils/ac;Lcom/baidu/cyberplayer/utils/aH;)V

    .line 1799
    return-void

    .line 1803
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aH;->u()Z

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1804
    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/ac;Lcom/baidu/cyberplayer/utils/aH;)V

    .line 1805
    return-void

    .line 1809
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aH;->v()Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 1810
    invoke-direct {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Lcom/baidu/cyberplayer/utils/ac;Lcom/baidu/cyberplayer/utils/aH;)V

    .line 1811
    return-void

    .line 1814
    :cond_4
    invoke-direct {p0, p1, v2}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aH;I)V

    .line 1815
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/aH;I)V
    .locals 1

    .line 1778
    new-instance v0, Lcom/baidu/cyberplayer/utils/aI;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/aI;-><init>()V

    .line 1779
    invoke-virtual {v0, p2}, Lcom/baidu/cyberplayer/utils/aI;->c(I)V

    .line 1780
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/aH;->a(Lcom/baidu/cyberplayer/utils/aI;)V

    .line 1781
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/ac;Lcom/baidu/cyberplayer/utils/aH;)V
    .locals 5

    .line 1819
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aH;->p()Ljava/lang/String;

    move-result-object v0

    .line 1821
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    nop

    .line 1828
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aH;->d()J

    move-result-wide v1

    .line 1829
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aG;->a()Ljava/lang/String;

    move-result-object v3

    .line 1831
    new-instance v4, Lcom/baidu/cyberplayer/utils/aE;

    invoke-direct {v4}, Lcom/baidu/cyberplayer/utils/aE;-><init>()V

    .line 1832
    invoke-virtual {v4, v0}, Lcom/baidu/cyberplayer/utils/aE;->b(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {v4, v1, v2}, Lcom/baidu/cyberplayer/utils/aE;->a(J)V

    .line 1834
    invoke-virtual {v4, v3}, Lcom/baidu/cyberplayer/utils/aE;->a(Ljava/lang/String;)V

    .line 1835
    invoke-virtual {p1, v4}, Lcom/baidu/cyberplayer/utils/ac;->a(Lcom/baidu/cyberplayer/utils/aE;)V

    .line 1837
    new-instance v0, Lcom/baidu/cyberplayer/utils/aI;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/aI;-><init>()V

    .line 1838
    const/16 v4, 0xc8

    invoke-virtual {v0, v4}, Lcom/baidu/cyberplayer/utils/aI;->b(I)V

    .line 1839
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/aI;->g(Ljava/lang/String;)V

    .line 1840
    invoke-virtual {v0, v1, v2}, Lcom/baidu/cyberplayer/utils/aI;->b(J)V

    .line 1841
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1842
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aI;->c()V

    .line 1843
    :cond_0
    invoke-virtual {p2, v0}, Lcom/baidu/cyberplayer/utils/aH;->a(Lcom/baidu/cyberplayer/utils/aI;)V

    .line 1845
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result p2

    if-ne p2, v2, :cond_1

    .line 1846
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aI;->c()V

    .line 1848
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ac;->a()V

    .line 1849
    return-void

    .line 1823
    :catch_0
    move-exception p1

    .line 1824
    const/16 p1, 0x19c

    invoke-direct {p0, p2, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aH;I)V

    .line 1825
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/aj;Lcom/baidu/cyberplayer/utils/ac;)V
    .locals 3

    .line 1733
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1734
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aj;->c()V

    .line 1736
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aj;->q()Ljava/lang/String;

    move-result-object v0

    .line 1737
    invoke-virtual {p2, v0}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/U;

    move-result-object p2

    .line 1738
    if-nez p2, :cond_1

    .line 1739
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/al;)V

    .line 1740
    return-void

    .line 1742
    :cond_1
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/U;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v0

    .line 1743
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aj;->a()Lcom/baidu/cyberplayer/utils/Y;

    move-result-object v1

    .line 1745
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/Y;->a(Lcom/baidu/cyberplayer/utils/Y;)V

    .line 1746
    new-instance v1, Lcom/baidu/cyberplayer/utils/X;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/X;-><init>()V

    .line 1747
    const-string v2, "LocalHost"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/X;->a(Ljava/lang/String;)V

    .line 1748
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aj;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/X;->b(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/Y;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1753
    nop

    .line 1754
    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/utils/U;->a(Lcom/baidu/cyberplayer/utils/aj;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1755
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/al;)V

    .line 1756
    :cond_2
    return-void

    .line 1750
    :catch_0
    move-exception p2

    .line 1751
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Lcom/baidu/cyberplayer/utils/al;)V

    .line 1752
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/al;)V
    .locals 2

    .line 1719
    new-instance v0, Lcom/baidu/cyberplayer/utils/ak;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ak;-><init>()V

    .line 1720
    const/16 v1, 0x191

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/am;->c(I)V

    .line 1721
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/al;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    .line 1722
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/al;Lcom/baidu/cyberplayer/utils/ac;)V
    .locals 2

    .line 1711
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/al;->u()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1712
    new-instance v0, Lcom/baidu/cyberplayer/utils/ao;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/ao;-><init>(Lcom/baidu/cyberplayer/utils/G;)V

    invoke-direct {p0, v0, p2}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/ao;Lcom/baidu/cyberplayer/utils/ac;)V

    goto :goto_0

    .line 1714
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/aj;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/aj;-><init>(Lcom/baidu/cyberplayer/utils/G;)V

    invoke-direct {p0, v0, p2}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aj;Lcom/baidu/cyberplayer/utils/ac;)V

    .line 1715
    :goto_0
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/ao;Lcom/baidu/cyberplayer/utils/ac;)V
    .locals 2

    .line 1760
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1761
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ao;->c()V

    .line 1762
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ao;->q()Ljava/lang/String;

    move-result-object v0

    .line 1763
    invoke-virtual {p2, v0}, Lcom/baidu/cyberplayer/utils/ac;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1764
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/al;)V

    .line 1765
    return-void

    .line 1767
    :cond_1
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;

    move-result-object p2

    .line 1768
    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/utils/af;->a(Lcom/baidu/cyberplayer/utils/ao;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1769
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/al;)V

    .line 1770
    :cond_2
    return-void
.end method

.method private a(Lcom/baidu/cyberplayer/utils/ar;)V
    .locals 1

    .line 1980
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bW;->a(Lcom/baidu/cyberplayer/utils/ar;)V

    .line 1981
    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 1

    .line 487
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bW;->a(Ljava/io/File;)V

    .line 488
    return-void
.end method

.method public static a(Lcom/baidu/cyberplayer/utils/cj;)Z
    .locals 1

    .line 612
    const-string v0, "device"

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/cj;->k()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private a(Z)Z
    .locals 1

    .line 2038
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2039
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()V

    .line 2041
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/K;

    move-result-object p1

    .line 2042
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/K;->c()V

    .line 2043
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/K;->a()V

    .line 2044
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/K;->clear()V

    .line 2046
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aX;

    move-result-object p1

    .line 2047
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aX;->c()V

    .line 2048
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aX;->a()V

    .line 2049
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aX;->clear()V

    .line 2051
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ar;

    move-result-object p1

    .line 2052
    if-eqz p1, :cond_1

    .line 2053
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ar;->c()V

    .line 2054
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/ar;)V

    .line 2057
    :cond_1
    return v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)[B
    .locals 2

    monitor-enter p0

    .line 1620
    :try_start_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1621
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->g(Ljava/lang/String;)V

    .line 1622
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    .line 1623
    if-nez p1, :cond_1

    .line 1624
    const/4 p1, 0x0

    new-array p1, p1, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1626
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1630
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1619
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private b(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 4

    .line 1635
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->j()Ljava/lang/String;

    move-result-object v0

    .line 1636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpGetRequestRecieved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/cyberplayer/utils/ca;->a(Ljava/lang/String;)V

    .line 1637
    if-nez v0, :cond_0

    .line 1638
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 1639
    return-void

    .line 1645
    :cond_0
    nop

    .line 1646
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1647
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->l()Ljava/lang/String;

    move-result-object v1

    .line 1649
    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 1650
    goto :goto_0

    .line 1651
    :cond_1
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1652
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->l()Ljava/lang/String;

    move-result-object v3

    .line 1653
    invoke-direct {v1, v3}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 1654
    goto :goto_0

    .line 1655
    :cond_2
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1656
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ac;->a()[B

    move-result-object v1

    .line 1663
    :goto_0
    new-instance v3, Lcom/baidu/cyberplayer/utils/I;

    invoke-direct {v3}, Lcom/baidu/cyberplayer/utils/I;-><init>()V

    .line 1664
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/cb;->a(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1665
    const-string/jumbo v0, "text/xml; charset=\"utf-8\""

    invoke-virtual {v3, v0}, Lcom/baidu/cyberplayer/utils/I;->c(Ljava/lang/String;)V

    .line 1666
    :cond_3
    const/16 v0, 0xc8

    invoke-virtual {v3, v0}, Lcom/baidu/cyberplayer/utils/I;->b(I)V

    .line 1667
    invoke-virtual {v3, v1}, Lcom/baidu/cyberplayer/utils/I;->a([B)V

    .line 1669
    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/G;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    .line 1670
    return-void

    .line 1659
    :cond_4
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 1660
    return-void
.end method

.method private b(Lcom/baidu/cyberplayer/utils/ac;Lcom/baidu/cyberplayer/utils/aH;)V
    .locals 4

    .line 1853
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aH;->q()Ljava/lang/String;

    move-result-object v0

    .line 1854
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aE;

    move-result-object p1

    .line 1856
    if-nez p1, :cond_0

    .line 1857
    const/16 p1, 0x19c

    invoke-direct {p0, p2, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aH;I)V

    .line 1858
    return-void

    .line 1861
    :cond_0
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aH;->d()J

    move-result-wide v1

    .line 1862
    invoke-virtual {p1, v1, v2}, Lcom/baidu/cyberplayer/utils/aE;->a(J)V

    .line 1863
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aE;->b()V

    .line 1865
    new-instance p1, Lcom/baidu/cyberplayer/utils/aI;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/aI;-><init>()V

    .line 1866
    const/16 v3, 0xc8

    invoke-virtual {p1, v3}, Lcom/baidu/cyberplayer/utils/aI;->b(I)V

    .line 1867
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/aI;->g(Ljava/lang/String;)V

    .line 1868
    invoke-virtual {p1, v1, v2}, Lcom/baidu/cyberplayer/utils/aI;->b(J)V

    .line 1869
    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/utils/aH;->a(Lcom/baidu/cyberplayer/utils/aI;)V

    .line 1871
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1872
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aI;->c()V

    .line 1873
    :cond_1
    return-void
.end method

.method private b(Lcom/baidu/cyberplayer/utils/al;)V
    .locals 2

    .line 1726
    new-instance v0, Lcom/baidu/cyberplayer/utils/ak;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ak;-><init>()V

    .line 1727
    const/16 v1, 0x192

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/am;->c(I)V

    .line 1728
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/al;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    .line 1729
    return-void
.end method

.method private c(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 2

    .line 1674
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->p()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1676
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->e(Lcom/baidu/cyberplayer/utils/G;)V

    .line 1677
    return-void

    .line 1679
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 1680
    return-void
.end method

.method private c(Lcom/baidu/cyberplayer/utils/ac;Lcom/baidu/cyberplayer/utils/aH;)V
    .locals 1

    .line 1877
    invoke-virtual {p2}, Lcom/baidu/cyberplayer/utils/aH;->q()Ljava/lang/String;

    move-result-object v0

    .line 1878
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aE;

    move-result-object v0

    .line 1880
    if-nez v0, :cond_0

    .line 1881
    const/16 p1, 0x19c

    invoke-direct {p0, p2, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aH;I)V

    .line 1882
    return-void

    .line 1885
    :cond_0
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/ac;->b(Lcom/baidu/cyberplayer/utils/aE;)V

    .line 1887
    new-instance p1, Lcom/baidu/cyberplayer/utils/aI;

    invoke-direct {p1}, Lcom/baidu/cyberplayer/utils/aI;-><init>()V

    .line 1888
    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/aI;->b(I)V

    .line 1889
    invoke-virtual {p2, p1}, Lcom/baidu/cyberplayer/utils/aH;->a(Lcom/baidu/cyberplayer/utils/aI;)V

    .line 1891
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1892
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aI;->c()V

    .line 1893
    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method private d(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 2

    .line 1688
    new-instance v0, Lcom/baidu/cyberplayer/utils/T;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/T;-><init>()V

    .line 1689
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/T;->b(I)V

    .line 1690
    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/G;->a(Lcom/baidu/cyberplayer/utils/I;)Z

    .line 1691
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Ljava/lang/String;

    .line 366
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 1

    .line 507
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->k()Ljava/lang/String;

    move-result-object v0

    .line 508
    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 509
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 2

    .line 1695
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->j()Ljava/lang/String;

    move-result-object v0

    .line 1696
    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->c(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v0

    .line 1697
    if-eqz v0, :cond_0

    .line 1698
    new-instance v1, Lcom/baidu/cyberplayer/utils/aj;

    invoke-direct {v1, p1}, Lcom/baidu/cyberplayer/utils/aj;-><init>(Lcom/baidu/cyberplayer/utils/G;)V

    .line 1699
    invoke-direct {p0, v1, v0}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/al;Lcom/baidu/cyberplayer/utils/ac;)V

    .line 1700
    return-void

    .line 1702
    :cond_0
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->d(Lcom/baidu/cyberplayer/utils/G;)V

    .line 1703
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 1

    .line 497
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bW;->a(Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .line 712
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 713
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v2, "URLBase"

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 714
    if-eqz v0, :cond_0

    .line 715
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 716
    return-void

    .line 718
    :cond_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/cj;

    invoke-direct {v0, v2}, Lcom/baidu/cyberplayer/utils/cj;-><init>(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cj;->j(Ljava/lang/String;)V

    .line 720
    nop

    .line 721
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/cj;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 722
    nop

    .line 723
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Lcom/baidu/cyberplayer/utils/cj;I)V

    .line 725
    :cond_2
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .locals 2

    .line 729
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()I

    move-result v0

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 730
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->f(Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method private h()Z
    .locals 1

    .line 595
    const-string v0, "/description.xml"

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->e(Ljava/lang/String;)V

    .line 596
    const/16 v0, 0x708

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->a(I)V

    .line 597
    const/16 v0, 0xfa4

    invoke-virtual {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->b(I)V

    .line 600
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->d()V

    .line 603
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .line 502
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .locals 1

    .line 1275
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1277
    :cond_0
    const-string/jumbo v0, "upnp:rootdevice"

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .locals 2

    .line 1282
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1284
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "upnp:rootdevice"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 1

    .line 1289
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .locals 2

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 353
    const/4 v0, 0x4

    return v0

    .line 354
    :cond_0
    return v1
.end method

.method public a()J
    .locals 2

    .line 684
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v0

    .line 685
    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aP;->a()J

    move-result-wide v0

    return-wide v0

    .line 687
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/aP;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    const/4 v0, 0x0

    return-object v0

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/aa;
    .locals 3

    .line 384
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 385
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 386
    return-object v1

    .line 387
    :cond_0
    const-string v2, "device"

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v2

    .line 388
    if-nez v2, :cond_1

    .line 389
    return-object v1

    .line 390
    :cond_1
    new-instance v1, Lcom/baidu/cyberplayer/utils/aa;

    invoke-direct {v1, v0, v2}, Lcom/baidu/cyberplayer/utils/aa;-><init>(Lcom/baidu/cyberplayer/utils/cj;Lcom/baidu/cyberplayer/utils/cj;)V

    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 6

    .line 983
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 985
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 986
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 987
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->c(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 988
    return-object v3

    .line 989
    :cond_0
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 990
    if-eqz v3, :cond_1

    .line 991
    return-object v3

    .line 985
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 993
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ab;
    .locals 6

    .line 953
    new-instance v0, Lcom/baidu/cyberplayer/utils/ab;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ab;-><init>()V

    .line 954
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    const-string v2, "deviceList"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 955
    if-nez v1, :cond_0

    .line 956
    return-object v0

    .line 957
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v2

    .line 958
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 959
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    .line 960
    invoke-static {v4}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 961
    goto :goto_1

    .line 962
    :cond_1
    new-instance v5, Lcom/baidu/cyberplayer/utils/aa;

    invoke-direct {v5, v4}, Lcom/baidu/cyberplayer/utils/aa;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 963
    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/ab;->add(Ljava/lang/Object;)Z

    .line 958
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 965
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;
    .locals 7

    .line 1034
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 1035
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 1036
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1037
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 1038
    invoke-virtual {v4, p1}, Lcom/baidu/cyberplayer/utils/ac;->f(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1039
    return-object v4

    .line 1036
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 1044
    nop

    :goto_1
    if-ge v2, v1, :cond_3

    .line 1045
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 1046
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v3

    .line 1047
    if-eqz v3, :cond_2

    .line 1048
    return-object v3

    .line 1044
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1051
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lcom/baidu/cyberplayer/utils/ad;
    .locals 6

    .line 1017
    new-instance v0, Lcom/baidu/cyberplayer/utils/ad;

    invoke-direct {v0}, Lcom/baidu/cyberplayer/utils/ad;-><init>()V

    .line 1018
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    const-string v2, "serviceList"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v1

    .line 1019
    if-nez v1, :cond_0

    .line 1020
    return-object v0

    .line 1021
    :cond_0
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/cj;->f()I

    move-result v2

    .line 1022
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1023
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/cj;->a(I)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v4

    .line 1024
    invoke-static {v4}, Lcom/baidu/cyberplayer/utils/ac;->a(Lcom/baidu/cyberplayer/utils/cj;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1025
    goto :goto_1

    .line 1026
    :cond_1
    new-instance v5, Lcom/baidu/cyberplayer/utils/ac;

    invoke-direct {v5, v4}, Lcom/baidu/cyberplayer/utils/ac;-><init>(Lcom/baidu/cyberplayer/utils/cj;)V

    .line 1027
    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/ad;->add(Ljava/lang/Object;)Z

    .line 1022
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1029
    :cond_2
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;
    .locals 1

    .line 1180
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;
    .locals 7

    .line 1149
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 1150
    return-object v0

    .line 1152
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v1

    .line 1153
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v2

    .line 1154
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_3

    .line 1155
    invoke-virtual {v1, v4}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v5

    .line 1157
    if-eqz p1, :cond_1

    .line 1158
    invoke-virtual {v5}, Lcom/baidu/cyberplayer/utils/ac;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1159
    goto :goto_1

    .line 1161
    :cond_1
    invoke-virtual {v5, p2}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;

    move-result-object v5

    .line 1162
    if-eqz v5, :cond_2

    .line 1163
    return-object v5

    .line 1154
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1166
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v1

    .line 1167
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v2

    .line 1168
    nop

    :goto_2
    if-ge v3, v2, :cond_5

    .line 1169
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v4

    .line 1170
    invoke-virtual {v4, p1, p2}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/af;

    move-result-object v4

    .line 1171
    if-eqz v4, :cond_4

    .line 1172
    return-object v4

    .line 1168
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1175
    :cond_5
    return-object v0
.end method

.method public a()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Lcom/baidu/cyberplayer/utils/cj;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aa;->b:Lcom/baidu/cyberplayer/utils/cj;

    if-nez v0, :cond_1

    .line 175
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aa;->b:Lcom/baidu/cyberplayer/utils/cj;

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/cj;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/io/File;
    .locals 1

    .line 492
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Ljava/io/File;

    move-result-object v0

    .line 516
    if-nez v0, :cond_0

    .line 517
    const-string v0, ""

    return-object v0

    .line 518
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 269
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 272
    :catch_0
    move-exception v0

    .line 274
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->c()Ljava/lang/String;

    move-result-object v1

    .line 278
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 279
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aa;->b()Ljava/lang/String;

    move-result-object v0

    .line 280
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;)I

    move-result v0

    .line 282
    invoke-static {v1, v0}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 287
    :cond_1
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 290
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 294
    return-object p1

    .line 296
    :catch_1
    move-exception v0

    .line 298
    invoke-static {v1, p1}, Lcom/baidu/cyberplayer/utils/D;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 300
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    .line 303
    :catch_2
    move-exception p1

    .line 305
    const-string p1, ""

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 662
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bW;->a(I)V

    .line 663
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ar;

    move-result-object p1

    .line 664
    if-eqz p1, :cond_0

    .line 665
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()V

    .line 666
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/ar;->d()V

    .line 668
    :cond_0
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/G;)V
    .locals 2

    .line 1597
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1598
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->c()V

    .line 1600
    :cond_0
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->j()Z

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->l()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 1604
    :cond_1
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->k()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 1605
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->c(Lcom/baidu/cyberplayer/utils/G;)V

    .line 1606
    return-void

    .line 1609
    :cond_2
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->m()Z

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->n()Z

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 1615
    :cond_3
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/G;->t()Z

    .line 1616
    return-void

    .line 1610
    :cond_4
    :goto_0
    new-instance v0, Lcom/baidu/cyberplayer/utils/aH;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/aH;-><init>(Lcom/baidu/cyberplayer/utils/G;)V

    .line 1611
    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aH;)V

    .line 1612
    return-void

    .line 1601
    :cond_5
    :goto_1
    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Lcom/baidu/cyberplayer/utils/G;)V

    .line 1602
    return-void
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 1

    .line 629
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bW;->a(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 630
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 899
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1, p1}, Lcom/baidu/cyberplayer/utils/cj;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 342
    iput-boolean p1, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Z

    .line 343
    return-void
.end method

.method public a()Z
    .locals 3

    .line 328
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    .line 329
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 330
    return v1

    .line 331
    :cond_0
    const-string v2, "INMPR03"

    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public a(Lcom/baidu/cyberplayer/utils/aP;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1452
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->a()Ljava/lang/String;

    move-result-object v0

    .line 1453
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v1

    .line 1454
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1456
    new-instance v1, Lcom/baidu/cyberplayer/utils/aT;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/aT;-><init>()V

    .line 1457
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aT;->c(I)V

    .line 1458
    sget-object v2, Lcom/baidu/cyberplayer/utils/aa;->a:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aT;->a(Ljava/util/Calendar;)V

    .line 1459
    invoke-virtual {v1, p2}, Lcom/baidu/cyberplayer/utils/aT;->g(Ljava/lang/String;)V

    .line 1460
    invoke-virtual {v1, p3}, Lcom/baidu/cyberplayer/utils/aT;->i(Ljava/lang/String;)V

    .line 1461
    invoke-virtual {v1, v0}, Lcom/baidu/cyberplayer/utils/aT;->h(Ljava/lang/String;)V

    .line 1463
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/baidu/cyberplayer/utils/aT;->j(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->b()I

    move-result p2

    .line 1466
    mul-int/lit16 p2, p2, 0x3e8

    invoke-static {p2}, Lcom/baidu/cyberplayer/utils/cg;->a(I)V

    .line 1468
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->b()Ljava/lang/String;

    move-result-object p2

    .line 1469
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->a()I

    move-result p1

    .line 1470
    new-instance p3, Lcom/baidu/cyberplayer/utils/aU;

    invoke-direct {p3}, Lcom/baidu/cyberplayer/utils/aU;-><init>()V

    .line 1471
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ca;->a()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1472
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aT;->c()V

    .line 1473
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()I

    move-result v0

    .line 1474
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1475
    invoke-virtual {p3, p2, p1, v1}, Lcom/baidu/cyberplayer/utils/aU;->a(Ljava/lang/String;ILcom/baidu/cyberplayer/utils/aT;)Z

    .line 1474
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1477
    :cond_1
    return v2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/cyberplayer/utils/au;
        }
    .end annotation

    .line 550
    :try_start_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Lcom/baidu/cyberplayer/utils/cl;

    move-result-object v0

    .line 551
    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/cl;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Lcom/baidu/cyberplayer/utils/cj;

    .line 552
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Lcom/baidu/cyberplayer/utils/cj;

    if-eqz p1, :cond_2

    .line 554
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Lcom/baidu/cyberplayer/utils/cj;

    const-string v0, "device"

    invoke-virtual {p1, v0}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/cyberplayer/utils/aa;->b:Lcom/baidu/cyberplayer/utils/cj;

    .line 555
    iget-object p1, p0, Lcom/baidu/cyberplayer/utils/aa;->b:Lcom/baidu/cyberplayer/utils/cj;
    :try_end_0
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    .line 560
    nop

    .line 562
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 563
    const/4 p1, 0x0

    return p1

    .line 565
    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->a(Ljava/io/File;)V

    .line 567
    const/4 p1, 0x1

    return p1

    .line 556
    :cond_1
    :try_start_1
    new-instance p1, Lcom/baidu/cyberplayer/utils/au;

    const-string v0, "Couldn\'t find a root device node"

    invoke-direct {p1, v0}, Lcom/baidu/cyberplayer/utils/au;-><init>(Ljava/lang/String;)V

    throw p1

    .line 553
    :cond_2
    new-instance p1, Lcom/baidu/cyberplayer/utils/au;

    const-string v0, "Couldn\'t find a root node"

    invoke-direct {p1, v0}, Lcom/baidu/cyberplayer/utils/au;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lcom/baidu/cyberplayer/utils/cm; {:try_start_1 .. :try_end_1} :catch_0

    .line 558
    :catch_0
    move-exception p1

    .line 559
    new-instance v0, Lcom/baidu/cyberplayer/utils/au;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/au;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public b()I
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aP;->c()I

    move-result v0

    return v0

    .line 675
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()I

    move-result v0

    return v0
.end method

.method public b()J
    .locals 4

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;
    .locals 6

    .line 998
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 999
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 1000
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1001
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 1002
    invoke-direct {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->d(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1003
    return-object v3

    .line 1004
    :cond_0
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 1005
    if-eqz v3, :cond_1

    .line 1006
    return-object v3

    .line 1000
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1008
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;
    .locals 7

    .line 1056
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 1057
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 1058
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1059
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 1060
    invoke-virtual {v4, p1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1061
    return-object v4

    .line 1058
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1064
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 1065
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 1066
    nop

    :goto_1
    if-ge v2, v1, :cond_3

    .line 1067
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 1068
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v3

    .line 1069
    if-eqz v3, :cond_2

    .line 1070
    return-object v3

    .line 1066
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1073
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lcom/baidu/cyberplayer/utils/cj;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/baidu/cyberplayer/utils/aa;->b:Lcom/baidu/cyberplayer/utils/cj;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 650
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aP;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1270
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()I

    move-result v0

    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/baidu/cyberplayer/utils/Q;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 6

    .line 1353
    invoke-static {}, Lcom/baidu/cyberplayer/utils/aa;->a()V

    .line 1354
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()[Ljava/net/InetAddress;

    move-result-object v0

    .line 1356
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1357
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1358
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1359
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1358
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1362
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()I

    move-result v0

    .line 1363
    new-array v2, v0, [Ljava/lang/String;

    .line 1364
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 1365
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/Q;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1364
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1368
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 1369
    aget-object v3, v2, v0

    if-eqz v3, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1370
    goto :goto_4

    .line 1371
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()I

    move-result v3

    .line 1372
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    .line 1373
    aget-object v5, v2, v0

    invoke-virtual {p0, v5}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)V

    .line 1372
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1368
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1376
    :cond_4
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1543
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/cyberplayer/utils/bW;->b(I)V

    .line 1544
    return-void
.end method

.method public b(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 6

    .line 1482
    invoke-virtual {p1}, Lcom/baidu/cyberplayer/utils/aP;->g()Ljava/lang/String;

    move-result-object v0

    .line 1484
    if-nez v0, :cond_0

    .line 1485
    return-void

    .line 1487
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v1

    .line 1489
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v2

    .line 1490
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1491
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "::upnp:rootdevice"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1493
    :cond_1
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ax;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-ne v4, v3, :cond_4

    .line 1494
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->l()Ljava/lang/String;

    move-result-object v0

    .line 1495
    if-ne v1, v3, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 1496
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 1497
    invoke-virtual {p0, p1, v0, v2}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aP;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1496
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1498
    :cond_3
    goto :goto_2

    .line 1499
    :cond_4
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ax;->b(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v3, :cond_5

    .line 1500
    if-ne v1, v3, :cond_8

    .line 1501
    const-string/jumbo v0, "upnp:rootdevice"

    invoke-virtual {p0, p1, v0, v2}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aP;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 1503
    :cond_5
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ax;->c(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_7

    .line 1504
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v1

    .line 1505
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 1506
    invoke-virtual {p0, p1, v1, v2}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aP;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1507
    :cond_6
    goto :goto_2

    .line 1508
    :cond_7
    invoke-static {v0}, Lcom/baidu/cyberplayer/utils/ax;->d(Ljava/lang/String;)Z

    move-result v1

    if-ne v1, v3, :cond_8

    .line 1509
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v1

    .line 1510
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v3, :cond_8

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "::"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1513
    invoke-virtual {p0, p1, v1, v0}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/aP;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1517
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 1518
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 1519
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_9

    .line 1520
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v3

    .line 1521
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/ac;->a(Lcom/baidu/cyberplayer/utils/aP;)Z

    .line 1519
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1524
    :cond_9
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 1525
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 1526
    nop

    :goto_4
    if-ge v5, v1, :cond_a

    .line 1527
    invoke-virtual {v0, v5}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v2

    .line 1528
    invoke-virtual {v2, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 1526
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1530
    :cond_a
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .line 1303
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1305
    new-instance v1, Lcom/baidu/cyberplayer/utils/aN;

    invoke-direct {v1, p1}, Lcom/baidu/cyberplayer/utils/aN;-><init>(Ljava/lang/String;)V

    .line 1307
    new-instance v2, Lcom/baidu/cyberplayer/utils/aM;

    invoke-direct {v2}, Lcom/baidu/cyberplayer/utils/aM;-><init>()V

    .line 1308
    invoke-static {}, Lcom/baidu/cyberplayer/utils/ag;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/aM;->e(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/aM;->c(I)V

    .line 1310
    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aM;->l(Ljava/lang/String;)V

    .line 1311
    const-string/jumbo v0, "ssdp:alive"

    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aM;->k(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1315
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->l()Ljava/lang/String;

    move-result-object v0

    .line 1316
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->m()Ljava/lang/String;

    move-result-object v3

    .line 1317
    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aM;->j(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/aM;->m(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/aM;)Z

    .line 1321
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v0

    .line 1322
    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aM;->j(Ljava/lang/String;)V

    .line 1323
    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aM;->m(Ljava/lang/String;)V

    .line 1324
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/aM;)Z

    .line 1328
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->n()Ljava/lang/String;

    move-result-object v0

    .line 1329
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->o()Ljava/lang/String;

    move-result-object v3

    .line 1330
    invoke-virtual {v2, v0}, Lcom/baidu/cyberplayer/utils/aM;->j(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v2, v3}, Lcom/baidu/cyberplayer/utils/aM;->m(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/aM;)Z

    .line 1335
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aN;->b()Z

    .line 1337
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 1338
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 1339
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1340
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 1341
    invoke-virtual {v4, p1}, Lcom/baidu/cyberplayer/utils/ac;->a(Ljava/lang/String;)V

    .line 1339
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1344
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 1345
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 1346
    nop

    :goto_1
    if-ge v2, v1, :cond_2

    .line 1347
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 1348
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Ljava/lang/String;)V

    .line 1346
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1350
    :cond_2
    return-void
.end method

.method public b()Z
    .locals 1

    .line 347
    iget-boolean v0, p0, Lcom/baidu/cyberplayer/utils/aa;->a:Z

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 758
    if-nez p1, :cond_0

    .line 759
    const/4 p1, 0x0

    return p1

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()I
    .locals 1

    .line 1548
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->b()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;
    .locals 7

    .line 1078
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 1079
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 1080
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1081
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 1082
    invoke-virtual {v4, p1}, Lcom/baidu/cyberplayer/utils/ac;->b(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1083
    return-object v4

    .line 1080
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1086
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 1088
    nop

    :goto_1
    if-ge v2, v1, :cond_3

    .line 1089
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 1090
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->c(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v3

    .line 1091
    if-eqz v3, :cond_2

    .line 1092
    return-object v3

    .line 1088
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1095
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 735
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 736
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "URLBase"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 737
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public c()V
    .locals 6

    .line 1421
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/bW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/bW;->a()[Ljava/net/InetAddress;

    move-result-object v0

    .line 1423
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1424
    array-length v2, v0

    new-array v2, v2, [Ljava/lang/String;

    .line 1425
    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 1426
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1425
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1429
    :cond_0
    invoke-static {}, Lcom/baidu/cyberplayer/utils/Q;->a()I

    move-result v0

    .line 1430
    new-array v2, v0, [Ljava/lang/String;

    .line 1431
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 1432
    invoke-static {v3}, Lcom/baidu/cyberplayer/utils/Q;->a(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1431
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1436
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 1437
    aget-object v3, v2, v0

    if-eqz v3, :cond_3

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 1438
    goto :goto_4

    .line 1439
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()I

    move-result v3

    .line 1440
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_3

    .line 1441
    aget-object v5, v2, v0

    invoke-virtual {p0, v5}, Lcom/baidu/cyberplayer/utils/aa;->c(Ljava/lang/String;)V

    .line 1440
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1436
    :cond_3
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1443
    :cond_4
    return-void
.end method

.method public c(Lcom/baidu/cyberplayer/utils/aP;)V
    .locals 0

    .line 1534
    invoke-virtual {p0, p1}, Lcom/baidu/cyberplayer/utils/aa;->b(Lcom/baidu/cyberplayer/utils/aP;)V

    .line 1535
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 5

    .line 1380
    new-instance v0, Lcom/baidu/cyberplayer/utils/aN;

    invoke-direct {v0, p1}, Lcom/baidu/cyberplayer/utils/aN;-><init>(Ljava/lang/String;)V

    .line 1382
    new-instance v1, Lcom/baidu/cyberplayer/utils/aM;

    invoke-direct {v1}, Lcom/baidu/cyberplayer/utils/aM;-><init>()V

    .line 1383
    const-string/jumbo v2, "ssdp:byebye"

    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aM;->k(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1387
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->l()Ljava/lang/String;

    move-result-object v2

    .line 1388
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->m()Ljava/lang/String;

    move-result-object v3

    .line 1389
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aM;->j(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/aM;->m(Ljava/lang/String;)V

    .line 1391
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/aM;)Z

    .line 1395
    :cond_0
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->n()Ljava/lang/String;

    move-result-object v2

    .line 1396
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->o()Ljava/lang/String;

    move-result-object v3

    .line 1397
    invoke-virtual {v1, v2}, Lcom/baidu/cyberplayer/utils/aM;->j(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v1, v3}, Lcom/baidu/cyberplayer/utils/aM;->m(Ljava/lang/String;)V

    .line 1399
    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/aN;->a(Lcom/baidu/cyberplayer/utils/aM;)Z

    .line 1402
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aN;->b()Z

    .line 1404
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 1405
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 1406
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1407
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 1408
    invoke-virtual {v4, p1}, Lcom/baidu/cyberplayer/utils/ac;->b(Ljava/lang/String;)V

    .line 1406
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1411
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 1412
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 1413
    nop

    :goto_1
    if-ge v2, v1, :cond_2

    .line 1414
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 1415
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->c(Ljava/lang/String;)V

    .line 1413
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1417
    :cond_2
    return-void
.end method

.method public c()Z
    .locals 2

    .line 620
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "device"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->a(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 4

    .line 970
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 971
    return v0

    .line 972
    :cond_0
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 973
    return v2

    .line 974
    :cond_1
    const-string/jumbo v1, "uuid:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 975
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 976
    :cond_2
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-ne p1, v2, :cond_3

    .line 977
    return v2

    .line 978
    :cond_3
    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;
    .locals 7

    .line 1100
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ad;

    move-result-object v0

    .line 1101
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ad;->size()I

    move-result v1

    .line 1102
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1103
    invoke-virtual {v0, v3}, Lcom/baidu/cyberplayer/utils/ad;->a(I)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v4

    .line 1104
    invoke-virtual {v4, p1}, Lcom/baidu/cyberplayer/utils/ac;->c(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 1105
    return-object v4

    .line 1102
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/ab;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/ab;->size()I

    move-result v1

    .line 1110
    nop

    :goto_1
    if-ge v2, v1, :cond_3

    .line 1111
    invoke-virtual {v0, v2}, Lcom/baidu/cyberplayer/utils/ab;->a(I)Lcom/baidu/cyberplayer/utils/aa;

    move-result-object v3

    .line 1112
    invoke-virtual {v3, p1}, Lcom/baidu/cyberplayer/utils/aa;->d(Ljava/lang/String;)Lcom/baidu/cyberplayer/utils/ac;

    move-result-object v3

    .line 1113
    if-eqz v3, :cond_2

    .line 1114
    return-object v3

    .line 1110
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1117
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 753
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "deviceType"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 5

    .line 697
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()J

    move-result-wide v0

    .line 698
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x3c

    int-to-long v2, v2

    .line 699
    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 700
    const/4 v0, 0x1

    return v0

    .line 701
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 776
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "friendlyName"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 909
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->h()Ljava/lang/String;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 911
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 792
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "manufacturer"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 6

    .line 1990
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->a(Z)Z

    .line 1996
    nop

    .line 1997
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()I

    move-result v1

    .line 1998
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/K;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1999
    :goto_0
    invoke-virtual {v2, v1}, Lcom/baidu/cyberplayer/utils/K;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2000
    add-int/2addr v4, v0

    .line 2001
    const/16 v5, 0xa

    if-ge v5, v4, :cond_0

    .line 2002
    return v3

    .line 2003
    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/baidu/cyberplayer/utils/aa;->b(I)V

    .line 2004
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->c()I

    move-result v1

    goto :goto_0

    .line 2006
    :cond_1
    invoke-virtual {v2, p0}, Lcom/baidu/cyberplayer/utils/K;->a(Lcom/baidu/cyberplayer/utils/H;)V

    .line 2007
    invoke-virtual {v2}, Lcom/baidu/cyberplayer/utils/K;->b()V

    .line 2013
    invoke-direct {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aX;

    move-result-object v1

    .line 2014
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aX;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2015
    return v3

    .line 2016
    :cond_2
    invoke-virtual {v1, p0}, Lcom/baidu/cyberplayer/utils/aX;->a(Lcom/baidu/cyberplayer/utils/ay;)V

    .line 2017
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/aX;->b()V

    .line 2023
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()V

    .line 2029
    new-instance v1, Lcom/baidu/cyberplayer/utils/ar;

    invoke-direct {v1, p0}, Lcom/baidu/cyberplayer/utils/ar;-><init>(Lcom/baidu/cyberplayer/utils/aa;)V

    .line 2030
    invoke-direct {p0, v1}, Lcom/baidu/cyberplayer/utils/aa;->a(Lcom/baidu/cyberplayer/utils/ar;)V

    .line 2031
    invoke-virtual {v1}, Lcom/baidu/cyberplayer/utils/ar;->b()V

    .line 2033
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 840
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "modelName"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 2062
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/baidu/cyberplayer/utils/aa;->a(Z)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 904
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->b()Lcom/baidu/cyberplayer/utils/cj;

    move-result-object v0

    const-string v1, "UDN"

    invoke-virtual {v0, v1}, Lcom/baidu/cyberplayer/utils/cj;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 2076
    invoke-virtual {p0}, Lcom/baidu/cyberplayer/utils/aa;->a()Lcom/baidu/cyberplayer/utils/aP;

    move-result-object v0

    .line 2077
    if-nez v0, :cond_0

    .line 2078
    const-string v0, ""

    return-object v0

    .line 2079
    :cond_0
    invoke-virtual {v0}, Lcom/baidu/cyberplayer/utils/aP;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
