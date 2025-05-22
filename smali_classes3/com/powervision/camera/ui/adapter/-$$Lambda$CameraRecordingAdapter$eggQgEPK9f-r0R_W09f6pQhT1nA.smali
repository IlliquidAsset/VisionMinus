.class public final synthetic Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$eggQgEPK9f-r0R_W09f6pQhT1nA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$eggQgEPK9f-r0R_W09f6pQhT1nA;->f$0:Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    iput-boolean p2, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$eggQgEPK9f-r0R_W09f6pQhT1nA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$eggQgEPK9f-r0R_W09f6pQhT1nA;->f$0:Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;

    iget-boolean v1, p0, Lcom/powervision/camera/ui/adapter/-$$Lambda$CameraRecordingAdapter$eggQgEPK9f-r0R_W09f6pQhT1nA;->f$1:Z

    invoke-static {v0, v1, p1}, Lcom/powervision/camera/ui/adapter/CameraRecordingAdapter;->lambda$convert$7(Lcom/powervision/camera/model/bean/CameraRecordingVideoSizeAtom;ZLandroid/view/View;)V

    return-void
.end method
