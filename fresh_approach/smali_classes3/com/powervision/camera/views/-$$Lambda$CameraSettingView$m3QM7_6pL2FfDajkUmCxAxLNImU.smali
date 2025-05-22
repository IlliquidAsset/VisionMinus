.class public final synthetic Lcom/powervision/camera/views/-$$Lambda$CameraSettingView$m3QM7_6pL2FfDajkUmCxAxLNImU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/views/CameraSettingView;


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/views/CameraSettingView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/views/-$$Lambda$CameraSettingView$m3QM7_6pL2FfDajkUmCxAxLNImU;->f$0:Lcom/powervision/camera/views/CameraSettingView;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    iget-object v0, p0, Lcom/powervision/camera/views/-$$Lambda$CameraSettingView$m3QM7_6pL2FfDajkUmCxAxLNImU;->f$0:Lcom/powervision/camera/views/CameraSettingView;

    invoke-virtual {v0, p1, p2}, Lcom/powervision/camera/views/CameraSettingView;->lambda$setListener$0$CameraSettingView(Landroid/widget/RadioGroup;I)V

    return-void
.end method
