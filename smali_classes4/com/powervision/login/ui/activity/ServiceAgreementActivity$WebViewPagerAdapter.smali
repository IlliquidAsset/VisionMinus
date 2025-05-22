.class public Lcom/powervision/login/ui/activity/ServiceAgreementActivity$WebViewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "ServiceAgreementActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/login/ui/activity/ServiceAgreementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewPagerAdapter"
.end annotation


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 176
    invoke-static {}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->access$000()[Landroidx/fragment/app/Fragment;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 171
    invoke-static {}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->access$000()[Landroidx/fragment/app/Fragment;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 182
    invoke-static {}, Lcom/powervision/login/ui/activity/ServiceAgreementActivity;->access$100()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method
