.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$1;
.super Ljava/lang/Object;
.source "ShipCommonAboutFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->initView(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 87
    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 89
    iget-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;

    invoke-static {p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;->access$000(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutFragment;)Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/powervision/gcs/ui/aty/ship/ShipMainActivity;->setLineStatus(Z)V

    return-void
.end method
