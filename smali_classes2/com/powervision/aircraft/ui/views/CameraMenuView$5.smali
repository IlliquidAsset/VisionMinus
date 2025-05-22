.class Lcom/powervision/aircraft/ui/views/CameraMenuView$5;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/views/CameraMenuView;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$5;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Integer;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/CameraMenuView$5;->this$0:Lcom/powervision/aircraft/ui/views/CameraMenuView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView;->access$1202(Lcom/powervision/aircraft/ui/views/CameraMenuView;I)I

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 364
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/powervision/aircraft/ui/views/CameraMenuView$5;->onChanged(Ljava/lang/Integer;)V

    return-void
.end method
