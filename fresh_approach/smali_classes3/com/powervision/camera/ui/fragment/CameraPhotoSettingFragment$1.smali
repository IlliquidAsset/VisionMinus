.class Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "CameraPhotoSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

.field final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    iput-object p2, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;)Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/powervision/camera/model/bean/CameraPhotoTimedShotChild;

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;)Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/powervision/camera/model/bean/CameraPhotoChildAebChild;

    if-eqz v0, :cond_1

    const/4 p1, 0x6

    return p1

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;->this$0:Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;

    invoke-static {v0}, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;->access$000(Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment;)Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/powervision/camera/ui/adapter/CameraPhotoAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/powervision/camera/model/bean/CameraPhotoChildChild;

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    return p1

    .line 79
    :cond_2
    iget-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraPhotoSettingFragment$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
