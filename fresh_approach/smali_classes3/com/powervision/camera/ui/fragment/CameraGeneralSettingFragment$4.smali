.class Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$4;
.super Ljava/lang/Object;
.source "CameraGeneralSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->onResetCameraResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

.field final synthetic val$finalHint:Ljava/lang/String;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$4;->this$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    iput-object p2, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$4;->val$finalHint:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$4;->val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$4;->val$finalHint:Ljava/lang/String;

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->shortToast(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment$4;->val$result:Z

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-static {}, Lcom/powervision/base/rxbus/RxBus;->get()Lcom/powervision/base/rxbus/RxBus;

    move-result-object v0

    const/16 v1, 0xf2

    invoke-virtual {v0, v1}, Lcom/powervision/base/rxbus/RxBus;->post(I)V

    return-void
.end method
