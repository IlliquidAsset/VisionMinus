.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$24;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Landroidx/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->initSystemStatusListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/Observer<",
        "Lcom/powervision/natives/param/ElecgtricQuantityParam;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$24;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Lcom/powervision/natives/param/ElecgtricQuantityParam;)V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$24;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-byte p1, p1, Lcom/powervision/natives/param/ElecgtricQuantityParam;->battery_remaining:B

    invoke-static {v0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->access$902(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;I)I

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    .line 905
    check-cast p1, Lcom/powervision/natives/param/ElecgtricQuantityParam;

    invoke-virtual {p0, p1}, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$24;->onChanged(Lcom/powervision/natives/param/ElecgtricQuantityParam;)V

    return-void
.end method
