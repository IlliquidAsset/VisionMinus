.class Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$15;
.super Ljava/lang/Object;
.source "ShipCommonAboutDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->hideMcuUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;


# direct methods
.method constructor <init>(Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$15;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment$15;->this$0:Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;

    iget-object v0, v0, Lcom/powervision/gcs/ui/fgt/ship/ShipCommonAboutDetailFragment;->versionMcu:Lcom/powervision/gcs/view/AboutVersionView;

    invoke-virtual {v0}, Lcom/powervision/gcs/view/AboutVersionView;->hideUpdate()V

    return-void
.end method
