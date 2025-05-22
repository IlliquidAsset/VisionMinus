.class public final synthetic Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$O60HcPk2oN11PtHL7XHPtN5iSKk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$O60HcPk2oN11PtHL7XHPtN5iSKk;->f$0:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/camera/ui/fragment/-$$Lambda$CameraRecordingSettingFragment$O60HcPk2oN11PtHL7XHPtN5iSKk;->f$0:Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/powervision/camera/ui/fragment/CameraRecordingSettingFragment;->lambda$setListener$2$CameraRecordingSettingFragment(Ljava/lang/String;)V

    return-void
.end method
