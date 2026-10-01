.class public Lcom/shenma/tvlauncher/vod/VodDetailsActivity;
.super Lcom/shenma/tvlauncher/BaseActivity;
.source "VodDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shenma/tvlauncher/vod/VodDetailsActivity$HorizontalAdapter;
    }
.end annotation


# static fields
.field public static Sd:Landroid/content/SharedPreferences;

.field public static Sp:Landroid/content/SharedPreferences;

.field public static now_source:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Api_url:Ljava/lang/String;

.field private BASE_HOST:Ljava/lang/String;

.field public G:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private Same_source_search:I

.field private final TAG:Ljava/lang/String;

.field private aboutlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;",
            ">;"
        }
    .end annotation
.end field

.field private album:Lcom/shenma/tvlauncher/vod/db/Album;

.field private albumPic:Ljava/lang/String;

.field private albums:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/db/Album;",
            ">;"
        }
    .end annotation
.end field

.field private b_details_choose:Landroid/widget/TextView;

.field private b_details_colection:Landroid/widget/TextView;

.field private b_details_favicon:Landroid/widget/TextView;

.field private b_details_play:Landroid/widget/TextView;

.field private b_details_replay:Landroid/view/View;

.field private b_details_search:Landroid/widget/TextView;

.field private bg_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomGridAdapter;

.field private bl_Adapter:Lcom/shenma/tvlauncher/vod/adapter/DetailsBottomListAdapter;

.field private context:Landroid/content/Context;

.field private dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

.field private details_key_arts:Landroid/widget/LinearLayout;

.field private details_key_grid:Landroid/widget/GridView;

.field private details_key_list:Landroid/widget/ListView;

.field private details_key_list_and_grid:Landroid/widget/ImageView;

.field private details_key_lists:Landroid/widget/GridView;

.field private details_recommend:Landroid/widget/LinearLayout;

.field private details_video_introduce:Landroid/widget/LinearLayout;

.field private domain:Ljava/lang/String;

.field private gv_lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gv_recommend_grid:Landroid/widget/GridView;

.field protected imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private isRecommandClick:Z

.field private iv_details_poster:Landroid/widget/ImageView;

.field public j0:I

.field lastPositinTime:I

.field private lastXuanji:I

.field private llQuanping:Landroid/view/View;

.field private llShoucang:Landroid/view/View;

.field public lv_lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shenma/tvlauncher/vod/domain/VodUrlList;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Lcom/android/volley/RequestQueue;

.field private mediaHandler:Landroid/os/Handler;

.field private menu_paixu:Lcom/view/SingleChoiceMenuView;

.field private menu_view:Lcom/view/SingleChoiceMenuView;

.field private menu_xuanji:Lcom/view/SingleChoiceMenuView;

.field private mmkv:Lcom/tencent/mmkv/MMKV;

.field private nextlink:Ljava/lang/String;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private paixuSelection:I

.field private rbHeigth:I

.field private rbWidth:I

.field private recommandListView:Landroidx/recyclerview/widget/RecyclerView;

.field private remember_source:I

.field private rg_video_details_resources:Landroid/widget/RadioGroup;

.field private root_view:Landroid/widget/FrameLayout;

.field private sourceId:Ljava/lang/String;

.field protected sp:Landroid/content/SharedPreferences;

.field private top_type:Ljava/lang/String;

.field private trystate:I

.field private tv_details:Landroid/view/View;

.field private tv_details_actors:Landroid/widget/TextView;

.field private tv_details_area:Landroid/widget/TextView;

.field private tv_details_director:Landroid/widget/TextView;

.field private tv_details_name:Landroid/widget/TextView;

.field private tv_details_playTimes:Landroid/widget/TextView;

.field private tv_details_rate:Landroid/widget/TextView;

.field private tv_details_type:Landroid/widget/TextView;

.field private tv_details_video_introduce:Landroid/widget/TextView;

.field private tv_details_year:Landroid/widget/TextView;

.field private videoId:Ljava/lang/String;

.field private vipstate:I

.field private vodDetailsAdapter:Lcom/shenma/tvlauncher/vod/adapter/VodDetailsAdapter;

.field private vodPlayUrl:Ljava/lang/String;

.field private vodname:Ljava/lang/String;

.field private vodstate:Ljava/lang/String;

.field private vodtype:Ljava/lang/String;

.field private xuanjiSelection:I

.field private xuanjinumber:I

.field private xuanjitype:I


