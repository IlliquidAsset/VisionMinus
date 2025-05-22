.class Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$21;
.super Ljava/lang/Object;
.source "NewHandheldPersenter.java"

# interfaces
.implements Lcom/powervision/camera/camera/CameraListener$CameraOnGestureInternalStorageFullListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;


# direct methods
.method constructor <init>(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)V
    .locals 0

    .line 960
    iput-object p1, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$21;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureInternalStorageFull()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$21;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$8200(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter$21;->this$0:Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;

    invoke-static {v0}, Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;->access$8300(Lcom/powervision/handheld/persenter/impl/NewHandheldPersenter;)Lcom/powervision/base/base/BaseView;

    move-result-object v0

    check-cast v0, Lcom/powervision/handheld/ui/view/INewHandheldView;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/powervision/handheld/ui/view/INewHandheldView;->onGestureFull(Z)V

    :cond_0
    return-void
.end method
