.class Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;
.super Landroidx/fragment/app/FragmentStatePagerAdapter;
.source "CameraSettingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/camera/views/CameraSettingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field final synthetic this$0:Lcom/powervision/camera/views/CameraSettingView;


# direct methods
.method constructor <init>(Lcom/powervision/camera/views/CameraSettingView;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 748
    iput-object p1, p0, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    .line 749
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentStatePagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 750
    iput-object p2, p0, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 760
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {v0}, Lcom/powervision/camera/views/CameraSettingView;->access$800(Lcom/powervision/camera/views/CameraSettingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {v0}, Lcom/powervision/camera/views/CameraSettingView;->access$800(Lcom/powervision/camera/views/CameraSettingView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method public release()V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    .line 765
    :goto_0
    iget-object v2, p0, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {v2}, Lcom/powervision/camera/views/CameraSettingView;->access$800(Lcom/powervision/camera/views/CameraSettingView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 766
    iget-object v2, p0, Lcom/powervision/camera/views/CameraSettingView$ViewPagerAdapter;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {v2}, Lcom/powervision/camera/views/CameraSettingView;->access$800(Lcom/powervision/camera/views/CameraSettingView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
