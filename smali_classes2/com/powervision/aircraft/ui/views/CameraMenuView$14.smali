.class Lcom/powervision/aircraft/ui/views/CameraMenuView$14;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Lcom/powervision/natives/PowerCamCallBack$CameraNotifyOnMultiplePhotoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 1443
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$14;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiplePhoto(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1447
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$14;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$2000(Lcom/powervision/aircraft/ui/views/CameraMenuView;)I

    move-result v0

    const-string v1, "\u62cd\u7167\u5931\u8d25"

    invoke-static {p1, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1700(Lcom/powervision/aircraft/ui/views/CameraMenuView;ILjava/lang/String;)V

    goto :goto_0

    .line 1449
    :cond_0
    iget-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$14;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$2100(Lcom/powervision/aircraft/ui/views/CameraMenuView;)I

    move-result v0

    const-string v1, "\u62cd\u7167\u6210\u529f"

    invoke-static {p1, v0, v1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1700(Lcom/powervision/aircraft/ui/views/CameraMenuView;ILjava/lang/String;)V

    :goto_0
    return-void
.end method
