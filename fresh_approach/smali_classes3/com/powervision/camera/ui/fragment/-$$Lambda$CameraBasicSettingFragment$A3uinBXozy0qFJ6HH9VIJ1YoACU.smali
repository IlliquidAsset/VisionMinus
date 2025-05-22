.class public final synthetic Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraBasicSettingFragment$A3uinBXozy0qFJ6HH9VIJ1YoACU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraBasicSettingFragment$A3uinBXozy0qFJ6HH9VIJ1YoACU;->f$0:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraBasicSettingFragment$A3uinBXozy0qFJ6HH9VIJ1YoACU;->f$0:Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;

    invoke-virtual {v0}, Lcom/powervision/camera/ui/fragment/CameraBasicSettingFragment;->lambda$notifyAdapterDataOnUIThread$0$CameraBasicSettingFragment()V

    return-void
.end method
