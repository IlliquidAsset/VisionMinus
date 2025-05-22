.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$41;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setScreenArrts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;)V
    .locals 0

    .line 4972
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$41;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    .line 4975
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$41;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1707

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 4976
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$41;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
