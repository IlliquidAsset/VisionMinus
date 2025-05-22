.class Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23$1;
.super Ljava/lang/Object;
.source "ShipMainActivity.java"

# interfaces
.implements Lcom/powervision/opensource/CommonCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;)V
    .locals 0

    .line 3229
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs failed([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs success([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs timeout([Ljava/lang/Object;)V
    .locals 1

    .line 3237
    invoke-static {}, Lcom/powervision/gcs/usb2/SonarConnectState;->isCurrentConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3242
    iget-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23$1;->this$1:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity$23;->this$0:Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    iget-object p1, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->rememberRoute:Landroid/widget/ImageView;

    sget v0, Lcom/powervision/gcs/R$mipmap;->ship_remember_unselect:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