# direct methods
.method static bridge synthetic -$$Nest$fgetaboutlist(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetalbum(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/db/Album;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetalbumPic(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albumPic:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetalbums(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb_details_colection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_colection:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb_details_play(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_play:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdao(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/shenma/tvlauncher/vod/dao/VodDao;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdomain(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->domain:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisRecommandClick(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->isRecommandClick:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetiv_details_poster(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->iv_details_poster:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetlastXuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lastXuanji:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmediaHandler(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenu_paixu(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenu_view(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmenu_xuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/view/SingleChoiceMenuView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmmkv(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/tencent/mmkv/MMKV;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetnextlink(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetoptions(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpaixuSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->paixuSelection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrecommandListView(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->recommandListView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremember_source(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->remember_source:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetroot_view(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->root_view:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsourceId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sourceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_actors(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_actors:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_area(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_area:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_director(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_director:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_name(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_playTimes(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_playTimes:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_rate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_rate:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_type(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_type:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettv_details_year(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_year:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->videoId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodPlayUrl(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodPlayUrl:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodname(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodname:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodstate:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetvodtype(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetxuanjiSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)I
    .locals 0

    iget p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjiSelection:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputaboutlist(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbum(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Lcom/shenma/tvlauncher/vod/db/Album;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbumPic(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albumPic:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputalbums(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdomain(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->domain:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisRecommandClick(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->isRecommandClick:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputlastXuanji(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lastXuanji:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnextlink(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpaixuSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->paixuSelection:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsourceId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sourceId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputtop_type(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->top_type:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvideoId(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->videoId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvodname(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodname:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputvodstate(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodstate:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputxuanjiSelection(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V
    .locals 0

    iput p1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjiSelection:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 110
    invoke-direct {p0}, Lcom/shenma/tvlauncher/BaseActivity;-><init>()V

    .line 111
    const-string v0, "VodDetailsActivity"

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->TAG:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    .line 116
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodstate:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    .line 142
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sourceId:Ljava/lang/String;

    .line 144
    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    .line 148
    const/16 v0, 0x5a

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbWidth:I

    .line 149
    const/16 v0, 0x24

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbHeigth:I

    .line 155
    const-string v0, "Trystate"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->trystate:I

    .line 156
    const-string/jumbo v0, "xuanjitype"

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjitype:I

    .line 157
    const-string/jumbo v0, "xuanjinumber"

    const/16 v2, 0x14

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjinumber:I

    .line 158
    const-string v0, "remember_source"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->remember_source:I

    .line 159
    const-string v0, "Same_source_search"

    invoke-static {p0, v0, v1}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Same_source_search:I

    .line 160
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjiSelection:I

    .line 161
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->paixuSelection:I

    .line 163
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$1;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    .line 202
    const-string v0, "Api_url"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Api_url:Ljava/lang/String;

    .line 203
    const-string v0, "BASE_HOST"

    invoke-static {p0, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->BASE_HOST:Ljava/lang/String;

    .line 212
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lastPositinTime:I

    .line 213
    iput-boolean v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->isRecommandClick:Z

    .line 214
    iput v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lastXuanji:I

    return-void
.end method

.method private GetMotion(I)V
    .locals 16
    .param p1, "position"    # I

    .line 1573
    move-object/from16 v1, p0

    const-string/jumbo v12, "vip"

    const-string v13, ""

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v14, v0

    .line 1576
    .local v14, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    const-string v4, "999999999"

    invoke-interface {v0, v12, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/shenma/tvlauncher/utils/GetTimeStamp;->timeStamp2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const/4 v0, 0x1

    cmp-long v7, v2, v5

    if-ltz v7, :cond_1

    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v2, v12, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "999999999"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1579
    :cond_0
    const/4 v2, 0x0

    iput v2, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vipstate:I

    goto :goto_2

    .line 1577
    :cond_1
    :goto_1
    iput v0, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vipstate:I

    .line 1581
    :goto_2
    new-instance v2, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v2}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v1, v2}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v2

    iput-object v2, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1582
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->s:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v15, v2

    .line 1583
    .local v15, "User_url":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1584
    .local v7, "RC4KEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1585
    .local v8, "RSAKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1586
    .local v9, "AESKEY":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1587
    .local v10, "AESIV":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->yk:Ljava/lang/String;

    invoke-static {v1, v2, v13}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1588
    .local v11, "Appkey":Ljava/lang/String;
    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 1589
    .local v6, "miType":I
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api.php?app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shenma/tvlauncher/Api;->JUHEQQ692000321_ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&act=motion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;

    move/from16 v2, p1

    invoke-direct {v4, v1, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$13;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    new-instance v5, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;

    invoke-direct {v5, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$14;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    const/4 v2, 0x1

    invoke-direct/range {v0 .. v11}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$15;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    .local v0, "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    iget-object v2, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v2, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1630
    return-void

    .line 1631
    .end local v0    # "stringRequest":Lcom/android/volley/toolbox/StringRequest;
    .end local v6    # "miType":I
    .end local v7    # "RC4KEY":Ljava/lang/String;
    .end local v8    # "RSAKEY":Ljava/lang/String;
    .end local v9    # "AESKEY":Ljava/lang/String;
    .end local v10    # "AESIV":Ljava/lang/String;
    .end local v11    # "Appkey":Ljava/lang/String;
    .end local v15    # "User_url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1632
    .local v0, "ex":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 1633
    goto/16 :goto_0
.end method

.method private createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;
    .locals 1

    .line 1545
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$12;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    return-object v0
.end method

.method private createVodDataSuccessListener()Lcom/android/volley/Response$Listener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Response$Listener<",
            "Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;",
            ">;"
        }
    .end annotation

    .line 1218
    new-instance v0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;

    invoke-direct {v0, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$11;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    return-object v0
.end method

.method private initData()V
    .locals 4

    .line 348
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sourceId:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 350
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "vodtype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    .line 351
    const-string/jumbo v2, "vodstate"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodstate:Ljava/lang/String;

    .line 352
    const-string v2, "nextlink"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    .line 353
    const-string/jumbo v2, "vodPlayUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodPlayUrl:Ljava/lang/String;

    .line 354
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->hao260x366:I

    .line 355
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showStubImage(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->hao260x366:I

    .line 356
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$drawable;->hao260x366:I

    .line 357
    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 358
    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->resetViewBeforeLoading(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    .line 359
    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisc(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->EXACTLY:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 360
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    new-instance v2, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;

    const/16 v3, 0x12c

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/display/FadeInBitmapDisplayer;-><init>(I)V

    .line 361
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->displayer(Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 362
    return-void
.end method

.method private setFullScreenImmersive()V
    .locals 2

    .line 505
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 506
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1506

    .line 511
    .local v1, "flags":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 512
    return-void
.end method


# virtual methods
.method protected CreateBottomLayout()V
    .locals 12

    .line 568
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjitype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 569
    iget v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjinumber:I

    .local v0, "number":I
    goto :goto_0

    .line 571
    .end local v0    # "number":I
    :cond_0
    const/16 v0, 0x4e20

    .line 573
    .restart local v0    # "number":I
    :goto_0
    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    .line 574
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    if-eqz v2, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 575
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    .line 576
    .local v3, "list2":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v4, "arrayList":Ljava/util/ArrayList;
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 578
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v0

    .line 579
    .local v5, "size":I
    const/4 v6, 0x0

    .line 580
    .local v6, "i":I
    :goto_1
    const-string v7, "-"

    if-ge v6, v5, :cond_1

    .line 581
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 582
    .local v8, "sb":Ljava/lang/StringBuilder;
    mul-int v9, v6, v0

    add-int/2addr v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    add-int/lit8 v6, v6, 0x1

    .line 585
    mul-int v7, v6, v0

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 588
    :cond_1
    mul-int v8, v6, v0

    add-int/2addr v8, v1

    .line 589
    .local v8, "i2":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-gt v8, v1, :cond_2

    .line 590
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 592
    :cond_2
    iput-object v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_lists:Ljava/util/List;

    .line 595
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v1}, Lcom/view/SingleChoiceMenuView;->clearMenuItems()V

    .line 596
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_lists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v7, 0x0

    if-nez v1, :cond_4

    .line 597
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_lists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 598
    .local v9, "item":Ljava/lang/String;
    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v10, v9}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 599
    .end local v9    # "item":Ljava/lang/String;
    goto :goto_2

    .line 600
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    new-instance v9, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;

    invoke-direct {v9, p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$3;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;I)V

    invoke-virtual {v1, v9}, Lcom/view/SingleChoiceMenuView;->setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V

    .line 627
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->videoId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "px"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v7}, Lcom/tencent/mmkv/MMKV;->decodeInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->paixuSelection:I

    .line 629
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    new-instance v9, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$4;

    invoke-direct {v9, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$4;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v1, v9, v10, v11}, Lcom/view/SingleChoiceMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 639
    :cond_4
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    invoke-static {v1, v7, v0}, Lcom/shenma/tvlauncher/utils/Utils;->getVideolvDatas(Ljava/util/List;II)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    .line 644
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v1}, Lcom/view/SingleChoiceMenuView;->clearMenuItems()V

    .line 645
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lv_lists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    .line 646
    .local v7, "vodUlr":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    iget-object v9, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    iget-object v10, v7, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->title:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/view/SingleChoiceMenuView;->addMenuItem(Ljava/lang/String;)V

    .line 647
    .end local v7    # "vodUlr":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    goto :goto_3

    .line 649
    :cond_5
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    if-eqz v1, :cond_6

    .line 650
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/db/Album;->getCollectionTime()I

    move-result v1

    iput v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->lastPositinTime:I

    .line 652
    :cond_6
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    new-instance v7, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;

    invoke-direct {v7, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$5;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v1, v7}, Lcom/view/SingleChoiceMenuView;->setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V

    .line 828
    .end local v3    # "list2":Ljava/util/List;, "Ljava/util/List<Lcom/shenma/tvlauncher/vod/domain/VodUrlList;>;"
    .end local v4    # "arrayList":Ljava/util/ArrayList;
    .end local v5    # "size":I
    .end local v6    # "i":I
    .end local v8    # "i2":I
    :cond_7
    return-void
.end method

.method public GetMotionResponse(Ljava/lang/String;I)V
    .locals 16
    .param p1, "response"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 1642
    move-object/from16 v1, p0

    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->kd:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1643
    .local v3, "RC4KEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->tb:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1644
    .local v4, "RSAKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->um:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1645
    .local v5, "AESKEY":Ljava/lang/String;
    sget-object v0, Lcom/shenma/tvlauncher/utils/Constant;->im:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedStringData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/shenma/tvlauncher/utils/Constant;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1648
    .local v2, "AESIV":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v6, p1

    :try_start_1
    invoke-direct {v0, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1649
    .local v0, "jSONObject":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1650
    .local v7, "code":I
    const/16 v8, 0xc8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const-string/jumbo v11, "vip"

    const/4 v12, 0x0

    if-ne v7, v8, :cond_3

    .line 1651
    :try_start_2
    sget-object v8, Lcom/shenma/tvlauncher/utils/Constant;->ue:Ljava/lang/String;

    invoke-static {v1, v8, v10}, Lcom/shenma/tvlauncher/utils/SharePreferenceDataUtil;->getSharedIntData(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1652
    .local v8, "miType":I
    const/4 v13, 0x0

    .line 1653
    .local v13, "msg":Lorg/json/JSONObject;
    const-string v14, "msg"

    if-ne v8, v10, :cond_0

    .line 1654
    :try_start_3
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v3}, Lcom/shenma/tvlauncher/utils/Rc4;->decry_RC4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 1655
    :cond_0
    if-ne v8, v9, :cond_1

    .line 1656
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v4}, Lcom/shenma/tvlauncher/utils/Rsa;->decrypt_Rsa(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    goto :goto_0

    .line 1657
    :cond_1
    const/4 v15, 0x3

    if-ne v8, v15, :cond_2

    .line 1658
    new-instance v15, Lorg/json/JSONObject;

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14, v2}, Lcom/shenma/tvlauncher/utils/AES;->decrypt_Aes(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v13, v15

    .line 1660
    :cond_2
    :goto_0
    invoke-virtual {v13, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1661
    .local v14, "vip":Ljava/lang/String;
    const-string v15, "Try"

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    .line 1662
    .local v15, "Try":I
    const-string v9, "Clientmode"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 1663
    .local v9, "Clientmode":I
    iput v15, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->trystate:I

    .line 1664
    iget-object v10, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v11, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1665
    sget-object v10, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Sp:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Submission_method"

    .line 1666
    invoke-interface {v10, v11, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    const-string v11, "Trystate"

    .line 1667
    invoke-interface {v10, v11, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1668
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1669
    nop

    .end local v8    # "miType":I
    .end local v9    # "Clientmode":I
    .end local v13    # "msg":Lorg/json/JSONObject;
    .end local v14    # "vip":Ljava/lang/String;
    .end local v15    # "Try":I
    goto/16 :goto_1

    :cond_3
    const/16 v8, 0x7f

    const-string v9, "ckinfo"

    const-string v10, "fen"

    const-string v13, "passWord"

    const-string/jumbo v14, "userName"

    if-ne v7, v8, :cond_4

    .line 1670
    :try_start_4
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x6

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1671
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1672
    return-void

    .line 1673
    :cond_4
    const/16 v15, 0x72

    if-ne v7, v15, :cond_5

    .line 1674
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v15, 0x7

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1675
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1676
    return-void

    .line 1677
    :cond_5
    const/16 v15, 0x7d

    if-ne v7, v15, :cond_6

    .line 1678
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x8

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1679
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1680
    return-void

    .line 1681
    :cond_6
    if-ne v7, v8, :cond_7

    .line 1682
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/16 v15, 0x9

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1683
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v14, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v13, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v11, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1684
    return-void

    .line 1685
    :cond_7
    const/16 v8, 0xc9

    const/16 v9, 0xa

    if-ne v7, v8, :cond_8

    .line 1686
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1687
    return-void

    .line 1688
    :cond_8
    const/16 v8, 0x6a

    if-ne v7, v8, :cond_9

    .line 1689
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1690
    return-void

    .line 1693
    :cond_9
    :goto_1
    iget v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vipstate:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_b

    iget v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->trystate:I

    if-ne v8, v9, :cond_a

    goto :goto_2

    .line 1701
    :cond_a
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mediaHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move/from16 v9, p2

    goto :goto_4

    .line 1694
    :cond_b
    :goto_2
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    if-eqz v8, :cond_c

    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 1695
    iget-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->aboutlist:Ljava/util/ArrayList;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move/from16 v9, p2

    :try_start_5
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;

    invoke-virtual {v8}, Lcom/shenma/tvlauncher/vod/domain/VodDataInfo;->getNextlink()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    .line 1696
    iput-object v12, v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    .line 1697
    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->initView()V

    goto :goto_3

    .line 1694
    :cond_c
    move/from16 v9, p2

    .line 1699
    :goto_3
    const/high16 v8, 0x10a0000

    const v10, 0x10a0001

    invoke-virtual {v1, v8, v10}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1706
    .end local v0    # "jSONObject":Lorg/json/JSONObject;
    .end local v7    # "code":I
    :goto_4
    goto :goto_7

    .line 1704
    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    :goto_5
    move/from16 v9, p2

    .line 1705
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1707
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    return-void
.end method

.method protected closeProgressDialog()V
    .locals 0

    .line 1568
    invoke-static {}, Lcom/shenma/tvlauncher/utils/Utils;->loadingClose_Tv()V

    .line 1569
    return-void
.end method

.method public final fillRadioGroup(Ljava/lang/String;)V
    .locals 8
    .param p1, "str"    # Ljava/lang/String;

    .line 1136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 1137
    sget-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1138
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->top_type:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    .local v2, "size":I
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->j0:I

    if-ge v1, v3, :cond_3

    .line 1139
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    .local v1, "arrayList":Ljava/util/ArrayList;
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v3}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1141
    const/4 v3, 0x0

    .local v3, "i3":I
    :goto_1
    iget v4, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->j0:I

    if-gt v3, v4, :cond_2

    .line 1142
    if-ge v2, v3, :cond_1

    .line 1143
    new-instance v4, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;

    invoke-direct {v4}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;-><init>()V

    .line 1144
    .local v4, "vodUrlList":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    const-string v5, "*"

    invoke-virtual {v4, v5}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setUrl(Ljava/lang/String;)V

    .line 1145
    const/16 v5, 0xa

    if-ge v3, v5, :cond_0

    .line 1146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1147
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\u7b2c0"

    .local v6, "str2":Ljava/lang/String;
    goto :goto_2

    .line 1149
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "str2":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1150
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "\u7b2c"

    .line 1152
    .restart local v6    # "str2":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1154
    const-string/jumbo v7, "\u96c6"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/shenma/tvlauncher/vod/domain/VodUrlList;->setTitle(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1141
    .end local v4    # "vodUrlList":Lcom/shenma/tvlauncher/vod/domain/VodUrlList;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "str2":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1159
    .end local v3    # "i3":I
    :cond_2
    sget-object v3, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v3, v1}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->setList(Ljava/util/List;)V

    .line 1161
    .end local v1    # "arrayList":Ljava/util/ArrayList;
    .end local v2    # "size":I
    :cond_3
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1162
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->G:Ljava/util/List;

    sget-object v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->now_source:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shenma/tvlauncher/vod/domain/VodUrl;

    invoke-virtual {v2}, Lcom/shenma/tvlauncher/vod/domain/VodUrl;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1136
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1165
    .end local v0    # "i":I
    :cond_5
    return-void
.end method

.method protected findViewById()V
    .locals 6

    .line 378
    sget v0, Lcom/shenma/tvlauncher/R$id;->iv_details_poster:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->iv_details_poster:Landroid/widget/ImageView;

    .line 379
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_name:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_name:Landroid/widget/TextView;

    .line 380
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_year:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_year:Landroid/widget/TextView;

    .line 381
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_rate:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_rate:Landroid/widget/TextView;

    .line 382
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_director:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_director:Landroid/widget/TextView;

    .line 383
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_type:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_type:Landroid/widget/TextView;

    .line 384
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_actors:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_actors:Landroid/widget/TextView;

    .line 385
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_playTimes:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_playTimes:Landroid/widget/TextView;

    .line 386
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_area:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_area:Landroid/widget/TextView;

    .line 387
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details_video_introduce:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details_video_introduce:Landroid/widget/TextView;

    .line 389
    sget v0, Lcom/shenma/tvlauncher/R$id;->b_details_play:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_play:Landroid/widget/TextView;

    .line 390
    sget v0, Lcom/shenma/tvlauncher/R$id;->b_details_choose:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_choose:Landroid/widget/TextView;

    .line 391
    sget v0, Lcom/shenma/tvlauncher/R$id;->b_details_favicon:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_favicon:Landroid/widget/TextView;

    .line 392
    sget v0, Lcom/shenma/tvlauncher/R$id;->b_details_colection:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_colection:Landroid/widget/TextView;

    .line 393
    sget v0, Lcom/shenma/tvlauncher/R$id;->menu_view:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/view/SingleChoiceMenuView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    .line 394
    sget v0, Lcom/shenma/tvlauncher/R$id;->menu_xuanji:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/view/SingleChoiceMenuView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    .line 395
    sget v0, Lcom/shenma/tvlauncher/R$id;->menu_paixu:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/view/SingleChoiceMenuView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    .line 396
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/view/SingleChoiceMenuView;->setPaddings(IIII)V

    .line 397
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/view/SingleChoiceMenuView;->setPaddings(IIII)V

    .line 398
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/view/SingleChoiceMenuView;->setPaddings(IIII)V

    .line 399
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_18:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setTextPxSize(F)V

    .line 400
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_18:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setTextPxSize(F)V

    .line 401
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/shenma/tvlauncher/R$dimen;->sm_18:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setTextPxSize(F)V

    .line 402
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->vod_detail_menu_item_bg:I

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setItemBackground(I)V

    .line 403
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->vod_detail_menu_item_bg:I

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setItemBackground(I)V

    .line 404
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    sget v2, Lcom/shenma/tvlauncher/R$drawable;->vod_detail_menu_item_bg:I

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setItemBackground(I)V

    .line 405
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setItemTextColor(I)V

    .line 406
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setItemTextColor(I)V

    .line 407
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v0, v2}, Lcom/view/SingleChoiceMenuView;->setItemTextColor(I)V

    .line 408
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_quanping:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->llQuanping:Landroid/view/View;

    .line 409
    sget v0, Lcom/shenma/tvlauncher/R$id;->ll_shoucang:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->llShoucang:Landroid/view/View;

    .line 410
    sget v0, Lcom/shenma/tvlauncher/R$id;->tv_details:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details:Landroid/view/View;

    .line 411
    sget v0, Lcom/shenma/tvlauncher/R$id;->recommand_list:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->recommandListView:Landroidx/recyclerview/widget/RecyclerView;

    .line 412
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 413
    .local v0, "layoutManager":Landroidx/recyclerview/widget/LinearLayoutManager;
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->recommandListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 418
    sget v3, Lcom/shenma/tvlauncher/R$id;->b_details_search:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_search:Landroid/widget/TextView;

    .line 419
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Same_source_search:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 420
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_search:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 423
    :cond_0
    sget v3, Lcom/shenma/tvlauncher/R$id;->details_recommend:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_recommend:Landroid/widget/LinearLayout;

    .line 424
    sget v3, Lcom/shenma/tvlauncher/R$id;->recommend_grid:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_recommend_grid:Landroid/widget/GridView;

    .line 425
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->gv_recommend_grid:Landroid/widget/GridView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 426
    sget v3, Lcom/shenma/tvlauncher/R$id;->details_key_arts:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_arts:Landroid/widget/LinearLayout;

    .line 427
    sget v3, Lcom/shenma/tvlauncher/R$id;->details_video_introduce:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_video_introduce:Landroid/widget/LinearLayout;

    .line 429
    sget v3, Lcom/shenma/tvlauncher/R$id;->details_key_list:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list:Landroid/widget/ListView;

    .line 430
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list:Landroid/widget/ListView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 432
    sget v3, Lcom/shenma/tvlauncher/R$id;->details_key_lists:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_lists:Landroid/widget/GridView;

    .line 433
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_lists:Landroid/widget/GridView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 435
    sget v3, Lcom/shenma/tvlauncher/R$id;->details_key_list_and_grid:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list_and_grid:Landroid/widget/ImageView;

    .line 436
    sget v3, Lcom/shenma/tvlauncher/R$id;->root_view:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->root_view:Landroid/widget/FrameLayout;

    .line 437
    sget v3, Lcom/shenma/tvlauncher/R$id;->details_key_grid:I

    invoke-virtual {p0, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_grid:Landroid/widget/GridView;

    .line 438
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_grid:Landroid/widget/GridView;

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 440
    iget v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->xuanjitype:I

    if-ne v3, v4, :cond_1

    .line 441
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_lists:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 444
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_list_and_grid:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->details_key_grid:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 447
    :goto_0
    sget v1, Lcom/shenma/tvlauncher/R$id;->rg_video_details_resources:I

    invoke-virtual {p0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rg_video_details_resources:Landroid/widget/RadioGroup;

    .line 448
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    const-string v3, "MOVIE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 449
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->b_details_favicon:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    :cond_2
    return-void
.end method

.method public finish()V
    .locals 1

    .line 501
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V

    .line 502
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->finish()V

    .line 503
    return-void
.end method

.method protected getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V
    .locals 8
    .param p1, "reqVo"    # Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    .line 1185
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->showProgressDialog()V

    .line 1186
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    new-instance v1, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v1}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    invoke-static {v0, v1}, Lcom/android/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;Lcom/android/volley/toolbox/HttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    .line 1187
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/shenma/tvlauncher/utils/Utils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1188
    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$10;

    iget-object v4, p1, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    const-class v5, Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;

    .line 1189
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->createVodDataSuccessListener()Lcom/android/volley/Response$Listener;

    move-result-object v6

    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->createVodDataErrorListener()Lcom/android/volley/Response$ErrorListener;

    move-result-object v7

    const/4 v3, 0x1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$10;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;ILjava/lang/String;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 1212
    .local v1, "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;>;"
    iget-object v0, v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    goto :goto_0

    .line 1187
    .end local v1    # "mVodData":Lcom/shenma/tvlauncher/network/GsonRequest;, "Lcom/shenma/tvlauncher/network/GsonRequest<Lcom/shenma/tvlauncher/vod/domain/VideoDetailInfo;>;"
    :cond_0
    move-object v2, p0

    .line 1214
    :goto_0
    return-void
.end method

.method public initView()V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$dimen;->sm_90:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbWidth:I

    .line 368
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/shenma/tvlauncher/R$dimen;->sm_36:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->rbHeigth:I

    .line 369
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->findViewById()V

    .line 370
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->loadViewLayout()V

    .line 371
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setListener()V

    .line 372
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->processLogic()V

    .line 373
    return-void
.end method

.method protected loadViewLayout()V
    .locals 0

    .line 563
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 843
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shenma/tvlauncher/vod/VideoPlayerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 844
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 845
    const-string v1, "FROM_BACK"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 846
    const-string/jumbo v1, "vodPlayUrl"

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodPlayUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 847
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 848
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->finish()V

    .line 849
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 220
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->requestWindowFeature(I)Z

    .line 223
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 227
    sget v0, Lcom/shenma/tvlauncher/R$layout;->mv_video_details:I

    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setContentView(I)V

    .line 230
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 231
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1006

    .line 234
    .local v1, "uiOptions":I
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 236
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x1e

    if-lt v2, v4, :cond_0

    .line 237
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 241
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v4, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v2

    .line 243
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v5

    or-int/2addr v4, v5

    .line 242
    invoke-interface {v2, v4}, Landroid/view/WindowInsetsController;->hide(I)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x1006

    invoke-virtual {v2, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 255
    :goto_0
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 256
    new-instance v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$2;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {p0, v2}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 277
    iput-object p0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    .line 278
    new-instance v2, Lcom/shenma/tvlauncher/vod/dao/VodDao;

    invoke-direct {v2, p0}, Lcom/shenma/tvlauncher/vod/dao/VodDao;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    .line 279
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->initData()V

    .line 280
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->initView()V

    .line 281
    const-string/jumbo v2, "shenma"

    invoke-virtual {p0, v2, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sp:Landroid/content/SharedPreferences;

    .line 282
    const-string v2, "initData"

    invoke-virtual {p0, v2, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Sp:Landroid/content/SharedPreferences;

    .line 283
    const-string v2, "TempData"

    invoke-virtual {p0, v2, v3}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    sput-object v2, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Sd:Landroid/content/SharedPreferences;

    .line 284
    invoke-static {}, Lcom/tencent/mmkv/MMKV;->defaultMMKV()Lcom/tencent/mmkv/MMKV;

    move-result-object v2

    iput-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mmkv:Lcom/tencent/mmkv/MMKV;

    .line 285
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 320
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onDestroy()V

    .line 321
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 325
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .line 515
    invoke-direct {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setFullScreenImmersive()V

    .line 516
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->sourceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/view/SingleChoiceMenuView;->setSelectedPositionNoClick(I)V

    .line 517
    invoke-virtual {p0, p1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->setIntent(Landroid/content/Intent;)V

    .line 519
    const-string v0, "oncreate"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 520
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 521
    .local v0, "from":I
    if-ne v0, v2, :cond_0

    .line 522
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->root_view:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/shenma/tvlauncher/R$drawable;->vod_details_bg:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 526
    .end local v0    # "from":I
    :cond_0
    const-string/jumbo v0, "sourceid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 527
    const/4 v1, -0x1

    .line 528
    .local v1, "sourceId2":I
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 529
    .end local v1    # "sourceId2":I
    .local v0, "sourceId2":I
    const-string/jumbo v1, "xuanji"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 530
    .local v1, "xuanji":I
    const-string v2, "paixu"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 531
    .local v2, "paixu":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 532
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/view/SingleChoiceMenuView;->setSelectedPositionNoClick(I)V

    .line 534
    :cond_1
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_paixu:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v3, v2}, Lcom/view/SingleChoiceMenuView;->setSelectedPositionNoClick(I)V

    .line 535
    iget-object v3, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_xuanji:Lcom/view/SingleChoiceMenuView;

    invoke-virtual {v3, v1}, Lcom/view/SingleChoiceMenuView;->setSelectedPositionNoClick(I)V

    .line 557
    .end local v0    # "sourceId2":I
    .end local v1    # "xuanji":I
    .end local v2    # "paixu":I
    :cond_2
    invoke-super {p0, p1}, Lcom/shenma/tvlauncher/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 558
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 312
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onPause()V

    .line 314
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 332
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->videoId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->dao:Lcom/shenma/tvlauncher/vod/dao/VodDao;

    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->videoId:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/shenma/tvlauncher/vod/dao/VodDao;->queryAlbumById(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    .line 334
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->albums:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shenma/tvlauncher/vod/db/Album;

    iput-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->album:Lcom/shenma/tvlauncher/vod/db/Album;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->vodtype:Ljava/lang/String;

    const-string v1, "LIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 343
    :cond_1
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onResume()V

    .line 344
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 291
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStart()V

    .line 293
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 299
    invoke-super {p0}, Lcom/shenma/tvlauncher/BaseActivity;->onStop()V

    .line 300
    invoke-virtual {p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->closeProgressDialog()V

    .line 301
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->mQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0}, Lcom/android/volley/RequestQueue;->stop()V

    .line 304
    :cond_0
    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->overridePendingTransition(II)V

    .line 306
    return-void
.end method

.method protected processLogic()V
    .locals 3

    .line 1169
    new-instance v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;

    invoke-direct {v0}, Lcom/shenma/tvlauncher/vod/domain/RequestVo;-><init>()V

    .line 1170
    .local v0, "vo":Lcom/shenma/tvlauncher/vod/domain/RequestVo;
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->context:Landroid/content/Context;

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->context:Landroid/content/Context;

    .line 1171
    iget-object v1, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->Api_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/api.php/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->BASE_HOST:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/vod/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->nextlink:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shenma/tvlauncher/vod/domain/RequestVo;->requestUrl:Ljava/lang/String;

    .line 1175
    invoke-virtual {p0, v0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->getDataFromServer(Lcom/shenma/tvlauncher/vod/domain/RequestVo;)V

    .line 1177
    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->tv_details:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$6;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 860
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->llQuanping:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$7;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->llShoucang:Landroid/view/View;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$8;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    iget-object v0, p0, Lcom/shenma/tvlauncher/vod/VodDetailsActivity;->menu_view:Lcom/view/SingleChoiceMenuView;

    new-instance v1, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;

    invoke-direct {v1, p0}, Lcom/shenma/tvlauncher/vod/VodDetailsActivity$9;-><init>(Lcom/shenma/tvlauncher/vod/VodDetailsActivity;)V

    invoke-virtual {v0, v1}, Lcom/view/SingleChoiceMenuView;->setOnItemSelectedListener(Lcom/view/SingleChoiceMenuView$OnItemSelectedListener;)V

    .line 1130
    return-void
.end method

.method protected showProgressDialog()V
    .locals 1

    .line 1563
    sget v0, Lcom/shenma/tvlauncher/R$string;->str_data_loading:I

    invoke-static {p0, v0}, Lcom/shenma/tvlauncher/utils/Utils;->loadingShow_tv(Landroid/content/Context;I)V

    .line 1564
    return-void
.end method

.method public showTextPopup(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "anchorView"    # Landroid/view/View;
    .param p3, "content"    # Ljava/lang/String;

    .line 461
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 462
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    const/16 v1, 0x64

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 465
    const/4 v1, 0x2

    const/high16 v2, 0x41900000    # 18.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 466
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 472
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 473
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 474
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 475
    const/16 v4, 0x8

    const v5, -0x333334

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 478
    nop

    .line 479
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 485
    new-instance v4, Landroid/widget/PopupWindow;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v2, v2, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 491
    .local v4, "popupWindow":Landroid/widget/PopupWindow;
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 493
    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 494
    invoke-virtual {v4, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 496
    const/16 v2, 0x11

    invoke-virtual {v4, p2, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 497
    return-void
.end method
