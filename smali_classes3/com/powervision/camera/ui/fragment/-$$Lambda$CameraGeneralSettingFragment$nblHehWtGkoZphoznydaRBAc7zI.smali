.class public final synthetic Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$nblHehWtGkoZphoznydaRBAc7zI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$nblHehWtGkoZphoznydaRBAc7zI;->f$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    iput-object p2, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$nblHehWtGkoZphoznydaRBAc7zI;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$nblHehWtGkoZphoznydaRBAc7zI;->f$0:Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;

    iget-object v1, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraGeneralSettingFragment$nblHehWtGkoZphoznydaRBAc7zI;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/powervision/camera/ui/fragment/CameraGeneralSettingFragment;->lambda$onNotifyEnableAudioStatus$4$CameraGeneralSettingFragment(Ljava/lang/String;)V

    return-void
.end method
