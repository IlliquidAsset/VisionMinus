.class Lcom/powervision/aircraft/ui/views/CameraMenuView$3;
.super Ljava/lang/Object;
.source "CameraMenuView.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/views/CameraMenuView;->initLiveData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$3;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Float;)V
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMenuView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$3;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$402(Lcom/powervision/aircraft/ui/views/CameraMenuView;F)F

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 321
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$3;->onChanged(Ljava/lang/Float;)V

    return-void
.end method
