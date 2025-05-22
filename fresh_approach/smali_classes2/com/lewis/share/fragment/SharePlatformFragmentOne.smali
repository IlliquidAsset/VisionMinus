.class public Lcom/lewis/share/fragment/SharePlatformFragmentOne;
.super Lcom/powervision/base/base/BaseFragment;
.source "SharePlatformFragmentOne.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mGridView:Landroid/widget/GridView;

.field private final mIcons:[I

.field private mSharePath:Ljava/lang/String;

.field private final mTitles:[I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 28
    invoke-direct {p0}, Lcom/powervision/base/base/BaseFragment;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 33
    sget v2, Lcom/lewis/share/R$string;->APP_function_15:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/lewis/share/R$string;->App_MediaLib_46:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/lewis/share/R$string;->APP_function_24:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/lewis/share/R$string;->APP_function_17:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/lewis/share/R$string;->APP_function_18:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lcom/lewis/share/R$string;->APP_function_19:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Lcom/lewis/share/R$string;->APP_function_23:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sget v2, Lcom/lewis/share/R$string;->APP_function_22:I

    const/4 v10, 0x7

    aput v2, v1, v10

    iput-object v1, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mTitles:[I

    new-array v0, v0, [I

    .line 37
    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_wechat:I

    aput v1, v0, v3

    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_moments:I

    aput v1, v0, v4

    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_qq:I

    aput v1, v0, v5

    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_qzone:I

    aput v1, v0, v6

    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_sina:I

    aput v1, v0, v7

    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_facebook:I

    aput v1, v0, v8

    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_instagram:I

    aput v1, v0, v9

    sget v1, Lcom/lewis/share/R$mipmap;->media_icon_twitter:I

    aput v1, v0, v10

    iput-object v0, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mIcons:[I

    return-void
.end method

.method public static newInstance()Lcom/lewis/share/fragment/SharePlatformFragmentOne;
    .locals 1

    .line 51
    new-instance v0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;

    invoke-direct {v0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected getLayoutResId()I
    .locals 1

    .line 56
    sget v0, Lcom/lewis/share/R$layout;->media_fragment_share_platform:I

    return v0
.end method

.method protected initData()V
    .locals 4

    .line 67
    new-instance v0, Lcom/lewis/share/adapter/PlatformAdapter;

    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mTitles:[I

    iget-object v3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mIcons:[I

    invoke-direct {v0, v1, v2, v3}, Lcom/lewis/share/adapter/PlatformAdapter;-><init>(Landroid/content/Context;[I[I)V

    .line 68
    iget-object v1, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method protected initView(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    sget p1, Lcom/lewis/share/R$id;->platform_grid:I

    invoke-virtual {p0, p1}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mGridView:Landroid/widget/GridView;

    .line 62
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

    .line 73
    invoke-static {}, Lcom/powervision/base/utils/NoFastClickUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/wechat/friends/Wechat;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    .line 79
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/wechat/moments/WechatMoments;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-ne p3, p1, :cond_3

    .line 81
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    if-ne p3, p1, :cond_4

    .line 83
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    if-ne p3, p1, :cond_5

    .line 85
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x5

    if-ne p3, p1, :cond_6

    .line 87
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/facebook/Facebook;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x6

    if-ne p3, p1, :cond_7

    .line 89
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/instagram/Instagram;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const/4 p1, 0x7

    if-ne p3, p1, :cond_8

    .line 91
    invoke-virtual {p0}, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object p2, Lcn/sharesdk/twitter/Twitter;->NAME:Ljava/lang/String;

    iget-object p3, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    invoke-static {p1, p2, p3}, Lcom/lewis/share/util/ShareUtil;->shareByPlatform(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public setSharePath(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/lewis/share/fragment/SharePlatformFragmentOne;->mSharePath:Ljava/lang/String;

    return-void
.end method
