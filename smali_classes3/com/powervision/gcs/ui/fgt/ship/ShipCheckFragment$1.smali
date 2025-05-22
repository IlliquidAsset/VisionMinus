.class Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$1;
.super Ljava/lang/Object;
.source "ShipCheckFragment.java"

# interfaces
.implements Lcom/powervision/gcs/adapter/ship/ShipSelfCheckAdapter$OnCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheck()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment$1;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;

    invoke-virtual {v0}, Lcom/powervision/gcs/ui/fgt/ship/ShipCheckFragment;->checkState()V

    return-void
.end method
