.class Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "CameraVideoSettingFragment_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;-><init>(Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;

.field final synthetic val$target:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding;

    iput-object p2, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding$1;->val$target:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment_ViewBinding$1;->val$target:Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/fgt/ship/CameraVideoSettingFragment;->ship_camara_video_mode_layout()V

    return-void
.end method
