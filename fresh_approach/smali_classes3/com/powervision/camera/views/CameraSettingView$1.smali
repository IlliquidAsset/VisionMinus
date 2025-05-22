.class Lcom/powervision/camera/views/CameraSettingView$1;
.super Ljava/lang/Object;
.source "CameraSettingView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/views/CameraSettingView;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/views/CameraSettingView;


# direct methods
.method constructor <init>(Lcom/powervision/camera/views/CameraSettingView;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/powervision/camera/views/CameraSettingView$1;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/powervision/camera/views/CameraSettingView$1;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {v0}, Lcom/powervision/camera/views/CameraSettingView;->access$100(Lcom/powervision/camera/views/CameraSettingView;)Landroid/widget/RadioGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/powervision/camera/views/CameraSettingView$1;->this$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-static {v1, p1}, Lcom/powervision/camera/views/CameraSettingView;->access$000(Lcom/powervision/camera/views/CameraSettingView;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onPageSelected ... position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "p_camera"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
