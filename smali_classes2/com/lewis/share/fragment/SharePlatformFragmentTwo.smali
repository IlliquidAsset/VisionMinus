.class public Lcom/lewis/share/fragment/SharePlatformFragmentTwo;
.super Lcom/powervision/base/base/BaseFragment;
.source "SharePlatformFragmentTwo.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private final mIcons:[I

.field private mSharePath:Ljava/lang/String;

.field private final mTitles:[I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 23
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 28
    sget v2, Lcom/lewis/share/R$string;->APP_function_21:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/lewis/share/R$string;->App_MediaLib_50:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iput-object v1, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mTitles:[I

    new-array v0, v0, [I

    .line 30
    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_line:I

    aput v1, v0, v3

    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_more:I

    aput v1, v0, v4

    iput-object v0, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mIcons:[I

    return-void
.end method

.method public static newInstance()Lcom/lewis/share/fragment/SharePlatformFragmentTwo;
    .locals 1

    .line 40
    new-instance v0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;

    invoke-direct {v0}, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 45
    sget v0, Lcom/lewis/share/R$layout;->media_fragment_share_platform:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 56
    new-instance v0, Lcom/lewis/share/adapter/PlatformAdapter;

    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mTitles:[I

    iget-object v3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mIcons:[I

    invoke-direct {v0, v1, v2, v3}, Lcom/lewis/share/adapter/PlatformAdapter;-><init>(Landroid/content/Context;[I[I)V

    .line 57
    iget-object v1, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    sget p1, Lcom/lewis/share/R$id;->platform_grid:I

    invoke-virtual {p0, p1}, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mGridView:Landroid/widget/GridView;

    .line 51
    invoke-virtual {p1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/line/Line;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    .line 68
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "image/*"

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object p2, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mSharePath:Ljava/lang/String;

    invoke-static {p2}, Lcom/powervision/base/utils/FileUtils;->getUriFromPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.extra.STREAM"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 71
    sget p2, Lcom/lewis/share/R$string;->App_MediaLib_49:I

    invoke-virtual {p0, p2}, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/lewis/share/fragment/SharePlatformFragmentTwo;->mSharePath:Ljava/lang/String;

    return-void
.end method
